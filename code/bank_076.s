; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $076", ROMX[$4000], BANK[$76]

	nop                                              ; $4000: $00
	ld   [bc], a                                     ; $4001: $02
	add  a                                           ; $4002: $87
	nop                                              ; $4003: $00
	nop                                              ; $4004: $00
	rrca                                             ; $4005: $0f
	add  b                                           ; $4006: $80
	dec  bc                                          ; $4007: $0b
	add  e                                           ; $4008: $83
	rrca                                             ; $4009: $0f
	add  l                                           ; $400a: $85
	nop                                              ; $400b: $00
	nop                                              ; $400c: $00
	db   $10                                         ; $400d: $10
	add  c                                           ; $400e: $81
	rst  $38                                         ; $400f: $ff
	add  b                                           ; $4010: $80
	db   $fd                                         ; $4011: $fd
	add  b                                           ; $4012: $80
	ld   a, a                                        ; $4013: $7f
	nop                                              ; $4014: $00
	rst  $28                                         ; $4015: $ef
	add  l                                           ; $4016: $85
	nop                                              ; $4017: $00
	nop                                              ; $4018: $00
	db   $10                                         ; $4019: $10
	add  l                                           ; $401a: $85
	rst  $38                                         ; $401b: $ff
	nop                                              ; $401c: $00
	rst  $28                                         ; $401d: $ef
	add  l                                           ; $401e: $85
	nop                                              ; $401f: $00
	inc  bc                                          ; $4020: $03
	daa                                              ; $4021: $27
	ei                                               ; $4022: $fb
	db   $fd                                         ; $4023: $fd
	cp   $80                                         ; $4024: $fe $80
	ei                                               ; $4026: $fb
	add  b                                           ; $4027: $80
	db   $fd                                         ; $4028: $fd
	nop                                              ; $4029: $00
	rst  JumpTable                                         ; $402a: $df
	add  l                                           ; $402b: $85
	nop                                              ; $402c: $00
	add  d                                           ; $402d: $82
	rst  $38                                         ; $402e: $ff
	inc  b                                           ; $402f: $04
	cp   a                                           ; $4030: $bf
	rst  $38                                         ; $4031: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4032: $cf
	rst  $38                                         ; $4033: $ff
	ld   [hl], b                                     ; $4034: $70
	add  l                                           ; $4035: $85
	nop                                              ; $4036: $00
	nop                                              ; $4037: $00
	rst  $38                                         ; $4038: $ff
	add  b                                           ; $4039: $80
	ccf                                              ; $403a: $3f
	add  b                                           ; $403b: $80
	rst  JumpTable                                         ; $403c: $df
	add  b                                           ; $403d: $80
	rst  $30                                         ; $403e: $f7
	ld   bc, $02fd                                   ; $403f: $01 $fd $02
	add  l                                           ; $4042: $85
	nop                                              ; $4043: $00
	add  [hl]                                        ; $4044: $86
	rst  $38                                         ; $4045: $ff
	add  [hl]                                        ; $4046: $86
	nop                                              ; $4047: $00
	add  [hl]                                        ; $4048: $86
	rst  $38                                         ; $4049: $ff
	add  [hl]                                        ; $404a: $86
	nop                                              ; $404b: $00
	add  l                                           ; $404c: $85
	rst  $38                                         ; $404d: $ff
	ld   bc, $02fd                                   ; $404e: $01 $fd $02
	add  l                                           ; $4051: $85
	nop                                              ; $4052: $00
	add  e                                           ; $4053: $83
	rst  $38                                         ; $4054: $ff
	add  b                                           ; $4055: $80
	cp   $01                                         ; $4056: $fe $01
	ld   b, d                                        ; $4058: $42
	cp   l                                           ; $4059: $bd
	add  l                                           ; $405a: $85
	nop                                              ; $405b: $00
	nop                                              ; $405c: $00
	rst  $38                                         ; $405d: $ff
	add  b                                           ; $405e: $80
	jp   $0382                                       ; $405f: $c3 $82 $03


	ld   bc, $f906                                   ; $4062: $01 $06 $f9
	add  l                                           ; $4065: $85
	nop                                              ; $4066: $00
	add  c                                           ; $4067: $81
	rst  $38                                         ; $4068: $ff
	add  b                                           ; $4069: $80
	ld   a, a                                        ; $406a: $7f
	add  b                                           ; $406b: $80
	ccf                                              ; $406c: $3f
	ld   bc, $cf30                                   ; $406d: $01 $30 $cf
	add  l                                           ; $4070: $85
	nop                                              ; $4071: $00
	add  l                                           ; $4072: $85
	rst  $38                                         ; $4073: $ff
	ld   bc, $a05f                                   ; $4074: $01 $5f $a0
	add  l                                           ; $4077: $85
	nop                                              ; $4078: $00
	add  [hl]                                        ; $4079: $86
	rst  $38                                         ; $407a: $ff
	add  [hl]                                        ; $407b: $86
	nop                                              ; $407c: $00
	add  [hl]                                        ; $407d: $86
	rst  $38                                         ; $407e: $ff
	add  [hl]                                        ; $407f: $86
	nop                                              ; $4080: $00
	add  e                                           ; $4081: $83
	rst  $38                                         ; $4082: $ff

Jump_076_4083:
	add  b                                           ; $4083: $80
	db   $fd                                         ; $4084: $fd
	ld   [bc], a                                     ; $4085: $02
	rst  $30                                         ; $4086: $f7
	ld   [$800f], sp                                 ; $4087: $08 $0f $80
	rlca                                             ; $408a: $07
	adc  b                                           ; $408b: $88
	rrca                                             ; $408c: $0f
	add  b                                           ; $408d: $80
	dec  bc                                          ; $408e: $0b
	ld   bc, $ff1f                                   ; $408f: $01 $1f $ff
	add  b                                           ; $4092: $80
	ld   a, a                                        ; $4093: $7f
	rlca                                             ; $4094: $07
	rst  $28                                         ; $4095: $ef
	rst  $38                                         ; $4096: $ff
	rst  $28                                         ; $4097: $ef
	rst  $38                                         ; $4098: $ff
	rst  $28                                         ; $4099: $ef
	rst  $38                                         ; $409a: $ff
	ld   l, l                                        ; $409b: $6d
	ld   a, l                                        ; $409c: $7d
	add  b                                           ; $409d: $80
	rst  $38                                         ; $409e: $ff
	inc  bc                                          ; $409f: $03
	rst  JumpTable                                         ; $40a0: $df
	rst  $38                                         ; $40a1: $ff
	db   $dd                                         ; $40a2: $dd
	db   $fd                                         ; $40a3: $fd
	add  b                                           ; $40a4: $80
	rst  $38                                         ; $40a5: $ff
	add  b                                           ; $40a6: $80
	db   $fd                                         ; $40a7: $fd
	add  b                                           ; $40a8: $80
	cp   l                                           ; $40a9: $bd
	add  b                                           ; $40aa: $80
	rst  $38                                         ; $40ab: $ff
	inc  bc                                          ; $40ac: $03
	rst  $28                                         ; $40ad: $ef
	rst  $38                                         ; $40ae: $ff
	db   $eb                                         ; $40af: $eb
	ei                                               ; $40b0: $fb
	add  b                                           ; $40b1: $80
	rst  $38                                         ; $40b2: $ff
	ld   bc, $ffcf                                   ; $40b3: $01 $cf $ff
	add  b                                           ; $40b6: $80
	ld   a, [$ff80]                                  ; $40b7: $fa $80 $ff
	add  b                                           ; $40ba: $80
	ei                                               ; $40bb: $fb
	add  b                                           ; $40bc: $80
	db   $fd                                         ; $40bd: $fd
	add  b                                           ; $40be: $80
	rst  $38                                         ; $40bf: $ff

Call_076_40c0:
	add  b                                           ; $40c0: $80
	cp   $80                                         ; $40c1: $fe $80
	rst  $38                                         ; $40c3: $ff
	inc  bc                                          ; $40c4: $03
	ld   c, h                                        ; $40c5: $4c
	rst  $28                                         ; $40c6: $ef
	ld   a, [$80fb]                                  ; $40c7: $fa $fb $80
	rst  $38                                         ; $40ca: $ff
	add  b                                           ; $40cb: $80
	rst  $28                                         ; $40cc: $ef
	add  h                                           ; $40cd: $84
	rst  $38                                         ; $40ce: $ff
	add  b                                           ; $40cf: $80
	rst  $28                                         ; $40d0: $ef
	nop                                              ; $40d1: $00
	add  d                                           ; $40d2: $82
	add  b                                           ; $40d3: $80
	cp   $05                                         ; $40d4: $fe $05
	rst  $38                                         ; $40d6: $ff
	ccf                                              ; $40d7: $3f
	rst  $38                                         ; $40d8: $ff
	sbc  a                                           ; $40d9: $9f
	cp   a                                           ; $40da: $bf
	ldh  a, [$81]                                    ; $40db: $f0 $81
	rst  $38                                         ; $40dd: $ff
	add  b                                           ; $40de: $80
	ei                                               ; $40df: $fb
	add  b                                           ; $40e0: $80
	rst  $38                                         ; $40e1: $ff
	nop                                              ; $40e2: $00
	db   $10                                         ; $40e3: $10
	add  b                                           ; $40e4: $80
	nop                                              ; $40e5: $00
	add  e                                           ; $40e6: $83
	rst  $38                                         ; $40e7: $ff
	inc  bc                                          ; $40e8: $03
	add  h                                           ; $40e9: $84
	rst  $38                                         ; $40ea: $ff
	ld   l, [hl]                                     ; $40eb: $6e
	xor  $80                                         ; $40ec: $ee $80
	rst  $38                                         ; $40ee: $ff
	add  b                                           ; $40ef: $80
	ld   a, a                                        ; $40f0: $7f
	nop                                              ; $40f1: $00
	inc  b                                           ; $40f2: $04
	add  b                                           ; $40f3: $80
	nop                                              ; $40f4: $00
	add  e                                           ; $40f5: $83
	rst  $38                                         ; $40f6: $ff
	ld   bc, rAUD1SWEEP                                   ; $40f7: $01 $10 $ff
	add  b                                           ; $40fa: $80
	ei                                               ; $40fb: $fb
	add  b                                           ; $40fc: $80
	rst  $38                                         ; $40fd: $ff
	ld   [bc], a                                     ; $40fe: $02
	ld   a, $fe                                      ; $40ff: $3e $fe
	ret  nc                                          ; $4101: $d0

	add  c                                           ; $4102: $81
	rst  $38                                         ; $4103: $ff
	ld   [bc], a                                     ; $4104: $02
	cp   $01                                         ; $4105: $fe $01
	inc  e                                           ; $4107: $1c
	add  c                                           ; $4108: $81
	sbc  $84                                         ; $4109: $de $84
	rst  $10                                         ; $410b: $d7
	add  hl, bc                                      ; $410c: $09
	sbc  $fd                                         ; $410d: $de $fd
	pop  hl                                          ; $410f: $e1
	di                                               ; $4110: $f3
	rrca                                             ; $4111: $0f
	rst  $38                                         ; $4112: $ff
	and  e                                           ; $4113: $a3
	and  c                                           ; $4114: $a1
	sbc  c                                           ; $4115: $99
	sbc  b                                           ; $4116: $98
	add  b                                           ; $4117: $80
	ld   b, [hl]                                     ; $4118: $46
	inc  b                                           ; $4119: $04
	dec  h                                           ; $411a: $25
	ld   hl, $8daa                                   ; $411b: $21 $aa $8d
	inc  hl                                          ; $411e: $23
	add  b                                           ; $411f: $80
	sbc  h                                           ; $4120: $9c
	add  b                                           ; $4121: $80
	ld   a, e                                        ; $4122: $7b
	add  b                                           ; $4123: $80
	or   d                                           ; $4124: $b2
	add  b                                           ; $4125: $80
	rst  $38                                         ; $4126: $ff
	add  b                                           ; $4127: $80
	db   $ed                                         ; $4128: $ed
	ld   [bc], a                                     ; $4129: $02
	dec  [hl]                                        ; $412a: $35
	rra                                              ; $412b: $1f
	push de                                          ; $412c: $d5
	add  b                                           ; $412d: $80
	ld   e, a                                        ; $412e: $5f
	db   $10                                         ; $412f: $10
	rst  $38                                         ; $4130: $ff
	ld   a, a                                        ; $4131: $7f
	ld   [hl], a                                     ; $4132: $77
	cp   a                                           ; $4133: $bf
	cp   b                                           ; $4134: $b8
	ld   a, a                                        ; $4135: $7f
	ld   [hl], b                                     ; $4136: $70
	ldh  [$e1], a                                    ; $4137: $e0 $e1
	pop  bc                                          ; $4139: $c1
	add  $06                                         ; $413a: $c6 $06
	ld   a, [de]                                     ; $413c: $1a
	ld   a, b                                        ; $413d: $78
	ld   l, h                                        ; $413e: $6c
	ld   d, d                                        ; $413f: $52
	ld   e, h                                        ; $4140: $5c
	add  c                                           ; $4141: $81
	rst  $38                                         ; $4142: $ff
	inc  bc                                          ; $4143: $03
	ld   bc, $eafe                                   ; $4144: $01 $fe $ea
	xor  $80                                         ; $4147: $ee $80
	xor  [hl]                                        ; $4149: $ae
	add  b                                           ; $414a: $80
	ld   e, [hl]                                     ; $414b: $5e
	inc  b                                           ; $414c: $04
	sub  [hl]                                        ; $414d: $96
	sbc  [hl]                                        ; $414e: $9e
	ld   a, [hl]                                     ; $414f: $7e
	ld   a, $4c                                      ; $4150: $3e $4c
	add  b                                           ; $4152: $80
	nop                                              ; $4153: $00
	add  e                                           ; $4154: $83
	rst  $38                                         ; $4155: $ff
	nop                                              ; $4156: $00
	ld   b, c                                        ; $4157: $41
	add  l                                           ; $4158: $85
	rst  $38                                         ; $4159: $ff
	nop                                              ; $415a: $00
	ld   b, c                                        ; $415b: $41
	add  b                                           ; $415c: $80
	nop                                              ; $415d: $00
	add  e                                           ; $415e: $83
	rst  $38                                         ; $415f: $ff
	nop                                              ; $4160: $00
	ld   [bc], a                                     ; $4161: $02
	add  c                                           ; $4162: $81
	rst  $38                                         ; $4163: $ff
	add  b                                           ; $4164: $80
	rst  JumpTable                                         ; $4165: $df
	add  b                                           ; $4166: $80
	rst  $38                                         ; $4167: $ff
	nop                                              ; $4168: $00
	ld   [bc], a                                     ; $4169: $02
	add  b                                           ; $416a: $80
	rra                                              ; $416b: $1f
	add  b                                           ; $416c: $80
	rst  $38                                         ; $416d: $ff
	inc  b                                           ; $416e: $04
	cp   $fa                                         ; $416f: $fe $fa
	db   $fc                                         ; $4171: $fc
	rrca                                             ; $4172: $0f
	rst  $38                                         ; $4173: $ff
	add  d                                           ; $4174: $82
	db   $fd                                         ; $4175: $fd
	add  b                                           ; $4176: $80
	rst  $38                                         ; $4177: $ff
	ld   bc, $0ff7                                   ; $4178: $01 $f7 $0f
	add  b                                           ; $417b: $80
	ld   c, $8a                                      ; $417c: $0e $8a
	rrca                                             ; $417e: $0f
	nop                                              ; $417f: $00
	rra                                              ; $4180: $1f
	add  c                                           ; $4181: $81
	rst  JumpTable                                         ; $4182: $df
	add  b                                           ; $4183: $80
	db   $db                                         ; $4184: $db
	add  d                                           ; $4185: $82
	rst  JumpTable                                         ; $4186: $df
	add  b                                           ; $4187: $80
	sbc  $80                                         ; $4188: $de $80
	ret  c                                           ; $418a: $d8

	inc  bc                                          ; $418b: $03
	sub  $f0                                         ; $418c: $d6 $f0
	cp   c                                           ; $418e: $b9
	cp   a                                           ; $418f: $bf
	add  b                                           ; $4190: $80
	cp   $80                                         ; $4191: $fe $80
	ld   hl, sp-$80                                  ; $4193: $f8 $80
	ldh  a, [rSB]                                    ; $4195: $f0 $01
	add  b                                           ; $4197: $80
	sub  b                                           ; $4198: $90
	add  d                                           ; $4199: $82
	db   $10                                         ; $419a: $10
	inc  bc                                          ; $419b: $03
	ld   a, d                                        ; $419c: $7a
	db   $10                                         ; $419d: $10
	db   $f4                                         ; $419e: $f4
	cp   [hl]                                        ; $419f: $be
	add  b                                           ; $41a0: $80
	ccf                                              ; $41a1: $3f
	add  d                                           ; $41a2: $82
	dec  a                                           ; $41a3: $3d
	add  h                                           ; $41a4: $84
	ccf                                              ; $41a5: $3f
	inc  bc                                          ; $41a6: $03
	rst  JumpTable                                         ; $41a7: $df
	ld   sp, $ffb3                                   ; $41a8: $31 $b3 $ff
	add  b                                           ; $41ab: $80
	rst  $30                                         ; $41ac: $f7
	add  d                                           ; $41ad: $82
	rst  $38                                         ; $41ae: $ff
	add  b                                           ; $41af: $80
	rst  $30                                         ; $41b0: $f7
	add  d                                           ; $41b1: $82
	rst  $38                                         ; $41b2: $ff
	inc  bc                                          ; $41b3: $03
	ld   a, l                                        ; $41b4: $7d
	or   b                                           ; $41b5: $b0
	and  l                                           ; $41b6: $a5
	ld   a, [$ff80]                                  ; $41b7: $fa $80 $ff
	rlca                                             ; $41ba: $07
	ld   h, a                                        ; $41bb: $67
	ld   [hl], a                                     ; $41bc: $77
	xor  $fe                                         ; $41bd: $ee $fe
	rst  $28                                         ; $41bf: $ef
	rst  $38                                         ; $41c0: $ff
	rst  $28                                         ; $41c1: $ef
	rst  $38                                         ; $41c2: $ff
	add  b                                           ; $41c3: $80
	cp   $04                                         ; $41c4: $fe $04
	rst  $28                                         ; $41c6: $ef
	ld   sp, $ff35                                   ; $41c7: $31 $35 $ff
	ld   a, a                                        ; $41ca: $7f
	add  c                                           ; $41cb: $81
	rst  $38                                         ; $41cc: $ff
	add  b                                           ; $41cd: $80
	rst  $28                                         ; $41ce: $ef
	add  h                                           ; $41cf: $84
	rst  $38                                         ; $41d0: $ff
	inc  bc                                          ; $41d1: $03
	ld   a, e                                        ; $41d2: $7b
	dec  b                                           ; $41d3: $05
	ld   d, a                                        ; $41d4: $57
	ld   a, l                                        ; $41d5: $7d
	add  b                                           ; $41d6: $80
	ld   [hl], a                                     ; $41d7: $77
	add  d                                           ; $41d8: $82
	ld   a, a                                        ; $41d9: $7f
	add  b                                           ; $41da: $80
	ld   a, l                                        ; $41db: $7d
	add  c                                           ; $41dc: $81
	ld   a, a                                        ; $41dd: $7f
	inc  bc                                          ; $41de: $03
	rst  $38                                         ; $41df: $ff
	rst  $28                                         ; $41e0: $ef
	ld   b, a                                        ; $41e1: $47
	db   $ec                                         ; $41e2: $ec
	add  d                                           ; $41e3: $82
	rst  $10                                         ; $41e4: $d7
	ld   bc, $c6d6                                   ; $41e5: $01 $d6 $c6
	add  l                                           ; $41e8: $85
	call nz, $cc80                                   ; $41e9: $c4 $80 $cc
	ld   [$63ba], sp                                 ; $41ec: $08 $ba $63
	rlca                                             ; $41ef: $07
	sub  c                                           ; $41f0: $91
	xor  b                                           ; $41f1: $a8
	add  $7e                                         ; $41f2: $c6 $7e
	ldh  [$80], a                                    ; $41f4: $e0 $80
	add  b                                           ; $41f6: $80
	ld   hl, sp+$00                                  ; $41f7: $f8 $00
	rst  $38                                         ; $41f9: $ff
	add  b                                           ; $41fa: $80
	rst  JumpTable                                         ; $41fb: $df
	ld   [$4dcd], sp                                 ; $41fc: $08 $cd $4d
	adc  d                                           ; $41ff: $8a
	rra                                              ; $4200: $1f
	ld   c, $ff                                      ; $4201: $0e $ff
	rst  $10                                         ; $4203: $d7
	adc  $02                                         ; $4204: $ce $02
	add  b                                           ; $4206: $80
	rst  $38                                         ; $4207: $ff
	add  b                                           ; $4208: $80
	rra                                              ; $4209: $1f
	add  b                                           ; $420a: $80
	nop                                              ; $420b: $00
	add  c                                           ; $420c: $81
	rst  $38                                         ; $420d: $ff
	ld   b, $0d                                      ; $420e: $06 $0d
	inc  e                                           ; $4210: $1c
	ld   e, $f1                                      ; $4211: $1e $f1
	ld   h, c                                        ; $4213: $61
	ld   l, [hl]                                     ; $4214: $6e
	ld   c, $80                                      ; $4215: $0e $80
	ldh  a, [$80]                                    ; $4217: $f0 $80
	add  a                                           ; $4219: $87
	add  b                                           ; $421a: $80
	ccf                                              ; $421b: $3f
	nop                                              ; $421c: $00
	rst  $38                                         ; $421d: $ff
	add  b                                           ; $421e: $80
	ld   sp, hl                                      ; $421f: $f9
	ld   [$5eca], sp                                 ; $4220: $08 $ca $5e
	ld   c, [hl]                                     ; $4223: $4e
	cp   [hl]                                        ; $4224: $be
	cp   $7e                                         ; $4225: $fe $7e
	adc  $ea                                         ; $4227: $ce $ea
	ld   a, [hl+]                                    ; $4229: $2a
	add  c                                           ; $422a: $81
	ld   [$6a80], a                                  ; $422b: $ea $80 $6a
	add  b                                           ; $422e: $80
	ld   a, [hl+]                                    ; $422f: $2a
	ld   bc, $f7b6                                   ; $4230: $01 $b6 $f7
	add  h                                           ; $4233: $84
	rst  $38                                         ; $4234: $ff
	add  b                                           ; $4235: $80
	rst  $28                                         ; $4236: $ef
	add  h                                           ; $4237: $84
	rst  $38                                         ; $4238: $ff
	nop                                              ; $4239: $00
	cp   h                                           ; $423a: $bc
	add  c                                           ; $423b: $81
	rst  $38                                         ; $423c: $ff
	add  b                                           ; $423d: $80
	rst  JumpTable                                         ; $423e: $df
	add  [hl]                                        ; $423f: $86

Call_076_4240:
	rst  $38                                         ; $4240: $ff
	add  b                                           ; $4241: $80
	ei                                               ; $4242: $fb
	ld   bc, $fdf7                                   ; $4243: $01 $f7 $fd
	add  b                                           ; $4246: $80
	rst  JumpTable                                         ; $4247: $df
	add  h                                           ; $4248: $84
	rst  $38                                         ; $4249: $ff
	add  d                                           ; $424a: $82
	db   $fd                                         ; $424b: $fd
	add  b                                           ; $424c: $80
	rst  $38                                         ; $424d: $ff
	ld   bc, $0ff7                                   ; $424e: $01 $f7 $0f
	add  b                                           ; $4251: $80
	ld   c, $80                                      ; $4252: $0e $80
	ld   [$0085], sp                                 ; $4254: $08 $85 $00
	add  b                                           ; $4257: $80
	ld   bc, $0001                                   ; $4258: $01 $01 $00
	ld   a, c                                        ; $425b: $79
	add  c                                           ; $425c: $81
	adc  c                                           ; $425d: $89
	add  b                                           ; $425e: $80
	add  hl, bc                                      ; $425f: $09
	add  b                                           ; $4260: $80
	ld   [$1882], sp                                 ; $4261: $08 $82 $18
	dec  b                                           ; $4264: $05
	jr   nc, @+$3b                                   ; $4265: $30 $39

	add  hl, bc                                      ; $4267: $09
	rst  $38                                         ; $4268: $ff
	ld   l, d                                        ; $4269: $6a
	sub  l                                           ; $426a: $95
	add  d                                           ; $426b: $82
	dec  b                                           ; $426c: $05
	add  b                                           ; $426d: $80
	ld   [bc], a                                     ; $426e: $02
	add  b                                           ; $426f: $80
	add  b                                           ; $4270: $80
	add  b                                           ; $4271: $80
	sub  b                                           ; $4272: $90
	inc  b                                           ; $4273: $04
	nop                                              ; $4274: $00
	ld   hl, sp+$38                                  ; $4275: $f8 $38
	rst  $38                                         ; $4277: $ff
	ld   [$3781], sp                                 ; $4278: $08 $81 $37
	add  b                                           ; $427b: $80
	dec  h                                           ; $427c: $25
	add  b                                           ; $427d: $80
	dec  b                                           ; $427e: $05
	add  d                                           ; $427f: $82
	inc  h                                           ; $4280: $24
	dec  b                                           ; $4281: $05
	nop                                              ; $4282: $00
	ldh  a, [$30]                                    ; $4283: $f0 $30
	rst  $38                                         ; $4285: $ff
	ld   bc, $803e                                   ; $4286: $01 $3e $80
	ld   a, [hl+]                                    ; $4289: $2a
	add  b                                           ; $428a: $80
	ld   [$2880], sp                                 ; $428b: $08 $80 $28
	add  b                                           ; $428e: $80
	jr   nz, jr_076_4291                             ; $428f: $20 $00

jr_076_4291:
	nop                                              ; $4291: $00
	add  b                                           ; $4292: $80
	ld   [hl], b                                     ; $4293: $70
	inc  b                                           ; $4294: $04
	ld   hl, sp+$74                                  ; $4295: $f8 $74
	rst  $28                                         ; $4297: $ef
	and  [hl]                                        ; $4298: $a6
	push bc                                          ; $4299: $c5
	add  d                                           ; $429a: $82
	add  l                                           ; $429b: $85
	add  b                                           ; $429c: $80
	inc  b                                           ; $429d: $04
	add  b                                           ; $429e: $80
	ld   hl, $2980                                   ; $429f: $21 $80 $29
	inc  b                                           ; $42a2: $04
	nop                                              ; $42a3: $00
	di                                               ; $42a4: $f3
	ldh  a, [c]                                      ; $42a5: $f2
	rst  $38                                         ; $42a6: $ff
	sbc  e                                           ; $42a7: $9b
	add  b                                           ; $42a8: $80
	ld   h, h                                        ; $42a9: $64
	nop                                              ; $42aa: $00
	ld   h, l                                        ; $42ab: $65
	add  b                                           ; $42ac: $80
	ld   b, l                                        ; $42ad: $45
	add  b                                           ; $42ae: $80
	ld   b, h                                        ; $42af: $44
	add  b                                           ; $42b0: $80
	inc  b                                           ; $42b1: $04
	add  c                                           ; $42b2: $81
	ld   b, $04                                      ; $42b3: $06 $04
	ld   c, $88                                      ; $42b5: $0e $88
	cp   $a1                                         ; $42b7: $fe $a1
	call nz, $c080                                   ; $42b9: $c4 $80 $c0
	ld   [bc], a                                     ; $42bc: $02
	call nz, Call_076_40c0                           ; $42bd: $c4 $c0 $40
	add  c                                           ; $42c0: $81
	ld   c, b                                        ; $42c1: $48
	ld   [$5c40], sp                                 ; $42c2: $08 $40 $5c
	jr   z, @+$41                                    ; $42c5: $28 $3f

	dec  e                                           ; $42c7: $1d
	ccf                                              ; $42c8: $3f
	ret  nc                                          ; $42c9: $d0

	ld   h, [hl]                                     ; $42ca: $66
	ld   [hl], $80                                   ; $42cb: $36 $80
	ld   b, $03                                      ; $42cd: $06 $03
	ld   [bc], a                                     ; $42cf: $02
	inc  bc                                          ; $42d0: $03
	db   $10                                         ; $42d1: $10
	ld   d, b                                        ; $42d2: $50
	add  b                                           ; $42d3: $80
	db   $10                                         ; $42d4: $10
	ld   [$c890], sp                                 ; $42d5: $08 $90 $c8
	sbc  b                                           ; $42d8: $98
	cp   b                                           ; $42d9: $b8
	ld   hl, sp-$4a                                  ; $42da: $f8 $b6
	ld   c, c                                        ; $42dc: $49
	ld   d, c                                        ; $42dd: $51
	ld   b, c                                        ; $42de: $41
	add  b                                           ; $42df: $80
	ld   b, e                                        ; $42e0: $43
	ld   [bc], a                                     ; $42e1: $02
	ld   h, a                                        ; $42e2: $67
	db   $e3                                         ; $42e3: $e3
	ld   [$6281], a                                  ; $42e4: $ea $81 $62
	dec  b                                           ; $42e7: $05
	ld   b, c                                        ; $42e8: $41
	ld   b, b                                        ; $42e9: $40
	ld   b, h                                        ; $42ea: $44
	ld   b, b                                        ; $42eb: $40
	and  [hl]                                        ; $42ec: $a6
	ccf                                              ; $42ed: $3f
	add  b                                           ; $42ee: $80
	ld   [hl-], a                                    ; $42ef: $32
	inc  b                                           ; $42f0: $04
	ld   [hl], d                                     ; $42f1: $72
	ld   [hl-], a                                    ; $42f2: $32
	cp   a                                           ; $42f3: $bf
	rst  $38                                         ; $42f4: $ff
	db   $fd                                         ; $42f5: $fd
	add  b                                           ; $42f6: $80
	daa                                              ; $42f7: $27
	ld   bc, $4347                                   ; $42f8: $01 $47 $43
	add  b                                           ; $42fb: $80
	ld   c, [hl]                                     ; $42fc: $4e
	ld   [bc], a                                     ; $42fd: $02
	ld   b, [hl]                                     ; $42fe: $46
	and  $59                                         ; $42ff: $e6 $59
	add  b                                           ; $4301: $80
	ld   e, b                                        ; $4302: $58
	inc  b                                           ; $4303: $04
	ld   a, [$dcd8]                                  ; $4304: $fa $d8 $dc
	cp   $f2                                         ; $4307: $fe $f2
	add  b                                           ; $4309: $80
	ret  nc                                          ; $430a: $d0

	ld   bc, $9990                                   ; $430b: $01 $90 $99
	add  c                                           ; $430e: $81
	sbc  b                                           ; $430f: $98
	ld   a, [bc]                                     ; $4310: $0a
	ld   c, c                                        ; $4311: $49
	ld   a, [hl+]                                    ; $4312: $2a
	ld   a, [hl-]                                    ; $4313: $3a
	ld   a, [hl+]                                    ; $4314: $2a
	xor  d                                           ; $4315: $aa
	ld   a, [hl+]                                    ; $4316: $2a
	ld   l, $2a                                      ; $4317: $2e $2a
	ld   l, d                                        ; $4319: $6a
	ld   a, [hl+]                                    ; $431a: $2a
	xor  d                                           ; $431b: $aa
	add  e                                           ; $431c: $83
	ld   a, [hl+]                                    ; $431d: $2a
	nop                                              ; $431e: $00
	ld   [$ff81], a                                  ; $431f: $ea $81 $ff
	nop                                              ; $4322: $00
	cp   $81                                         ; $4323: $fe $81
	rst  $38                                         ; $4325: $ff
	add  b                                           ; $4326: $80
	rst  $28                                         ; $4327: $ef

jr_076_4328:
	ld   b, $66                                      ; $4328: $06 $66
	ld   a, a                                        ; $432a: $7f
	add  hl, hl                                      ; $432b: $29
	ld   a, l                                        ; $432c: $7d
	ld   b, d                                        ; $432d: $42
	ld   c, b                                        ; $432e: $48
	ld   a, [$ff81]                                  ; $432f: $fa $81 $ff
	dec  c                                           ; $4332: $0d
	db   $ed                                         ; $4333: $ed
	rst  $28                                         ; $4334: $ef
	ld   e, d                                        ; $4335: $5a
	or   $54                                         ; $4336: $f6 $54
	rst  $30                                         ; $4338: $f7
	ld   d, e                                        ; $4339: $53
	db   $e3                                         ; $433a: $e3
	xor  e                                           ; $433b: $ab
	jp   hl                                          ; $433c: $e9


	ld   hl, sp-$4e                                  ; $433d: $f8 $b2
	ld   b, b                                        ; $433f: $40
	rst  $38                                         ; $4340: $ff
	add  b                                           ; $4341: $80
	ld   a, a                                        ; $4342: $7f
	inc  bc                                          ; $4343: $03
	add  d                                           ; $4344: $82
	push de                                          ; $4345: $d5
	jr   nz, jr_076_4328                             ; $4346: $20 $e0

	add  b                                           ; $4348: $80
	pop  af                                          ; $4349: $f1
	ld   bc, $7191                                   ; $434a: $01 $91 $71
	add  b                                           ; $434d: $80
	ld   a, c                                        ; $434e: $79
	ld   [bc], a                                     ; $434f: $02
	xor  a                                           ; $4350: $af
	rra                                              ; $4351: $1f
	ccf                                              ; $4352: $3f
	add  c                                           ; $4353: $81
	nop                                              ; $4354: $00
	add  b                                           ; $4355: $80
	ld   [bc], a                                     ; $4356: $02
	add  b                                           ; $4357: $80
	rlca                                             ; $4358: $07
	add  h                                           ; $4359: $84
	rrca                                             ; $435a: $0f
	add  b                                           ; $435b: $80
	dec  bc                                          ; $435c: $0b
	inc  bc                                          ; $435d: $03
	ldh  a, [$6c]                                    ; $435e: $f0 $6c
	xor  l                                           ; $4360: $ad
	or   c                                           ; $4361: $b1
	adc  d                                           ; $4362: $8a
	cp   a                                           ; $4363: $bf
	inc  bc                                          ; $4364: $03
	ld   [hl], c                                     ; $4365: $71
	rra                                              ; $4366: $1f
	pop  de                                          ; $4367: $d1
	rst  JumpTable                                         ; $4368: $df
	add  b                                           ; $4369: $80
	rst  $38                                         ; $436a: $ff
	add  b                                           ; $436b: $80
	db   $fd                                         ; $436c: $fd
	add  d                                           ; $436d: $82
	rst  $38                                         ; $436e: $ff
	ld   bc, $beae                                   ; $436f: $01 $ae $be
	add  b                                           ; $4372: $80
	db   $10                                         ; $4373: $10
	ld   [bc], a                                     ; $4374: $02
	sub  e                                           ; $4375: $93
	cp   a                                           ; $4376: $bf
	di                                               ; $4377: $f3
	add  l                                           ; $4378: $85
	rst  $38                                         ; $4379: $ff
	ld   bc, $ffdf                                   ; $437a: $01 $df $ff
	add  d                                           ; $437d: $82
	ccf                                              ; $437e: $3f
	inc  bc                                          ; $437f: $03
	ld   h, a                                        ; $4380: $67
	add  a                                           ; $4381: $87
	adc  a                                           ; $4382: $8f
	add  a                                           ; $4383: $87
	add  b                                           ; $4384: $80
	add  d                                           ; $4385: $82
	nop                                              ; $4386: $00
	add  e                                           ; $4387: $83
	add  c                                           ; $4388: $81
	add  d                                           ; $4389: $82
	ld   [bc], a                                     ; $438a: $02
	sub  b                                           ; $438b: $90
	ret  nz                                          ; $438c: $c0

	call nz, $c081                                   ; $438d: $c4 $81 $c0
	ld   [bc], a                                     ; $4390: $02
	ld   a, [hl]                                     ; $4391: $7e
	rst  $38                                         ; $4392: $ff
	db   $d3                                         ; $4393: $d3
	add  c                                           ; $4394: $81
	rst  $38                                         ; $4395: $ff
	add  b                                           ; $4396: $80
	rst  $30                                         ; $4397: $f7
	add  b                                           ; $4398: $80
	or   e                                           ; $4399: $b3
	add  d                                           ; $439a: $82
	inc  sp                                          ; $439b: $33
	add  b                                           ; $439c: $80
	or   d                                           ; $439d: $b2
	add  hl, bc                                      ; $439e: $09
	ret  nc                                          ; $439f: $d0

	rst  $38                                         ; $43a0: $ff
	rst  $28                                         ; $43a1: $ef
	rst  $38                                         ; $43a2: $ff
	ei                                               ; $43a3: $fb
	rst  $38                                         ; $43a4: $ff
	rst  JumpTable                                         ; $43a5: $df
	rst  $38                                         ; $43a6: $ff
	db   $fd                                         ; $43a7: $fd
	rst  $38                                         ; $43a8: $ff
	add  b                                           ; $43a9: $80
	xor  a                                           ; $43aa: $af
	ld   bc, $afa7                                   ; $43ab: $01 $a7 $af
	add  b                                           ; $43ae: $80
	xor  e                                           ; $43af: $ab
	nop                                              ; $43b0: $00
	sub  b                                           ; $43b1: $90
	add  b                                           ; $43b2: $80
	cp   $01                                         ; $43b3: $fe $01
	ld   a, [hl]                                     ; $43b5: $7e
	halt                                             ; $43b6: $76
	add  h                                           ; $43b7: $84
	ld   a, [hl]                                     ; $43b8: $7e
	add  e                                           ; $43b9: $83
	ld   a, a                                        ; $43ba: $7f
	inc  b                                           ; $43bb: $04
	jr   nz, jr_076_443b                             ; $43bc: $20 $7d

	ld   b, l                                        ; $43be: $45
	ld   e, a                                        ; $43bf: $5f
	ld   e, [hl]                                     ; $43c0: $5e
	add  d                                           ; $43c1: $82
	ld   e, c                                        ; $43c2: $59
	add  c                                           ; $43c3: $81
	ld   e, b                                        ; $43c4: $58
	nop                                              ; $43c5: $00
	ld   c, b                                        ; $43c6: $48
	add  c                                           ; $43c7: $81
	ld   [$bc0c], sp                                 ; $43c8: $08 $0c $bc
	ret  nz                                          ; $43cb: $c0

	ld   b, h                                        ; $43cc: $44
	rst  ToBoot                                         ; $43cd: $c7
	set  0, b                                        ; $43ce: $cb $c0
	call nz, $b1c0                                   ; $43d0: $c4 $c0 $b1
	add  b                                           ; $43d3: $80
	sbc  c                                           ; $43d4: $99
	sbc  a                                           ; $43d5: $9f
	add  b                                           ; $43d6: $80
	add  b                                           ; $43d7: $80
	cp   a                                           ; $43d8: $bf
	ld   a, [bc]                                     ; $43d9: $0a
	sbc  a                                           ; $43da: $9f
	add  $d6                                         ; $43db: $c6 $d6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43dd: $cf
	rst  $38                                         ; $43de: $ff
	and  $66                                         ; $43df: $e6 $66
	and  $46                                         ; $43e1: $e6 $46
	ld   b, $46                                      ; $43e3: $06 $46
	add  c                                           ; $43e5: $81
	add  $00                                         ; $43e6: $c6 $00
	ld   b, [hl]                                     ; $43e8: $46
	add  b                                           ; $43e9: $80
	rst  $38                                         ; $43ea: $ff
	dec  b                                           ; $43eb: $05
	adc  [hl]                                        ; $43ec: $8e
	ld   d, b                                        ; $43ed: $50
	ld   e, h                                        ; $43ee: $5c
	db   $fc                                         ; $43ef: $fc
	ld   e, l                                        ; $43f0: $5d
	db   $10                                         ; $43f1: $10
	add  c                                           ; $43f2: $81
	ld   [hl-], a                                    ; $43f3: $32
	add  hl, bc                                      ; $43f4: $09
	stop                                             ; $43f5: $10 $00
	jr   jr_076_4412                                 ; $43f7: $18 $19

	inc  d                                           ; $43f9: $14
	ld   hl, sp-$01                                  ; $43fa: $f8 $ff
	add  d                                           ; $43fc: $82
	ld   a, [hl+]                                    ; $43fd: $2a
	xor  d                                           ; $43fe: $aa
	add  h                                           ; $43ff: $84
	ld   a, [hl-]                                    ; $4400: $3a
	ld   bc, $9a1a                                   ; $4401: $01 $1a $9a
	add  c                                           ; $4404: $81
	ld   e, $32                                      ; $4405: $1e $32
	sbc  [hl]                                        ; $4407: $9e
	adc  $37                                         ; $4408: $ce $37
	ld   c, h                                        ; $440a: $4c
	dec  bc                                          ; $440b: $0b
	ld   a, d                                        ; $440c: $7a
	ld   a, e                                        ; $440d: $7b
	ld   b, [hl]                                     ; $440e: $46
	ccf                                              ; $440f: $3f
	ld   a, [hl]                                     ; $4410: $7e
	ld   h, h                                        ; $4411: $64

jr_076_4412:
	ld   [hl], h                                     ; $4412: $74
	rla                                              ; $4413: $17
	ld   hl, sp-$44                                  ; $4414: $f8 $bc
	push af                                          ; $4416: $f5
	rst  $30                                         ; $4417: $f7
	ld   [hl], e                                     ; $4418: $73
	db   $dd                                         ; $4419: $dd
	ld   h, b                                        ; $441a: $60
	call Call_076_5f6e                               ; $441b: $cd $6e $5f
	ld   a, [bc]                                     ; $441e: $0a
	ld   [$a78d], sp                                 ; $441f: $08 $8d $a7
	db   $dd                                         ; $4422: $dd
	rst  ToBoot                                         ; $4423: $c7
	xor  $2e                                         ; $4424: $ee $2e
	ld   a, c                                        ; $4426: $79
	halt                                             ; $4427: $76
	sbc  c                                           ; $4428: $99
	db   $d3                                         ; $4429: $d3
	ld   a, a                                        ; $442a: $7f
	ld   a, c                                        ; $442b: $79
	rrca                                             ; $442c: $0f
	add  d                                           ; $442d: $82
	xor  a                                           ; $442e: $af
	daa                                              ; $442f: $27
	rst  $28                                         ; $4430: $ef
	and  $bb                                         ; $4431: $e6 $bb
	and  c                                           ; $4433: $a1
	sub  e                                           ; $4434: $93
	pop  bc                                          ; $4435: $c1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4436: $cf
	ld   l, a                                        ; $4437: $6f
	adc  a                                           ; $4438: $8f
	inc  e                                           ; $4439: $1c
	adc  l                                           ; $443a: $8d

jr_076_443b:
	inc  bc                                          ; $443b: $03
	ld   bc, $b030                                   ; $443c: $01 $30 $b0
	adc  b                                           ; $443f: $88
	jr   nc, jr_076_4442                             ; $4440: $30 $00

jr_076_4442:
	ld   [hl], b                                     ; $4442: $70
	add  b                                           ; $4443: $80
	jr   nc, jr_076_4447                             ; $4444: $30 $01

	ld   [hl], b                                     ; $4446: $70

jr_076_4447:
	ld   h, b                                        ; $4447: $60
	adc  l                                           ; $4448: $8d
	db   $10                                         ; $4449: $10
	add  h                                           ; $444a: $84
	cpl                                              ; $444b: $2f
	add  h                                           ; $444c: $84
	daa                                              ; $444d: $27
	add  d                                           ; $444e: $82
	inc  hl                                          ; $444f: $23
	nop                                              ; $4450: $00
	ld   a, a                                        ; $4451: $7f
	add  d                                           ; $4452: $82
	ldh  [c], a                                      ; $4453: $e2
	add  b                                           ; $4454: $80
	ldh  a, [c]                                      ; $4455: $f2
	add  b                                           ; $4456: $80
	pop  af                                          ; $4457: $f1
	rlca                                             ; $4458: $07
	ld   hl, sp-$05                                  ; $4459: $f8 $fb
	rst  $38                                         ; $445b: $ff
	pop  af                                          ; $445c: $f1
	ldh  a, [$fe]                                    ; $445d: $f0 $fe
	db   $e4                                         ; $445f: $e4
	ld   a, [hl-]                                    ; $4460: $3a
	add  d                                           ; $4461: $82
	or   d                                           ; $4462: $b2
	ld   b, $ba                                      ; $4463: $06 $ba
	cp   c                                           ; $4465: $b9
	ld   h, a                                        ; $4466: $67
	xor  $e8                                         ; $4467: $ee $e8
	ccf                                              ; $4469: $3f
	rst  $38                                         ; $446a: $ff
	add  b                                           ; $446b: $80
	ld   bc, $0080                                   ; $446c: $01 $80 $00
	ld   [bc], a                                     ; $446f: $02
	xor  d                                           ; $4470: $aa
	xor  e                                           ; $4471: $ab
	xor  d                                           ; $4472: $aa
	add  c                                           ; $4473: $81
	xor  e                                           ; $4474: $ab
	add  b                                           ; $4475: $80
	dec  hl                                          ; $4476: $2b
	add  b                                           ; $4477: $80
	cp   $80                                         ; $4478: $fe $80
	or   h                                           ; $447a: $b4
	add  b                                           ; $447b: $80
	rst  $20                                         ; $447c: $e7
	add  b                                           ; $447d: $80
	jr   c, jr_076_4482                              ; $447e: $38 $02

	sbc  c                                           ; $4480: $99
	ld   a, a                                        ; $4481: $7f

jr_076_4482:
	ld   a, [hl]                                     ; $4482: $7e
	add  c                                           ; $4483: $81
	ld   a, a                                        ; $4484: $7f
	inc  bc                                          ; $4485: $03
	ld   h, a                                        ; $4486: $67
	ld   h, e                                        ; $4487: $63
	ld   h, a                                        ; $4488: $67
	ld   h, h                                        ; $4489: $64
	add  b                                           ; $448a: $80
	ld   a, h                                        ; $448b: $7c
	ld   [$fe7e], sp                                 ; $448c: $08 $7e $fe
	ld   h, e                                        ; $448f: $63
	db   $e3                                         ; $4490: $e3
	rrca                                             ; $4491: $0f
	nop                                              ; $4492: $00
	ld   [bc], a                                     ; $4493: $02
	nop                                              ; $4494: $00
	ld   [$0080], sp                                 ; $4495: $08 $80 $00
	add  c                                           ; $4498: $81
	add  b                                           ; $4499: $80
	ld   bc, $8090                                   ; $449a: $01 $90 $80
	add  b                                           ; $449d: $80
	add  d                                           ; $449e: $82
	inc  bc                                          ; $449f: $03
	adc  d                                           ; $44a0: $8a
	jp   z, $9dd1                                    ; $44a1: $ca $d1 $9d

	add  b                                           ; $44a4: $80
	cp   c                                           ; $44a5: $b9
	nop                                              ; $44a6: $00
	ld   sp, hl                                      ; $44a7: $f9
	add  b                                           ; $44a8: $80
	ld   hl, sp+$01                                  ; $44a9: $f8 $01
	ldh  a, [rSVBK]                                  ; $44ab: $f0 $70
	add  d                                           ; $44ad: $82
	ldh  a, [$80]                                    ; $44ae: $f0 $80
	rst  $38                                         ; $44b0: $ff
	ld   bc, $ba03                                   ; $44b1: $01 $03 $ba
	add  c                                           ; $44b4: $81
	ld   b, [hl]                                     ; $44b5: $46
	add  c                                           ; $44b6: $81
	add  $01                                         ; $44b7: $c6 $01
	ld   b, [hl]                                     ; $44b9: $46
	ld   a, a                                        ; $44ba: $7f
	add  d                                           ; $44bb: $82
	ccf                                              ; $44bc: $3f
	add  c                                           ; $44bd: $81
	rst  $38                                         ; $44be: $ff
	nop                                              ; $44bf: $00
	db   $10                                         ; $44c0: $10
	add  b                                           ; $44c1: $80
	ld   de, $1083                                   ; $44c2: $11 $83 $10
	add  [hl]                                        ; $44c5: $86
	rst  $38                                         ; $44c6: $ff
	dec  e                                           ; $44c7: $1d
	ld   bc, $9e8e                                   ; $44c8: $01 $8e $9e
	ld   b, [hl]                                     ; $44cb: $46
	ld   c, [hl]                                     ; $44cc: $4e
	ld   h, $3f                                      ; $44cd: $26 $3f
	rra                                              ; $44cf: $1f
	rst  $38                                         ; $44d0: $ff
	rst  $20                                         ; $44d1: $e7
	rst  $38                                         ; $44d2: $ff
	rst  $20                                         ; $44d3: $e7
	adc  $fe                                         ; $44d4: $ce $fe
	db   $f4                                         ; $44d6: $f4
	cp   $da                                         ; $44d7: $fe $da
	ld   d, c                                        ; $44d9: $51
	ld   h, c                                        ; $44da: $61
	ld   a, a                                        ; $44db: $7f
	ld   l, [hl]                                     ; $44dc: $6e
	db   $fd                                         ; $44dd: $fd
	ld   d, c                                        ; $44de: $51
	db   $fd                                         ; $44df: $fd
	jp   nc, $e3f2                                   ; $44e0: $d2 $f2 $e3

	ld   sp, hl                                      ; $44e3: $f9
	sbc  $db                                         ; $44e4: $de $db
	add  b                                           ; $44e6: $80
	rst  $38                                         ; $44e7: $ff
	dec  b                                           ; $44e8: $05
	ld   hl, $a1bf                                   ; $44e9: $21 $bf $a1
	rst  $28                                         ; $44ec: $ef
	sbc  [hl]                                        ; $44ed: $9e
	ld   a, [hl]                                     ; $44ee: $7e
	add  b                                           ; $44ef: $80
	pop  hl                                          ; $44f0: $e1
	nop                                              ; $44f1: $00
	ld   e, a                                        ; $44f2: $5f
	add  e                                           ; $44f3: $83
	rst  JumpTable                                         ; $44f4: $df
	inc  bc                                          ; $44f5: $03
	db   $fc                                         ; $44f6: $fc
	rst  $38                                         ; $44f7: $ff
	db   $fc                                         ; $44f8: $fc
	rst  $38                                         ; $44f9: $ff
	add  b                                           ; $44fa: $80
	inc  bc                                          ; $44fb: $03
	inc  bc                                          ; $44fc: $03
	db   $ec                                         ; $44fd: $ec
	ldh  a, [$92]                                    ; $44fe: $f0 $92
	pop  af                                          ; $4500: $f1
	add  b                                           ; $4501: $80
	rst  $20                                         ; $4502: $e7
	ld   b, $86                                      ; $4503: $06 $86
	and  $e4                                         ; $4505: $e6 $e4
	db   $fc                                         ; $4507: $fc
	ld   hl, sp-$04                                  ; $4508: $f8 $fc
	rrca                                             ; $450a: $0f
	adc  e                                           ; $450b: $8b
	inc  bc                                          ; $450c: $03
	add  b                                           ; $450d: $80
	ld   [bc], a                                     ; $450e: $02
	nop                                              ; $450f: $00
	ldh  a, [$81]                                    ; $4510: $f0 $81
	ld   [hl], b                                     ; $4512: $70
	add  a                                           ; $4513: $87
	jr   nc, @-$7e                                   ; $4514: $30 $80

	ld   sp, $3f01                                   ; $4516: $31 $01 $3f
	ld   l, a                                        ; $4519: $6f
	add  [hl]                                        ; $451a: $86
	db   $10                                         ; $451b: $10
	ld   bc, $0717                                   ; $451c: $01 $17 $07
	add  b                                           ; $451f: $80
	ld   a, $80                                      ; $4520: $3e $80
	rst  $20                                         ; $4522: $e7
	dec  b                                           ; $4523: $05
	sbc  a                                           ; $4524: $9f
	cp   [hl]                                        ; $4525: $be
	ld   hl, $2720                                   ; $4526: $21 $20 $27
	rlca                                             ; $4529: $07
	add  b                                           ; $452a: $80
	dec  a                                           ; $452b: $3d
	add  b                                           ; $452c: $80
	rst  $38                                         ; $452d: $ff
	ld   [bc], a                                     ; $452e: $02
	cp   a                                           ; $452f: $bf
	cp   [hl]                                        ; $4530: $be
	cp   $80                                         ; $4531: $fe $80
	ldh  a, [$80]                                    ; $4533: $f0 $80
	ret  nz                                          ; $4535: $c0

	inc  b                                           ; $4536: $04
	rst  ToBoot                                         ; $4537: $c7
	ld   hl, sp-$39                                  ; $4538: $f8 $c7
	add  b                                           ; $453a: $80
	ld   hl, sp-$80                                  ; $453b: $f8 $80
	adc  b                                           ; $453d: $88
	dec  bc                                          ; $453e: $0b
	sub  [hl]                                        ; $453f: $96
	ld   d, $f5                                      ; $4540: $16 $f5
	dec  d                                           ; $4542: $15
	inc  e                                           ; $4543: $1c
	call nz, $3807                                   ; $4544: $c4 $07 $38
	nop                                              ; $4547: $00
	add  h                                           ; $4548: $84
	nop                                              ; $4549: $00
	add  e                                           ; $454a: $83
	add  d                                           ; $454b: $82
	nop                                              ; $454c: $00
	inc  b                                           ; $454d: $04
	rst  $28                                         ; $454e: $ef
	rst  $38                                         ; $454f: $ff
	ld   c, c                                        ; $4550: $49
	ld   l, a                                        ; $4551: $6f
	ret                                              ; $4552: $c9


	add  b                                           ; $4553: $80
	rst  $38                                         ; $4554: $ff
	add  b                                           ; $4555: $80
	nop                                              ; $4556: $00
	add  b                                           ; $4557: $80
	jr   z, jr_076_455a                              ; $4558: $28 $00

jr_076_455a:
	rst  $38                                         ; $455a: $ff
	add  b                                           ; $455b: $80
	ld   c, b                                        ; $455c: $48
	ld   b, $f0                                      ; $455d: $06 $f0
	or   b                                           ; $455f: $b0
	jr   z, jr_076_45ca                              ; $4560: $28 $68

	daa                                              ; $4562: $27
	ld   b, $de                                      ; $4563: $06 $de
	add  b                                           ; $4565: $80
	ld   bc, $ff08                                   ; $4566: $01 $08 $ff
	nop                                              ; $4569: $00
	cp   $e1                                         ; $456a: $fe $e1
	di                                               ; $456c: $f3
	db   $e3                                         ; $456d: $e3
	xor  $e2                                         ; $456e: $ee $e2
	ld   h, e                                        ; $4570: $63
	add  b                                           ; $4571: $80
	ld   h, [hl]                                     ; $4572: $66
	rla                                              ; $4573: $17
	ld   a, l                                        ; $4574: $7d
	db   $fc                                         ; $4575: $fc
	ld   h, [hl]                                     ; $4576: $66
	ldh  [$f8], a                                    ; $4577: $e0 $f8
	db   $e3                                         ; $4579: $e3
	ld   h, b                                        ; $457a: $60
	sbc  h                                           ; $457b: $9c
	ld   c, d                                        ; $457c: $4a
	jp   z, $aaea                                    ; $457d: $ca $ea $aa

	and  [hl]                                        ; $4580: $a6
	add  [hl]                                        ; $4581: $86
	sub  [hl]                                        ; $4582: $96
	ld   d, $12                                      ; $4583: $16 $12
	ld   [hl], b                                     ; $4585: $70
	ld   [$0ca8], sp                                 ; $4586: $08 $a8 $0c
	ld   l, h                                        ; $4589: $6c
	inc  e                                           ; $458a: $1c
	and  c                                           ; $458b: $a1
	add  b                                           ; $458c: $80
	ld   [bc], a                                     ; $458d: $02
	inc  b                                           ; $458e: $04
	di                                               ; $458f: $f3
	inc  bc                                          ; $4590: $03
	ldh  a, [c]                                      ; $4591: $f2
	ldh  [c], a                                      ; $4592: $e2
	rst  $38                                         ; $4593: $ff
	add  c                                           ; $4594: $81
	rra                                              ; $4595: $1f
	add  b                                           ; $4596: $80
	nop                                              ; $4597: $00
	add  d                                           ; $4598: $82
	rst  $38                                         ; $4599: $ff
	add  b                                           ; $459a: $80
	nop                                              ; $459b: $00
	add  b                                           ; $459c: $80
	rst  $38                                         ; $459d: $ff
	ld   [bc], a                                     ; $459e: $02
	nop                                              ; $459f: $00
	ld   a, b                                        ; $45a0: $78
	rst  $38                                         ; $45a1: $ff
	add  c                                           ; $45a2: $81
	add  a                                           ; $45a3: $87
	add  b                                           ; $45a4: $80
	rlca                                             ; $45a5: $07
	add  d                                           ; $45a6: $82
	rst  $38                                         ; $45a7: $ff
	add  b                                           ; $45a8: $80
	nop                                              ; $45a9: $00
	add  b                                           ; $45aa: $80
	rst  $38                                         ; $45ab: $ff
	add  b                                           ; $45ac: $80
	nop                                              ; $45ad: $00
	add  b                                           ; $45ae: $80
	rst  $38                                         ; $45af: $ff
	add  h                                           ; $45b0: $84
	ret  nz                                          ; $45b1: $c0

	inc  bc                                          ; $45b2: $03
	rst  $38                                         ; $45b3: $ff
	pop  af                                          ; $45b4: $f1
	ld   a, a                                        ; $45b5: $7f
	ld   [hl], c                                     ; $45b6: $71
	add  b                                           ; $45b7: $80
	rst  JumpTable                                         ; $45b8: $df
	add  b                                           ; $45b9: $80
	ld   d, a                                        ; $45ba: $57
	add  b                                           ; $45bb: $80
	ei                                               ; $45bc: $fb
	dec  bc                                          ; $45bd: $0b
	rst  $38                                         ; $45be: $ff
	rst  $30                                         ; $45bf: $f7
	cp   a                                           ; $45c0: $bf
	cp   l                                           ; $45c1: $bd
	rla                                              ; $45c2: $17
	inc  de                                          ; $45c3: $13
	rst  $20                                         ; $45c4: $e7
	ld   d, [hl]                                     ; $45c5: $56
	ldh  [rVBK], a                                   ; $45c6: $e0 $4f
	ld   l, a                                        ; $45c8: $6f
	ld   e, a                                        ; $45c9: $5f

jr_076_45ca:
	add  b                                           ; $45ca: $80
	rst  JumpTable                                         ; $45cb: $df
	add  c                                           ; $45cc: $81
	rst  $10                                         ; $45cd: $d7
	jr   z, jr_076_4647                              ; $45ce: $28 $77

	rst  $30                                         ; $45d0: $f7
	scf                                              ; $45d1: $37
	di                                               ; $45d2: $f3
	or   e                                           ; $45d3: $b3
	ei                                               ; $45d4: $fb
	ret  z                                           ; $45d5: $c8

	rst  $38                                         ; $45d6: $ff
	cp   c                                           ; $45d7: $b9
	rst  $38                                         ; $45d8: $ff
	add  hl, bc                                      ; $45d9: $09
	rst  $38                                         ; $45da: $ff
	sbc  e                                           ; $45db: $9b
	rst  $38                                         ; $45dc: $ff
	sbc  a                                           ; $45dd: $9f
	rst  $38                                         ; $45de: $ff
	rlca                                             ; $45df: $07
	rst  $38                                         ; $45e0: $ff
	rst  $20                                         ; $45e1: $e7
	rst  $38                                         ; $45e2: $ff
	db   $db                                         ; $45e3: $db
	rst  $38                                         ; $45e4: $ff
	call c, Call_076_76fe                            ; $45e5: $dc $fe $76
	rst  $38                                         ; $45e8: $ff
	rst  JumpTable                                         ; $45e9: $df
	rst  $38                                         ; $45ea: $ff
	jp   $f0ff                                       ; $45eb: $c3 $ff $f0


	rst  $38                                         ; $45ee: $ff
	cp   $ff                                         ; $45ef: $fe $ff
	ld   hl, sp-$01                                  ; $45f1: $f8 $ff
	cp   $ff                                         ; $45f3: $fe $ff
	pop  af                                          ; $45f5: $f1
	ld   [bc], a                                     ; $45f6: $02
	nop                                              ; $45f7: $00
	add  b                                           ; $45f8: $80
	ld   bc, $0e80                                   ; $45f9: $01 $80 $0e
	add  h                                           ; $45fc: $84
	dec  bc                                          ; $45fd: $0b
	add  c                                           ; $45fe: $81
	rrca                                             ; $45ff: $0f
	ld   [bc], a                                     ; $4600: $02
	ccf                                              ; $4601: $3f
	cp   a                                           ; $4602: $bf
	ccf                                              ; $4603: $3f
	add  e                                           ; $4604: $83
	cp   a                                           ; $4605: $bf
	add  b                                           ; $4606: $80
	cp   h                                           ; $4607: $bc
	add  b                                           ; $4608: $80
	or   b                                           ; $4609: $b0
	add  d                                           ; $460a: $82
	add  b                                           ; $460b: $80
	add  b                                           ; $460c: $80
	rst  $38                                         ; $460d: $ff
	add  b                                           ; $460e: $80
	db   $fc                                         ; $460f: $fc
	add  b                                           ; $4610: $80
	ldh  [$c8], a                                    ; $4611: $e0 $c8
	nop                                              ; $4613: $00
	add  b                                           ; $4614: $80
	ld   h, b                                        ; $4615: $60
	inc  d                                           ; $4616: $14
	ld   h, c                                        ; $4617: $61
	ld   h, b                                        ; $4618: $60
	ld   h, e                                        ; $4619: $63
	ld   h, b                                        ; $461a: $60
	ld   l, [hl]                                     ; $461b: $6e
	ld   h, c                                        ; $461c: $61
	ld   a, l                                        ; $461d: $7d
	ld   h, b                                        ; $461e: $60
	ld   a, d                                        ; $461f: $7a
	ld   h, h                                        ; $4620: $64
	ld   a, h                                        ; $4621: $7c
	ld   l, h                                        ; $4622: $6c
	ld   a, h                                        ; $4623: $7c
	ld   [hl], h                                     ; $4624: $74
	sub  h                                           ; $4625: $94
	inc  [hl]                                        ; $4626: $34
	xor  $04                                         ; $4627: $ee $04
	inc  c                                           ; $4629: $0c
	add  l                                           ; $462a: $85
	dec  d                                           ; $462b: $15
	add  b                                           ; $462c: $80
	dec  c                                           ; $462d: $0d
	dec  bc                                          ; $462e: $0b
	rlca                                             ; $462f: $07
	ld   b, a                                        ; $4630: $47
	rlca                                             ; $4631: $07
	rrca                                             ; $4632: $0f
	rlca                                             ; $4633: $07
	rla                                              ; $4634: $17
	rlca                                             ; $4635: $07
	ld   h, b                                        ; $4636: $60
	rst  $38                                         ; $4637: $ff
	nop                                              ; $4638: $00
	rst  $38                                         ; $4639: $ff
	nop                                              ; $463a: $00
	add  b                                           ; $463b: $80
	rst  $38                                         ; $463c: $ff
	adc  b                                           ; $463d: $88
	ld   a, a                                        ; $463e: $7f
	inc  bc                                          ; $463f: $03
	rst  $38                                         ; $4640: $ff
	rlca                                             ; $4641: $07
	rst  $38                                         ; $4642: $ff
	rlca                                             ; $4643: $07
	add  b                                           ; $4644: $80
	rst  $38                                         ; $4645: $ff
	adc  b                                           ; $4646: $88

jr_076_4647:
	rst  $30                                         ; $4647: $f7
	nop                                              ; $4648: $00
	rst  $38                                         ; $4649: $ff
	add  b                                           ; $464a: $80
	ld   hl, sp+$00                                  ; $464b: $f8 $00
	ldh  [$80], a                                    ; $464d: $e0 $80
	ldh  a, [rSB]                                    ; $464f: $f0 $01
	rst  $38                                         ; $4651: $ff
	ret  nz                                          ; $4652: $c0

	add  c                                           ; $4653: $81
	rst  $28                                         ; $4654: $ef
	ld   b, $ce                                      ; $4655: $06 $ce
	rst  $28                                         ; $4657: $ef
	db   $ed                                         ; $4658: $ed
	rst  $28                                         ; $4659: $ef
	ldh  [c], a                                      ; $465a: $e2
	rst  $30                                         ; $465b: $f7
	add  hl, de                                      ; $465c: $19
	add  c                                           ; $465d: $81
	rra                                              ; $465e: $1f
	ld   b, $00                                      ; $465f: $06 $00
	rst  $38                                         ; $4661: $ff
	nop                                              ; $4662: $00
	rst  $38                                         ; $4663: $ff
	adc  [hl]                                        ; $4664: $8e
	rst  $30                                         ; $4665: $f7
	ld   [hl], a                                     ; $4666: $77
	add  c                                           ; $4667: $81
	rst  $30                                         ; $4668: $f7
	dec  b                                           ; $4669: $05
	ldh  [c], a                                      ; $466a: $e2
	rra                                              ; $466b: $1f
	add  e                                           ; $466c: $83
	add  [hl]                                        ; $466d: $86
	sbc  $dc                                         ; $466e: $de $dc
	add  b                                           ; $4670: $80
	inc  a                                           ; $4671: $3c
	ld   bc, $edfd                                   ; $4672: $01 $fd $ed
	add  c                                           ; $4675: $81
	dec  l                                           ; $4676: $2d
	add  b                                           ; $4677: $80
	cpl                                              ; $4678: $2f
	dec  bc                                          ; $4679: $0b
	ccf                                              ; $467a: $3f
	call $edff                                       ; $467b: $cd $ff $ed
	ld   a, a                                        ; $467e: $7f
	sub  [hl]                                        ; $467f: $96
	rst  $38                                         ; $4680: $ff
	ldh  a, [$d8]                                    ; $4681: $f0 $d8
	add  a                                           ; $4683: $87
	sub  a                                           ; $4684: $97
	or   a                                           ; $4685: $b7
	add  b                                           ; $4686: $80
	or   [hl]                                        ; $4687: $b6
	ld   [de], a                                     ; $4688: $12
	or   l                                           ; $4689: $b5
	cp   c                                           ; $468a: $b9
	or   d                                           ; $468b: $b2
	ei                                               ; $468c: $fb
	rst  $38                                         ; $468d: $ff
	cp   $ff                                         ; $468e: $fe $ff
	ld   a, b                                        ; $4690: $78
	cp   $79                                         ; $4691: $fe $79
	inc  bc                                          ; $4693: $03
	ld   a, a                                        ; $4694: $7f
	rst  JumpTable                                         ; $4695: $df
	dec  de                                          ; $4696: $1b
	xor  $22                                         ; $4697: $ee $22
	db   $dd                                         ; $4699: $dd
	ld   de, $13ee                                   ; $469a: $11 $ee $13
	ld   [bc], a                                     ; $469d: $02
	add  [hl]                                        ; $469e: $86
	nop                                              ; $469f: $00
	add  [hl]                                        ; $46a0: $86
	rrca                                             ; $46a1: $0f
	add  [hl]                                        ; $46a2: $86
	nop                                              ; $46a3: $00
	add  [hl]                                        ; $46a4: $86
	rst  $38                                         ; $46a5: $ff
	add  [hl]                                        ; $46a6: $86
	nop                                              ; $46a7: $00
	nop                                              ; $46a8: $00
	rst  $38                                         ; $46a9: $ff
	add  d                                           ; $46aa: $82
	cp   $81                                         ; $46ab: $fe $81
	rst  $38                                         ; $46ad: $ff
	add  [hl]                                        ; $46ae: $86
	nop                                              ; $46af: $00
	nop                                              ; $46b0: $00
	or   [hl]                                        ; $46b1: $b6
	add  c                                           ; $46b2: $81
	ld   c, c                                        ; $46b3: $49
	add  b                                           ; $46b4: $80
	ld   b, e                                        ; $46b5: $43
	ld   [bc], a                                     ; $46b6: $02
	ld   [bc], a                                     ; $46b7: $02
	inc  bc                                          ; $46b8: $03
	cp   $85                                         ; $46b9: $fe $85
	nop                                              ; $46bb: $00
	ld   [bc], a                                     ; $46bc: $02
	ld   a, a                                        ; $46bd: $7f
	rst  $38                                         ; $46be: $ff
	ld   a, a                                        ; $46bf: $7f
	adc  l                                           ; $46c0: $8d
	rst  $38                                         ; $46c1: $ff
	rlca                                             ; $46c2: $07
	db   $e3                                         ; $46c3: $e3
	rst  $38                                         ; $46c4: $ff
	ld   a, l                                        ; $46c5: $7d
	sbc  a                                           ; $46c6: $9f
	ld   e, [hl]                                     ; $46c7: $5e
	ld   e, a                                        ; $46c8: $5f
	ld   c, a                                        ; $46c9: $4f
	or   b                                           ; $46ca: $b0
	add  b                                           ; $46cb: $80
	ld   [hl], b                                     ; $46cc: $70
	add  d                                           ; $46cd: $82
	ldh  a, [$84]                                    ; $46ce: $f0 $84
	ldh  [rSC], a                                    ; $46d0: $e0 $02
	ld   h, b                                        ; $46d2: $60
	ldh  [$80], a                                    ; $46d3: $e0 $80
	add  l                                           ; $46d5: $85
	nop                                              ; $46d6: $00
	nop                                              ; $46d7: $00
	rst  $38                                         ; $46d8: $ff
	add  b                                           ; $46d9: $80
	db   $fc                                         ; $46da: $fc
	add  c                                           ; $46db: $81
	rst  $38                                         ; $46dc: $ff
	ld   [bc], a                                     ; $46dd: $02
	cp   $ff                                         ; $46de: $fe $ff
	ld   bc, $0085                                   ; $46e0: $01 $85 $00
	ld   b, $c0                                      ; $46e3: $06 $c0
	ccf                                              ; $46e5: $3f
	rlca                                             ; $46e6: $07
	add  a                                           ; $46e7: $87
	add  b                                           ; $46e8: $80
	ld   hl, sp+$07                                  ; $46e9: $f8 $07
	add  b                                           ; $46eb: $80
	rst  $38                                         ; $46ec: $ff
	add  l                                           ; $46ed: $85
	nop                                              ; $46ee: $00
	dec  b                                           ; $46ef: $05
	ccf                                              ; $46f0: $3f
	rst  $38                                         ; $46f1: $ff
	rst  ToBoot                                         ; $46f2: $c7
	rst  $38                                         ; $46f3: $ff
	ld   a, b                                        ; $46f4: $78
	ld   a, a                                        ; $46f5: $7f
	add  b                                           ; $46f6: $80
	rrca                                             ; $46f7: $0f
	nop                                              ; $46f8: $00
	rst  $38                                         ; $46f9: $ff
	add  l                                           ; $46fa: $85
	nop                                              ; $46fb: $00
	add  b                                           ; $46fc: $80
	rst  $38                                         ; $46fd: $ff
	inc  bc                                          ; $46fe: $03
	ldh  a, [rIE]                                    ; $46ff: $f0 $ff
	adc  a                                           ; $4701: $8f
	ld   a, a                                        ; $4702: $7f
	add  b                                           ; $4703: $80
	ld   a, [hl]                                     ; $4704: $7e
	nop                                              ; $4705: $00
	rst  $38                                         ; $4706: $ff
	add  l                                           ; $4707: $85
	nop                                              ; $4708: $00
	ld   [bc], a                                     ; $4709: $02
	db   $fc                                         ; $470a: $fc
	rst  $38                                         ; $470b: $ff
	inc  bc                                          ; $470c: $03
	add  c                                           ; $470d: $81
	rst  $38                                         ; $470e: $ff
	add  b                                           ; $470f: $80
	nop                                              ; $4710: $00
	nop                                              ; $4711: $00
	rst  $38                                         ; $4712: $ff
	add  [hl]                                        ; $4713: $86
	nop                                              ; $4714: $00
	add  c                                           ; $4715: $81
	rst  $38                                         ; $4716: $ff
	add  b                                           ; $4717: $80
	ret  nz                                          ; $4718: $c0

	ld   [bc], a                                     ; $4719: $02
	nop                                              ; $471a: $00
	ccf                                              ; $471b: $3f
	ret  nz                                          ; $471c: $c0

	add  [hl]                                        ; $471d: $86
	nop                                              ; $471e: $00
	nop                                              ; $471f: $00
	rst  $38                                         ; $4720: $ff
	add  b                                           ; $4721: $80
	ldh  a, [rP1]                                    ; $4722: $f0 $00
	nop                                              ; $4724: $00
	add  b                                           ; $4725: $80
	rrca                                             ; $4726: $0f
	nop                                              ; $4727: $00
	rst  $38                                         ; $4728: $ff
	add  [hl]                                        ; $4729: $86
	nop                                              ; $472a: $00
	ld   [bc], a                                     ; $472b: $02
	inc  bc                                          ; $472c: $03
	db   $fc                                         ; $472d: $fc
	nop                                              ; $472e: $00
	add  b                                           ; $472f: $80
	inc  bc                                          ; $4730: $03
	add  c                                           ; $4731: $81
	rst  $38                                         ; $4732: $ff
	add  [hl]                                        ; $4733: $86
	nop                                              ; $4734: $00
	nop                                              ; $4735: $00
	rst  $38                                         ; $4736: $ff
	add  b                                           ; $4737: $80
	nop                                              ; $4738: $00
	add  e                                           ; $4739: $83
	rst  $38                                         ; $473a: $ff
	adc  b                                           ; $473b: $88
	rrca                                             ; $473c: $0f
	nop                                              ; $473d: $00
	nop                                              ; $473e: $00
	add  c                                           ; $473f: $81
	rrca                                             ; $4740: $0f
	add  b                                           ; $4741: $80
	nop                                              ; $4742: $00
	nop                                              ; $4743: $00
	ldh  a, [$85]                                    ; $4744: $f0 $85
	rst  $38                                         ; $4746: $ff
	ld   [bc], a                                     ; $4747: $02
	cp   $ff                                         ; $4748: $fe $ff
	ld   b, c                                        ; $474a: $41
	add  c                                           ; $474b: $81
	cp   a                                           ; $474c: $bf
	add  c                                           ; $474d: $81
	nop                                              ; $474e: $00
	add  l                                           ; $474f: $85
	rst  $38                                         ; $4750: $ff
	nop                                              ; $4751: $00
	nop                                              ; $4752: $00
	add  c                                           ; $4753: $81
	rst  $38                                         ; $4754: $ff
	add  c                                           ; $4755: $81
	nop                                              ; $4756: $00
	dec  c                                           ; $4757: $0d
	rst  $38                                         ; $4758: $ff
	ld   sp, hl                                      ; $4759: $f9
	add  a                                           ; $475a: $87
	add  l                                           ; $475b: $85
	add  a                                           ; $475c: $87
	adc  a                                           ; $475d: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $475e: $cf
	adc  h                                           ; $475f: $8c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4760: $cf
	ld   c, a                                        ; $4761: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4762: $cf
	db   $fc                                         ; $4763: $fc
	ldh  a, [$30]                                    ; $4764: $f0 $30
	add  b                                           ; $4766: $80
	inc  sp                                          ; $4767: $33
	ld   bc, $cff3                                   ; $4768: $01 $f3 $cf
	add  c                                           ; $476b: $81
	rst  $38                                         ; $476c: $ff
	inc  bc                                          ; $476d: $03
	ldh  [rIE], a                                    ; $476e: $e0 $ff
	rra                                              ; $4770: $1f
	rst  $38                                         ; $4771: $ff
	add  b                                           ; $4772: $80
	db   $fc                                         ; $4773: $fc
	nop                                              ; $4774: $00
	nop                                              ; $4775: $00
	add  b                                           ; $4776: $80
	inc  bc                                          ; $4777: $03
	add  e                                           ; $4778: $83
	rst  $38                                         ; $4779: $ff
	ld   [bc], a                                     ; $477a: $02
	ld   hl, sp-$01                                  ; $477b: $f8 $ff
	rlca                                             ; $477d: $07
	add  c                                           ; $477e: $81
	rst  $38                                         ; $477f: $ff
	add  c                                           ; $4780: $81
	nop                                              ; $4781: $00
	add  e                                           ; $4782: $83
	rst  $38                                         ; $4783: $ff
	ld   [bc], a                                     ; $4784: $02
	db   $fc                                         ; $4785: $fc
	rst  $38                                         ; $4786: $ff
	inc  bc                                          ; $4787: $03
	add  c                                           ; $4788: $81
	rst  $38                                         ; $4789: $ff
	add  c                                           ; $478a: $81
	nop                                              ; $478b: $00
	rlca                                             ; $478c: $07
	rst  $38                                         ; $478d: $ff
	pop  hl                                          ; $478e: $e1
	rst  $38                                         ; $478f: $ff
	sbc  $e1                                         ; $4790: $de $e1
	ret  nz                                          ; $4792: $c0

	pop  hl                                          ; $4793: $e1
	nop                                              ; $4794: $00
	add  c                                           ; $4795: $81
	rst  $38                                         ; $4796: $ff
	add  b                                           ; $4797: $80
	ret  nz                                          ; $4798: $c0

	nop                                              ; $4799: $00
	nop                                              ; $479a: $00
	add  b                                           ; $479b: $80
	ccf                                              ; $479c: $3f
	add  l                                           ; $479d: $85
	rst  $38                                         ; $479e: $ff
	ld   bc, $ff00                                   ; $479f: $01 $00 $ff
	add  b                                           ; $47a2: $80
	ldh  a, [rP1]                                    ; $47a3: $f0 $00
	nop                                              ; $47a5: $00
	add  b                                           ; $47a6: $80
	rrca                                             ; $47a7: $0f
	add  a                                           ; $47a8: $87
	rst  $38                                         ; $47a9: $ff
	ld   bc, $f10e                                   ; $47aa: $01 $0e $f1
	add  b                                           ; $47ad: $80
	nop                                              ; $47ae: $00
	nop                                              ; $47af: $00
	ld   bc, $f980                                   ; $47b0: $01 $80 $f9
	nop                                              ; $47b3: $00
	db   $fd                                         ; $47b4: $fd
	add  c                                           ; $47b5: $81
	db   $fc                                         ; $47b6: $fc
	add  d                                           ; $47b7: $82
	cp   $80                                         ; $47b8: $fe $80
	rst  $38                                         ; $47ba: $ff
	ld   [bc], a                                     ; $47bb: $02
	ld   bc, $1312                                   ; $47bc: $01 $12 $13
	add  b                                           ; $47bf: $80
	rlca                                             ; $47c0: $07
	add  b                                           ; $47c1: $80
	inc  h                                           ; $47c2: $24
	ld   bc, $2f28                                   ; $47c3: $01 $28 $2f
	add  b                                           ; $47c6: $80
	rrca                                             ; $47c7: $0f
	ld   c, $17                                      ; $47c8: $0e $17
	rra                                              ; $47ca: $1f
	db   $10                                         ; $47cb: $10
	rra                                              ; $47cc: $1f
	nop                                              ; $47cd: $00
	rst  $38                                         ; $47ce: $ff
	ccf                                              ; $47cf: $3f
	rst  $38                                         ; $47d0: $ff
	rst  ToBoot                                         ; $47d1: $c7
	rst  $38                                         ; $47d2: $ff
	jr   c, jr_076_4814                              ; $47d3: $38 $3f

	rlca                                             ; $47d5: $07
	add  a                                           ; $47d6: $87
	add  b                                           ; $47d7: $80
	add  b                                           ; $47d8: $80
	ld   hl, sp+$03                                  ; $47d9: $f8 $03
	rst  $38                                         ; $47db: $ff
	nop                                              ; $47dc: $00
	rst  $38                                         ; $47dd: $ff
	nop                                              ; $47de: $00
	add  l                                           ; $47df: $85
	rst  $38                                         ; $47e0: $ff
	dec  b                                           ; $47e1: $05
	rra                                              ; $47e2: $1f
	rst  $38                                         ; $47e3: $ff
	ld   h, e                                        ; $47e4: $63
	ld   a, a                                        ; $47e5: $7f
	inc  c                                           ; $47e6: $0c
	rrca                                             ; $47e7: $0f
	add  b                                           ; $47e8: $80
	pop  af                                          ; $47e9: $f1
	nop                                              ; $47ea: $00
	nop                                              ; $47eb: $00
	add  a                                           ; $47ec: $87
	rst  $38                                         ; $47ed: $ff
	inc  bc                                          ; $47ee: $03
	cp   $ff                                         ; $47ef: $fe $ff
	add  c                                           ; $47f1: $81
	ld   a, a                                        ; $47f2: $7f
	add  b                                           ; $47f3: $80
	ld   a, [hl]                                     ; $47f4: $7e
	nop                                              ; $47f5: $00
	nop                                              ; $47f6: $00
	add  a                                           ; $47f7: $87
	rst  $38                                         ; $47f8: $ff
	nop                                              ; $47f9: $00
	nop                                              ; $47fa: $00
	add  c                                           ; $47fb: $81
	rst  $38                                         ; $47fc: $ff
	add  c                                           ; $47fd: $81
	nop                                              ; $47fe: $00
	add  l                                           ; $47ff: $85
	rst  $38                                         ; $4800: $ff
	inc  bc                                          ; $4801: $03
	ld   hl, sp-$01                                  ; $4802: $f8 $ff
	rlca                                             ; $4804: $07
	rst  $38                                         ; $4805: $ff
	add  b                                           ; $4806: $80
	cp   $80                                         ; $4807: $fe $80
	ld   bc, $f000                                   ; $4809: $01 $00 $f0
	add  b                                           ; $480c: $80
	nop                                              ; $480d: $00
	adc  e                                           ; $480e: $8b
	rrca                                             ; $480f: $0f
	ld   bc, $01fe                                   ; $4810: $01 $fe $01
	add  b                                           ; $4813: $80

jr_076_4814:
	ld   d, [hl]                                     ; $4814: $56
	ld   [bc], a                                     ; $4815: $02
	inc  d                                           ; $4816: $14
	sub  a                                           ; $4817: $97
	adc  e                                           ; $4818: $8b
	add  b                                           ; $4819: $80
	adc  a                                           ; $481a: $8f
	inc  bc                                          ; $481b: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $481c: $cf
	rst  $10                                         ; $481d: $d7
	rst  JumpTable                                         ; $481e: $df
	rst  $38                                         ; $481f: $ff
	add  c                                           ; $4820: $81
	rst  $28                                         ; $4821: $ef
	ld   b, $2f                                      ; $4822: $06 $2f
	rst  $38                                         ; $4824: $ff
	ld   [hl], b                                     ; $4825: $70
	ld   a, a                                        ; $4826: $7f
	inc  bc                                          ; $4827: $03
	add  e                                           ; $4828: $83
	add  b                                           ; $4829: $80
	add  b                                           ; $482a: $80
	db   $fc                                         ; $482b: $fc
	add  c                                           ; $482c: $81
	rst  $38                                         ; $482d: $ff
	ld   [bc], a                                     ; $482e: $02
	rst  $20                                         ; $482f: $e7
	rst  $38                                         ; $4830: $ff
	db   $db                                         ; $4831: $db
	add  b                                           ; $4832: $80
	rst  $20                                         ; $4833: $e7
	add  c                                           ; $4834: $81
	di                                               ; $4835: $f3
	inc  b                                           ; $4836: $04
	inc  sp                                          ; $4837: $33
	di                                               ; $4838: $f3
	ld   de, $0012                                   ; $4839: $11 $12 $00
	add  b                                           ; $483c: $80
	call z, $ce03                                    ; $483d: $cc $03 $ce
	jp   z, $c1c9                                    ; $4840: $ca $c9 $c1

	add  b                                           ; $4843: $80
	ret  nc                                          ; $4844: $d0

	add  b                                           ; $4845: $80
	sbc  a                                           ; $4846: $9f
	add  b                                           ; $4847: $80
	dec  hl                                          ; $4848: $2b
	add  b                                           ; $4849: $80
	dec  d                                           ; $484a: $15
	add  b                                           ; $484b: $80
	inc  bc                                          ; $484c: $03
	add  b                                           ; $484d: $80
	ld   bc, $0084                                   ; $484e: $01 $84 $00
	add  a                                           ; $4851: $87
	rst  $38                                         ; $4852: $ff
	dec  bc                                          ; $4853: $0b
	ld   a, a                                        ; $4854: $7f
	rst  $38                                         ; $4855: $ff
	inc  bc                                          ; $4856: $03
	ld   a, a                                        ; $4857: $7f
	inc  b                                           ; $4858: $04
	rlca                                             ; $4859: $07
	ld   e, $e1                                      ; $485a: $1e $e1
	ldh  a, [c]                                      ; $485c: $f2
	di                                               ; $485d: $f3
	add  c                                           ; $485e: $81
	rst  $38                                         ; $485f: $ff
	add  b                                           ; $4860: $80
	add  b                                           ; $4861: $80

jr_076_4862:
	add  h                                           ; $4862: $84
	rst  JumpTable                                         ; $4863: $df
	inc  b                                           ; $4864: $04
	ld   e, a                                        ; $4865: $5f
	rst  JumpTable                                         ; $4866: $df
	nop                                              ; $4867: $00
	rst  $38                                         ; $4868: $ff
	nop                                              ; $4869: $00
	add  c                                           ; $486a: $81
	rst  $38                                         ; $486b: $ff
	add  b                                           ; $486c: $80
	nop                                              ; $486d: $00
	add  [hl]                                        ; $486e: $86
	rst  $38                                         ; $486f: $ff
	inc  bc                                          ; $4870: $03
	rlca                                             ; $4871: $07
	rst  $38                                         ; $4872: $ff
	rlca                                             ; $4873: $07
	rst  $38                                         ; $4874: $ff
	add  b                                           ; $4875: $80
	nop                                              ; $4876: $00
	adc  h                                           ; $4877: $8c
	rst  $38                                         ; $4878: $ff
	add  b                                           ; $4879: $80
	nop                                              ; $487a: $00
	adc  b                                           ; $487b: $88
	rst  $38                                         ; $487c: $ff
	add  b                                           ; $487d: $80
	ccf                                              ; $487e: $3f
	add  b                                           ; $487f: $80
	jr   nz, jr_076_4882                             ; $4880: $20 $00

jr_076_4882:
	rst  $38                                         ; $4882: $ff
	adc  d                                           ; $4883: $8a
	rst  JumpTable                                         ; $4884: $df
	nop                                              ; $4885: $00
	rst  $38                                         ; $4886: $ff
	add  b                                           ; $4887: $80
	nop                                              ; $4888: $00
	adc  d                                           ; $4889: $8a
	rst  $38                                         ; $488a: $ff
	add  b                                           ; $488b: $80
	nop                                              ; $488c: $00
	adc  h                                           ; $488d: $8c
	rst  $38                                         ; $488e: $ff
	add  b                                           ; $488f: $80
	ld   bc, $bf8c                                   ; $4890: $01 $8c $bf
	inc  c                                           ; $4893: $0c
	ldh  a, [$f7]                                    ; $4894: $f0 $f7
	or   $f7                                         ; $4896: $f6 $f7
	db   $f4                                         ; $4898: $f4
	or   $f0                                         ; $4899: $f6 $f0
	push af                                          ; $489b: $f5
	rst  $30                                         ; $489c: $f7
	push af                                          ; $489d: $f5
	ldh  a, [$f6]                                    ; $489e: $f0 $f6
	ldh  a, [c]                                      ; $48a0: $f2
	add  c                                           ; $48a1: $81
	rst  $30                                         ; $48a2: $f7
	ld   bc, $fbd8                                   ; $48a3: $01 $d8 $fb
	add  b                                           ; $48a6: $80
	ld   e, e                                        ; $48a7: $5b
	ld   [bc], a                                     ; $48a8: $02
	dec  de                                          ; $48a9: $1b
	ei                                               ; $48aa: $fb
	db   $db                                         ; $48ab: $db
	add  e                                           ; $48ac: $83
	ei                                               ; $48ad: $fb
	inc  b                                           ; $48ae: $04
	jr   jr_076_492c                                 ; $48af: $18 $7b

	ld   a, d                                        ; $48b1: $7a
	cp   d                                           ; $48b2: $ba
	or   b                                           ; $48b3: $b0
	add  b                                           ; $48b4: $80
	rrca                                             ; $48b5: $0f
	nop                                              ; $48b6: $00
	nop                                              ; $48b7: $00
	add  b                                           ; $48b8: $80
	dec  b                                           ; $48b9: $05
	add  b                                           ; $48ba: $80
	ld   a, [bc]                                     ; $48bb: $0a
	add  b                                           ; $48bc: $80
	dec  b                                           ; $48bd: $05
	add  b                                           ; $48be: $80
	ld   a, [bc]                                     ; $48bf: $0a
	add  b                                           ; $48c0: $80
	dec  b                                           ; $48c1: $05
	add  b                                           ; $48c2: $80
	ld   a, [bc]                                     ; $48c3: $0a
	nop                                              ; $48c4: $00
	ret  nz                                          ; $48c5: $c0

	add  b                                           ; $48c6: $80
	rst  $28                                         ; $48c7: $ef
	ld   [bc], a                                     ; $48c8: $02
	cpl                                              ; $48c9: $2f
	ld   e, a                                        ; $48ca: $5f
	ld   d, b                                        ; $48cb: $50
	add  b                                           ; $48cc: $80
	sub  l                                           ; $48cd: $95
	add  b                                           ; $48ce: $80
	ld   e, d                                        ; $48cf: $5a
	add  b                                           ; $48d0: $80
	sub  l                                           ; $48d1: $95
	add  b                                           ; $48d2: $80
	ld   e, d                                        ; $48d3: $5a
	add  b                                           ; $48d4: $80
	sub  l                                           ; $48d5: $95
	ld   bc, $e708                                   ; $48d6: $01 $08 $e7
	add  e                                           ; $48d9: $83
	rst  $38                                         ; $48da: $ff
	ld   [bc], a                                     ; $48db: $02
	inc  bc                                          ; $48dc: $03
	sub  a                                           ; $48dd: $97
	sub  h                                           ; $48de: $94
	add  b                                           ; $48df: $80
	jr   z, jr_076_4862                              ; $48e0: $28 $80

	sub  b                                           ; $48e2: $90
	add  b                                           ; $48e3: $80
	jr   z, jr_076_48e6                              ; $48e4: $28 $00

jr_076_48e6:
	nop                                              ; $48e6: $00
	add  b                                           ; $48e7: $80
	and  b                                           ; $48e8: $a0
	add  b                                           ; $48e9: $80
	ret  nz                                          ; $48ea: $c0

	add  b                                           ; $48eb: $80
	ld   d, h                                        ; $48ec: $54
	add  b                                           ; $48ed: $80
	ld   [$0086], sp                                 ; $48ee: $08 $86 $00
	add  b                                           ; $48f1: $80
	ld   b, $80                                      ; $48f2: $06 $80
	dec  bc                                          ; $48f4: $0b
	add  b                                           ; $48f5: $80
	dec  d                                           ; $48f6: $15
	add  b                                           ; $48f7: $80
	nop                                              ; $48f8: $00
	add  b                                           ; $48f9: $80
	ld   b, b                                        ; $48fa: $40
	add  b                                           ; $48fb: $80
	ldh  [c], a                                      ; $48fc: $e2
	add  b                                           ; $48fd: $80
	rla                                              ; $48fe: $17
	add  b                                           ; $48ff: $80
	add  hl, hl                                      ; $4900: $29
	add  b                                           ; $4901: $80
	ld   a, b                                        ; $4902: $78
	add  b                                           ; $4903: $80
	rst  $38                                         ; $4904: $ff
	add  b                                           ; $4905: $80
	ld   a, a                                        ; $4906: $7f
	add  b                                           ; $4907: $80
	ccf                                              ; $4908: $3f
	add  b                                           ; $4909: $80
	ld   e, a                                        ; $490a: $5f
	add  b                                           ; $490b: $80
	ccf                                              ; $490c: $3f
	add  b                                           ; $490d: $80
	ld   e, a                                        ; $490e: $5f
	ld   bc, $dc83                                   ; $490f: $01 $83 $dc
	add  b                                           ; $4912: $80
	ld   e, a                                        ; $4913: $5f
	adc  e                                           ; $4914: $8b
	rst  JumpTable                                         ; $4915: $df
	nop                                              ; $4916: $00
	ld   a, a                                        ; $4917: $7f
	sub  [hl]                                        ; $4918: $96
	rst  $38                                         ; $4919: $ff
	add  c                                           ; $491a: $81
	rst  $20                                         ; $491b: $e7
	ld   bc, $e7c5                                   ; $491c: $01 $c5 $e7
	add  c                                           ; $491f: $81
	push bc                                          ; $4920: $c5
	adc  l                                           ; $4921: $8d
	rst  $38                                         ; $4922: $ff
	ld   bc, $3f1f                                   ; $4923: $01 $1f $3f
	add  b                                           ; $4926: $80
	rra                                              ; $4927: $1f
	add  b                                           ; $4928: $80
	ccf                                              ; $4929: $3f
	add  b                                           ; $492a: $80
	rra                                              ; $492b: $1f

jr_076_492c:
	add  b                                           ; $492c: $80
	ccf                                              ; $492d: $3f
	add  b                                           ; $492e: $80
	rra                                              ; $492f: $1f
	add  d                                           ; $4930: $82
	ccf                                              ; $4931: $3f
	nop                                              ; $4932: $00
	rst  JumpTable                                         ; $4933: $df
	add  l                                           ; $4934: $85
	rst  $38                                         ; $4935: $ff
	ld   [bc], a                                     ; $4936: $02
	cp   $ff                                         ; $4937: $fe $ff
	db   $fc                                         ; $4939: $fc
	add  c                                           ; $493a: $81
	cp   $02                                         ; $493b: $fe $02
	ld   hl, sp-$04                                  ; $493d: $f8 $fc
	ld   hl, sp-$7e                                  ; $493f: $f8 $82
	rst  $38                                         ; $4941: $ff
	dec  b                                           ; $4942: $05
	ccf                                              ; $4943: $3f
	ld   a, $3f                                      ; $4944: $3e $3f
	cpl                                              ; $4946: $2f
	ccf                                              ; $4947: $3f
	daa                                              ; $4948: $27
	add  b                                           ; $4949: $80
	cpl                                              ; $494a: $2f
	inc  bc                                          ; $494b: $03
	rst  $28                                         ; $494c: $ef
	db   $e3                                         ; $494d: $e3
	rlca                                             ; $494e: $07
	ld   b, d                                        ; $494f: $42
	adc  e                                           ; $4950: $8b
	cp   a                                           ; $4951: $bf
	inc  bc                                          ; $4952: $03
	ccf                                              ; $4953: $3f
	cp   a                                           ; $4954: $bf
	ld   a, a                                        ; $4955: $7f
	rst  $38                                         ; $4956: $ff
	add  b                                           ; $4957: $80
	nop                                              ; $4958: $00
	dec  bc                                          ; $4959: $0b
	jr   nz, jr_076_49db                             ; $495a: $20 $7f

	jr   jr_076_49dd                                 ; $495c: $18 $7f

	rla                                              ; $495e: $17
	ld   a, a                                        ; $495f: $7f
	rrca                                             ; $4960: $0f
	ld   a, a                                        ; $4961: $7f
	rra                                              ; $4962: $1f
	ld   a, a                                        ; $4963: $7f
	dec  a                                           ; $4964: $3d
	ld   a, l                                        ; $4965: $7d
	add  b                                           ; $4966: $80
	ldh  [rSC], a                                    ; $4967: $e0 $02
	db   $10                                         ; $4969: $10
	rra                                              ; $496a: $1f
	rrca                                             ; $496b: $0f
	add  c                                           ; $496c: $81
	rst  $38                                         ; $496d: $ff
	dec  b                                           ; $496e: $05
	rra                                              ; $496f: $1f
	rst  $38                                         ; $4970: $ff
	xor  $fe                                         ; $4971: $ee $fe
	push af                                          ; $4973: $f5
	db   $fd                                         ; $4974: $fd
	add  b                                           ; $4975: $80
	ld   a, [hl]                                     ; $4976: $7e
	ld   bc, $05f2                                   ; $4977: $01 $f2 $05
	add  b                                           ; $497a: $80
	nop                                              ; $497b: $00
	add  b                                           ; $497c: $80
	dec  b                                           ; $497d: $05
	add  b                                           ; $497e: $80
	ld   a, [bc]                                     ; $497f: $0a
	add  b                                           ; $4980: $80
	dec  b                                           ; $4981: $05
	ld   bc, $0a0e                                   ; $4982: $01 $0e $0a
	add  b                                           ; $4985: $80
	ld   bc, $0b03                                   ; $4986: $01 $03 $0b
	dec  b                                           ; $4989: $05
	or   b                                           ; $498a: $b0
	ld   e, d                                        ; $498b: $5a
	add  b                                           ; $498c: $80
	dec  d                                           ; $498d: $15
	add  b                                           ; $498e: $80
	ld   d, b                                        ; $498f: $50
	add  b                                           ; $4990: $80
	sub  l                                           ; $4991: $95
	add  b                                           ; $4992: $80
	ld   e, d                                        ; $4993: $5a
	add  b                                           ; $4994: $80
	sub  l                                           ; $4995: $95
	add  b                                           ; $4996: $80
	ld   e, d                                        ; $4997: $5a
	dec  bc                                          ; $4998: $0b
	sub  h                                           ; $4999: $94
	sub  l                                           ; $499a: $95
	add  c                                           ; $499b: $81
	sub  a                                           ; $499c: $97
	daa                                              ; $499d: $27
	ld   a, [hl+]                                    ; $499e: $2a
	ld   a, [bc]                                     ; $499f: $0a
	inc  e                                           ; $49a0: $1c
	inc  a                                           ; $49a1: $3c
	jr   z, @-$66                                    ; $49a2: $28 $98

	sub  b                                           ; $49a4: $90
	add  b                                           ; $49a5: $80
	jr   nz, jr_076_49a9                             ; $49a6: $20 $01

	add  b                                           ; $49a8: $80

jr_076_49a9:
	nop                                              ; $49a9: $00
	add  b                                           ; $49aa: $80
	jr   nz, jr_076_49ad                             ; $49ab: $20 $00

jr_076_49ad:
	add  b                                           ; $49ad: $80
	add  b                                           ; $49ae: $80
	nop                                              ; $49af: $00
	add  b                                           ; $49b0: $80
	add  b                                           ; $49b1: $80
	add  b                                           ; $49b2: $80
	ld   [$1480], sp                                 ; $49b3: $08 $80 $14
	add  b                                           ; $49b6: $80
	nop                                              ; $49b7: $00
	add  b                                           ; $49b8: $80
	ld   bc, $0082                                   ; $49b9: $01 $82 $00
	add  b                                           ; $49bc: $80
	ld   [bc], a                                     ; $49bd: $02
	add  b                                           ; $49be: $80
	dec  b                                           ; $49bf: $05
	add  b                                           ; $49c0: $80
	nop                                              ; $49c1: $00
	add  b                                           ; $49c2: $80
	jr   nz, @-$7e                                   ; $49c3: $20 $80

	ldh  [$80], a                                    ; $49c5: $e0 $80
	ld   d, b                                        ; $49c7: $50
	add  b                                           ; $49c8: $80
	nop                                              ; $49c9: $00
	ld   [$2d05], sp                                 ; $49ca: $08 $05 $2d
	add  sp, -$2b                                    ; $49cd: $e8 $d5
	ld   [hl], l                                     ; $49cf: $75
	ld   l, b                                        ; $49d0: $68
	ld   c, b                                        ; $49d1: $48
	ld   b, l                                        ; $49d2: $45
	dec  b                                           ; $49d3: $05
	add  b                                           ; $49d4: $80
	ld   [$0506], sp                                 ; $49d5: $08 $06 $05
	dec  [hl]                                        ; $49d8: $35
	jr   nc, jr_076_4a3b                             ; $49d9: $30 $60

jr_076_49db:
	ld   h, l                                        ; $49db: $65
	dec  d                                           ; $49dc: $15

jr_076_49dd:
	ld   c, a                                        ; $49dd: $4f
	add  c                                           ; $49de: $81
	ld   e, a                                        ; $49df: $5f
	add  hl, bc                                      ; $49e0: $09
	sbc  a                                           ; $49e1: $9f
	rst  JumpTable                                         ; $49e2: $df
	rra                                              ; $49e3: $1f
	ld   e, a                                        ; $49e4: $5f
	sbc  a                                           ; $49e5: $9f
	rst  JumpTable                                         ; $49e6: $df
	rra                                              ; $49e7: $1f
	ld   e, a                                        ; $49e8: $5f
	sbc  a                                           ; $49e9: $9f
	rst  JumpTable                                         ; $49ea: $df
	add  b                                           ; $49eb: $80
	ld   e, a                                        ; $49ec: $5f
	nop                                              ; $49ed: $00
	cp   a                                           ; $49ee: $bf
	add  c                                           ; $49ef: $81
	rst  $38                                         ; $49f0: $ff
	nop                                              ; $49f1: $00
	cp   $81                                         ; $49f2: $fe $81
	rst  $38                                         ; $49f4: $ff
	dec  bc                                          ; $49f5: $0b
	db   $fd                                         ; $49f6: $fd
	rst  $38                                         ; $49f7: $ff
	ld   sp, hl                                      ; $49f8: $f9
	rst  $38                                         ; $49f9: $ff
	pop  af                                          ; $49fa: $f1
	rst  $38                                         ; $49fb: $ff
	ldh  a, [c]                                      ; $49fc: $f2
	cp   $b9                                         ; $49fd: $fe $b9
	db   $dd                                         ; $49ff: $dd
	ld   e, l                                        ; $4a00: $5d
	pop  bc                                          ; $4a01: $c1
	add  d                                           ; $4a02: $82
	add  b                                           ; $4a03: $80
	add  a                                           ; $4a04: $87
	nop                                              ; $4a05: $00
	rrca                                             ; $4a06: $0f
	rst  $38                                         ; $4a07: $ff
	ld   a, a                                        ; $4a08: $7f
	rst  $38                                         ; $4a09: $ff
	rst  JumpTable                                         ; $4a0a: $df
	rst  $38                                         ; $4a0b: $ff
	adc  a                                           ; $4a0c: $8f
	rst  $38                                         ; $4a0d: $ff
	ld   b, a                                        ; $4a0e: $47
	ld   a, a                                        ; $4a0f: $7f
	ld   h, a                                        ; $4a10: $67
	ld   a, a                                        ; $4a11: $7f
	ld   h, a                                        ; $4a12: $67
	ld   a, a                                        ; $4a13: $7f
	inc  hl                                          ; $4a14: $23
	ccf                                              ; $4a15: $3f
	db   $eb                                         ; $4a16: $eb
	adc  e                                           ; $4a17: $8b
	ccf                                              ; $4a18: $3f

jr_076_4a19:
	inc  de                                          ; $4a19: $13
	ld   a, $3f                                      ; $4a1a: $3e $3f
	jp   nc, $e8fc                                   ; $4a1c: $d2 $fc $e8

	ld   hl, sp-$18                                  ; $4a1f: $f8 $e8
	ld   hl, sp-$38                                  ; $4a21: $f8 $c8
	ld   hl, sp-$70                                  ; $4a23: $f8 $90
	ldh  a, [$80]                                    ; $4a25: $f0 $80
	ldh  [$30], a                                    ; $4a27: $e0 $30
	ldh  a, [$60]                                    ; $4a29: $f0 $60
	ldh  [$87], a                                    ; $4a2b: $e0 $87
	rlca                                             ; $4a2d: $07
	add  h                                           ; $4a2e: $84
	inc  bc                                          ; $4a2f: $03
	add  b                                           ; $4a30: $80
	ld   bc, $0380                                   ; $4a31: $01 $80 $03
	add  b                                           ; $4a34: $80
	ld   bc, $0380                                   ; $4a35: $01 $80 $03
	nop                                              ; $4a38: $00
	ret  nz                                          ; $4a39: $c0

	add  a                                           ; $4a3a: $87

jr_076_4a3b:
	cp   a                                           ; $4a3b: $bf
	rlca                                             ; $4a3c: $07
	sbc  a                                           ; $4a3d: $9f
	cp   a                                           ; $4a3e: $bf
	sbc  a                                           ; $4a3f: $9f
	cp   a                                           ; $4a40: $bf
	sbc  a                                           ; $4a41: $9f
	cp   a                                           ; $4a42: $bf
	jp   z, $806a                                    ; $4a43: $ca $6a $80

	ld   d, l                                        ; $4a46: $55
	dec  b                                           ; $4a47: $05
	ld   a, [hl+]                                    ; $4a48: $2a
	ld   l, d                                        ; $4a49: $6a
	ld   d, l                                        ; $4a4a: $55
	ld   [hl], l                                     ; $4a4b: $75
	ld   c, b                                        ; $4a4c: $48
	dec  hl                                          ; $4a4d: $2b
	add  b                                           ; $4a4e: $80
	ld   d, a                                        ; $4a4f: $57
	db   $10                                         ; $4a50: $10
	dec  hl                                          ; $4a51: $2b
	cpl                                              ; $4a52: $2f
	rlca                                             ; $4a53: $07
	ld   a, a                                        ; $4a54: $7f
	push bc                                          ; $4a55: $c5
	cp   l                                           ; $4a56: $bd
	ld   c, a                                        ; $4a57: $4f
	ld   a, a                                        ; $4a58: $7f
	or   [hl]                                        ; $4a59: $b6
	rst  $38                                         ; $4a5a: $ff
	ld   b, l                                        ; $4a5b: $45
	ld   a, a                                        ; $4a5c: $7f
	ld   a, e                                        ; $4a5d: $7b
	rst  $38                                         ; $4a5e: $ff
	cp   [hl]                                        ; $4a5f: $be
	rst  $38                                         ; $4a60: $ff
	ld   a, [hl]                                     ; $4a61: $7e
	add  c                                           ; $4a62: $81
	rst  $38                                         ; $4a63: $ff
	ld   bc, $01fe                                   ; $4a64: $01 $fe $01
	add  b                                           ; $4a67: $80
	nop                                              ; $4a68: $00
	add  b                                           ; $4a69: $80
	ld   bc, $0080                                   ; $4a6a: $01 $80 $00
	add  b                                           ; $4a6d: $80
	ld   bc, $0080                                   ; $4a6e: $01 $80 $00
	add  b                                           ; $4a71: $80
	dec  b                                           ; $4a72: $05
	add  b                                           ; $4a73: $80
	ld   a, [bc]                                     ; $4a74: $0a
	rlca                                             ; $4a75: $07
	or   l                                           ; $4a76: $b5
	db   $db                                         ; $4a77: $db
	dec  d                                           ; $4a78: $15
	push de                                          ; $4a79: $d5
	sbc  b                                           ; $4a7a: $98
	ld   e, d                                        ; $4a7b: $5a
	sub  a                                           ; $4a7c: $97
	rst  $10                                         ; $4a7d: $d7
	add  b                                           ; $4a7e: $80
	ld   e, d                                        ; $4a7f: $5a
	add  b                                           ; $4a80: $80
	rst  $10                                         ; $4a81: $d7
	ld   bc, $5e5a                                   ; $4a82: $01 $5a $5e
	add  b                                           ; $4a85: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a86: $cf
	ld   [bc], a                                     ; $4a87: $02
	rst  $10                                         ; $4a88: $d7
	sub  l                                           ; $4a89: $95
	dec  d                                           ; $4a8a: $15
	add  b                                           ; $4a8b: $80
	ld   a, b                                        ; $4a8c: $78
	ld   bc, $c040                                   ; $4a8d: $01 $40 $c0
	add  b                                           ; $4a90: $80
	and  b                                           ; $4a91: $a0
	add  b                                           ; $4a92: $80
	ld   b, b                                        ; $4a93: $40
	add  b                                           ; $4a94: $80
	sbc  b                                           ; $4a95: $98
	add  b                                           ; $4a96: $80
	jr   nz, jr_076_4a19                             ; $4a97: $20 $80

	ret  nz                                          ; $4a99: $c0

	adc  b                                           ; $4a9a: $88
	nop                                              ; $4a9b: $00
	add  b                                           ; $4a9c: $80
	ld   bc, $0082                                   ; $4a9d: $01 $82 $00
	add  b                                           ; $4aa0: $80
	ld   a, [bc]                                     ; $4aa1: $0a
	add  b                                           ; $4aa2: $80
	inc  de                                          ; $4aa3: $13
	add  h                                           ; $4aa4: $84
	nop                                              ; $4aa5: $00
	add  b                                           ; $4aa6: $80
	ld   [hl], c                                     ; $4aa7: $71
	add  b                                           ; $4aa8: $80
	xor  d                                           ; $4aa9: $aa
	add  b                                           ; $4aaa: $80
	ld   de, $b810                                   ; $4aab: $11 $10 $b8
	cp   l                                           ; $4aae: $bd
	ld   h, l                                        ; $4aaf: $65
	ld   l, b                                        ; $4ab0: $68
	ld   [$5515], sp                                 ; $4ab1: $08 $15 $55
	ld   b, b                                        ; $4ab4: $40
	add  sp, -$13                                    ; $4ab5: $e8 $ed
	push af                                          ; $4ab7: $f5
	ldh  a, [$a8]                                    ; $4ab8: $f0 $a8
	xor  c                                           ; $4aba: $a9
	ld   e, c                                        ; $4abb: $59
	rst  ToBoot                                         ; $4abc: $c7
	rst  JumpTable                                         ; $4abd: $df
	add  b                                           ; $4abe: $80
	ld   e, a                                        ; $4abf: $5f
	dec  de                                          ; $4ac0: $1b
	rst  JumpTable                                         ; $4ac1: $df
	db   $dd                                         ; $4ac2: $dd
	ld   e, l                                        ; $4ac3: $5d
	ld   e, a                                        ; $4ac4: $5f
	sbc  a                                           ; $4ac5: $9f
	push de                                          ; $4ac6: $d5
	dec  d                                           ; $4ac7: $15
	ld   e, d                                        ; $4ac8: $5a
	sbc  d                                           ; $4ac9: $9a
	db   $dd                                         ; $4aca: $dd
	rra                                              ; $4acb: $1f
	ld   d, l                                        ; $4acc: $55
	cp   b                                           ; $4acd: $b8
	rst  $38                                         ; $4ace: $ff
	and  $fe                                         ; $4acf: $e6 $fe
	push bc                                          ; $4ad1: $c5
	db   $fd                                         ; $4ad2: $fd
	jp   z, $ddfa                                    ; $4ad3: $ca $fa $dd

	db   $fd                                         ; $4ad6: $fd
	sbc  d                                           ; $4ad7: $9a
	ld   a, [$f595]                                  ; $4ad8: $fa $95 $f5
	cp   d                                           ; $4adb: $ba
	ld   a, d                                        ; $4adc: $7a
	adc  h                                           ; $4add: $8c
	nop                                              ; $4ade: $00
	add  b                                           ; $4adf: $80
	add  b                                           ; $4ae0: $80
	dec  bc                                          ; $4ae1: $0b
	ld   e, d                                        ; $4ae2: $5a
	ld   e, a                                        ; $4ae3: $5f
	add  hl, sp                                      ; $4ae4: $39
	ccf                                              ; $4ae5: $3f
	ld   e, l                                        ; $4ae6: $5d
	ld   e, a                                        ; $4ae7: $5f
	jr   z, @+$2d                                    ; $4ae8: $28 $2b

	ld   e, h                                        ; $4aea: $5c
	ld   e, a                                        ; $4aeb: $5f
	xor  d                                           ; $4aec: $aa
	xor  e                                           ; $4aed: $ab
	add  b                                           ; $4aee: $80
	ld   d, l                                        ; $4aef: $55
	add  b                                           ; $4af0: $80
	xor  e                                           ; $4af1: $ab

jr_076_4af2:
	ld   de, $3fe0                                   ; $4af2: $11 $e0 $3f
	ld   a, $3f                                      ; $4af5: $3e $3f
	dec  a                                           ; $4af7: $3d
	ccf                                              ; $4af8: $3f
	add  hl, sp                                      ; $4af9: $39
	ccf                                              ; $4afa: $3f
	ld   sp, $233f                                   ; $4afb: $31 $3f $23
	ccf                                              ; $4afe: $3f
	daa                                              ; $4aff: $27
	ccf                                              ; $4b00: $3f
	ld   l, $3e                                      ; $4b01: $2e $3e
	db   $10                                         ; $4b03: $10
	ret  nc                                          ; $4b04: $d0

	add  b                                           ; $4b05: $80
	ldh  [$80], a                                    ; $4b06: $e0 $80
	ret  nc                                          ; $4b08: $d0

	add  b                                           ; $4b09: $80
	and  b                                           ; $4b0a: $a0
	add  b                                           ; $4b0b: $80
	ld   d, b                                        ; $4b0c: $50
	add  b                                           ; $4b0d: $80
	xor  b                                           ; $4b0e: $a8
	add  b                                           ; $4b0f: $80
	ld   d, b                                        ; $4b10: $50
	add  b                                           ; $4b11: $80
	xor  d                                           ; $4b12: $aa
	add  b                                           ; $4b13: $80
	ld   bc, $0380                                   ; $4b14: $01 $80 $03
	add  b                                           ; $4b17: $80
	ld   bc, $0380                                   ; $4b18: $01 $80 $03
	add  b                                           ; $4b1b: $80
	ld   bc, $0280                                   ; $4b1c: $01 $80 $02
	ld   bc, $0405                                   ; $4b1f: $01 $05 $04
	add  b                                           ; $4b22: $80
	ld   a, [bc]                                     ; $4b23: $0a
	db   $10                                         ; $4b24: $10
	pop  af                                          ; $4b25: $f1
	cp   a                                           ; $4b26: $bf
	and  a                                           ; $4b27: $a7
	cp   a                                           ; $4b28: $bf
	add  e                                           ; $4b29: $83
	sbc  a                                           ; $4b2a: $9f
	or   e                                           ; $4b2b: $b3
	cp   a                                           ; $4b2c: $bf
	dec  de                                          ; $4b2d: $1b
	rra                                              ; $4b2e: $1f
	xor  c                                           ; $4b2f: $a9
	xor  a                                           ; $4b30: $af
	db   $10                                         ; $4b31: $10
	rla                                              ; $4b32: $17
	xor  h                                           ; $4b33: $ac

jr_076_4b34:
	xor  a                                           ; $4b34: $af
	cp   [hl]                                        ; $4b35: $be
	add  c                                           ; $4b36: $81
	ld   a, a                                        ; $4b37: $7f
	add  b                                           ; $4b38: $80
	ld   [hl], b                                     ; $4b39: $70
	add  b                                           ; $4b3a: $80
	nop                                              ; $4b3b: $00
	ld   bc, $007f                                   ; $4b3c: $01 $7f $00
	add  d                                           ; $4b3f: $82
	rst  $38                                         ; $4b40: $ff
	inc  bc                                          ; $4b41: $03
	ld   a, a                                        ; $4b42: $7f
	rst  $38                                         ; $4b43: $ff
	add  b                                           ; $4b44: $80
	rst  $38                                         ; $4b45: $ff
	add  b                                           ; $4b46: $80
	ret  nz                                          ; $4b47: $c0

	add  d                                           ; $4b48: $82
	nop                                              ; $4b49: $00
	ld   bc, $00ff                                   ; $4b4a: $01 $ff $00
	add  h                                           ; $4b4d: $84
	rst  $38                                         ; $4b4e: $ff
	ld   [bc], a                                     ; $4b4f: $02
	ldh  a, [rIF]                                    ; $4b50: $f0 $0f
	nop                                              ; $4b52: $00
	add  c                                           ; $4b53: $81
	rrca                                             ; $4b54: $0f
	add  b                                           ; $4b55: $80
	ld   c, $80                                      ; $4b56: $0e $80
	ld   [bc], a                                     ; $4b58: $02
	nop                                              ; $4b59: $00
	ld   b, $80                                      ; $4b5a: $06 $80
	ld   [bc], a                                     ; $4b5c: $02
	rlca                                             ; $4b5d: $07
	ld   b, $02                                      ; $4b5e: $06 $02
	ld   b, $f4                                      ; $4b60: $06 $f4
	rst  $28                                         ; $4b62: $ef
	jr   z, jr_076_4b34                              ; $4b63: $28 $cf

	rst  $10                                         ; $4b65: $d7
	add  e                                           ; $4b66: $83
	rst  ToBoot                                         ; $4b67: $c7
	ld   bc, $00e7                                   ; $4b68: $01 $e7 $00
	add  d                                           ; $4b6b: $82
	call c, $ff02                                    ; $4b6c: $dc $02 $ff
	and  b                                           ; $4b6f: $a0
	jr   nz, jr_076_4af2                             ; $4b70: $20 $80

	ret  nz                                          ; $4b72: $c0

	inc  bc                                          ; $4b73: $03
	add  b                                           ; $4b74: $80
	ldh  [$e8], a                                    ; $4b75: $e0 $e8
	ret  z                                           ; $4b77: $c8

	add  b                                           ; $4b78: $80
	call c, $2a01                                    ; $4b79: $dc $01 $2a
	ld   [$d080], a                                  ; $4b7c: $ea $80 $d0
	add  b                                           ; $4b7f: $80
	ldh  [$81], a                                    ; $4b80: $e0 $81
	nop                                              ; $4b82: $00
	ld   [bc], a                                     ; $4b83: $02
	inc  bc                                          ; $4b84: $03
	ld   bc, $8500                                   ; $4b85: $01 $00 $85
	ld   [bc], a                                     ; $4b88: $02
	ld   [bc], a                                     ; $4b89: $02
	ld   b, $02                                      ; $4b8a: $06 $02
	inc  b                                           ; $4b8c: $04
	add  e                                           ; $4b8d: $83
	nop                                              ; $4b8e: $00
	nop                                              ; $4b8f: $00
	rst  $38                                         ; $4b90: $ff
	add  b                                           ; $4b91: $80
	nop                                              ; $4b92: $00
	nop                                              ; $4b93: $00
	rst  $38                                         ; $4b94: $ff
	add  b                                           ; $4b95: $80
	adc  a                                           ; $4b96: $8f
	add  b                                           ; $4b97: $80
	xor  a                                           ; $4b98: $af
	ld   [$4fdf], sp                                 ; $4b99: $08 $df $4f
	sub  h                                           ; $4b9c: $94
	inc  b                                           ; $4b9d: $04
	ld   bc, $2e29                                   ; $4b9e: $01 $29 $2e
	ld   [bc], a                                     ; $4ba1: $02
	ld   hl, sp-$80                                  ; $4ba2: $f8 $80
	inc  b                                           ; $4ba4: $04
	nop                                              ; $4ba5: $00
	db   $fc                                         ; $4ba6: $fc
	add  b                                           ; $4ba7: $80
	inc  b                                           ; $4ba8: $04
	ld   [$5475], sp                                 ; $4ba9: $08 $75 $54
	ld   c, h                                        ; $4bac: $4c
	inc  h                                           ; $4bad: $24
	adc  c                                           ; $4bae: $89
	db   $dd                                         ; $4baf: $dd
	ret  nz                                          ; $4bb0: $c0

	db   $dd                                         ; $4bb1: $dd
	ld   e, a                                        ; $4bb2: $5f
	add  e                                           ; $4bb3: $83
	ld   e, h                                        ; $4bb4: $5c
	add  b                                           ; $4bb5: $80
	ld   c, h                                        ; $4bb6: $4c
	nop                                              ; $4bb7: $00
	db   $fc                                         ; $4bb8: $fc
	add  b                                           ; $4bb9: $80
	inc  bc                                          ; $4bba: $03
	inc  bc                                          ; $4bbb: $03
	nop                                              ; $4bbc: $00
	rst  JumpTable                                         ; $4bbd: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bbe: $cf
	nop                                              ; $4bbf: $00
	add  b                                           ; $4bc0: $80
	ldh  [rP1], a                                    ; $4bc1: $e0 $00
	rst  $28                                         ; $4bc3: $ef
	add  b                                           ; $4bc4: $80
	pop  hl                                          ; $4bc5: $e1
	add  b                                           ; $4bc6: $80
	rst  $20                                         ; $4bc7: $e7
	add  b                                           ; $4bc8: $80
	db   $eb                                         ; $4bc9: $eb
	add  hl, bc                                      ; $4bca: $09
	db   $fc                                         ; $4bcb: $fc
	add  e                                           ; $4bcc: $83
	add  b                                           ; $4bcd: $80
	nop                                              ; $4bce: $00
	rst  $20                                         ; $4bcf: $e7
	rst  $28                                         ; $4bd0: $ef
	nop                                              ; $4bd1: $00
	rla                                              ; $4bd2: $17
	inc  d                                           ; $4bd3: $14
	db   $f4                                         ; $4bd4: $f4
	add  b                                           ; $4bd5: $80
	dec  d                                           ; $4bd6: $15
	dec  bc                                          ; $4bd7: $0b
	dec  [hl]                                        ; $4bd8: $35
	inc  [hl]                                        ; $4bd9: $34
	ld   d, h                                        ; $4bda: $54
	ld   d, l                                        ; $4bdb: $55
	inc  [hl]                                        ; $4bdc: $34
	or   l                                           ; $4bdd: $b5
	ld   a, [hl]                                     ; $4bde: $7e
	nop                                              ; $4bdf: $00
	cp   a                                           ; $4be0: $bf
	sbc  e                                           ; $4be1: $9b
	inc  b                                           ; $4be2: $04
	reti                                             ; $4be3: $d9


	add  c                                           ; $4be4: $81
	ld   e, c                                        ; $4be5: $59
	inc  c                                           ; $4be6: $0c
	reti                                             ; $4be7: $d9


	ld   e, c                                        ; $4be8: $59
	rst  ToBoot                                         ; $4be9: $c7
	ld   e, b                                        ; $4bea: $58
	rst  JumpTable                                         ; $4beb: $df
	ld   e, a                                        ; $4bec: $5f
	rst  JumpTable                                         ; $4bed: $df
	rst  $28                                         ; $4bee: $ef
	rrca                                             ; $4bef: $0f
	cp   l                                           ; $4bf0: $bd
	dec  a                                           ; $4bf1: $3d
	ld   bc, $807e                                   ; $4bf2: $01 $7e $80
	ld   b, d                                        ; $4bf5: $42
	add  b                                           ; $4bf6: $80
	ld   d, [hl]                                     ; $4bf7: $56
	ld   bc, $00ff                                   ; $4bf8: $01 $ff $00
	add  b                                           ; $4bfb: $80
	rst  $38                                         ; $4bfc: $ff
	nop                                              ; $4bfd: $00
	rst  $28                                         ; $4bfe: $ef
	add  c                                           ; $4bff: $81
	rst  $38                                         ; $4c00: $ff
	ld   [bc], a                                     ; $4c01: $02
	rst  $28                                         ; $4c02: $ef
	rst  $38                                         ; $4c03: $ff
	nop                                              ; $4c04: $00
	add  b                                           ; $4c05: $80
	rst  $38                                         ; $4c06: $ff
	inc  b                                           ; $4c07: $04
	rst  JumpTable                                         ; $4c08: $df
	ret  nz                                          ; $4c09: $c0

	rst  $28                                         ; $4c0a: $ef
	ld   h, b                                        ; $4c0b: $60
	xor  a                                           ; $4c0c: $af
	add  b                                           ; $4c0d: $80
	and  b                                           ; $4c0e: $a0
	ld   b, $af                                      ; $4c0f: $06 $af
	xor  e                                           ; $4c11: $ab
	and  c                                           ; $4c12: $a1
	xor  a                                           ; $4c13: $af
	jp   z, $01fe                                    ; $4c14: $ca $fe $01

	add  b                                           ; $4c17: $80
	cp   $0e                                         ; $4c18: $fe $0e
	ld   a, [$fc00]                                  ; $4c1a: $fa $00 $fc
	inc  b                                           ; $4c1d: $04
	db   $fd                                         ; $4c1e: $fd
	dec  b                                           ; $4c1f: $05
	inc  b                                           ; $4c20: $04
	cp   l                                           ; $4c21: $bd
	xor  l                                           ; $4c22: $ad
	and  l                                           ; $4c23: $a5
	sbc  l                                           ; $4c24: $9d
	add  hl, hl                                      ; $4c25: $29
	cp   a                                           ; $4c26: $bf
	ld   b, b                                        ; $4c27: $40
	ld   a, a                                        ; $4c28: $7f
	add  b                                           ; $4c29: $80
	ld   a, $80                                      ; $4c2a: $3e $80
	ld   [bc], a                                     ; $4c2c: $02
	nop                                              ; $4c2d: $00
	ld   a, a                                        ; $4c2e: $7f
	add  b                                           ; $4c2f: $80
	ret  nz                                          ; $4c30: $c0

	nop                                              ; $4c31: $00
	nop                                              ; $4c32: $00
	add  d                                           ; $4c33: $82
	rst  $28                                         ; $4c34: $ef
	add  b                                           ; $4c35: $80
	rst  $38                                         ; $4c36: $ff
	nop                                              ; $4c37: $00
	nop                                              ; $4c38: $00
	add  c                                           ; $4c39: $81
	rst  $38                                         ; $4c3a: $ff
	nop                                              ; $4c3b: $00
	db   $fd                                         ; $4c3c: $fd
	add  b                                           ; $4c3d: $80
	pop  af                                          ; $4c3e: $f1
	inc  b                                           ; $4c3f: $04
	dec  c                                           ; $4c40: $0d
	ld   a, l                                        ; $4c41: $7d
	ld   a, h                                        ; $4c42: $7c
	db   $fc                                         ; $4c43: $fc
	db   $fd                                         ; $4c44: $fd
	add  b                                           ; $4c45: $80
	db   $fc                                         ; $4c46: $fc
	ld   [bc], a                                     ; $4c47: $02
	ldh  a, [rIE]                                    ; $4c48: $f0 $ff
	nop                                              ; $4c4a: $00
	add  [hl]                                        ; $4c4b: $86
	rst  $38                                         ; $4c4c: $ff
	add  b                                           ; $4c4d: $80
	nop                                              ; $4c4e: $00
	nop                                              ; $4c4f: $00
	rst  $38                                         ; $4c50: $ff
	add  b                                           ; $4c51: $80
	inc  bc                                          ; $4c52: $03
	ld   [bc], a                                     ; $4c53: $02
	or   $06                                         ; $4c54: $f6 $06
	ld   [bc], a                                     ; $4c56: $02
	add  c                                           ; $4c57: $81
	ld   b, $01                                      ; $4c58: $06 $01
	dec  bc                                          ; $4c5a: $0b
	nop                                              ; $4c5b: $00
	add  b                                           ; $4c5c: $80
	ld   bc, $0d84                                   ; $4c5d: $01 $84 $0d
	add  b                                           ; $4c60: $80
	call c, $fc82                                    ; $4c61: $dc $82 $fc
	add  b                                           ; $4c64: $80
	ld   b, $00                                      ; $4c65: $06 $00
	or   d                                           ; $4c67: $b2
	add  b                                           ; $4c68: $80
	or   [hl]                                        ; $4c69: $b6
	ld   [bc], a                                     ; $4c6a: $02
	or   h                                           ; $4c6b: $b4
	db   $f4                                         ; $4c6c: $f4
	push af                                          ; $4c6d: $f5
	add  b                                           ; $4c6e: $80
	push hl                                          ; $4c6f: $e5
	nop                                              ; $4c70: $00
	ld   hl, sp-$80                                  ; $4c71: $f8 $80
	ldh  [$80], a                                    ; $4c73: $e0 $80
	db   $f4                                         ; $4c75: $f4
	add  b                                           ; $4c76: $80
	ld   [$f080], a                                  ; $4c77: $ea $80 $f0
	inc  b                                           ; $4c7a: $04
	ldh  [$90], a                                    ; $4c7b: $e0 $90
	ldh  a, [$78]                                    ; $4c7d: $f0 $78
	ld   hl, sp-$80                                  ; $4c7f: $f8 $80
	ldh  a, [rP1]                                    ; $4c81: $f0 $00
	ld   b, $86                                      ; $4c83: $06 $86
	ld   [bc], a                                     ; $4c85: $02
	nop                                              ; $4c86: $00
	ld   a, [bc]                                     ; $4c87: $0a
	add  h                                           ; $4c88: $84
	ld   [bc], a                                     ; $4c89: $02
	ld   hl, $bfa3                                   ; $4c8a: $21 $a3 $bf
	rrca                                             ; $4c8d: $0f
	rst  $38                                         ; $4c8e: $ff
	rrca                                             ; $4c8f: $0f
	xor  a                                           ; $4c90: $af
	rrca                                             ; $4c91: $0f
	rst  JumpTable                                         ; $4c92: $df
	ccf                                              ; $4c93: $3f
	cp   a                                           ; $4c94: $bf
	rrca                                             ; $4c95: $0f
	rst  $38                                         ; $4c96: $ff
	rrca                                             ; $4c97: $0f
	xor  a                                           ; $4c98: $af
	rrca                                             ; $4c99: $0f
	rst  JumpTable                                         ; $4c9a: $df
	call $0554                                       ; $4c9b: $cd $54 $05
	ld   a, l                                        ; $4c9e: $7d
	dec  b                                           ; $4c9f: $05
	ld   d, l                                        ; $4ca0: $55
	dec  b                                           ; $4ca1: $05
	ld   l, l                                        ; $4ca2: $6d
	dec  e                                           ; $4ca3: $1d
	ld   e, l                                        ; $4ca4: $5d
	dec  b                                           ; $4ca5: $05
	ld   a, l                                        ; $4ca6: $7d
	dec  b                                           ; $4ca7: $05
	ld   d, l                                        ; $4ca8: $55
	dec  b                                           ; $4ca9: $05
	ld   l, l                                        ; $4caa: $6d
	or   [hl]                                        ; $4cab: $b6
	nop                                              ; $4cac: $00
	add  b                                           ; $4cad: $80
	or   l                                           ; $4cae: $b5
	add  b                                           ; $4caf: $80
	cp   e                                           ; $4cb0: $bb
	add  b                                           ; $4cb1: $80
	db   $fd                                         ; $4cb2: $fd
	add  b                                           ; $4cb3: $80
	ei                                               ; $4cb4: $fb
	add  b                                           ; $4cb5: $80
	db   $fd                                         ; $4cb6: $fd
	add  b                                           ; $4cb7: $80
	ei                                               ; $4cb8: $fb
	add  b                                           ; $4cb9: $80
	db   $fd                                         ; $4cba: $fd
	add  b                                           ; $4cbb: $80
	nop                                              ; $4cbc: $00
	add  d                                           ; $4cbd: $82
	adc  $80                                         ; $4cbe: $ce $80
	xor  $80                                         ; $4cc0: $ee $80
	adc  $80                                         ; $4cc2: $ce $80
	rst  $20                                         ; $4cc4: $e7
	add  b                                           ; $4cc5: $80
	rst  ToBoot                                         ; $4cc6: $c7
	add  b                                           ; $4cc7: $80
	and  a                                           ; $4cc8: $a7
	add  h                                           ; $4cc9: $84
	ld   h, [hl]                                     ; $4cca: $66
	add  h                                           ; $4ccb: $84
	ld   l, [hl]                                     ; $4ccc: $6e
	add  b                                           ; $4ccd: $80
	ld   a, [hl]                                     ; $4cce: $7e
	add  b                                           ; $4ccf: $80
	cp   l                                           ; $4cd0: $bd
	add  d                                           ; $4cd1: $82
	cpl                                              ; $4cd2: $2f
	add  b                                           ; $4cd3: $80
	ld   l, a                                        ; $4cd4: $6f
	add  b                                           ; $4cd5: $80
	ld   c, a                                        ; $4cd6: $4f
	ld   a, [bc]                                     ; $4cd7: $0a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cd8: $cf
	set  0, d                                        ; $4cd9: $cb $c2
	pop  bc                                          ; $4cdb: $c1
	add  h                                           ; $4cdc: $84
	add  l                                           ; $4cdd: $85
	add  h                                           ; $4cde: $84
	add  l                                           ; $4cdf: $85
	ld   l, b                                        ; $4ce0: $68
	rst  $38                                         ; $4ce1: $ff
	rst  $20                                         ; $4ce2: $e7
	add  e                                           ; $4ce3: $83
	rst  $38                                         ; $4ce4: $ff
	add  b                                           ; $4ce5: $80
	cp   $26                                         ; $4ce6: $fe $26
	cp   [hl]                                        ; $4ce8: $be
	cp   $3a                                         ; $4ce9: $fe $3a
	sbc  $1c                                         ; $4ceb: $de $1c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ced: $cf
	rst  $28                                         ; $4cee: $ef

jr_076_4cef:
	dec  hl                                          ; $4cef: $2b
	ld   hl, $252f                                   ; $4cf0: $21 $2f $25
	dec  hl                                          ; $4cf3: $2b
	ld   h, c                                        ; $4cf4: $61
	ld   l, a                                        ; $4cf5: $6f
	ld   h, l                                        ; $4cf6: $65
	ld   l, e                                        ; $4cf7: $6b
	ld   h, c                                        ; $4cf8: $61
	ld   l, a                                        ; $4cf9: $6f
	ld   h, l                                        ; $4cfa: $65
	ld   l, e                                        ; $4cfb: $6b
	ld   h, c                                        ; $4cfc: $61
	ld   l, a                                        ; $4cfd: $6f
	halt                                             ; $4cfe: $76
	xor  l                                           ; $4cff: $ad
	and  l                                           ; $4d00: $a5
	sbc  l                                           ; $4d01: $9d
	sub  l                                           ; $4d02: $95
	xor  l                                           ; $4d03: $ad
	and  l                                           ; $4d04: $a5
	sbc  l                                           ; $4d05: $9d
	sub  l                                           ; $4d06: $95
	xor  l                                           ; $4d07: $ad
	and  l                                           ; $4d08: $a5
	sbc  l                                           ; $4d09: $9d
	sub  l                                           ; $4d0a: $95
	xor  l                                           ; $4d0b: $ad
	add  l                                           ; $4d0c: $85
	cp   l                                           ; $4d0d: $bd
	add  hl, hl                                      ; $4d0e: $29

jr_076_4d0f:
	add  c                                           ; $4d0f: $81
	rst  $38                                         ; $4d10: $ff
	add  b                                           ; $4d11: $80
	ldh  a, [$84]                                    ; $4d12: $f0 $84
	di                                               ; $4d14: $f3
	add  d                                           ; $4d15: $82
	rst  $30                                         ; $4d16: $f7
	ld   bc, $fcf2                                   ; $4d17: $01 $f2 $fc
	add  b                                           ; $4d1a: $80
	adc  h                                           ; $4d1b: $8c
	add  b                                           ; $4d1c: $80
	inc  c                                           ; $4d1d: $0c
	add  c                                           ; $4d1e: $81
	call z, $cd02                                    ; $4d1f: $cc $02 $cd
	call z, $82cd                                    ; $4d22: $cc $cd $82
	db   $dd                                         ; $4d25: $dd
	rrca                                             ; $4d26: $0f
	ld   [bc], a                                     ; $4d27: $02
	ld   d, a                                        ; $4d28: $57
	ld   e, a                                        ; $4d29: $5f
	scf                                              ; $4d2a: $37
	rla                                              ; $4d2b: $17
	ld   d, a                                        ; $4d2c: $57
	scf                                              ; $4d2d: $37
	adc  a                                           ; $4d2e: $8f
	cp   a                                           ; $4d2f: $bf
	ld   a, a                                        ; $4d30: $7f
	ccf                                              ; $4d31: $3f
	cp   a                                           ; $4d32: $bf
	rlca                                             ; $4d33: $07
	rst  $10                                         ; $4d34: $d7
	sub  a                                           ; $4d35: $97
	rst  $38                                         ; $4d36: $ff
	scf                                              ; $4d37: $37
	ld   [bc], a                                     ; $4d38: $02
	ld   bc, $000f                                   ; $4d39: $01 $0f $00
	adc  h                                           ; $4d3c: $8c
	rrca                                             ; $4d3d: $0f
	ld   bc, $00f0                                   ; $4d3e: $01 $f0 $00
	add  b                                           ; $4d41: $80
	db   $fc                                         ; $4d42: $fc
	add  b                                           ; $4d43: $80
	ld   hl, sp-$80                                  ; $4d44: $f8 $80
	ldh  [$86], a                                    ; $4d46: $e0 $86
	rst  $38                                         ; $4d48: $ff
	nop                                              ; $4d49: $00
	rra                                              ; $4d4a: $1f
	add  d                                           ; $4d4b: $82
	rst  $28                                         ; $4d4c: $ef
	nop                                              ; $4d4d: $00
	rra                                              ; $4d4e: $1f
	adc  c                                           ; $4d4f: $89
	rst  $38                                         ; $4d50: $ff
	adc  l                                           ; $4d51: $8d
	ldh  a, [rSB]                                    ; $4d52: $f0 $01
	rst  $38                                         ; $4d54: $ff
	ldh  a, [$88]                                    ; $4d55: $f0 $88
	rst  $38                                         ; $4d57: $ff
	add  b                                           ; $4d58: $80
	ld   hl, sp-$80                                  ; $4d59: $f8 $80
	rst  $20                                         ; $4d5b: $e7
	add  b                                           ; $4d5c: $80
	ld   a, a                                        ; $4d5d: $7f
	add  b                                           ; $4d5e: $80
	db   $fc                                         ; $4d5f: $fc
	add  b                                           ; $4d60: $80
	di                                               ; $4d61: $f3
	add  b                                           ; $4d62: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d63: $cf
	add  b                                           ; $4d64: $80
	nop                                              ; $4d65: $00
	add  b                                           ; $4d66: $80
	rst  $38                                         ; $4d67: $ff
	add  b                                           ; $4d68: $80
	nop                                              ; $4d69: $00
	add  b                                           ; $4d6a: $80
	rst  $38                                         ; $4d6b: $ff
	add  b                                           ; $4d6c: $80
	jr   nc, jr_076_4cef                             ; $4d6d: $30 $80

	ldh  [$80], a                                    ; $4d6f: $e0 $80
	add  b                                           ; $4d71: $80
	add  b                                           ; $4d72: $80
	rst  $38                                         ; $4d73: $ff
	add  b                                           ; $4d74: $80
	nop                                              ; $4d75: $00
	add  b                                           ; $4d76: $80
	rst  $38                                         ; $4d77: $ff
	add  b                                           ; $4d78: $80
	nop                                              ; $4d79: $00
	add  b                                           ; $4d7a: $80
	rst  $38                                         ; $4d7b: $ff
	add  b                                           ; $4d7c: $80
	dec  [hl]                                        ; $4d7d: $35
	add  b                                           ; $4d7e: $80
	ld   [$0080], sp                                 ; $4d7f: $08 $80 $00
	add  b                                           ; $4d82: $80
	rst  $38                                         ; $4d83: $ff
	add  b                                           ; $4d84: $80
	nop                                              ; $4d85: $00
	add  b                                           ; $4d86: $80
	rst  $38                                         ; $4d87: $ff
	add  b                                           ; $4d88: $80
	nop                                              ; $4d89: $00
	add  b                                           ; $4d8a: $80
	rst  $38                                         ; $4d8b: $ff
	add  b                                           ; $4d8c: $80
	jr   z, jr_076_4d0f                              ; $4d8d: $28 $80

	ld   b, $80                                      ; $4d8f: $06 $80
	nop                                              ; $4d91: $00
	add  b                                           ; $4d92: $80
	rst  $38                                         ; $4d93: $ff
	add  b                                           ; $4d94: $80
	nop                                              ; $4d95: $00
	add  b                                           ; $4d96: $80
	rst  $38                                         ; $4d97: $ff
	add  b                                           ; $4d98: $80

jr_076_4d99:
	nop                                              ; $4d99: $00
	add  b                                           ; $4d9a: $80
	rst  $38                                         ; $4d9b: $ff
	add  b                                           ; $4d9c: $80
	ei                                               ; $4d9d: $fb
	add  b                                           ; $4d9e: $80
	ld   d, b                                        ; $4d9f: $50
	add  b                                           ; $4da0: $80
	nop                                              ; $4da1: $00
	add  b                                           ; $4da2: $80
	rst  $38                                         ; $4da3: $ff
	add  b                                           ; $4da4: $80
	nop                                              ; $4da5: $00
	add  b                                           ; $4da6: $80
	rst  $38                                         ; $4da7: $ff
	add  b                                           ; $4da8: $80
	nop                                              ; $4da9: $00
	add  b                                           ; $4daa: $80
	rst  $38                                         ; $4dab: $ff
	add  h                                           ; $4dac: $84
	nop                                              ; $4dad: $00
	add  b                                           ; $4dae: $80
	rst  $38                                         ; $4daf: $ff
	add  b                                           ; $4db0: $80
	nop                                              ; $4db1: $00
	add  b                                           ; $4db2: $80
	rst  $38                                         ; $4db3: $ff
	add  b                                           ; $4db4: $80
	nop                                              ; $4db5: $00
	add  b                                           ; $4db6: $80
	rst  $38                                         ; $4db7: $ff
	add  b                                           ; $4db8: $80
	dec  b                                           ; $4db9: $05
	add  d                                           ; $4dba: $82
	nop                                              ; $4dbb: $00
	add  b                                           ; $4dbc: $80

jr_076_4dbd:
	rst  $38                                         ; $4dbd: $ff
	add  b                                           ; $4dbe: $80
	nop                                              ; $4dbf: $00
	add  b                                           ; $4dc0: $80
	rst  $38                                         ; $4dc1: $ff
	add  b                                           ; $4dc2: $80
	nop                                              ; $4dc3: $00
	add  b                                           ; $4dc4: $80
	rst  $38                                         ; $4dc5: $ff
	add  b                                           ; $4dc6: $80
	ld   a, [hl-]                                    ; $4dc7: $3a
	add  b                                           ; $4dc8: $80
	ld   b, $80                                      ; $4dc9: $06 $80
	nop                                              ; $4dcb: $00
	add  b                                           ; $4dcc: $80
	rst  $38                                         ; $4dcd: $ff
	add  b                                           ; $4dce: $80
	nop                                              ; $4dcf: $00
	add  b                                           ; $4dd0: $80
	rst  $38                                         ; $4dd1: $ff
	add  b                                           ; $4dd2: $80
	nop                                              ; $4dd3: $00
	add  b                                           ; $4dd4: $80
	rst  $38                                         ; $4dd5: $ff
	add  b                                           ; $4dd6: $80
	and  a                                           ; $4dd7: $a7
	add  b                                           ; $4dd8: $80

jr_076_4dd9:
	add  b                                           ; $4dd9: $80
	add  b                                           ; $4dda: $80
	nop                                              ; $4ddb: $00
	add  b                                           ; $4ddc: $80
	rst  $38                                         ; $4ddd: $ff
	add  b                                           ; $4dde: $80
	nop                                              ; $4ddf: $00
	add  b                                           ; $4de0: $80
	rst  $38                                         ; $4de1: $ff
	add  b                                           ; $4de2: $80
	nop                                              ; $4de3: $00
	add  b                                           ; $4de4: $80
	rst  $38                                         ; $4de5: $ff
	add  d                                           ; $4de6: $82
	ld   b, b                                        ; $4de7: $40
	add  b                                           ; $4de8: $80
	nop                                              ; $4de9: $00
	add  b                                           ; $4dea: $80
	rst  $38                                         ; $4deb: $ff
	add  b                                           ; $4dec: $80
	nop                                              ; $4ded: $00
	add  b                                           ; $4dee: $80
	rst  $38                                         ; $4def: $ff
	add  b                                           ; $4df0: $80
	nop                                              ; $4df1: $00
	add  b                                           ; $4df2: $80
	rst  $38                                         ; $4df3: $ff
	add  b                                           ; $4df4: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4df5: $cf
	add  b                                           ; $4df6: $80
	ld   [hl], e                                     ; $4df7: $73
	add  b                                           ; $4df8: $80
	dec  c                                           ; $4df9: $0d
	add  b                                           ; $4dfa: $80
	cp   $80                                         ; $4dfb: $fe $80
	nop                                              ; $4dfd: $00
	add  b                                           ; $4dfe: $80
	rst  $38                                         ; $4dff: $ff
	add  b                                           ; $4e00: $80
	nop                                              ; $4e01: $00
	add  c                                           ; $4e02: $81
	rst  $38                                         ; $4e03: $ff
	adc  [hl]                                        ; $4e04: $8e
	rrca                                             ; $4e05: $0f
	sbc  c                                           ; $4e06: $99
	rst  $38                                         ; $4e07: $ff
	add  b                                           ; $4e08: $80
	db   $fc                                         ; $4e09: $fc
	add  b                                           ; $4e0a: $80
	di                                               ; $4e0b: $f3
	add  b                                           ; $4e0c: $80
	rst  $38                                         ; $4e0d: $ff
	add  b                                           ; $4e0e: $80
	cp   $80                                         ; $4e0f: $fe $80
	db   $fd                                         ; $4e11: $fd
	add  b                                           ; $4e12: $80
	di                                               ; $4e13: $f3
	add  b                                           ; $4e14: $80
	adc  $80                                         ; $4e15: $ce $80
	jr   c, jr_076_4d99                              ; $4e17: $38 $80

	ldh  [c], a                                      ; $4e19: $e2
	add  b                                           ; $4e1a: $80
	adc  c                                           ; $4e1b: $89
	add  b                                           ; $4e1c: $80
	sbc  h                                           ; $4e1d: $9c
	add  b                                           ; $4e1e: $80
	ld   [hl], b                                     ; $4e1f: $70
	add  b                                           ; $4e20: $80
	ret  nz                                          ; $4e21: $c0

	add  b                                           ; $4e22: $80
	add  b                                           ; $4e23: $80
	add  b                                           ; $4e24: $80
	ld   [$8080], sp                                 ; $4e25: $08 $80 $80
	add  b                                           ; $4e28: $80
	rrca                                             ; $4e29: $0f
	add  b                                           ; $4e2a: $80
	ccf                                              ; $4e2b: $3f
	add  d                                           ; $4e2c: $82
	nop                                              ; $4e2d: $00
	add  b                                           ; $4e2e: $80
	ld   [bc], a                                     ; $4e2f: $02
	add  b                                           ; $4e30: $80
	nop                                              ; $4e31: $00
	add  b                                           ; $4e32: $80
	adc  b                                           ; $4e33: $88
	add  b                                           ; $4e34: $80
	ld   a, [hl-]                                    ; $4e35: $3a
	add  d                                           ; $4e36: $82
	rst  $38                                         ; $4e37: $ff
	add  d                                           ; $4e38: $82
	nop                                              ; $4e39: $00
	add  b                                           ; $4e3a: $80
	jr   nz, jr_076_4dbd                             ; $4e3b: $20 $80

	ld   h, b                                        ; $4e3d: $60
	add  b                                           ; $4e3e: $80
	db   $10                                         ; $4e3f: $10
	add  d                                           ; $4e40: $82
	cp   a                                           ; $4e41: $bf
	add  b                                           ; $4e42: $80
	rst  $38                                         ; $4e43: $ff
	add  d                                           ; $4e44: $82
	nop                                              ; $4e45: $00
	add  b                                           ; $4e46: $80
	db   $fd                                         ; $4e47: $fd
	add  b                                           ; $4e48: $80
	ret  nz                                          ; $4e49: $c0

	add  [hl]                                        ; $4e4a: $86
	rst  $38                                         ; $4e4b: $ff
	add  d                                           ; $4e4c: $82
	nop                                              ; $4e4d: $00
	add  b                                           ; $4e4e: $80
	add  b                                           ; $4e4f: $80
	add  b                                           ; $4e50: $80
	jr   nz, jr_076_4dd9                             ; $4e51: $20 $86

	rst  $38                                         ; $4e53: $ff
	add  b                                           ; $4e54: $80
	nop                                              ; $4e55: $00
	add  b                                           ; $4e56: $80
	ld   b, $80                                      ; $4e57: $06 $80
	ld   [hl], l                                     ; $4e59: $75
	add  b                                           ; $4e5a: $80
	or   c                                           ; $4e5b: $b1
	add  b                                           ; $4e5c: $80
	rst  $38                                         ; $4e5d: $ff
	add  b                                           ; $4e5e: $80
	cp   $82                                         ; $4e5f: $fe $82
	rst  $38                                         ; $4e61: $ff
	add  b                                           ; $4e62: $80
	nop                                              ; $4e63: $00
	add  b                                           ; $4e64: $80
	ld   d, b                                        ; $4e65: $50
	add  b                                           ; $4e66: $80
	ld   e, [hl]                                     ; $4e67: $5e
	add  b                                           ; $4e68: $80
	ldh  a, [c]                                      ; $4e69: $f2
	add  b                                           ; $4e6a: $80
	inc  c                                           ; $4e6b: $0c
	add  b                                           ; $4e6c: $80
	ld   a, l                                        ; $4e6d: $7d
	add  d                                           ; $4e6e: $82
	rst  $38                                         ; $4e6f: $ff
	add  d                                           ; $4e70: $82
	nop                                              ; $4e71: $00
	add  b                                           ; $4e72: $80
	jp   nz, $9f80                                   ; $4e73: $c2 $80 $9f

	add  b                                           ; $4e76: $80
	add  hl, de                                      ; $4e77: $19
	add  b                                           ; $4e78: $80
	cp   $82                                         ; $4e79: $fe $82
	rst  $38                                         ; $4e7b: $ff
	add  d                                           ; $4e7c: $82
	nop                                              ; $4e7d: $00
	add  b                                           ; $4e7e: $80
	daa                                              ; $4e7f: $27
	add  b                                           ; $4e80: $80
	db   $fd                                         ; $4e81: $fd
	add  b                                           ; $4e82: $80
	rst  $38                                         ; $4e83: $ff
	add  b                                           ; $4e84: $80
	sbc  a                                           ; $4e85: $9f
	add  d                                           ; $4e86: $82
	rst  $38                                         ; $4e87: $ff
	add  b                                           ; $4e88: $80
	nop                                              ; $4e89: $00
	add  b                                           ; $4e8a: $80
	dec  b                                           ; $4e8b: $05
	add  b                                           ; $4e8c: $80
	rrca                                             ; $4e8d: $0f
	add  b                                           ; $4e8e: $80
	rla                                              ; $4e8f: $17
	add  [hl]                                        ; $4e90: $86
	rst  $38                                         ; $4e91: $ff
	add  b                                           ; $4e92: $80
	nop                                              ; $4e93: $00
	add  b                                           ; $4e94: $80
	inc  bc                                          ; $4e95: $03
	add  b                                           ; $4e96: $80
	ld   b, h                                        ; $4e97: $44
	add  b                                           ; $4e98: $80
	ld   e, l                                        ; $4e99: $5d
	add  [hl]                                        ; $4e9a: $86
	rst  $38                                         ; $4e9b: $ff
	add  b                                           ; $4e9c: $80
	nop                                              ; $4e9d: $00
	add  b                                           ; $4e9e: $80
	add  b                                           ; $4e9f: $80
	add  b                                           ; $4ea0: $80
	ld   c, e                                        ; $4ea1: $4b
	add  b                                           ; $4ea2: $80
	ld   l, c                                        ; $4ea3: $69
	add  b                                           ; $4ea4: $80
	ret  nz                                          ; $4ea5: $c0

	add  b                                           ; $4ea6: $80
	add  h                                           ; $4ea7: $84
	add  b                                           ; $4ea8: $80
	db   $fd                                         ; $4ea9: $fd
	add  c                                           ; $4eaa: $81
	rst  $38                                         ; $4eab: $ff
	add  l                                           ; $4eac: $85
	nop                                              ; $4ead: $00
	ld   b, $e8                                      ; $4eae: $06 $e8
	ccf                                              ; $4eb0: $3f
	rla                                              ; $4eb1: $17
	ld   a, a                                        ; $4eb2: $7f
	ccf                                              ; $4eb3: $3f
	rst  $38                                         ; $4eb4: $ff
	ld   a, a                                        ; $4eb5: $7f
	add  b                                           ; $4eb6: $80
	rst  $38                                         ; $4eb7: $ff
	add  [hl]                                        ; $4eb8: $86
	nop                                              ; $4eb9: $00
	rlca                                             ; $4eba: $07
	rst  $38                                         ; $4ebb: $ff
	db   $fc                                         ; $4ebc: $fc
	rst  $38                                         ; $4ebd: $ff
	ld   hl, sp-$01                                  ; $4ebe: $f8 $ff
	ldh  [rIE], a                                    ; $4ec0: $e0 $ff
	db   $e4                                         ; $4ec2: $e4
	add  l                                           ; $4ec3: $85
	nop                                              ; $4ec4: $00
	inc  b                                           ; $4ec5: $04
	rst  JumpTable                                         ; $4ec6: $df
	cp   $1e                                         ; $4ec7: $fe $1e
	db   $fc                                         ; $4ec9: $fc
	inc  a                                           ; $4eca: $3c
	add  b                                           ; $4ecb: $80
	pop  af                                          ; $4ecc: $f1
	ld   bc, $3cc3                                   ; $4ecd: $01 $c3 $3c
	add  l                                           ; $4ed0: $85
	nop                                              ; $4ed1: $00
	nop                                              ; $4ed2: $00
	ldh  a, [$80]                                    ; $4ed3: $f0 $80
	stop                                             ; $4ed5: $10 $00
	ld   [hl], b                                     ; $4ed7: $70
	add  d                                           ; $4ed8: $82
	ldh  a, [$03]                                    ; $4ed9: $f0 $03
	ld   a, [hl]                                     ; $4edb: $7e
	pop  hl                                          ; $4edc: $e1
	db   $e3                                         ; $4edd: $e3
	inc  bc                                          ; $4ede: $03
	add  b                                           ; $4edf: $80
	rst  $38                                         ; $4ee0: $ff
	add  b                                           ; $4ee1: $80
	ei                                               ; $4ee2: $fb
	ld   sp, $f979                                   ; $4ee3: $31 $79 $f9
	inc  sp                                          ; $4ee6: $33
	di                                               ; $4ee7: $f3
	rrca                                             ; $4ee8: $0f
	rst  $28                                         ; $4ee9: $ef
	rra                                              ; $4eea: $1f
	rst  $38                                         ; $4eeb: $ff
	xor  l                                           ; $4eec: $ad
	db   $ed                                         ; $4eed: $ed
	ld   [$ceeb], a                                  ; $4eee: $ea $eb $ce
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ef1: $cf
	jr   c, jr_076_4f31                              ; $4ef2: $38 $3d

	ld   [hl], d                                     ; $4ef4: $72
	ld   a, a                                        ; $4ef5: $7f
	ld   h, c                                        ; $4ef6: $61
	ld   a, l                                        ; $4ef7: $7d
	ld   b, a                                        ; $4ef8: $47
	ld   a, e                                        ; $4ef9: $7b
	ld   a, [bc]                                     ; $4efa: $0a
	ld   h, a                                        ; $4efb: $67
	ld   bc, $3eff                                   ; $4efc: $01 $ff $3e
	cp   $3c                                         ; $4eff: $fe $3c
	cp   $35                                         ; $4f01: $fe $35
	rst  $38                                         ; $4f03: $ff
	ld   bc, $4efd                                   ; $4f04: $01 $fd $4e
	rst  $38                                         ; $4f07: $ff
	ld   a, e                                        ; $4f08: $7b
	ei                                               ; $4f09: $fb
	ld   hl, sp-$06                                  ; $4f0a: $f8 $fa
	inc  sp                                          ; $4f0c: $33
	ld   [hl], b                                     ; $4f0d: $70
	ret  nc                                          ; $4f0e: $d0

	ldh  [$80], a                                    ; $4f0f: $e0 $80
	ret  nz                                          ; $4f11: $c0

	nop                                              ; $4f12: $00
	add  b                                           ; $4f13: $80
	and  b                                           ; $4f14: $a0
	add  b                                           ; $4f15: $80
	add  b                                           ; $4f16: $80
	nop                                              ; $4f17: $00
	dec  b                                           ; $4f18: $05
	jr   nz, jr_076_4f1b                             ; $4f19: $20 $00

jr_076_4f1b:
	jr   nz, jr_076_4f1d                             ; $4f1b: $20 $00

jr_076_4f1d:
	jr   z, @-$17                                    ; $4f1d: $28 $e7

	add  [hl]                                        ; $4f1f: $86
	rst  $38                                         ; $4f20: $ff
	add  b                                           ; $4f21: $80
	db   $fd                                         ; $4f22: $fd
	add  b                                           ; $4f23: $80
	db   $e3                                         ; $4f24: $e3
	add  b                                           ; $4f25: $80
	ei                                               ; $4f26: $fb
	nop                                              ; $4f27: $00
	ldh  [$8a], a                                    ; $4f28: $e0 $8a
	add  b                                           ; $4f2a: $80
	add  b                                           ; $4f2b: $80
	adc  a                                           ; $4f2c: $8f
	add  b                                           ; $4f2d: $80
	sbc  a                                           ; $4f2e: $9f
	adc  d                                           ; $4f2f: $8a
	inc  c                                           ; $4f30: $0c

jr_076_4f31:
	add  c                                           ; $4f31: $81
	db   $fc                                         ; $4f32: $fc
	nop                                              ; $4f33: $00
	add  e                                           ; $4f34: $83
	add  e                                           ; $4f35: $83
	nop                                              ; $4f36: $00
	ld   [bc], a                                     ; $4f37: $02
	ld   [hl], b                                     ; $4f38: $70
	nop                                              ; $4f39: $00
	ld   [hl], b                                     ; $4f3a: $70
	add  e                                           ; $4f3b: $83
	nop                                              ; $4f3c: $00
	ld   [bc], a                                     ; $4f3d: $02
	ld   [hl], b                                     ; $4f3e: $70
	nop                                              ; $4f3f: $00
	inc  de                                          ; $4f40: $13
	add  c                                           ; $4f41: $81
	db   $fc                                         ; $4f42: $fc
	add  b                                           ; $4f43: $80
	db   $ec                                         ; $4f44: $ec
	add  b                                           ; $4f45: $80
	ld   h, b                                        ; $4f46: $60
	inc  b                                           ; $4f47: $04
	jr   jr_076_4f4a                                 ; $4f48: $18 $00

jr_076_4f4a:
	ld   b, $00                                      ; $4f4a: $06 $00
	cp   $82                                         ; $4f4c: $fe $82
	nop                                              ; $4f4e: $00
	add  b                                           ; $4f4f: $80
	and  a                                           ; $4f50: $a7
	add  b                                           ; $4f51: $80
	and  b                                           ; $4f52: $a0
	adc  d                                           ; $4f53: $8a
	add  b                                           ; $4f54: $80
	add  b                                           ; $4f55: $80
	db   $fc                                         ; $4f56: $fc
	add  b                                           ; $4f57: $80
	nop                                              ; $4f58: $00
	add  d                                           ; $4f59: $82
	inc  b                                           ; $4f5a: $04
	add  l                                           ; $4f5b: $85
	inc  c                                           ; $4f5c: $0c
	nop                                              ; $4f5d: $00
	ld   [hl], e                                     ; $4f5e: $73
	add  e                                           ; $4f5f: $83
	ld   [hl], b                                     ; $4f60: $70
	add  b                                           ; $4f61: $80
	nop                                              ; $4f62: $00
	add  [hl]                                        ; $4f63: $86
	ld   d, b                                        ; $4f64: $50
	nop                                              ; $4f65: $00
	ldh  a, [$81]                                    ; $4f66: $f0 $81
	rst  $38                                         ; $4f68: $ff
	rla                                              ; $4f69: $17
	db   $fc                                         ; $4f6a: $fc
	rst  $38                                         ; $4f6b: $ff
	ld   hl, sp-$01                                  ; $4f6c: $f8 $ff
	nop                                              ; $4f6e: $00
	rst  $38                                         ; $4f6f: $ff
	inc  bc                                          ; $4f70: $03
	rst  $38                                         ; $4f71: $ff
	rlca                                             ; $4f72: $07
	cp   $1e                                         ; $4f73: $fe $1e
	ld   hl, sp-$80                                  ; $4f75: $f8 $80
	rst  $38                                         ; $4f77: $ff
	rlca                                             ; $4f78: $07
	cp   $1e                                         ; $4f79: $fe $1e
	ld   hl, sp+$79                                  ; $4f7b: $f8 $79
	pop  af                                          ; $4f7d: $f1
	rst  $30                                         ; $4f7e: $f7
	rst  ToBoot                                         ; $4f7f: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f80: $cf
	rrca                                             ; $4f81: $0f
	add  b                                           ; $4f82: $80
	cpl                                              ; $4f83: $2f
	ld   [de], a                                     ; $4f84: $12
	cp   $ff                                         ; $4f85: $fe $ff
	ld   bc, $af8f                                   ; $4f87: $01 $8f $af
	ccf                                              ; $4f8a: $3f
	dec  bc                                          ; $4f8b: $0b
	ccf                                              ; $4f8c: $3f
	add  d                                           ; $4f8d: $82
	cp   a                                           ; $4f8e: $bf
	add  b                                           ; $4f8f: $80
	cp   a                                           ; $4f90: $bf
	push de                                          ; $4f91: $d5
	rst  $38                                         ; $4f92: $ff
	daa                                              ; $4f93: $27
	cp   a                                           ; $4f94: $bf
	ccf                                              ; $4f95: $3f
	rst  $38                                         ; $4f96: $ff
	call nc, $f081                                   ; $4f97: $d4 $81 $f0
	add  hl, de                                      ; $4f9a: $19
	sub  b                                           ; $4f9b: $90
	ldh  a, [$90]                                    ; $4f9c: $f0 $90
	ldh  a, [rSVBK]                                  ; $4f9e: $f0 $70
	ldh  a, [$e0]                                    ; $4fa0: $f0 $e0
	ldh  a, [$c0]                                    ; $4fa2: $f0 $c0
	ldh  a, [$d0]                                    ; $4fa4: $f0 $d0
	ldh  a, [hScriptOpcodeParams]                                    ; $4fa6: $f0 $a0
	rst  $38                                         ; $4fa8: $ff
	sbc  h                                           ; $4fa9: $9c
	db   $fc                                         ; $4faa: $fc
	pop  de                                          ; $4fab: $d1
	di                                               ; $4fac: $f3
	add  sp, -$15                                    ; $4fad: $e8 $eb
	ld   hl, sp-$05                                  ; $4faf: $f8 $fb
	ld   hl, sp-$05                                  ; $4fb1: $f8 $fb
	ld   a, [$80fb]                                  ; $4fb3: $fa $fb $80
	ld   sp, hl                                      ; $4fb6: $f9
	nop                                              ; $4fb7: $00
	ldh  [$80], a                                    ; $4fb8: $e0 $80
	rrca                                             ; $4fba: $0f
	add  b                                           ; $4fbb: $80
	rst  $28                                         ; $4fbc: $ef
	add  d                                           ; $4fbd: $82
	rst  $38                                         ; $4fbe: $ff
	add  [hl]                                        ; $4fbf: $86

jr_076_4fc0:
	nop                                              ; $4fc0: $00
	add  d                                           ; $4fc1: $82
	cp   $80                                         ; $4fc2: $fe $80
	db   $fc                                         ; $4fc4: $fc
	add  b                                           ; $4fc5: $80
	cp   $85                                         ; $4fc6: $fe $85
	nop                                              ; $4fc8: $00
	ld   b, $af                                      ; $4fc9: $06 $af
	nop                                              ; $4fcb: $00
	and  b                                           ; $4fcc: $a0
	nop                                              ; $4fcd: $00
	and  b                                           ; $4fce: $a0
	nop                                              ; $4fcf: $00
	and  b                                           ; $4fd0: $a0
	add  b                                           ; $4fd1: $80
	ldh  a, [$81]                                    ; $4fd2: $f0 $81
	nop                                              ; $4fd4: $00
	inc  b                                           ; $4fd5: $04
	ld   [hl], b                                     ; $4fd6: $70
	nop                                              ; $4fd7: $00
	ld   [hl], b                                     ; $4fd8: $70
	nop                                              ; $4fd9: $00
	inc  d                                           ; $4fda: $14
	add  e                                           ; $4fdb: $83
	ei                                               ; $4fdc: $fb
	add  b                                           ; $4fdd: $80

Call_076_4fde:
	ldh  [$82], a                                    ; $4fde: $e0 $82
	rst  $38                                         ; $4fe0: $ff
	inc  b                                           ; $4fe1: $04
	db   $e3                                         ; $4fe2: $e3
	ei                                               ; $4fe3: $fb
	ld   sp, hl                                      ; $4fe4: $f9
	pop  hl                                          ; $4fe5: $e1
	ldh  [$8a], a                                    ; $4fe6: $e0 $8a
	add  b                                           ; $4fe8: $80
	add  b                                           ; $4fe9: $80
	and  b                                           ; $4fea: $a0
	add  b                                           ; $4feb: $80
	and  e                                           ; $4fec: $a3
	add  b                                           ; $4fed: $80
	nop                                              ; $4fee: $00
	add  b                                           ; $4fef: $80
	inc  b                                           ; $4ff0: $04
	adc  b                                           ; $4ff1: $88
	inc  c                                           ; $4ff2: $0c
	ld   bc, $83fc                                   ; $4ff3: $01 $fc $83
	add  e                                           ; $4ff6: $83
	nop                                              ; $4ff7: $00
	nop                                              ; $4ff8: $00
	ld   [hl], b                                     ; $4ff9: $70
	add  l                                           ; $4ffa: $85
	nop                                              ; $4ffb: $00
	add  b                                           ; $4ffc: $80
	ld   [hl], b                                     ; $4ffd: $70
	nop                                              ; $4ffe: $00
	rrca                                             ; $4fff: $0f
	adc  e                                           ; $5000: $8b
	nop                                              ; $5001: $00
	add  b                                           ; $5002: $80
	add  b                                           ; $5003: $80
	nop                                              ; $5004: $00
	nop                                              ; $5005: $00
	add  b                                           ; $5006: $80
	add  b                                           ; $5007: $80
	add  b                                           ; $5008: $80
	add  a                                           ; $5009: $87
	add  b                                           ; $500a: $80
	adc  a                                           ; $500b: $8f
	add  h                                           ; $500c: $84
	add  b                                           ; $500d: $80
	add  d                                           ; $500e: $82
	nop                                              ; $500f: $00
	add  b                                           ; $5010: $80
	inc  c                                           ; $5011: $0c
	add  d                                           ; $5012: $82
	db   $fc                                         ; $5013: $fc
	add  a                                           ; $5014: $87
	nop                                              ; $5015: $00
	nop                                              ; $5016: $00
	rrca                                             ; $5017: $0f
	add  c                                           ; $5018: $81
	nop                                              ; $5019: $00
	add  h                                           ; $501a: $84
	ld   [hl], b                                     ; $501b: $70
	add  b                                           ; $501c: $80
	jr   nc, @-$7c                                   ; $501d: $30 $82

	nop                                              ; $501f: $00
	ld   bc, $e0ef                                   ; $5020: $01 $ef $e0

jr_076_5023:
	add  b                                           ; $5023: $80
	db   $fc                                         ; $5024: $fc
	add  b                                           ; $5025: $80
	rst  $38                                         ; $5026: $ff
	add  b                                           ; $5027: $80
	ld   a, a                                        ; $5028: $7f
	add  b                                           ; $5029: $80
	sbc  a                                           ; $502a: $9f
	add  b                                           ; $502b: $80
	rst  $38                                         ; $502c: $ff
	add  b                                           ; $502d: $80
	ld   bc, $fe80                                   ; $502e: $01 $80 $fe
	add  b                                           ; $5031: $80
	nop                                              ; $5032: $00
	add  b                                           ; $5033: $80
	jr   jr_076_4fc0                                 ; $5034: $18 $8a

	rst  $38                                         ; $5036: $ff
	add  h                                           ; $5037: $84
	nop                                              ; $5038: $00
	add  b                                           ; $5039: $80
	ld   hl, sp-$7a                                  ; $503a: $f8 $86
	rst  $38                                         ; $503c: $ff
	nop                                              ; $503d: $00
	rrca                                             ; $503e: $0f
	add  l                                           ; $503f: $85
	nop                                              ; $5040: $00
	add  [hl]                                        ; $5041: $86
	ldh  a, [rSB]                                    ; $5042: $f0 $01
	ld   [$8007], sp                                 ; $5044: $08 $07 $80
	ld   h, c                                        ; $5047: $61
	add  b                                           ; $5048: $80
	ld   b, b                                        ; $5049: $40
	add  b                                           ; $504a: $80
	add  b                                           ; $504b: $80
	add  b                                           ; $504c: $80
	ld   [de], a                                     ; $504d: $12
	add  d                                           ; $504e: $82
	ld   a, a                                        ; $504f: $7f
	add  b                                           ; $5050: $80
	rst  $38                                         ; $5051: $ff
	nop                                              ; $5052: $00
	nop                                              ; $5053: $00
	adc  e                                           ; $5054: $8b
	add  d                                           ; $5055: $82
	ld   [bc], a                                     ; $5056: $02
	sbc  [hl]                                        ; $5057: $9e
	add  d                                           ; $5058: $82
	pop  hl                                          ; $5059: $e1
	add  e                                           ; $505a: $83
	ld   [hl], b                                     ; $505b: $70
	add  b                                           ; $505c: $80
	nop                                              ; $505d: $00
	add  d                                           ; $505e: $82
	ld   d, b                                        ; $505f: $50
	add  d                                           ; $5060: $82
	ret  nc                                          ; $5061: $d0

	nop                                              ; $5062: $00
	nop                                              ; $5063: $00
	add  b                                           ; $5064: $80
	add  b                                           ; $5065: $80
	nop                                              ; $5066: $00
	ret  nz                                          ; $5067: $c0

	add  c                                           ; $5068: $81
	ldh  a, [$80]                                    ; $5069: $f0 $80
	or   b                                           ; $506b: $b0
	add  b                                           ; $506c: $80
	jr   nc, jr_076_5070                             ; $506d: $30 $01

	ld   [hl], b                                     ; $506f: $70

jr_076_5070:
	ld   b, b                                        ; $5070: $40
	add  c                                           ; $5071: $81
	nop                                              ; $5072: $00
	nop                                              ; $5073: $00
	rst  $38                                         ; $5074: $ff
	add  b                                           ; $5075: $80
	inc  bc                                          ; $5076: $03
	nop                                              ; $5077: $00
	inc  b                                           ; $5078: $04
	add  b                                           ; $5079: $80
	nop                                              ; $507a: $00
	inc  bc                                          ; $507b: $03
	ld   b, $04                                      ; $507c: $06 $04
	ld   [bc], a                                     ; $507e: $02
	add  hl, bc                                      ; $507f: $09
	add  b                                           ; $5080: $80
	dec  b                                           ; $5081: $05
	nop                                              ; $5082: $00
	dec  c                                           ; $5083: $0d
	add  b                                           ; $5084: $80
	dec  bc                                          ; $5085: $0b
	add  hl, bc                                      ; $5086: $09
	inc  bc                                          ; $5087: $03
	ei                                               ; $5088: $fb
	rst  ToBoot                                         ; $5089: $c7
	pop  af                                          ; $508a: $f1
	add  c                                           ; $508b: $81
	ret  nz                                          ; $508c: $c0

	nop                                              ; $508d: $00
	add  c                                           ; $508e: $81
	nop                                              ; $508f: $00
	inc  bc                                          ; $5090: $03
	add  c                                           ; $5091: $81
	nop                                              ; $5092: $00
	nop                                              ; $5093: $00
	ld   d, $81                                      ; $5094: $16 $81
	nop                                              ; $5096: $00
	ld   [$f0bb], sp                                 ; $5097: $08 $bb $f0
	ld   d, b                                        ; $509a: $50
	ldh  a, [$3e]                                    ; $509b: $f0 $3e
	cp   [hl]                                        ; $509d: $be
	add  b                                           ; $509e: $80
	nop                                              ; $509f: $00
	jr   c, jr_076_5023                              ; $50a0: $38 $81

	ld   a, [$f201]                                  ; $50a2: $fa $01 $f2
	pop  af                                          ; $50a5: $f1
	add  b                                           ; $50a6: $80
	pop  de                                          ; $50a7: $d1
	ld   [$03a2], sp                                 ; $50a8: $08 $a2 $03
	daa                                              ; $50ab: $27
	jr   nz, jr_076_5119                             ; $50ac: $20 $6b

	inc  bc                                          ; $50ae: $03
	ld   c, a                                        ; $50af: $4f
	and  [hl]                                        ; $50b0: $a6
	xor  $80                                         ; $50b1: $ee $80
	ld   c, c                                        ; $50b3: $49
	add  b                                           ; $50b4: $80
	add  hl, bc                                      ; $50b5: $09
	nop                                              ; $50b6: $00
	ld   c, b                                        ; $50b7: $48
	add  b                                           ; $50b8: $80
	ld   d, b                                        ; $50b9: $50
	nop                                              ; $50ba: $00
	or   b                                           ; $50bb: $b0
	add  b                                           ; $50bc: $80
	inc  bc                                          ; $50bd: $03
	add  h                                           ; $50be: $84
	ld   [bc], a                                     ; $50bf: $02
	add  b                                           ; $50c0: $80
	nop                                              ; $50c1: $00
	add  b                                           ; $50c2: $80
	add  hl, bc                                      ; $50c3: $09
	add  c                                           ; $50c4: $81
	ld   bc, $1602                                   ; $50c5: $01 $02 $16
	inc  b                                           ; $50c8: $04
	inc  d                                           ; $50c9: $14
	add  b                                           ; $50ca: $80
	nop                                              ; $50cb: $00
	add  b                                           ; $50cc: $80
	inc  b                                           ; $50cd: $04
	add  hl, bc                                      ; $50ce: $09
	ld   [bc], a                                     ; $50cf: $02
	ld   c, $00                                      ; $50d0: $0e $00
	add  b                                           ; $50d2: $80
	ld   [bc], a                                     ; $50d3: $02
	add  d                                           ; $50d4: $82
	ld   bc, $0087                                   ; $50d5: $01 $87 $00
	db   $fd                                         ; $50d8: $fd
	add  d                                           ; $50d9: $82
	ld   b, b                                        ; $50da: $40
	add  b                                           ; $50db: $80
	ld   l, b                                        ; $50dc: $68
	ld   bc, $2c6c                                   ; $50dd: $01 $6c $2c
	add  l                                           ; $50e0: $85
	jr   nz, jr_076_50e3                             ; $50e1: $20 $00

jr_076_50e3:
	or   b                                           ; $50e3: $b0
	add  c                                           ; $50e4: $81
	ld   d, b                                        ; $50e5: $50
	add  b                                           ; $50e6: $80
	ld   h, b                                        ; $50e7: $60
	add  h                                           ; $50e8: $84
	ld   b, b                                        ; $50e9: $40
	nop                                              ; $50ea: $00
	ld   b, e                                        ; $50eb: $43
	add  c                                           ; $50ec: $81
	ld   b, b                                        ; $50ed: $40
	ld   bc, $0efd                                   ; $50ee: $01 $fd $0e
	add  b                                           ; $50f1: $80
	ld   bc, $0080                                   ; $50f2: $01 $80 $00
	add  b                                           ; $50f5: $80
	dec  c                                           ; $50f6: $0d
	add  d                                           ; $50f7: $82
	nop                                              ; $50f8: $00
	add  b                                           ; $50f9: $80
	ld   c, $80                                      ; $50fa: $0e $80
	nop                                              ; $50fc: $00
	inc  c                                           ; $50fd: $0c
	ld   c, [hl]                                     ; $50fe: $4e
	nop                                              ; $50ff: $00
	pop  bc                                          ; $5100: $c1
	nop                                              ; $5101: $00
	ret  nz                                          ; $5102: $c0

	nop                                              ; $5103: $00
	ldh  [rP1], a                                    ; $5104: $e0 $00

jr_076_5106:
	ldh  a, [rDIV]                                   ; $5106: $f0 $04
	ret  nc                                          ; $5108: $d0

	nop                                              ; $5109: $00
	ld   a, e                                        ; $510a: $7b
	add  c                                           ; $510b: $81
	nop                                              ; $510c: $00
	rlca                                             ; $510d: $07
	ldh  a, [$90]                                    ; $510e: $f0 $90
	add  b                                           ; $5110: $80
	sub  b                                           ; $5111: $90
	ld   [hl], b                                     ; $5112: $70
	ldh  a, [$ed]                                    ; $5113: $f0 $ed
	ld   [$ed80], a                                  ; $5115: $ea $80 $ed
	dec  c                                           ; $5118: $0d

jr_076_5119:
	ld   [$696a], a                                  ; $5119: $ea $6a $69
	ld   l, l                                        ; $511c: $6d
	ld   c, $7e                                      ; $511d: $0e $7e
	ld   b, e                                        ; $511f: $43
	ld   bc, $0100                                   ; $5120: $01 $00 $01
	ld   [bc], a                                     ; $5123: $02
	inc  bc                                          ; $5124: $03
	ld   l, h                                        ; $5125: $6c
	ld   d, d                                        ; $5126: $52
	add  b                                           ; $5127: $80
	nop                                              ; $5128: $00
	ld   bc, $4340                                   ; $5129: $01 $40 $43
	add  b                                           ; $512c: $80
	inc  bc                                          ; $512d: $03
	add  b                                           ; $512e: $80
	ld   b, e                                        ; $512f: $43
	nop                                              ; $5130: $00
	ld   a, h                                        ; $5131: $7c
	adc  e                                           ; $5132: $8b
	nop                                              ; $5133: $00
	add  b                                           ; $5134: $80
	add  b                                           ; $5135: $80
	ld   bc, $6c1f                                   ; $5136: $01 $1f $6c
	add  b                                           ; $5139: $80
	ld   l, [hl]                                     ; $513a: $6e
	ld   bc, $1c6c                                   ; $513b: $01 $6c $1c
	add  b                                           ; $513e: $80
	ld   a, [hl]                                     ; $513f: $7e
	ld   bc, $7e7c                                   ; $5140: $01 $7c $7e
	add  b                                           ; $5143: $80
	ld   a, a                                        ; $5144: $7f
	add  b                                           ; $5145: $80
	ld   a, [hl]                                     ; $5146: $7e
	add  b                                           ; $5147: $80
	rst  $38                                         ; $5148: $ff
	ld   bc, $837e                                   ; $5149: $01 $7e $83

jr_076_514c:
	add  b                                           ; $514c: $80
	jp   $8380                                       ; $514d: $c3 $80 $83


	add  b                                           ; $5150: $80
	ld   h, e                                        ; $5151: $63
	add  b                                           ; $5152: $80
	ld   b, e                                        ; $5153: $43
	add  b                                           ; $5154: $80
	ld   h, e                                        ; $5155: $63
	ld   bc, $4743                                   ; $5156: $01 $43 $47
	add  b                                           ; $5159: $80
	rst  $20                                         ; $515a: $e7
	ld   bc, $ff31                                   ; $515b: $01 $31 $ff
	add  b                                           ; $515e: $80
	rst  $28                                         ; $515f: $ef
	ld   bc, $edec                                   ; $5160: $01 $ec $ed
	add  b                                           ; $5163: $80
	inc  h                                           ; $5164: $24
	ld   bc, $80b7                                   ; $5165: $01 $b7 $80
	add  [hl]                                        ; $5168: $86
	rst  $38                                         ; $5169: $ff
	add  b                                           ; $516a: $80
	cp   $80                                         ; $516b: $fe $80
	ld   hl, sp-$80                                  ; $516d: $f8 $80
	ld   a, a                                        ; $516f: $7f
	add  b                                           ; $5170: $80
	ccf                                              ; $5171: $3f
	add  b                                           ; $5172: $80
	rst  $38                                         ; $5173: $ff
	add  b                                           ; $5174: $80
	db   $fc                                         ; $5175: $fc
	add  b                                           ; $5176: $80
	di                                               ; $5177: $f3
	inc  bc                                          ; $5178: $03
	rra                                              ; $5179: $1f
	db   $e3                                         ; $517a: $e3
	cp   $02                                         ; $517b: $fe $02
	add  b                                           ; $517d: $80
	ld   bc, $e380                                   ; $517e: $01 $80 $e3
	add  b                                           ; $5181: $80
	adc  $80                                         ; $5182: $ce $80
	jr   c, jr_076_5106                              ; $5184: $38 $80

	ldh  [c], a                                      ; $5186: $e2
	add  b                                           ; $5187: $80
	adc  c                                           ; $5188: $89
	ld   [de], a                                     ; $5189: $12
	ld   d, b                                        ; $518a: $50
	cp   $e0                                         ; $518b: $fe $e0
	ld   c, [hl]                                     ; $518d: $4e
	ld   d, b                                        ; $518e: $50
	rst  $38                                         ; $518f: $ff
	rrca                                             ; $5190: $0f
	rst  $28                                         ; $5191: $ef
	rra                                              ; $5192: $1f
	ldh  a, [rP1]                                    ; $5193: $f0 $00
	ldh  [rSTAT], a                                  ; $5195: $e0 $41
	nop                                              ; $5197: $00
	jp   nz, $e320                                   ; $5198: $c2 $20 $e3

	nop                                              ; $519b: $00
	sbc  $83                                         ; $519c: $de $83
	nop                                              ; $519e: $00
	inc  d                                           ; $519f: $14

jr_076_51a0:
	sbc  $00                                         ; $51a0: $de $00
	adc  [hl]                                        ; $51a2: $8e
	db   $10                                         ; $51a3: $10

jr_076_51a4:
	sub  b                                           ; $51a4: $90
	ld   bc, $430f                                   ; $51a5: $01 $0f $43
	sub  e                                           ; $51a8: $93
	cp   $a0                                         ; $51a9: $fe $a0
	add  [hl]                                        ; $51ab: $86
	add  h                                           ; $51ac: $84
	add  b                                           ; $51ad: $80

jr_076_51ae:
	inc  b                                           ; $51ae: $04
	inc  c                                           ; $51af: $0c
	jp   z, $8bdb                                    ; $51b0: $ca $db $8b

	or   e                                           ; $51b3: $b3
	inc  sp                                          ; $51b4: $33
	add  b                                           ; $51b5: $80
	ld   [hl], h                                     ; $51b6: $74
	ld   bc, wCharacterPortraitBaseAddr+1                                   ; $51b7: $01 $d5 $cb
	add  d                                           ; $51ba: $82
	ld   [$1c82], sp                                 ; $51bb: $08 $82 $1c
	add  b                                           ; $51be: $80
	ld   l, $83                                      ; $51bf: $2e $83
	xor  [hl]                                        ; $51c1: $ae
	dec  b                                           ; $51c2: $05
	or   d                                           ; $51c3: $b2
	ld   d, l                                        ; $51c4: $55
	ld   d, a                                        ; $51c5: $57
	halt                                             ; $51c6: $76
	ld   [hl], h                                     ; $51c7: $74
	ld   [hl+], a                                    ; $51c8: $22
	add  b                                           ; $51c9: $80
	jr   nz, jr_076_514c                             ; $51ca: $20 $80

	db   $10                                         ; $51cc: $10
	ld   b, $21                                      ; $51cd: $06 $21
	ld   h, b                                        ; $51cf: $60
	jr   nc, jr_076_5242                             ; $51d0: $30 $70

	ld   l, b                                        ; $51d2: $68
	jr   z, jr_076_5254                              ; $51d3: $28 $7f

	add  b                                           ; $51d5: $80
	sbc  [hl]                                        ; $51d6: $9e
	add  b                                           ; $51d7: $80
	ld   e, $80                                      ; $51d8: $1e $80
	nop                                              ; $51da: $00
	add  [hl]                                        ; $51db: $86
	inc  e                                           ; $51dc: $1c
	ld   b, $10                                      ; $51dd: $06 $10
	dec  e                                           ; $51df: $1d
	ldh  a, [c]                                      ; $51e0: $f2
	xor  d                                           ; $51e1: $aa
	adc  d                                           ; $51e2: $8a
	ret  nc                                          ; $51e3: $d0

	jp   nc, $8a80                                   ; $51e4: $d2 $80 $8a

	add  b                                           ; $51e7: $80
	jp   nc, $ca80                                   ; $51e8: $d2 $80 $ca

	add  b                                           ; $51eb: $80
	ret  nc                                          ; $51ec: $d0

	inc  bc                                          ; $51ed: $03
	ret                                              ; $51ee: $c9


	ld   c, b                                        ; $51ef: $48
	ld   e, h                                        ; $51f0: $5c
	inc  d                                           ; $51f1: $14
	add  b                                           ; $51f2: $80
	rst  $10                                         ; $51f3: $d7
	ld   bc, $0014                                   ; $51f4: $01 $14 $00
	add  b                                           ; $51f7: $80
	ld   a, [bc]                                     ; $51f8: $0a
	add  b                                           ; $51f9: $80
	ld   b, $80                                      ; $51fa: $06 $80
	call $fd80                                       ; $51fc: $cd $80 $fd
	add  b                                           ; $51ff: $80
	rst  ToBoot                                         ; $5200: $c7
	ld   bc, $fcc0                                   ; $5201: $01 $c0 $fc
	add  b                                           ; $5204: $80
	inc  a                                           ; $5205: $3c
	add  [hl]                                        ; $5206: $86
	ld   a, h                                        ; $5207: $7c
	dec  b                                           ; $5208: $05
	jr   nc, jr_076_5247                             ; $5209: $30 $3c

	ldh  [$fc], a                                    ; $520b: $e0 $fc
	add  hl, bc                                      ; $520d: $09
	dec  a                                           ; $520e: $3d
	add  d                                           ; $520f: $82
	nop                                              ; $5210: $00
	add  b                                           ; $5211: $80
	rst  $30                                         ; $5212: $f7
	add  b                                           ; $5213: $80
	db   $10                                         ; $5214: $10
	add  b                                           ; $5215: $80
	ld   hl, sp+$04                                  ; $5216: $f8 $04
	ld   [$ef00], sp                                 ; $5218: $08 $00 $ef
	rst  $38                                         ; $521b: $ff
	nop                                              ; $521c: $00
	add  b                                           ; $521d: $80
	jr   jr_076_51a0                                 ; $521e: $18 $80

	db   $10                                         ; $5220: $10
	add  b                                           ; $5221: $80
	jr   c, jr_076_51a4                              ; $5222: $38 $80

	ld   a, h                                        ; $5224: $7c
	add  d                                           ; $5225: $82
	ld   a, [$fb82]                                  ; $5226: $fa $82 $fb
	add  b                                           ; $5229: $80
	ld   h, b                                        ; $522a: $60
	add  b                                           ; $522b: $80
	jr   nz, jr_076_51ae                             ; $522c: $20 $80

	ld   a, b                                        ; $522e: $78
	add  b                                           ; $522f: $80
	ld   a, h                                        ; $5230: $7c
	add  b                                           ; $5231: $80
	ld   e, [hl]                                     ; $5232: $5e
	add  b                                           ; $5233: $80
	ld   l, e                                        ; $5234: $6b
	add  d                                           ; $5235: $82
	dec  l                                           ; $5236: $2d
	add  d                                           ; $5237: $82
	db   $fd                                         ; $5238: $fd
	add  b                                           ; $5239: $80
	cp   $82                                         ; $523a: $fe $82
	sbc  $80                                         ; $523c: $de $80
	adc  [hl]                                        ; $523e: $8e
	add  b                                           ; $523f: $80
	nop                                              ; $5240: $00
	add  b                                           ; $5241: $80

jr_076_5242:
	inc  a                                           ; $5242: $3c
	add  b                                           ; $5243: $80
	ld   e, [hl]                                     ; $5244: $5e
	add  b                                           ; $5245: $80
	inc  l                                           ; $5246: $2c

jr_076_5247:
	add  d                                           ; $5247: $82
	ld   l, h                                        ; $5248: $6c
	add  b                                           ; $5249: $80
	nop                                              ; $524a: $00
	add  h                                           ; $524b: $84
	ld   l, h                                        ; $524c: $6c
	nop                                              ; $524d: $00
	ld   a, h                                        ; $524e: $7c
	add  b                                           ; $524f: $80
	ld   a, a                                        ; $5250: $7f
	add  c                                           ; $5251: $81
	ld   a, h                                        ; $5252: $7c
	ld   [bc], a                                     ; $5253: $02

jr_076_5254:
	inc  a                                           ; $5254: $3c
	jr   c, jr_076_52a3                              ; $5255: $38 $4c

	add  b                                           ; $5257: $80
	ld   c, d                                        ; $5258: $4a
	ld   bc, $83cb                                   ; $5259: $01 $cb $83
	add  b                                           ; $525c: $80
	inc  h                                           ; $525d: $24
	ld   bc, $6c00                                   ; $525e: $01 $00 $6c
	add  b                                           ; $5261: $80
	rst  $28                                         ; $5262: $ef
	add  c                                           ; $5263: $81
	ld   l, h                                        ; $5264: $6c
	ld   bc, $0100                                   ; $5265: $01 $00 $01
	add  b                                           ; $5268: $80
	ld   l, l                                        ; $5269: $6d
	nop                                              ; $526a: $00
	ld   bc, $6f80                                   ; $526b: $01 $80 $6f
	add  b                                           ; $526e: $80
	ld   a, [de]                                     ; $526f: $1a
	dec  c                                           ; $5270: $0d
	rra                                              ; $5271: $1f
	sbc  h                                           ; $5272: $9c
	db   $fd                                         ; $5273: $fd
	add  c                                           ; $5274: $81
	cp   $ff                                         ; $5275: $fe $ff
	jp   hl                                          ; $5277: $e9


	sbc  c                                           ; $5278: $99
	add  b                                           ; $5279: $80
	add  d                                           ; $527a: $82
	adc  e                                           ; $527b: $8b
	adc  c                                           ; $527c: $89
	adc  [hl]                                        ; $527d: $8e
	ld   c, $80                                      ; $527e: $0e $80
	ld   a, [bc]                                     ; $5280: $0a
	ld   [bc], a                                     ; $5281: $02
	adc  a                                           ; $5282: $8f
	rra                                              ; $5283: $1f
	sbc  a                                           ; $5284: $9f
	add  c                                           ; $5285: $81
	rra                                              ; $5286: $1f
	add  b                                           ; $5287: $80
	ld   e, $81                                      ; $5288: $1e $81
	rra                                              ; $528a: $1f
	dec  bc                                          ; $528b: $0b
	rrca                                             ; $528c: $0f
	ld   c, $06                                      ; $528d: $0e $06
	rlca                                             ; $528f: $07
	inc  bc                                          ; $5290: $03
	rrca                                             ; $5291: $0f
	nop                                              ; $5292: $00
	ld   b, $00                                      ; $5293: $06 $00
	stop                                             ; $5295: $10 $00
	dec  c                                           ; $5297: $0d
	add  c                                           ; $5298: $81
	nop                                              ; $5299: $00
	ld   b, $5b                                      ; $529a: $06 $5b
	ld   b, b                                        ; $529c: $40
	ld   l, l                                        ; $529d: $6d
	ld   h, b                                        ; $529e: $60
	jr   nz, jr_076_52c8                             ; $529f: $20 $27

	rlca                                             ; $52a1: $07
	add  c                                           ; $52a2: $81

jr_076_52a3:
	nop                                              ; $52a3: $00
	nop                                              ; $52a4: $00
	ld   bc, $0081                                   ; $52a5: $01 $81 $00
	ld   [bc], a                                     ; $52a8: $02
	add  c                                           ; $52a9: $81
	nop                                              ; $52aa: $00
	add  b                                           ; $52ab: $80
	add  b                                           ; $52ac: $80
	nop                                              ; $52ad: $00
	add  b                                           ; $52ae: $80
	ld   b, b                                        ; $52af: $40
	add  b                                           ; $52b0: $80
	ret  nz                                          ; $52b1: $c0

	inc  bc                                          ; $52b2: $03
	rlca                                             ; $52b3: $07
	rst  ToBoot                                         ; $52b4: $c7
	ret  nz                                          ; $52b5: $c0

	rrca                                             ; $52b6: $0f
	add  c                                           ; $52b7: $81
	nop                                              ; $52b8: $00
	add  b                                           ; $52b9: $80
	ld   h, b                                        ; $52ba: $60
	add  b                                           ; $52bb: $80
	ldh  a, [$80]                                    ; $52bc: $f0 $80
	ret  nz                                          ; $52be: $c0

	add  b                                           ; $52bf: $80
	ldh  [$03], a                                    ; $52c0: $e0 $03
	rrca                                             ; $52c2: $0f
	add  b                                           ; $52c3: $80
	and  c                                           ; $52c4: $a1
	jr   nz, jr_076_5247                             ; $52c5: $20 $80

	ld   b, b                                        ; $52c7: $40

jr_076_52c8:
	rra                                              ; $52c8: $1f
	and  b                                           ; $52c9: $a0
	jr   nz, @+$45                                   ; $52ca: $20 $43

	ld   [bc], a                                     ; $52cc: $02
	ld   l, c                                        ; $52cd: $69
	add  hl, hl                                      ; $52ce: $29
	ld   c, [hl]                                     ; $52cf: $4e
	ld   c, $5b                                      ; $52d0: $0e $5b
	dec  de                                          ; $52d2: $1b
	scf                                              ; $52d3: $37
	or   b                                           ; $52d4: $b0
	add  h                                           ; $52d5: $84
	add  b                                           ; $52d6: $80
	inc  b                                           ; $52d7: $04
	nop                                              ; $52d8: $00
	pop  af                                          ; $52d9: $f1
	ldh  a, [$09]                                    ; $52da: $f0 $09
	nop                                              ; $52dc: $00
	ld   sp, hl                                      ; $52dd: $f9
	ldh  a, [rSB]                                    ; $52de: $f0 $01
	nop                                              ; $52e0: $00
	push af                                          ; $52e1: $f5
	ldh  a, [rHDMA2]                                 ; $52e2: $f0 $52
	ld   d, b                                        ; $52e4: $50
	sub  b                                           ; $52e5: $90
	db   $10                                         ; $52e6: $10
	sub  b                                           ; $52e7: $90
	db   $10                                         ; $52e8: $10
	add  b                                           ; $52e9: $80
	sbc  a                                           ; $52ea: $9f
	add  b                                           ; $52eb: $80
	nop                                              ; $52ec: $00
	add  b                                           ; $52ed: $80
	adc  a                                           ; $52ee: $8f
	add  b                                           ; $52ef: $80
	ld   b, b                                        ; $52f0: $40
	ld   [bc], a                                     ; $52f1: $02
	adc  a                                           ; $52f2: $8f
	rrca                                             ; $52f3: $0f
	add  b                                           ; $52f4: $80
	add  e                                           ; $52f5: $83
	nop                                              ; $52f6: $00
	ld   bc, $1714                                   ; $52f7: $01 $14 $17
	add  c                                           ; $52fa: $81
	db   $fd                                         ; $52fb: $fd
	inc  b                                           ; $52fc: $04
	ld   sp, hl                                      ; $52fd: $f9
	jp   hl                                          ; $52fe: $e9


	pop  hl                                          ; $52ff: $e1
	rst  $28                                         ; $5300: $ef
	ldh  [$80], a                                    ; $5301: $e0 $80
	nop                                              ; $5303: $00
	add  b                                           ; $5304: $80
	inc  bc                                          ; $5305: $03
	add  hl, bc                                      ; $5306: $09
	inc  h                                           ; $5307: $24
	call nz, $9d8d                                   ; $5308: $c4 $8d $9d
	rrca                                             ; $530b: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $530c: $cf
	dec  bc                                          ; $530d: $0b
	jp   $01f9                                       ; $530e: $c3 $f9 $01


	add  b                                           ; $5311: $80
	inc  bc                                          ; $5312: $03
	nop                                              ; $5313: $00
	nop                                              ; $5314: $00
	add  a                                           ; $5315: $87
	add  b                                           ; $5316: $80
	add  b                                           ; $5317: $80
	add  c                                           ; $5318: $81
	ld   [bc], a                                     ; $5319: $02
	add  e                                           ; $531a: $83
	adc  a                                           ; $531b: $8f
	adc  h                                           ; $531c: $8c
	add  b                                           ; $531d: $80
	sbc  h                                           ; $531e: $9c
	add  l                                           ; $531f: $85
	inc  c                                           ; $5320: $0c
	ld   bc, $7c74                                   ; $5321: $01 $74 $7c
	add  d                                           ; $5324: $82
	db   $fc                                         ; $5325: $fc
	add  b                                           ; $5326: $80
	inc  b                                           ; $5327: $04
	ld   bc, $8105                                   ; $5328: $01 $05 $81
	add  b                                           ; $532b: $80
	adc  a                                           ; $532c: $8f
	add  b                                           ; $532d: $80
	add  b                                           ; $532e: $80
	add  c                                           ; $532f: $81
	add  c                                           ; $5330: $81
	nop                                              ; $5331: $00
	ld   bc, $1580                                   ; $5332: $01 $80 $15
	rra                                              ; $5335: $1f
	inc  h                                           ; $5336: $24
	cpl                                              ; $5337: $2f
	ld   l, a                                        ; $5338: $6f
	ld   l, h                                        ; $5339: $6c
	rst  $30                                         ; $533a: $f7
	rst  $38                                         ; $533b: $ff
	jr   c, jr_076_533e                              ; $533c: $38 $00

jr_076_533e:
	ld   l, b                                        ; $533e: $68
	jr   z, jr_076_5341                              ; $533f: $28 $00

jr_076_5341:
	ld   [$0480], sp                                 ; $5341: $08 $80 $04
	inc  d                                           ; $5344: $14
	ld   b, b                                        ; $5345: $40
	or   b                                           ; $5346: $b0
	sbc  b                                           ; $5347: $98
	ld   l, b                                        ; $5348: $68
	ld   hl, sp+$7d                                  ; $5349: $f8 $7d
	ld   l, l                                        ; $534b: $6d
	ld   l, d                                        ; $534c: $6a
	ld   l, e                                        ; $534d: $6b
	ret                                              ; $534e: $c9


	db   $eb                                         ; $534f: $eb
	ei                                               ; $5350: $fb
	db   $d3                                         ; $5351: $d3
	ei                                               ; $5352: $fb
	ret  c                                           ; $5353: $d8

	sbc  $9e                                         ; $5354: $de $9e
	add  b                                           ; $5356: $80
	adc  [hl]                                        ; $5357: $8e
	inc  b                                           ; $5358: $04
	xor  a                                           ; $5359: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $535a: $cf
	add  b                                           ; $535b: $80
	db   $fc                                         ; $535c: $fc
	ld   a, h                                        ; $535d: $7c
	add  b                                           ; $535e: $80
	cp   $80                                         ; $535f: $fe $80
	ldh  a, [rAUD2HIGH]                              ; $5361: $f0 $19
	nop                                              ; $5363: $00
	adc  b                                           ; $5364: $88
	rst  JumpTable                                         ; $5365: $df
	sbc  a                                           ; $5366: $9f
	rst  $28                                         ; $5367: $ef
	set  5, a                                        ; $5368: $cb $ef
	ld   c, a                                        ; $536a: $4f
	ld   l, a                                        ; $536b: $6f
	ld   c, h                                        ; $536c: $4c
	rst  $28                                         ; $536d: $ef
	adc  b                                           ; $536e: $88
	adc  a                                           ; $536f: $8f
	adc  e                                           ; $5370: $8b
	adc  a                                           ; $5371: $8f
	adc  h                                           ; $5372: $8c
	sbc  a                                           ; $5373: $9f
	sbc  [hl]                                        ; $5374: $9e
	sbc  a                                           ; $5375: $9f
	adc  [hl]                                        ; $5376: $8e
	sbc  a                                           ; $5377: $9f
	sbc  [hl]                                        ; $5378: $9e
	rra                                              ; $5379: $1f
	ld   a, $1f                                      ; $537a: $3e $1f
	ld   h, $80                                      ; $537c: $26 $80
	ld   l, a                                        ; $537e: $6f
	dec  b                                           ; $537f: $05
	ld   b, a                                        ; $5380: $47
	ld   b, [hl]                                     ; $5381: $46
	rlca                                             ; $5382: $07
	ld   b, $8f                                      ; $5383: $06 $8f
	add  l                                           ; $5385: $85
	add  b                                           ; $5386: $80
	adc  a                                           ; $5387: $8f
	dec  de                                          ; $5388: $1b
	adc  [hl]                                        ; $5389: $8e
	and  d                                           ; $538a: $a2
	add  b                                           ; $538b: $80
	ret  nz                                          ; $538c: $c0

	add  b                                           ; $538d: $80
	sbc  $3f                                         ; $538e: $de $3f
	ld   a, $1f                                      ; $5390: $3e $1f
	sbc  $ff                                         ; $5392: $de $ff
	cp   $bf                                         ; $5394: $fe $bf
	cp   [hl]                                        ; $5396: $be
	rst  $38                                         ; $5397: $ff
	cp   $bf                                         ; $5398: $fe $bf
	cp   [hl]                                        ; $539a: $be
	rst  $38                                         ; $539b: $ff
	db   $fc                                         ; $539c: $fc
	ld   a, a                                        ; $539d: $7f
	ld   h, d                                        ; $539e: $62
	nop                                              ; $539f: $00
	jr   nz, jr_076_53a2                             ; $53a0: $20 $00

jr_076_53a2:
	add  b                                           ; $53a2: $80
	nop                                              ; $53a3: $00
	ld   b, b                                        ; $53a4: $40
	add  b                                           ; $53a5: $80
	inc  d                                           ; $53a6: $14
	add  c                                           ; $53a7: $81
	db   $f4                                         ; $53a8: $f4
	inc  hl                                          ; $53a9: $23
	ld   d, h                                        ; $53aa: $54
	db   $f4                                         ; $53ab: $f4
	inc  d                                           ; $53ac: $14
	db   $f4                                         ; $53ad: $f4
	ld   e, [hl]                                     ; $53ae: $5e
	rst  $38                                         ; $53af: $ff
	ldh  [$7f], a                                    ; $53b0: $e0 $7f
	ld   [hl], b                                     ; $53b2: $70
	rst  $38                                         ; $53b3: $ff
	ld   hl, sp+$7f                                  ; $53b4: $f8 $7f
	ld   a, b                                        ; $53b6: $78
	rst  $38                                         ; $53b7: $ff
	ld   hl, sp+$7f                                  ; $53b8: $f8 $7f
	ld   a, h                                        ; $53ba: $7c
	rst  $38                                         ; $53bb: $ff
	db   $fc                                         ; $53bc: $fc
	ld   a, a                                        ; $53bd: $7f
	ld   [bc], a                                     ; $53be: $02
	db   $f4                                         ; $53bf: $f4
	inc  [hl]                                        ; $53c0: $34
	db   $f4                                         ; $53c1: $f4
	inc  [hl]                                        ; $53c2: $34
	db   $f4                                         ; $53c3: $f4
	inc  [hl]                                        ; $53c4: $34
	db   $f4                                         ; $53c5: $f4
	inc  [hl]                                        ; $53c6: $34
	db   $f4                                         ; $53c7: $f4
	inc  [hl]                                        ; $53c8: $34
	db   $f4                                         ; $53c9: $f4
	inc  [hl]                                        ; $53ca: $34
	db   $f4                                         ; $53cb: $f4
	inc  [hl]                                        ; $53cc: $34
	db   $f4                                         ; $53cd: $f4
	push af                                          ; $53ce: $f5
	ld   bc, $0082                                   ; $53cf: $01 $82 $00
	add  b                                           ; $53d2: $80
	add  b                                           ; $53d3: $80
	add  d                                           ; $53d4: $82
	ret  nz                                          ; $53d5: $c0

	add  b                                           ; $53d6: $80
	add  b                                           ; $53d7: $80
	add  d                                           ; $53d8: $82
	nop                                              ; $53d9: $00
	nop                                              ; $53da: $00
	rst  $38                                         ; $53db: $ff
	add  l                                           ; $53dc: $85
	nop                                              ; $53dd: $00
	nop                                              ; $53de: $00
	rrca                                             ; $53df: $0f
	add  l                                           ; $53e0: $85
	nop                                              ; $53e1: $00
	nop                                              ; $53e2: $00
	rrca                                             ; $53e3: $0f
	add  l                                           ; $53e4: $85
	nop                                              ; $53e5: $00
	nop                                              ; $53e6: $00
	rst  $38                                         ; $53e7: $ff
	add  l                                           ; $53e8: $85
	nop                                              ; $53e9: $00
	nop                                              ; $53ea: $00
	rst  $38                                         ; $53eb: $ff
	add  l                                           ; $53ec: $85
	nop                                              ; $53ed: $00
	ld   bc, $57a8                                   ; $53ee: $01 $a8 $57
	add  b                                           ; $53f1: $80
	inc  hl                                          ; $53f2: $23
	add  b                                           ; $53f3: $80
	ld   d, l                                        ; $53f4: $55
	add  b                                           ; $53f5: $80
	add  hl, bc                                      ; $53f6: $09
	nop                                              ; $53f7: $00
	rst  $38                                         ; $53f8: $ff
	add  l                                           ; $53f9: $85
	nop                                              ; $53fa: $00
	ld   [bc], a                                     ; $53fb: $02
	ld   bc, $feff                                   ; $53fc: $01 $ff $fe
	add  h                                           ; $53ff: $84
	rst  $38                                         ; $5400: $ff
	add  l                                           ; $5401: $85
	nop                                              ; $5402: $00
	ld   [$ff5f], sp                                 ; $5403: $08 $5f $ff
	rrca                                             ; $5406: $0f
	rst  $38                                         ; $5407: $ff
	rlca                                             ; $5408: $07
	rst  $38                                         ; $5409: $ff
	add  a                                           ; $540a: $87
	rst  $38                                         ; $540b: $ff
	ret  nc                                          ; $540c: $d0

	add  l                                           ; $540d: $85
	nop                                              ; $540e: $00
	add  [hl]                                        ; $540f: $86
	rst  $38                                         ; $5410: $ff
	ld   bc, $000f                                   ; $5411: $01 $0f $00
	add  b                                           ; $5414: $80
	inc  bc                                          ; $5415: $03
	nop                                              ; $5416: $00
	ld   b, $81                                      ; $5417: $06 $81
	rlca                                             ; $5419: $07
	nop                                              ; $541a: $00
	dec  c                                           ; $541b: $0d
	add  c                                           ; $541c: $81
	rrca                                             ; $541d: $0f
	ld   bc, $0705                                   ; $541e: $01 $05 $07
	add  b                                           ; $5421: $80
	inc  bc                                          ; $5422: $03
	ld   bc, $00f1                                   ; $5423: $01 $f1 $00
	add  b                                           ; $5426: $80
	ldh  a, [rSB]                                    ; $5427: $f0 $01
	db   $10                                         ; $5429: $10
	ldh  a, [$80]                                    ; $542a: $f0 $80
	jr   c, jr_076_542e                              ; $542c: $38 $00

jr_076_542e:
	inc  c                                           ; $542e: $0c
	add  c                                           ; $542f: $81
	inc  e                                           ; $5430: $1c
	add  b                                           ; $5431: $80
	inc  a                                           ; $5432: $3c
	inc  bc                                          ; $5433: $03
	xor  h                                           ; $5434: $ac
	cp   a                                           ; $5435: $bf
	db   $e3                                         ; $5436: $e3
	nop                                              ; $5437: $00
	add  b                                           ; $5438: $80
	ld   [$0001], sp                                 ; $5439: $08 $01 $00
	ld   a, $82                                      ; $543c: $3e $82
	ld   h, e                                        ; $543e: $63
	add  b                                           ; $543f: $80
	ld   a, a                                        ; $5440: $7f
	ld   bc, $3f01                                   ; $5441: $01 $01 $3f
	add  b                                           ; $5444: $80
	ret  nz                                          ; $5445: $c0

	adc  [hl]                                        ; $5446: $8e
	nop                                              ; $5447: $00
	add  b                                           ; $5448: $80
	dec  d                                           ; $5449: $15
	add  b                                           ; $544a: $80
	ld   a, [bc]                                     ; $544b: $0a
	add  b                                           ; $544c: $80
	nop                                              ; $544d: $00
	add  b                                           ; $544e: $80
	ld   a, [bc]                                     ; $544f: $0a
	add  b                                           ; $5450: $80
	dec  b                                           ; $5451: $05
	add  h                                           ; $5452: $84
	nop                                              ; $5453: $00
	add  d                                           ; $5454: $82
	ld   a, a                                        ; $5455: $7f
	add  b                                           ; $5456: $80
	ld   e, a                                        ; $5457: $5f
	add  b                                           ; $5458: $80
	adc  l                                           ; $5459: $8d
	add  b                                           ; $545a: $80
	ld   d, a                                        ; $545b: $57
	add  b                                           ; $545c: $80
	inc  hl                                          ; $545d: $23
	add  b                                           ; $545e: $80
	ld   d, a                                        ; $545f: $57
	add  b                                           ; $5460: $80
	ld   bc, $ea06                                   ; $5461: $01 $06 $ea
	rst  $38                                         ; $5464: $ff
	ldh  [rIE], a                                    ; $5465: $e0 $ff
	db   $f4                                         ; $5467: $f4
	rst  $38                                         ; $5468: $ff
	cp   $85                                         ; $5469: $fe $85
	rst  $38                                         ; $546b: $ff
	add  b                                           ; $546c: $80
	rst  JumpTable                                         ; $546d: $df
	stop                                             ; $546e: $10 $00
	rst  $38                                         ; $5470: $ff
	cp   a                                           ; $5471: $bf
	rst  $38                                         ; $5472: $ff
	rra                                              ; $5473: $1f
	rst  $38                                         ; $5474: $ff
	rrca                                             ; $5475: $0f
	rst  $38                                         ; $5476: $ff
	rrca                                             ; $5477: $0f
	rst  $38                                         ; $5478: $ff
	xor  e                                           ; $5479: $ab
	rst  $38                                         ; $547a: $ff
	pop  af                                          ; $547b: $f1
	rst  $38                                         ; $547c: $ff
	ld   a, [$00ff]                                  ; $547d: $fa $ff $00
	adc  c                                           ; $5480: $89
	rst  $38                                         ; $5481: $ff
	inc  b                                           ; $5482: $04
	ld   a, a                                        ; $5483: $7f
	rst  $38                                         ; $5484: $ff
	ccf                                              ; $5485: $3f
	rst  $38                                         ; $5486: $ff
	cp   a                                           ; $5487: $bf
	adc  l                                           ; $5488: $8d
	rst  $38                                         ; $5489: $ff
	nop                                              ; $548a: $00
	rrca                                             ; $548b: $0f
	adc  l                                           ; $548c: $8d
	nop                                              ; $548d: $00
	ld   bc, $ee1d                                   ; $548e: $01 $1d $ee
	add  b                                           ; $5491: $80
	inc  c                                           ; $5492: $0c
	inc  bc                                          ; $5493: $03
	dec  c                                           ; $5494: $0d
	rrca                                             ; $5495: $0f
	ld   [bc], a                                     ; $5496: $02
	inc  bc                                          ; $5497: $03
	add  [hl]                                        ; $5498: $86
	nop                                              ; $5499: $00
	rlca                                             ; $549a: $07
	ldh  [$60], a                                    ; $549b: $e0 $60
	jr   nz, jr_076_54ff                             ; $549d: $20 $60

	and  b                                           ; $549f: $a0
	ldh  [rLCDC], a                                  ; $54a0: $e0 $40
	ret  nz                                          ; $54a2: $c0

jr_076_54a3:
	add  [hl]                                        ; $54a3: $86
	nop                                              ; $54a4: $00
	add  b                                           ; $54a5: $80
	ld   [bc], a                                     ; $54a6: $02
	add  b                                           ; $54a7: $80
	ld   bc, $0082                                   ; $54a8: $01 $82 $00
	add  b                                           ; $54ab: $80
	inc  bc                                          ; $54ac: $03
	rlca                                             ; $54ad: $07
	ld   b, $07                                      ; $54ae: $06 $07
	dec  b                                           ; $54b0: $05
	rlca                                             ; $54b1: $07
	dec  b                                           ; $54b2: $05
	rlca                                             ; $54b3: $07
	ld   a, [hl]                                     ; $54b4: $7e
	ld   a, a                                        ; $54b5: $7f
	add  b                                           ; $54b6: $80
	ld   d, a                                        ; $54b7: $57
	add  b                                           ; $54b8: $80
	dec  bc                                          ; $54b9: $0b
	add  b                                           ; $54ba: $80
	dec  b                                           ; $54bb: $05
	add  b                                           ; $54bc: $80
	ldh  a, [c]                                      ; $54bd: $f2
	ld   b, $19                                      ; $54be: $06 $19
	ld   sp, hl                                      ; $54c0: $f9
	add  sp, -$08                                    ; $54c1: $e8 $f8
	add  sp, -$08                                    ; $54c3: $e8 $f8
	rra                                              ; $54c5: $1f
	add  a                                           ; $54c6: $87
	rst  $38                                         ; $54c7: $ff
	add  b                                           ; $54c8: $80
	cpl                                              ; $54c9: $2f
	add  b                                           ; $54ca: $80
	sub  l                                           ; $54cb: $95
	add  b                                           ; $54cc: $80
	ld   a, [hl+]                                    ; $54cd: $2a
	ld   bc, $df20                                   ; $54ce: $01 $20 $df
	add  b                                           ; $54d1: $80
	cp   b                                           ; $54d2: $b8
	add  b                                           ; $54d3: $80
	ldh  a, [$80]                                    ; $54d4: $f0 $80
	and  b                                           ; $54d6: $a0
	add  d                                           ; $54d7: $82
	ret  nz                                          ; $54d8: $c0

	add  b                                           ; $54d9: $80
	ld   b, b                                        ; $54da: $40
	add  b                                           ; $54db: $80
	ret  nz                                          ; $54dc: $c0

	add  b                                           ; $54dd: $80
	rst  $10                                         ; $54de: $d7
	add  b                                           ; $54df: $80
	dec  de                                          ; $54e0: $1b
	add  b                                           ; $54e1: $80
	rrca                                             ; $54e2: $0f
	add  b                                           ; $54e3: $80
	ld   b, $80                                      ; $54e4: $06 $80
	rlca                                             ; $54e6: $07
	add  b                                           ; $54e7: $80
	ld   [bc], a                                     ; $54e8: $02
	add  b                                           ; $54e9: $80
	inc  bc                                          ; $54ea: $03
	add  b                                           ; $54eb: $80
	ld   [bc], a                                     ; $54ec: $02
	nop                                              ; $54ed: $00
	rrca                                             ; $54ee: $0f
	add  c                                           ; $54ef: $81
	nop                                              ; $54f0: $00
	add  b                                           ; $54f1: $80
	rlca                                             ; $54f2: $07
	ld   [bc], a                                     ; $54f3: $02
	ld   [$070f], sp                                 ; $54f4: $08 $0f $07
	add  e                                           ; $54f7: $83
	rrca                                             ; $54f8: $0f
	inc  bc                                          ; $54f9: $03
	ld   c, $0f                                      ; $54fa: $0e $0f
	cp   $00                                         ; $54fc: $fe $00
	add  b                                           ; $54fe: $80

jr_076_54ff:
	ld   a, a                                        ; $54ff: $7f
	ld   bc, $fc03                                   ; $5500: $01 $03 $fc
	add  b                                           ; $5503: $80
	add  e                                           ; $5504: $83
	add  b                                           ; $5505: $80
	ld   a, a                                        ; $5506: $7f
	rlca                                             ; $5507: $07
	cp   $ff                                         ; $5508: $fe $ff
	call nc, $80ff                                   ; $550a: $d4 $ff $80
	rst  $38                                         ; $550d: $ff
	xor  d                                           ; $550e: $aa
	nop                                              ; $550f: $00
	add  b                                           ; $5510: $80
	cp   $03                                         ; $5511: $fe $03
	rst  ToBoot                                         ; $5513: $c7
	ccf                                              ; $5514: $3f
	db   $e4                                         ; $5515: $e4
	db   $e3                                         ; $5516: $e3
	add  b                                           ; $5517: $80
	cp   $06                                         ; $5518: $fe $06
	xor  d                                           ; $551a: $aa
	rst  $38                                         ; $551b: $ff
	nop                                              ; $551c: $00
	rst  $38                                         ; $551d: $ff
	adc  d                                           ; $551e: $8a
	rst  $38                                         ; $551f: $ff
	jr   nz, jr_076_54a3                             ; $5520: $20 $81

	nop                                              ; $5522: $00
	add  b                                           ; $5523: $80
	ldh  [$0a], a                                    ; $5524: $e0 $0a
	or   h                                           ; $5526: $b4
	db   $f4                                         ; $5527: $f4
	ld   e, $fe                                      ; $5528: $1e $fe
	and  a                                           ; $552a: $a7
	rst  $38                                         ; $552b: $ff
	ld   d, d                                        ; $552c: $52
	rst  $38                                         ; $552d: $ff
	and  b                                           ; $552e: $a0
	rst  $38                                         ; $552f: $ff
	ld   a, [bc]                                     ; $5530: $0a
	add  l                                           ; $5531: $85
	nop                                              ; $5532: $00
	add  b                                           ; $5533: $80
	add  b                                           ; $5534: $80
	add  b                                           ; $5535: $80
	and  b                                           ; $5536: $a0
	add  b                                           ; $5537: $80
	ret  nc                                          ; $5538: $d0

	dec  bc                                          ; $5539: $0b
	ld   l, b                                        ; $553a: $68
	add  sp, -$48                                    ; $553b: $e8 $b8
	jr   c, jr_076_55ab                              ; $553d: $38 $6c

	ld   a, h                                        ; $553f: $7c
	ld   d, h                                        ; $5540: $54
	ld   a, h                                        ; $5541: $7c
	ld   d, h                                        ; $5542: $54
	ld   a, h                                        ; $5543: $7c
	jr   z, jr_076_557e                              ; $5544: $28 $38

	add  h                                           ; $5546: $84
	nop                                              ; $5547: $00
	add  b                                           ; $5548: $80
	inc  bc                                          ; $5549: $03
	add  b                                           ; $554a: $80
	nop                                              ; $554b: $00
	add  b                                           ; $554c: $80
	ccf                                              ; $554d: $3f
	nop                                              ; $554e: $00
	ld   h, b                                        ; $554f: $60
	add  c                                           ; $5550: $81
	ld   a, a                                        ; $5551: $7f
	ld   bc, $3f20                                   ; $5552: $01 $20 $3f
	add  d                                           ; $5555: $82
	nop                                              ; $5556: $00
	add  b                                           ; $5557: $80
	ldh  a, [$80]                                    ; $5558: $f0 $80
	nop                                              ; $555a: $00
	add  b                                           ; $555b: $80
	add  b                                           ; $555c: $80
	add  d                                           ; $555d: $82
	ret  nz                                          ; $555e: $c0

	add  b                                           ; $555f: $80
	add  b                                           ; $5560: $80
	add  d                                           ; $5561: $82
	nop                                              ; $5562: $00
	add  b                                           ; $5563: $80
	ld   a, a                                        ; $5564: $7f
	add  b                                           ; $5565: $80
	cp   a                                           ; $5566: $bf
	add  b                                           ; $5567: $80
	ld   e, l                                        ; $5568: $5d
	add  b                                           ; $5569: $80
	xor  a                                           ; $556a: $af
	add  b                                           ; $556b: $80
	ld   d, a                                        ; $556c: $57
	add  b                                           ; $556d: $80
	ld   a, [hl+]                                    ; $556e: $2a
	add  b                                           ; $556f: $80
	dec  d                                           ; $5570: $15
	add  b                                           ; $5571: $80
	ld   [$fd05], sp                                 ; $5572: $08 $05 $fd
	rst  $38                                         ; $5575: $ff
	db   $fc                                         ; $5576: $fc
	rst  $38                                         ; $5577: $ff
	sbc  $df                                         ; $5578: $de $df
	add  b                                           ; $557a: $80
	cp   e                                           ; $557b: $bb
	add  b                                           ; $557c: $80
	ld   [hl], a                                     ; $557d: $77

jr_076_557e:
	add  b                                           ; $557e: $80
	rst  $28                                         ; $557f: $ef
	add  b                                           ; $5580: $80
	ld   d, l                                        ; $5581: $55
	add  b                                           ; $5582: $80
	xor  d                                           ; $5583: $aa
	ld   de, $40bf                                   ; $5584: $11 $bf $40
	ld   h, b                                        ; $5587: $60
	ldh  [$60], a                                    ; $5588: $e0 $60
	ldh  [rSVBK], a                                  ; $558a: $e0 $70
	ldh  a, [$34]                                    ; $558c: $f0 $34
	db   $f4                                         ; $558e: $f4
	ld   a, [de]                                     ; $558f: $1a
	ld   a, [$ff8a]                                  ; $5590: $fa $8a $ff
	ret  nc                                          ; $5593: $d0

	rst  $38                                         ; $5594: $ff
	ld   sp, hl                                      ; $5595: $f9
	inc  bc                                          ; $5596: $03
	add  d                                           ; $5597: $82
	rlca                                             ; $5598: $07
	ld   a, [bc]                                     ; $5599: $0a
	inc  e                                           ; $559a: $1c
	ld   e, $34                                      ; $559b: $1e $34
	scf                                              ; $559d: $37
	and  h                                           ; $559e: $a4
	xor  a                                           ; $559f: $af
	and  d                                           ; $55a0: $a2
	rst  $38                                         ; $55a1: $ff
	rla                                              ; $55a2: $17
	rst  $38                                         ; $55a3: $ff
	ld   b, b                                        ; $55a4: $40
	add  l                                           ; $55a5: $85
	rst  $38                                         ; $55a6: $ff
	inc  b                                           ; $55a7: $04
	ld   d, l                                        ; $55a8: $55
	rst  $38                                         ; $55a9: $ff
	nop                                              ; $55aa: $00

jr_076_55ab:
	rst  $38                                         ; $55ab: $ff
	ld   d, l                                        ; $55ac: $55
	add  c                                           ; $55ad: $81
	rst  $38                                         ; $55ae: $ff
	nop                                              ; $55af: $00
	nop                                              ; $55b0: $00
	add  c                                           ; $55b1: $81
	rst  $38                                         ; $55b2: $ff
	ld   e, $f5                                      ; $55b3: $1e $f5
	rst  $38                                         ; $55b5: $ff
	ldh  [rIE], a                                    ; $55b6: $e0 $ff
	ld   b, b                                        ; $55b8: $40
	rst  $38                                         ; $55b9: $ff
	nop                                              ; $55ba: $00
	rst  $38                                         ; $55bb: $ff
	ld   d, b                                        ; $55bc: $50
	rst  $38                                         ; $55bd: $ff
	ld   a, [$f2ff]                                  ; $55be: $fa $ff $f2
	rrca                                             ; $55c1: $0f
	ld   [$010f], sp                                 ; $55c2: $08 $0f $01
	rrca                                             ; $55c5: $0f
	inc  bc                                          ; $55c6: $03
	rrca                                             ; $55c7: $0f
	rlca                                             ; $55c8: $07
	rrca                                             ; $55c9: $0f
	rlca                                             ; $55ca: $07
	rrca                                             ; $55cb: $0f
	rlca                                             ; $55cc: $07
	rrca                                             ; $55cd: $0f
	rlca                                             ; $55ce: $07
	rrca                                             ; $55cf: $0f
	ld   d, a                                        ; $55d0: $57
	rst  $38                                         ; $55d1: $ff
	xor  a                                           ; $55d2: $af
	add  a                                           ; $55d3: $87
	rst  $38                                         ; $55d4: $ff
	add  b                                           ; $55d5: $80
	cp   $80                                         ; $55d6: $fe $80
	db   $fd                                         ; $55d8: $fd
	add  h                                           ; $55d9: $84
	rst  $38                                         ; $55da: $ff
	add  b                                           ; $55db: $80
	db   $fd                                         ; $55dc: $fd
	rra                                              ; $55dd: $1f
	ld   [$59eb], a                                  ; $55de: $ea $eb $59
	ld   e, a                                        ; $55e1: $5f
	and  h                                           ; $55e2: $a4
	cp   h                                           ; $55e3: $bc
	inc  de                                          ; $55e4: $13
	ld   [hl], e                                     ; $55e5: $73
	add  h                                           ; $55e6: $84
	rst  $38                                         ; $55e7: $ff
	ei                                               ; $55e8: $fb
	rst  $38                                         ; $55e9: $ff
	xor  [hl]                                        ; $55ea: $ae
	xor  a                                           ; $55eb: $af
	ld   d, c                                        ; $55ec: $51
	ld   a, a                                        ; $55ed: $7f
	or   b                                           ; $55ee: $b0
	ldh  [$9f], a                                    ; $55ef: $e0 $9f
	rra                                              ; $55f1: $1f
	ld   a, [$d0ff]                                  ; $55f2: $fa $ff $d0
	rst  $38                                         ; $55f5: $ff
	ld   h, c                                        ; $55f6: $61
	db   $f4                                         ; $55f7: $f4
	cp   d                                           ; $55f8: $ba
	ld   a, [$fdad]                                  ; $55f9: $fa $ad $fd
	db   $10                                         ; $55fc: $10

jr_076_55fd:
	cp   a                                           ; $55fd: $bf
	add  b                                           ; $55fe: $80
	inc  bc                                          ; $55ff: $03
	add  b                                           ; $5600: $80
	push af                                          ; $5601: $f5
	inc  b                                           ; $5602: $04
	cp   [hl]                                        ; $5603: $be
	cp   $0a                                         ; $5604: $fe $0a
	rst  $38                                         ; $5606: $ff
	ld   c, d                                        ; $5607: $4a
	add  e                                           ; $5608: $83
	nop                                              ; $5609: $00
	ld   a, [bc]                                     ; $560a: $0a
	ld   h, b                                        ; $560b: $60
	ldh  [$88], a                                    ; $560c: $e0 $88
	ld   hl, sp+$13                                  ; $560e: $f8 $13
	rra                                              ; $5610: $1f
	ret  nc                                          ; $5611: $d0

	db   $d3                                         ; $5612: $d3
	cp   d                                           ; $5613: $ba
	ld   a, [$89bf]                                  ; $5614: $fa $bf $89
	nop                                              ; $5617: $00
	add  b                                           ; $5618: $80
	ret  nz                                          ; $5619: $c0

	inc  bc                                          ; $561a: $03
	jr   nz, jr_076_55fd                             ; $561b: $20 $e0

	rst  $38                                         ; $561d: $ff
	ccf                                              ; $561e: $3f
	add  b                                           ; $561f: $80
	rst  $38                                         ; $5620: $ff
	add  b                                           ; $5621: $80
	ld   d, l                                        ; $5622: $55
	add  b                                           ; $5623: $80
	ld   a, [hl+]                                    ; $5624: $2a
	add  b                                           ; $5625: $80
	ld   bc, $0084                                   ; $5626: $01 $84 $00
	add  d                                           ; $5629: $82
	rst  $38                                         ; $562a: $ff
	add  b                                           ; $562b: $80
	ld   e, l                                        ; $562c: $5d
	add  b                                           ; $562d: $80
	xor  e                                           ; $562e: $ab
	add  b                                           ; $562f: $80
	ld   d, l                                        ; $5630: $55
	add  b                                           ; $5631: $80
	ld   a, [bc]                                     ; $5632: $0a
	add  d                                           ; $5633: $82
	nop                                              ; $5634: $00
	add  [hl]                                        ; $5635: $86
	rst  $38                                         ; $5636: $ff
	add  b                                           ; $5637: $80
	ld   d, a                                        ; $5638: $57
	add  b                                           ; $5639: $80
	xor  b                                           ; $563a: $a8
	add  b                                           ; $563b: $80
	dec  d                                           ; $563c: $15
	add  b                                           ; $563d: $80
	nop                                              ; $563e: $00
	add  d                                           ; $563f: $82
	rst  $38                                         ; $5640: $ff
	add  b                                           ; $5641: $80
	rst  JumpTable                                         ; $5642: $df
	add  b                                           ; $5643: $80
	cp   a                                           ; $5644: $bf
	add  b                                           ; $5645: $80
	ld   [hl], a                                     ; $5646: $77
	add  b                                           ; $5647: $80
	xor  e                                           ; $5648: $ab
	add  b                                           ; $5649: $80
	ld   d, l                                        ; $564a: $55
	add  b                                           ; $564b: $80
	ld   a, [bc]                                     ; $564c: $0a
	add  b                                           ; $564d: $80
	rst  $38                                         ; $564e: $ff
	rra                                              ; $564f: $1f
	call nc, $88ff                                   ; $5650: $d4 $ff $88
	db   $fc                                         ; $5653: $fc
	ld   a, [de]                                     ; $5654: $1a
	ld   a, [$f535]                                  ; $5655: $fa $35 $f5
	ld   a, [hl-]                                    ; $5658: $3a
	ld   a, [$ff1f]                                  ; $5659: $fa $1f $ff
	adc  e                                           ; $565c: $8b
	rst  $38                                         ; $565d: $ff
	call nc, $070f                                   ; $565e: $d4 $0f $07
	rrca                                             ; $5661: $0f
	inc  bc                                          ; $5662: $03
	rrca                                             ; $5663: $0f
	inc  bc                                          ; $5664: $03
	rrca                                             ; $5665: $0f
	dec  bc                                          ; $5666: $0b
	rrca                                             ; $5667: $0f
	inc  c                                           ; $5668: $0c
	rrca                                             ; $5669: $0f
	inc  bc                                          ; $566a: $03
	rrca                                             ; $566b: $0f
	ld   b, $05                                      ; $566c: $06 $05
	ld   a, [bc]                                     ; $566e: $0a
	ld   a, [$f580]                                  ; $566f: $fa $80 $f5
	rla                                              ; $5672: $17
	ld   [$f5eb], a                                  ; $5673: $ea $eb $f5
	rst  $30                                         ; $5676: $f7
	xor  $ef                                         ; $5677: $ee $ef
	jp   c, $2edf                                    ; $5679: $da $df $2e

	rst  $28                                         ; $567c: $ef
	dec  e                                           ; $567d: $1d
	rst  JumpTable                                         ; $567e: $df
	dec  h                                           ; $567f: $25
	rst  JumpTable                                         ; $5680: $df
	push af                                          ; $5681: $f5
	rst  $38                                         ; $5682: $ff
	xor  e                                           ; $5683: $ab
	rst  $38                                         ; $5684: $ff
	ld   a, [bc]                                     ; $5685: $0a
	ld   [$d515], a                                  ; $5686: $ea $15 $d5
	ld   a, [hl+]                                    ; $5689: $2a
	xor  d                                           ; $568a: $aa
	add  b                                           ; $568b: $80
	ld   d, l                                        ; $568c: $55
	add  b                                           ; $568d: $80
	xor  d                                           ; $568e: $aa
	inc  bc                                          ; $568f: $03
	ld   a, a                                        ; $5690: $7f
	rst  $38                                         ; $5691: $ff
	ld   a, a                                        ; $5692: $7f
	rst  $38                                         ; $5693: $ff
	add  b                                           ; $5694: $80
	ld   e, a                                        ; $5695: $5f
	add  b                                           ; $5696: $80
	xor  d                                           ; $5697: $aa

jr_076_5698:
	add  b                                           ; $5698: $80
	ld   d, l                                        ; $5699: $55
	add  b                                           ; $569a: $80
	xor  d                                           ; $569b: $aa
	add  b                                           ; $569c: $80
	ld   d, l                                        ; $569d: $55
	add  b                                           ; $569e: $80
	xor  b                                           ; $569f: $a8
	dec  b                                           ; $56a0: $05
	ld   a, [$f8ff]                                  ; $56a1: $fa $ff $f8
	rst  $38                                         ; $56a4: $ff
	db   $fd                                         ; $56a5: $fd
	rst  $38                                         ; $56a6: $ff
	add  b                                           ; $56a7: $80
	xor  e                                           ; $56a8: $ab
	add  b                                           ; $56a9: $80
	ld   d, l                                        ; $56aa: $55
	add  b                                           ; $56ab: $80
	ld   a, [hl+]                                    ; $56ac: $2a
	add  b                                           ; $56ad: $80
	ld   d, l                                        ; $56ae: $55
	add  b                                           ; $56af: $80
	ld   [bc], a                                     ; $56b0: $02
	dec  c                                           ; $56b1: $0d
	and  d                                           ; $56b2: $a2
	db   $fd                                         ; $56b3: $fd
	ld   a, [bc]                                     ; $56b4: $0a
	cp   $43                                         ; $56b5: $fe $43
	rst  $38                                         ; $56b7: $ff
	db   $e3                                         ; $56b8: $e3
	rst  $38                                         ; $56b9: $ff
	ldh  [c], a                                      ; $56ba: $e2
	rst  $38                                         ; $56bb: $ff
	xor  d                                           ; $56bc: $aa
	cp   a                                           ; $56bd: $bf
	ld   e, h                                        ; $56be: $5c
	ld   e, a                                        ; $56bf: $5f
	add  b                                           ; $56c0: $80
	xor  a                                           ; $56c1: $af
	ld   de, $7090                                   ; $56c2: $11 $90 $70
	xor  b                                           ; $56c5: $a8
	cp   b                                           ; $56c6: $b8
	ret  nc                                          ; $56c7: $d0

	ret  c                                           ; $56c8: $d8

	ld   l, h                                        ; $56c9: $6c
	db   $ec                                         ; $56ca: $ec
	ld   a, [hl-]                                    ; $56cb: $3a
	cp   $2a                                         ; $56cc: $fe $2a
	cp   $2a                                         ; $56ce: $fe $2a
	cp   $1a                                         ; $56d0: $fe $1a
	cp   $4d                                         ; $56d2: $fe $4d
	dec  d                                           ; $56d4: $15
	add  b                                           ; $56d5: $80
	ld   [$0580], sp                                 ; $56d6: $08 $80 $05
	add  d                                           ; $56d9: $82
	nop                                              ; $56da: $00
	add  b                                           ; $56db: $80
	ld   [bc], a                                     ; $56dc: $02
	add  b                                           ; $56dd: $80
	ld   bc, $0380                                   ; $56de: $01 $80 $03
	inc  bc                                          ; $56e1: $03
	ld   l, d                                        ; $56e2: $6a
	ld   a, a                                        ; $56e3: $7f
	adc  d                                           ; $56e4: $8a
	sbc  a                                           ; $56e5: $9f
	add  b                                           ; $56e6: $80
	ld   d, l                                        ; $56e7: $55
	add  b                                           ; $56e8: $80
	adc  d                                           ; $56e9: $8a
	add  b                                           ; $56ea: $80
	ld   d, l                                        ; $56eb: $55
	dec  bc                                          ; $56ec: $0b
	or   b                                           ; $56ed: $b0
	cp   a                                           ; $56ee: $bf
	jp   z, $35fa                                    ; $56ef: $ca $fa $35

	push af                                          ; $56f2: $f5
	db   $e4                                         ; $56f3: $e4
	rra                                              ; $56f4: $1f
	add  hl, bc                                      ; $56f5: $09
	rrca                                             ; $56f6: $0f
	ld   [$800a], sp                                 ; $56f7: $08 $0a $80
	dec  b                                           ; $56fa: $05
	add  [hl]                                        ; $56fb: $86
	nop                                              ; $56fc: $00
	add  b                                           ; $56fd: $80
	or   h                                           ; $56fe: $b4
	add  b                                           ; $56ff: $80
	ld   d, l                                        ; $5700: $55
	add  b                                           ; $5701: $80
	adc  b                                           ; $5702: $88
	add  b                                           ; $5703: $80
	ld   d, l                                        ; $5704: $55
	add  b                                           ; $5705: $80
	ldh  [c], a                                      ; $5706: $e2
	add  b                                           ; $5707: $80
	ld   d, l                                        ; $5708: $55
	add  b                                           ; $5709: $80
	ld   a, [de]                                     ; $570a: $1a
	add  b                                           ; $570b: $80
	dec  b                                           ; $570c: $05
	add  b                                           ; $570d: $80
	nop                                              ; $570e: $00
	add  b                                           ; $570f: $80
	ld   b, h                                        ; $5710: $44
	add  b                                           ; $5711: $80
	nop                                              ; $5712: $00
	add  b                                           ; $5713: $80
	ld   d, l                                        ; $5714: $55
	add  b                                           ; $5715: $80
	jr   nz, jr_076_5698                             ; $5716: $20 $80

	ld   d, l                                        ; $5718: $55
	add  b                                           ; $5719: $80
	adc  d                                           ; $571a: $8a
	add  b                                           ; $571b: $80
	ld   d, l                                        ; $571c: $55
	add  b                                           ; $571d: $80
	dec  b                                           ; $571e: $05
	add  b                                           ; $571f: $80
	ld   b, b                                        ; $5720: $40
	add  h                                           ; $5721: $84
	nop                                              ; $5722: $00
	add  b                                           ; $5723: $80
	ld   d, h                                        ; $5724: $54
	add  b                                           ; $5725: $80
	and  b                                           ; $5726: $a0
	add  b                                           ; $5727: $80
	ld   d, l                                        ; $5728: $55
	add  b                                           ; $5729: $80
	ld   d, a                                        ; $572a: $57
	add  b                                           ; $572b: $80
	xor  e                                           ; $572c: $ab
	add  b                                           ; $572d: $80
	ld   d, l                                        ; $572e: $55
	add  b                                           ; $572f: $80
	dec  bc                                          ; $5730: $0b
	add  hl, de                                      ; $5731: $19
	ld   d, $17                                      ; $5732: $16 $17
	inc  c                                           ; $5734: $0c
	rrca                                             ; $5735: $0f
	or   h                                           ; $5736: $b4
	cp   a                                           ; $5737: $bf
	ld   e, [hl]                                     ; $5738: $5e
	ld   d, a                                        ; $5739: $57
	ld   a, [bc]                                     ; $573a: $0a
	cp   $b1                                         ; $573b: $fe $b1
	db   $fd                                         ; $573d: $fd
	inc  de                                          ; $573e: $13
	ei                                               ; $573f: $fb
	ld   [$05ff], sp                                 ; $5740: $08 $ff $05
	db   $fd                                         ; $5743: $fd
	ld   a, [de]                                     ; $5744: $1a
	ld   a, [$d515]                                  ; $5745: $fa $15 $d5
	ld   l, d                                        ; $5748: $6a
	ld   [$807f], a                                  ; $5749: $ea $7f $80
	add  b                                           ; $574c: $80
	ld   d, l                                        ; $574d: $55
	add  b                                           ; $574e: $80
	rst  $38                                         ; $574f: $ff
	inc  bc                                          ; $5750: $03
	ld   bc, $5aff                                   ; $5751: $01 $ff $5a
	ld   e, e                                        ; $5754: $5b
	add  b                                           ; $5755: $80
	xor  a                                           ; $5756: $af
	add  b                                           ; $5757: $80
	ld   e, a                                        ; $5758: $5f
	ld   [bc], a                                     ; $5759: $02
	db   $eb                                         ; $575a: $eb
	rst  $38                                         ; $575b: $ff
	db   $eb                                         ; $575c: $eb
	add  c                                           ; $575d: $81
	nop                                              ; $575e: $00
	add  b                                           ; $575f: $80
	and  b                                           ; $5760: $a0
	add  b                                           ; $5761: $80
	ld   hl, sp+$08                                  ; $5762: $f8 $08
	inc  a                                           ; $5764: $3c
	db   $fc                                         ; $5765: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5766: $cf
	rst  $38                                         ; $5767: $ff
	di                                               ; $5768: $f3
	rst  $38                                         ; $5769: $ff
	db   $fd                                         ; $576a: $fd
	rst  $38                                         ; $576b: $ff
	cp   $89                                         ; $576c: $fe $89
	nop                                              ; $576e: $00
	add  b                                           ; $576f: $80
	add  b                                           ; $5770: $80
	add  b                                           ; $5771: $80
	ret  nz                                          ; $5772: $c0

	add  d                                           ; $5773: $82
	nop                                              ; $5774: $00
	add  b                                           ; $5775: $80
	rra                                              ; $5776: $1f
	ld   [bc], a                                     ; $5777: $02
	jr   nz, jr_076_57b9                             ; $5778: $20 $3f

	ld   e, a                                        ; $577a: $5f
	add  c                                           ; $577b: $81
	ld   a, a                                        ; $577c: $7f
	inc  bc                                          ; $577d: $03
	rra                                              ; $577e: $1f
	ccf                                              ; $577f: $3f
	nop                                              ; $5780: $00
	rra                                              ; $5781: $1f
	add  d                                           ; $5782: $82
	nop                                              ; $5783: $00
	add  b                                           ; $5784: $80
	add  b                                           ; $5785: $80
	ld   [bc], a                                     ; $5786: $02
	ld   b, b                                        ; $5787: $40
	ret  nz                                          ; $5788: $c0

	and  b                                           ; $5789: $a0
	add  c                                           ; $578a: $81
	ldh  [$03], a                                    ; $578b: $e0 $03
	add  b                                           ; $578d: $80
	ret  nz                                          ; $578e: $c0

	rlca                                             ; $578f: $07
	add  a                                           ; $5790: $87
	add  b                                           ; $5791: $80
	rlca                                             ; $5792: $07
	ld   [bc], a                                     ; $5793: $02
	ld   b, $07                                      ; $5794: $06 $07
	ld   [bc], a                                     ; $5796: $02
	add  c                                           ; $5797: $81
	inc  bc                                          ; $5798: $03
	add  b                                           ; $5799: $80
	ld   bc, $0082                                   ; $579a: $01 $82 $00
	add  b                                           ; $579d: $80
	ret  nz                                          ; $579e: $c0

	dec  bc                                          ; $579f: $0b
	dec  d                                           ; $57a0: $15
	ld   [$f777], a                                  ; $57a1: $ea $77 $f7
	ccf                                              ; $57a4: $3f
	rst  $38                                         ; $57a5: $ff
	rra                                              ; $57a6: $1f
	rst  $38                                         ; $57a7: $ff
	adc  d                                           ; $57a8: $8a
	rst  $38                                         ; $57a9: $ff
	sub  l                                           ; $57aa: $95
	cp   a                                           ; $57ab: $bf
	add  b                                           ; $57ac: $80
	dec  d                                           ; $57ad: $15
	add  b                                           ; $57ae: $80
	nop                                              ; $57af: $00
	add  b                                           ; $57b0: $80
	ld   a, [hl+]                                    ; $57b1: $2a
	adc  h                                           ; $57b2: $8c
	nop                                              ; $57b3: $00
	add  b                                           ; $57b4: $80
	xor  b                                           ; $57b5: $a8
	adc  h                                           ; $57b6: $8c
	nop                                              ; $57b7: $00
	add  b                                           ; $57b8: $80

jr_076_57b9:
	xor  e                                           ; $57b9: $ab
	add  b                                           ; $57ba: $80
	ld   bc, $0280                                   ; $57bb: $01 $80 $02
	add  b                                           ; $57be: $80
	ld   bc, $0086                                   ; $57bf: $01 $86 $00
	dec  c                                           ; $57c2: $0d
	ld   a, [hl+]                                    ; $57c3: $2a
	push de                                          ; $57c4: $d5
	ld   l, d                                        ; $57c5: $6a
	ld   [$f5b5], a                                  ; $57c6: $ea $b5 $f5
	ld   e, d                                        ; $57c9: $5a
	ld   a, d                                        ; $57ca: $7a
	and  e                                           ; $57cb: $a3
	cp   a                                           ; $57cc: $bf
	inc  d                                           ; $57cd: $14
	rra                                              ; $57ce: $1f
	rlca                                             ; $57cf: $07
	rrca                                             ; $57d0: $0f
	add  b                                           ; $57d1: $80
	nop                                              ; $57d2: $00
	rlca                                             ; $57d3: $07
	xor  [hl]                                        ; $57d4: $ae
	ld   a, a                                        ; $57d5: $7f
	adc  c                                           ; $57d6: $89
	rst  $38                                         ; $57d7: $ff
	sub  l                                           ; $57d8: $95
	db   $fd                                         ; $57d9: $fd
	set  7, e                                        ; $57da: $cb $fb
	add  b                                           ; $57dc: $80
	ld   a, [hl-]                                    ; $57dd: $3a
	rlca                                             ; $57de: $07
	ld   a, e                                        ; $57df: $7b
	ei                                               ; $57e0: $fb
	adc  l                                           ; $57e1: $8d
	db   $fd                                         ; $57e2: $fd
	rla                                              ; $57e3: $17
	rra                                              ; $57e4: $1f
	rla                                              ; $57e5: $17
	rst  $28                                         ; $57e6: $ef
	add  b                                           ; $57e7: $80
	ld   d, l                                        ; $57e8: $55
	add  b                                           ; $57e9: $80
	xor  d                                           ; $57ea: $aa
	add  b                                           ; $57eb: $80
	ld   d, l                                        ; $57ec: $55
	add  b                                           ; $57ed: $80
	xor  d                                           ; $57ee: $aa
	jr   jr_076_5846                                 ; $57ef: $18 $55

	ld   e, a                                        ; $57f1: $5f
	ldh  [rIE], a                                    ; $57f2: $e0 $ff
	ld   a, [hl+]                                    ; $57f4: $2a
	ccf                                              ; $57f5: $3f
	adc  a                                           ; $57f6: $8f

jr_076_57f7:
	ldh  a, [$d8]                                    ; $57f7: $f0 $d8
	cp   b                                           ; $57f9: $b8
	xor  $fe                                         ; $57fa: $ee $fe
	ld   d, l                                        ; $57fc: $55
	ld   a, l                                        ; $57fd: $7d
	adc  [hl]                                        ; $57fe: $8e
	cp   $03                                         ; $57ff: $fe $03
	rst  $38                                         ; $5801: $ff
	inc  de                                          ; $5802: $13
	rst  $38                                         ; $5803: $ff
	or   [hl]                                        ; $5804: $b6
	cp   $f8                                         ; $5805: $fe $f8
	rrca                                             ; $5807: $0f
	rla                                              ; $5808: $17
	add  e                                           ; $5809: $83
	rra                                              ; $580a: $1f
	inc  bc                                          ; $580b: $03
	rlca                                             ; $580c: $07
	rrca                                             ; $580d: $0f
	nop                                              ; $580e: $00
	rlca                                             ; $580f: $07
	add  b                                           ; $5810: $80
	nop                                              ; $5811: $00
	add  b                                           ; $5812: $80
	ld   b, b                                        ; $5813: $40
	ld   [bc], a                                     ; $5814: $02
	jr   nz, jr_076_57f7                             ; $5815: $20 $e0

	ret  nc                                          ; $5817: $d0

	add  e                                           ; $5818: $83
	ldh  a, [$08]                                    ; $5819: $f0 $08

jr_076_581b:
	ret  nz                                          ; $581b: $c0

	ldh  [$03], a                                    ; $581c: $e0 $03
	jp   $0706                                       ; $581e: $c3 $06 $07


	dec  b                                           ; $5821: $05
	rlca                                             ; $5822: $07
	inc  bc                                          ; $5823: $03
	add  a                                           ; $5824: $87
	nop                                              ; $5825: $00
	add  b                                           ; $5826: $80
	ldh  [rDIV], a                                   ; $5827: $e0 $04
	jr   nc, jr_076_581b                             ; $5829: $30 $f0

	ret  nc                                          ; $582b: $d0

	ldh  a, [$e0]                                    ; $582c: $f0 $e0
	add  l                                           ; $582e: $85
	nop                                              ; $582f: $00
	add  b                                           ; $5830: $80
	inc  e                                           ; $5831: $1c
	ld   bc, $3e22                                   ; $5832: $01 $22 $3e
	add  b                                           ; $5835: $80
	ld   [hl], $80                                   ; $5836: $36 $80
	ld   a, $01                                      ; $5838: $3e $01
	inc  sp                                          ; $583a: $33
	cpl                                              ; $583b: $2f
	add  b                                           ; $583c: $80
	dec  b                                           ; $583d: $05
	add  [hl]                                        ; $583e: $86
	nop                                              ; $583f: $00
	add  b                                           ; $5840: $80
	ld   a, b                                        ; $5841: $78
	dec  b                                           ; $5842: $05
	add  [hl]                                        ; $5843: $86
	cp   $2d                                         ; $5844: $fe $2d

jr_076_5846:
	rst  $38                                         ; $5846: $ff
	ld   d, l                                        ; $5847: $55
	rst  $38                                         ; $5848: $ff
	add  b                                           ; $5849: $80
	rla                                              ; $584a: $17
	adc  b                                           ; $584b: $88
	nop                                              ; $584c: $00
	inc  bc                                          ; $584d: $03
	ld   a, c                                        ; $584e: $79
	ld   sp, hl                                      ; $584f: $f9
	ld   [hl], h                                     ; $5850: $74
	db   $f4                                         ; $5851: $f4
	add  b                                           ; $5852: $80
	ret  nz                                          ; $5853: $c0

	adc  b                                           ; $5854: $88
	nop                                              ; $5855: $00
	add  b                                           ; $5856: $80
	ld   [bc], a                                     ; $5857: $02
	add  b                                           ; $5858: $80
	rlca                                             ; $5859: $07
	db   $10                                         ; $585a: $10
	dec  l                                           ; $585b: $2d
	cpl                                              ; $585c: $2f
	ld   e, b                                        ; $585d: $58
	ld   e, a                                        ; $585e: $5f
	or   c                                           ; $585f: $b1
	cp   a                                           ; $5860: $bf
	ld   [hl], e                                     ; $5861: $73
	ld   a, a                                        ; $5862: $7f
	or   e                                           ; $5863: $b3
	cp   a                                           ; $5864: $bf
	ld   d, c                                        ; $5865: $51
	ld   e, a                                        ; $5866: $5f
	xor  a                                           ; $5867: $af
	xor  d                                           ; $5868: $aa
	push de                                          ; $5869: $d5
	ld   a, a                                        ; $586a: $7f
	xor  d                                           ; $586b: $aa
	add  a                                           ; $586c: $87
	rst  $38                                         ; $586d: $ff
	dec  d                                           ; $586e: $15
	ld   e, a                                        ; $586f: $5f
	rst  $38                                         ; $5870: $ff
	rst  $30                                         ; $5871: $f7
	xor  b                                           ; $5872: $a8
	ld   d, l                                        ; $5873: $55
	push de                                          ; $5874: $d5
	ld   l, $fe                                      ; $5875: $2e $fe
	ld   e, e                                        ; $5877: $5b
	rst  $38                                         ; $5878: $ff
	pop  af                                          ; $5879: $f1
	rst  $38                                         ; $587a: $ff
	ld   sp, hl                                      ; $587b: $f9
	rst  $38                                         ; $587c: $ff
	ld   sp, hl                                      ; $587d: $f9
	rst  $38                                         ; $587e: $ff
	pop  af                                          ; $587f: $f1
	rst  $38                                         ; $5880: $ff
	ldh  a, [c]                                      ; $5881: $f2
	rlca                                             ; $5882: $07
	ld   [bc], a                                     ; $5883: $02

jr_076_5884:
	inc  bc                                          ; $5884: $03
	add  b                                           ; $5885: $80
	add  b                                           ; $5886: $80
	add  b                                           ; $5887: $80
	ld   b, b                                        ; $5888: $40
	add  b                                           ; $5889: $80
	and  b                                           ; $588a: $a0

jr_076_588b:
	add  b                                           ; $588b: $80
	ret  nz                                          ; $588c: $c0

	add  b                                           ; $588d: $80
	and  b                                           ; $588e: $a0
	add  b                                           ; $588f: $80
	ld   b, b                                        ; $5890: $40
	inc  bc                                          ; $5891: $03
	jr   nc, jr_076_5884                             ; $5892: $30 $f0

	cpl                                              ; $5894: $2f
	rst  $28                                         ; $5895: $ef
	add  b                                           ; $5896: $80
	ccf                                              ; $5897: $3f
	nop                                              ; $5898: $00
	ld   h, b                                        ; $5899: $60
	add  c                                           ; $589a: $81
	ld   a, a                                        ; $589b: $7f
	ld   bc, $3f20                                   ; $589c: $01 $20 $3f
	add  b                                           ; $589f: $80
	rrca                                             ; $58a0: $0f
	add  h                                           ; $58a1: $84
	nop                                              ; $58a2: $00
	add  b                                           ; $58a3: $80
	ld   a, [bc]                                     ; $58a4: $0a
	add  b                                           ; $58a5: $80
	rlca                                             ; $58a6: $07
	dec  b                                           ; $58a7: $05
	ld   l, $2f                                      ; $58a8: $2e $2f
	ld   e, c                                        ; $58aa: $59
	ld   e, a                                        ; $58ab: $5f
	or   a                                           ; $58ac: $b7
	cp   a                                           ; $58ad: $bf
	add  b                                           ; $58ae: $80
	ld   a, a                                        ; $58af: $7f
	nop                                              ; $58b0: $00
	rrca                                             ; $58b1: $0f
	add  e                                           ; $58b2: $83
	nop                                              ; $58b3: $00
	add  b                                           ; $58b4: $80
	ret  nc                                          ; $58b5: $d0

	add  b                                           ; $58b6: $80
	ld   hl, sp+$07                                  ; $58b7: $f8 $07
	dec  a                                           ; $58b9: $3d
	db   $fd                                         ; $58ba: $fd
	jp   c, $edfa                                    ; $58bb: $da $fa $ed

	db   $fd                                         ; $58be: $fd
	db   $ec                                         ; $58bf: $ec
	inc  e                                           ; $58c0: $1c
	add  b                                           ; $58c1: $80
	dec  d                                           ; $58c2: $15
	add  b                                           ; $58c3: $80
	cpl                                              ; $58c4: $2f
	add  b                                           ; $58c5: $80
	ld   e, a                                        ; $58c6: $5f
	dec  b                                           ; $58c7: $05
	cp   [hl]                                        ; $58c8: $be
	cp   a                                           ; $58c9: $bf
	ld   [hl], c                                     ; $58ca: $71
	ld   a, a                                        ; $58cb: $7f
	xor  $fe                                         ; $58cc: $ee $fe
	add  b                                           ; $58ce: $80
	db   $fc                                         ; $58cf: $fc
	ld   bc, $aab5                                   ; $58d0: $01 $b5 $aa
	add  b                                           ; $58d3: $80
	db   $fd                                         ; $58d4: $fd
	add  d                                           ; $58d5: $82
	rst  $38                                         ; $58d6: $ff
	inc  bc                                          ; $58d7: $03
	ld   bc, $feff                                   ; $58d8: $01 $ff $fe
	rst  $38                                         ; $58db: $ff
	add  b                                           ; $58dc: $80
	dec  b                                           ; $58dd: $05
	add  b                                           ; $58de: $80
	nop                                              ; $58df: $00
	ld   bc, $01fe                                   ; $58e0: $01 $fe $01
	add  b                                           ; $58e3: $80
	nop                                              ; $58e4: $00
	add  b                                           ; $58e5: $80
	and  b                                           ; $58e6: $a0
	add  b                                           ; $58e7: $80
	call nc, $fa80                                   ; $58e8: $d4 $80 $fa
	add  hl, bc                                      ; $58eb: $09
	dec  a                                           ; $58ec: $3d
	db   $fd                                         ; $58ed: $fd
	sbc  $fe                                         ; $58ee: $de $fe
	dec  hl                                          ; $58f0: $2b
	dec  sp                                          ; $58f1: $3b
	ld   [hl], e                                     ; $58f2: $73
	rst  $38                                         ; $58f3: $ff
	ld   b, b                                        ; $58f4: $40
	inc  a                                           ; $58f5: $3c
	add  d                                           ; $58f6: $82
	nop                                              ; $58f7: $00
	add  b                                           ; $58f8: $80
	add  b                                           ; $58f9: $80
	add  b                                           ; $58fa: $80
	ld   d, e                                        ; $58fb: $53
	add  b                                           ; $58fc: $80
	xor  e                                           ; $58fd: $ab
	add  b                                           ; $58fe: $80
	rst  $10                                         ; $58ff: $d7
	add  [hl]                                        ; $5900: $86
	nop                                              ; $5901: $00
	add  b                                           ; $5902: $80
	db   $fc                                         ; $5903: $fc
	ld   [bc], a                                     ; $5904: $02
	rst  ToBoot                                         ; $5905: $c7
	rst  $38                                         ; $5906: $ff
	jr   c, jr_076_588b                              ; $5907: $38 $82

	rst  $38                                         ; $5909: $ff
	add  a                                           ; $590a: $87
	nop                                              ; $590b: $00
	add  b                                           ; $590c: $80
	add  b                                           ; $590d: $80
	add  b                                           ; $590e: $80
	ret  nz                                          ; $590f: $c0

	add  b                                           ; $5910: $80
	db   $fc                                         ; $5911: $fc
	inc  bc                                          ; $5912: $03
	dec  l                                           ; $5913: $2d
	cpl                                              ; $5914: $2f
	dec  c                                           ; $5915: $0d
	rrca                                             ; $5916: $0f
	add  b                                           ; $5917: $80
	ld   [bc], a                                     ; $5918: $02
	adc  b                                           ; $5919: $88
	nop                                              ; $591a: $00
	dec  b                                           ; $591b: $05
	ld   d, l                                        ; $591c: $55
	rst  $38                                         ; $591d: $ff
	ld   d, c                                        ; $591e: $51
	rst  $38                                         ; $591f: $ff
	xor  [hl]                                        ; $5920: $ae
	xor  d                                           ; $5921: $aa
	adc  b                                           ; $5922: $88
	nop                                              ; $5923: $00
	inc  bc                                          ; $5924: $03
	ld   e, [hl]                                     ; $5925: $5e
	cp   $55                                         ; $5926: $fe $55
	push af                                          ; $5928: $f5
	add  b                                           ; $5929: $80
	xor  b                                           ; $592a: $a8
	add  b                                           ; $592b: $80
	ld   [bc], a                                     ; $592c: $02
	add  b                                           ; $592d: $80
	dec  b                                           ; $592e: $05
	add  b                                           ; $592f: $80
	dec  bc                                          ; $5930: $0b
	dec  b                                           ; $5931: $05
	ld   d, $17                                      ; $5932: $16 $17
	dec  a                                           ; $5934: $3d
	ccf                                              ; $5935: $3f
	add  e                                           ; $5936: $83
	add  b                                           ; $5937: $80
	add  b                                           ; $5938: $80
	ld   [bc], a                                     ; $5939: $02
	add  b                                           ; $593a: $80
	ld   d, l                                        ; $593b: $55
	add  b                                           ; $593c: $80
	xor  d                                           ; $593d: $aa
	ld   [bc], a                                     ; $593e: $02
	pop  bc                                          ; $593f: $c1
	rst  $38                                         ; $5940: $ff
	ld   a, $84                                      ; $5941: $3e $84
	rst  $38                                         ; $5943: $ff
	add  c                                           ; $5944: $81
	nop                                              ; $5945: $00
	add  b                                           ; $5946: $80
	ld   b, b                                        ; $5947: $40
	add  b                                           ; $5948: $80
	and  b                                           ; $5949: $a0
	add  b                                           ; $594a: $80
	ret  nc                                          ; $594b: $d0

	ld   b, $68                                      ; $594c: $06 $68
	add  sp, -$4c                                    ; $594e: $e8 $b4
	db   $f4                                         ; $5950: $f4
	jp   c, $1ffa                                    ; $5951: $da $fa $1f

	add  l                                           ; $5954: $85
	nop                                              ; $5955: $00
	add  [hl]                                        ; $5956: $86
	ldh  a, [$80]                                    ; $5957: $f0 $80
	or   $80                                         ; $5959: $f6 $80
	db   $fd                                         ; $595b: $fd
	add  b                                           ; $595c: $80
	cp   $0b                                         ; $595d: $fe $0b
	and  d                                           ; $595f: $a2
	ldh  a, [c]                                      ; $5960: $f2
	ld   c, $fe                                      ; $5961: $0e $fe
	ld   a, [bc]                                     ; $5963: $0a
	ld   a, [$fc0c]                                  ; $5964: $fa $0c $fc
	rlca                                             ; $5967: $07
	rst  $38                                         ; $5968: $ff
	jp   c, $8082                                    ; $5969: $da $82 $80

	ld   bc, $0088                                   ; $596c: $01 $88 $00
	add  b                                           ; $596f: $80
	ld   bc, $ff80                                   ; $5970: $01 $80 $ff
	add  b                                           ; $5973: $80
	xor  a                                           ; $5974: $af
	add  b                                           ; $5975: $80
	rst  $38                                         ; $5976: $ff
	add  b                                           ; $5977: $80
	ld   a, a                                        ; $5978: $7f
	add  b                                           ; $5979: $80
	rst  JumpTable                                         ; $597a: $df
	add  b                                           ; $597b: $80
	cp   a                                           ; $597c: $bf
	add  b                                           ; $597d: $80
	rst  JumpTable                                         ; $597e: $df
	add  b                                           ; $597f: $80
	ld   a, a                                        ; $5980: $7f
	adc  [hl]                                        ; $5981: $8e
	ldh  a, [$0b]                                    ; $5982: $f0 $0b
	xor  d                                           ; $5984: $aa
	xor  e                                           ; $5985: $ab
	ld   e, h                                        ; $5986: $5c
	ld   e, a                                        ; $5987: $5f
	ld   hl, sp-$01                                  ; $5988: $f8 $ff
	db   $fd                                         ; $598a: $fd
	rst  $38                                         ; $598b: $ff
	add  a                                           ; $598c: $87
	rst  $38                                         ; $598d: $ff
	ld   l, d                                        ; $598e: $6a
	ld   [$5080], a                                  ; $598f: $ea $80 $50
	add  b                                           ; $5992: $80
	nop                                              ; $5993: $00
	add  b                                           ; $5994: $80
	ld   bc, $8080                                   ; $5995: $01 $80 $80
	add  b                                           ; $5998: $80
	rlca                                             ; $5999: $07
	ld   bc, $8f88                                   ; $599a: $01 $88 $8f
	add  d                                           ; $599d: $82
	rrca                                             ; $599e: $0f
	ld   bc, $0700                                   ; $599f: $01 $00 $07
	add  b                                           ; $59a2: $80
	nop                                              ; $59a3: $00
	add  b                                           ; $59a4: $80
	ld   d, a                                        ; $59a5: $57
	add  b                                           ; $59a6: $80
	xor  d                                           ; $59a7: $aa
	add  b                                           ; $59a8: $80
	ld   d, c                                        ; $59a9: $51
	add  b                                           ; $59aa: $80
	add  b                                           ; $59ab: $80
	add  b                                           ; $59ac: $80
	add  e                                           ; $59ad: $83
	rlca                                             ; $59ae: $07
	adc  [hl]                                        ; $59af: $8e
	adc  a                                           ; $59b0: $8f
	dec  e                                           ; $59b1: $1d
	rra                                              ; $59b2: $1f
	dec  de                                          ; $59b3: $1b
	rra                                              ; $59b4: $1f
	ld   hl, sp-$10                                  ; $59b5: $f8 $f0
	add  b                                           ; $59b7: $80
	and  b                                           ; $59b8: $a0
	add  b                                           ; $59b9: $80
	ld   d, b                                        ; $59ba: $50
	add  b                                           ; $59bb: $80
	nop                                              ; $59bc: $00
	add  b                                           ; $59bd: $80
	ldh  a, [rSC]                                    ; $59be: $f0 $02
	db   $10                                         ; $59c0: $10
	ldh  a, [$e0]                                    ; $59c1: $f0 $e0
	add  c                                           ; $59c3: $81
	ldh  a, [rP1]                                    ; $59c4: $f0 $00
	rst  $38                                         ; $59c6: $ff
	add  c                                           ; $59c7: $81
	nop                                              ; $59c8: $00
	add  b                                           ; $59c9: $80
	inc  bc                                          ; $59ca: $03
	add  b                                           ; $59cb: $80
	rrca                                             ; $59cc: $0f
	inc  b                                           ; $59cd: $04
	inc  c                                           ; $59ce: $0c
	rrca                                             ; $59cf: $0f
	ld   a, [de]                                     ; $59d0: $1a
	ld   e, $34                                      ; $59d1: $1e $34
	add  c                                           ; $59d3: $81
	inc  a                                           ; $59d4: $3c
	dec  b                                           ; $59d5: $05
	ld   bc, $b90e                                   ; $59d6: $01 $0e $b9
	cp   a                                           ; $59d9: $bf
	ret  c                                           ; $59da: $d8

	sbc  $80                                         ; $59db: $de $80
	add  sp, $03                                     ; $59dd: $e8 $03
	inc  [hl]                                        ; $59df: $34
	db   $f4                                         ; $59e0: $f4
	ld   e, b                                        ; $59e1: $58
	ld   a, b                                        ; $59e2: $78
	add  b                                           ; $59e3: $80
	inc  a                                           ; $59e4: $3c
	rlca                                             ; $59e5: $07
	inc  l                                           ; $59e6: $2c
	inc  a                                           ; $59e7: $3c
	ld   d, $fd                                      ; $59e8: $16 $fd

jr_076_59ea:
	jr   jr_076_59ea                                 ; $59ea: $18 $fe

	ld   c, l                                        ; $59ec: $4d
	ld   c, a                                        ; $59ed: $4f
	add  b                                           ; $59ee: $80
	inc  bc                                          ; $59ef: $03
	add  b                                           ; $59f0: $80
	xor  c                                           ; $59f1: $a9
	add  b                                           ; $59f2: $80
	ld   d, h                                        ; $59f3: $54
	add  b                                           ; $59f4: $80
	xor  c                                           ; $59f5: $a9
	add  b                                           ; $59f6: $80
	rst  $38                                         ; $59f7: $ff
	add  b                                           ; $59f8: $80
	add  e                                           ; $59f9: $83
	add  b                                           ; $59fa: $80
	db   $fd                                         ; $59fb: $fd
	dec  c                                           ; $59fc: $0d
	dec  bc                                          ; $59fd: $0b
	ld   c, e                                        ; $59fe: $4b
	sub  l                                           ; $59ff: $95
	rst  $38                                         ; $5a00: $ff
	and  b                                           ; $5a01: $a0
	rst  $38                                         ; $5a02: $ff
	or   l                                           ; $5a03: $b5
	rst  $38                                         ; $5a04: $ff
	cp   a                                           ; $5a05: $bf
	rst  $38                                         ; $5a06: $ff
	ccf                                              ; $5a07: $3f
	rst  $38                                         ; $5a08: $ff
	ld   d, b                                        ; $5a09: $50
	rst  $28                                         ; $5a0a: $ef
	add  b                                           ; $5a0b: $80
	ld   a, a                                        ; $5a0c: $7f
	ld   de, $ff5f                                   ; $5a0d: $11 $5f $ff
	adc  a                                           ; $5a10: $8f
	rst  $38                                         ; $5a11: $ff
	rst  ToBoot                                         ; $5a12: $c7
	rst  $38                                         ; $5a13: $ff
	jp   $c1ff                                       ; $5a14: $c3 $ff $c1


	rst  $38                                         ; $5a17: $ff
	ldh  a, [rIE]                                    ; $5a18: $f0 $ff
	ld   b, $1f                                      ; $5a1a: $06 $1f
	dec  c                                           ; $5a1c: $0d
	rrca                                             ; $5a1d: $0f
	ld   b, $07                                      ; $5a1e: $06 $07
	adc  b                                           ; $5a20: $88
	nop                                              ; $5a21: $00
	dec  b                                           ; $5a22: $05
	rrca                                             ; $5a23: $0f
	ldh  a, [$e0]                                    ; $5a24: $f0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $5a26: $f0 $10
	ldh  a, [$80]                                    ; $5a28: $f0 $80
	ldh  [$86], a                                    ; $5a2a: $e0 $86
	nop                                              ; $5a2c: $00
	nop                                              ; $5a2d: $00
	rrca                                             ; $5a2e: $0f
	adc  c                                           ; $5a2f: $89
	rst  $38                                         ; $5a30: $ff
	add  b                                           ; $5a31: $80
	rst  $28                                         ; $5a32: $ef
	add  b                                           ; $5a33: $80
	ld   d, a                                        ; $5a34: $57
	dec  b                                           ; $5a35: $05
	xor  d                                           ; $5a36: $aa
	rst  $38                                         ; $5a37: $ff
	dec  b                                           ; $5a38: $05
	rst  $38                                         ; $5a39: $ff
	dec  b                                           ; $5a3a: $05
	ld   d, l                                        ; $5a3b: $55
	add  b                                           ; $5a3c: $80
	xor  d                                           ; $5a3d: $aa
	add  b                                           ; $5a3e: $80
	ld   d, b                                        ; $5a3f: $50
	add  b                                           ; $5a40: $80
	ld   [$440a], a                                  ; $5a41: $ea $0a $44
	cp   h                                           ; $5a44: $bc
	ld   d, d                                        ; $5a45: $52
	ld   d, [hl]                                     ; $5a46: $56
	ld   b, $ff                                      ; $5a47: $06 $ff
	ld   hl, sp-$01                                  ; $5a49: $f8 $ff
	db   $fc                                         ; $5a4b: $fc
	rst  $38                                         ; $5a4c: $ff
	cp   $83                                         ; $5a4d: $fe $83
	rst  $38                                         ; $5a4f: $ff
	add  b                                           ; $5a50: $80
	ld   a, a                                        ; $5a51: $7f
	add  b                                           ; $5a52: $80
	cp   a                                           ; $5a53: $bf
	ld   [$f0af], sp                                 ; $5a54: $08 $af $f0
	nop                                              ; $5a57: $00
	ldh  a, [rP1]                                    ; $5a58: $f0 $00
	ldh  a, [$80]                                    ; $5a5a: $f0 $80
	ldh  a, [$d0]                                    ; $5a5c: $f0 $d0
	add  l                                           ; $5a5e: $85
	ldh  a, [rP1]                                    ; $5a5f: $f0 $00
	rrca                                             ; $5a61: $0f
	xor  l                                           ; $5a62: $ad
	nop                                              ; $5a63: $00
	push hl                                          ; $5a64: $e5
	ld   bc, $0086                                   ; $5a65: $01 $86 $00
	ld   b, $0a                                      ; $5a68: $06 $0a
	rrca                                             ; $5a6a: $0f
	dec  b                                           ; $5a6b: $05
	rrca                                             ; $5a6c: $0f
	dec  b                                           ; $5a6d: $05
	rrca                                             ; $5a6e: $0f
	dec  b                                           ; $5a6f: $05
	add  b                                           ; $5a70: $80
	rrca                                             ; $5a71: $0f
	add  l                                           ; $5a72: $85
	nop                                              ; $5a73: $00
	ld   b, $aa                                      ; $5a74: $06 $aa
	rst  $38                                         ; $5a76: $ff
	ld   d, l                                        ; $5a77: $55
	rst  $38                                         ; $5a78: $ff
	ld   d, l                                        ; $5a79: $55
	rst  $38                                         ; $5a7a: $ff
	ld   d, l                                        ; $5a7b: $55
	add  b                                           ; $5a7c: $80
	rst  $38                                         ; $5a7d: $ff
	add  l                                           ; $5a7e: $85
	nop                                              ; $5a7f: $00

Jump_076_5a80:
	ld   b, $80                                      ; $5a80: $06 $80
	rst  $38                                         ; $5a82: $ff
	ld   a, a                                        ; $5a83: $7f
	rst  $38                                         ; $5a84: $ff
	ld   a, a                                        ; $5a85: $7f
	rst  $38                                         ; $5a86: $ff
	ld   a, a                                        ; $5a87: $7f
	add  b                                           ; $5a88: $80
	rst  $38                                         ; $5a89: $ff
	add  [hl]                                        ; $5a8a: $86
	nop                                              ; $5a8b: $00
	add  l                                           ; $5a8c: $85
	rst  $38                                         ; $5a8d: $ff
	add  b                                           ; $5a8e: $80
	ccf                                              ; $5a8f: $3f
	add  b                                           ; $5a90: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a91: $cf
	add  b                                           ; $5a92: $80
	ld   [hl], e                                     ; $5a93: $73
	add  b                                           ; $5a94: $80
	dec  e                                           ; $5a95: $1d
	add  b                                           ; $5a96: $80
	ld   c, $80                                      ; $5a97: $0e $80
	inc  hl                                          ; $5a99: $23
	add  d                                           ; $5a9a: $82
	ld   hl, sp+$00                                  ; $5a9b: $f8 $00
	rst  $38                                         ; $5a9d: $ff
	add  l                                           ; $5a9e: $85
	nop                                              ; $5a9f: $00
	ld   [bc], a                                     ; $5aa0: $02
	ld   a, [bc]                                     ; $5aa1: $0a
	rst  $38                                         ; $5aa2: $ff
	push af                                          ; $5aa3: $f5
	add  h                                           ; $5aa4: $84
	rst  $38                                         ; $5aa5: $ff
	add  l                                           ; $5aa6: $85
	nop                                              ; $5aa7: $00
	ld   bc, $8778                                   ; $5aa8: $01 $78 $87
	add  b                                           ; $5aab: $80
	jp   $7104                                       ; $5aac: $c3 $04 $71


	pop  af                                          ; $5aaf: $f1
	ld   a, b                                        ; $5ab0: $78
	ld   hl, sp-$01                                  ; $5ab1: $f8 $ff
	add  [hl]                                        ; $5ab3: $86
	nop                                              ; $5ab4: $00
	nop                                              ; $5ab5: $00
	rst  $38                                         ; $5ab6: $ff
	add  b                                           ; $5ab7: $80
	nop                                              ; $5ab8: $00
	inc  b                                           ; $5ab9: $04
	sub  l                                           ; $5aba: $95
	push af                                          ; $5abb: $f5
	xor  b                                           ; $5abc: $a8
	ld   hl, sp-$31                                  ; $5abd: $f8 $cf
	add  l                                           ; $5abf: $85
	nop                                              ; $5ac0: $00
	ld   bc, $f01f                                   ; $5ac1: $01 $1f $f0
	add  b                                           ; $5ac4: $80
	jr   nc, jr_076_5ac8                             ; $5ac5: $30 $01

	rrca                                             ; $5ac7: $0f

jr_076_5ac8:
	rra                                              ; $5ac8: $1f
	add  b                                           ; $5ac9: $80
	rrca                                             ; $5aca: $0f
	nop                                              ; $5acb: $00
	rst  $38                                         ; $5acc: $ff
	add  l                                           ; $5acd: $85
	nop                                              ; $5ace: $00
	inc  bc                                          ; $5acf: $03
	db   $fd                                         ; $5ad0: $fd
	inc  bc                                          ; $5ad1: $03
	ldh  [c], a                                      ; $5ad2: $e2
	db   $e3                                         ; $5ad3: $e3
	add  b                                           ; $5ad4: $80
	pop  bc                                          ; $5ad5: $c1
	add  b                                           ; $5ad6: $80
	ret  nz                                          ; $5ad7: $c0

	nop                                              ; $5ad8: $00
	rst  $38                                         ; $5ad9: $ff
	add  l                                           ; $5ada: $85
	nop                                              ; $5adb: $00
	ld   [$f20d], sp                                 ; $5adc: $08 $0d $f2
	ld   [hl-], a                                    ; $5adf: $32
	ldh  a, [c]                                      ; $5ae0: $f2
	ld   [hl+], a                                    ; $5ae1: $22
	ldh  [c], a                                      ; $5ae2: $e2
	db   $10                                         ; $5ae3: $10
	ld   d, $f9                                      ; $5ae4: $16 $f9
	add  l                                           ; $5ae6: $85
	nop                                              ; $5ae7: $00
	ld   [$6798], sp                                 ; $5ae8: $08 $98 $67
	ld   h, $27                                      ; $5aeb: $26 $27
	and  d                                           ; $5aed: $a2
	and  e                                           ; $5aee: $a3
	inc  b                                           ; $5aef: $04
	inc  h                                           ; $5af0: $24
	rst  JumpTable                                         ; $5af1: $df
	add  l                                           ; $5af2: $85
	nop                                              ; $5af3: $00
	dec  b                                           ; $5af4: $05
	ld   e, a                                        ; $5af5: $5f
	db   $e4                                         ; $5af6: $e4
	dec  hl                                          ; $5af7: $2b
	rst  $28                                         ; $5af8: $ef
	ld   b, a                                        ; $5af9: $47
	rst  ToBoot                                         ; $5afa: $c7
	add  b                                           ; $5afb: $80
	inc  bc                                          ; $5afc: $03
	nop                                              ; $5afd: $00
	rst  $38                                         ; $5afe: $ff
	add  l                                           ; $5aff: $85
	nop                                              ; $5b00: $00
	nop                                              ; $5b01: $00
	rst  $38                                         ; $5b02: $ff
	add  c                                           ; $5b03: $81
	nop                                              ; $5b04: $00
	add  b                                           ; $5b05: $80
	rst  $38                                         ; $5b06: $ff
	add  b                                           ; $5b07: $80
	cp   $00                                         ; $5b08: $fe $00
	rst  $38                                         ; $5b0a: $ff
	add  l                                           ; $5b0b: $85
	nop                                              ; $5b0c: $00
	ld   [$ff80], sp                                 ; $5b0d: $08 $80 $ff
	nop                                              ; $5b10: $00
	add  b                                           ; $5b11: $80

jr_076_5b12:
	ld   d, $17                                      ; $5b12: $16 $17
	ld   [bc], a                                     ; $5b14: $02
	inc  bc                                          ; $5b15: $03
	rst  $38                                         ; $5b16: $ff
	add  l                                           ; $5b17: $85
	nop                                              ; $5b18: $00
	ld   bc, $fc03                                   ; $5b19: $01 $03 $fc
	add  b                                           ; $5b1c: $80
	jr   jr_076_5b25                                 ; $5b1d: $18 $06

	jr   nc, jr_076_5b12                             ; $5b1f: $30 $f1

	and  b                                           ; $5b21: $a0
	db   $e3                                         ; $5b22: $e3
	ld   [hl], a                                     ; $5b23: $77
	rrca                                             ; $5b24: $0f

jr_076_5b25:
	dec  b                                           ; $5b25: $05
	add  l                                           ; $5b26: $85
	rrca                                             ; $5b27: $0f
	ld   [$0f00], sp                                 ; $5b28: $08 $00 $0f
	nop                                              ; $5b2b: $00
	rrca                                             ; $5b2c: $0f
	nop                                              ; $5b2d: $00
	rrca                                             ; $5b2e: $0f
	xor  d                                           ; $5b2f: $aa
	rst  $38                                         ; $5b30: $ff
	ld   d, l                                        ; $5b31: $55
	add  l                                           ; $5b32: $85
	rst  $38                                         ; $5b33: $ff
	ld   [$ff00], sp                                 ; $5b34: $08 $00 $ff
	nop                                              ; $5b37: $00

jr_076_5b38:
	rst  $38                                         ; $5b38: $ff
	nop                                              ; $5b39: $00
	rst  $38                                         ; $5b3a: $ff
	and  b                                           ; $5b3b: $a0
	rst  $38                                         ; $5b3c: $ff
	ld   e, a                                        ; $5b3d: $5f
	add  l                                           ; $5b3e: $85
	rst  $38                                         ; $5b3f: $ff
	ld   b, $00                                      ; $5b40: $06 $00
	rst  $38                                         ; $5b42: $ff
	nop                                              ; $5b43: $00
	rst  $38                                         ; $5b44: $ff
	nop                                              ; $5b45: $00
	rst  $38                                         ; $5b46: $ff
	nop                                              ; $5b47: $00
	add  a                                           ; $5b48: $87
	rst  $38                                         ; $5b49: $ff
	ld   b, $00                                      ; $5b4a: $06 $00
	rst  $38                                         ; $5b4c: $ff
	nop                                              ; $5b4d: $00
	rst  $38                                         ; $5b4e: $ff
	nop                                              ; $5b4f: $00
	rst  $38                                         ; $5b50: $ff
	nop                                              ; $5b51: $00
	add  l                                           ; $5b52: $85
	rst  $38                                         ; $5b53: $ff
	add  b                                           ; $5b54: $80
	ld   a, a                                        ; $5b55: $7f
	add  b                                           ; $5b56: $80
	sbc  a                                           ; $5b57: $9f
	add  b                                           ; $5b58: $80
	rst  $20                                         ; $5b59: $e7
	add  b                                           ; $5b5a: $80
	dec  sp                                          ; $5b5b: $3b
	add  [hl]                                        ; $5b5c: $86
	rst  $38                                         ; $5b5d: $ff
	add  hl, bc                                      ; $5b5e: $09
	add  b                                           ; $5b5f: $80
	rst  $38                                         ; $5b60: $ff
	nop                                              ; $5b61: $00
	rst  $38                                         ; $5b62: $ff
	ld   b, b                                        ; $5b63: $40
	rst  $38                                         ; $5b64: $ff
	ld   bc, $3cfe                                   ; $5b65: $01 $fe $3c
	db   $fc                                         ; $5b68: $fc
	add  b                                           ; $5b69: $80
	cp   $82                                         ; $5b6a: $fe $82
	rst  $38                                         ; $5b6c: $ff
	add  b                                           ; $5b6d: $80
	ld   a, a                                        ; $5b6e: $7f
	rlca                                             ; $5b6f: $07
	nop                                              ; $5b70: $00
	ld   a, a                                        ; $5b71: $7f
	nop                                              ; $5b72: $00
	ld   a, a                                        ; $5b73: $7f
	nop                                              ; $5b74: $00
	ld   a, a                                        ; $5b75: $7f
	nop                                              ; $5b76: $00
	ld   a, a                                        ; $5b77: $7f
	add  d                                           ; $5b78: $82
	nop                                              ; $5b79: $00
	add  b                                           ; $5b7a: $80
	rst  $38                                         ; $5b7b: $ff
	add  hl, bc                                      ; $5b7c: $09
	nop                                              ; $5b7d: $00
	cp   $00                                         ; $5b7e: $fe $00
	cp   $80                                         ; $5b80: $fe $80
	cp   $02                                         ; $5b82: $fe $02
	db   $fc                                         ; $5b84: $fc
	ld   a, a                                        ; $5b85: $7f
	rst  $38                                         ; $5b86: $ff
	add  b                                           ; $5b87: $80
	ld   bc, $0080                                   ; $5b88: $01 $80 $00
	add  d                                           ; $5b8b: $82
	rst  $38                                         ; $5b8c: $ff
	jr   z, jr_076_5b8f                              ; $5b8d: $28 $00

jr_076_5b8f:
	rst  $38                                         ; $5b8f: $ff
	add  b                                           ; $5b90: $80
	ld   a, a                                        ; $5b91: $7f
	nop                                              ; $5b92: $00

jr_076_5b93:
	rst  $38                                         ; $5b93: $ff
	cp   a                                           ; $5b94: $bf
	ret  nz                                          ; $5b95: $c0

	and  d                                           ; $5b96: $a2
	ldh  [c], a                                      ; $5b97: $e2
	ld   b, c                                        ; $5b98: $41
	pop  af                                          ; $5b99: $f1
	add  b                                           ; $5b9a: $80
	ldh  a, [$fe]                                    ; $5b9b: $f0 $fe
	rst  $38                                         ; $5b9d: $ff
	ld   [bc], a                                     ; $5b9e: $02
	rst  $38                                         ; $5b9f: $ff
	inc  bc                                          ; $5ba0: $03
	rst  $38                                         ; $5ba1: $ff
	nop                                              ; $5ba2: $00
	rst  $38                                         ; $5ba3: $ff
	ccf                                              ; $5ba4: $3f
	call z, $010d                                    ; $5ba5: $cc $0d $01
	nop                                              ; $5ba8: $00
	jr   jr_076_5bc5                                 ; $5ba9: $18 $1a

	db   $e3                                         ; $5bab: $e3
	ldh  [rTIMA], a                                  ; $5bac: $e0 $05
	ld   c, $fb                                      ; $5bae: $0e $fb
	rrca                                             ; $5bb0: $0f
	rst  $38                                         ; $5bb1: $ff
	ld   bc, $f8f9                                   ; $5bb2: $01 $f9 $f8
	add  hl, de                                      ; $5bb5: $19
	jr   jr_076_5b38                                 ; $5bb6: $18 $80

	nop                                              ; $5bb8: $00
	inc  e                                           ; $5bb9: $1c
	or   b                                           ; $5bba: $b0
	ldh  a, [rVBK]                                   ; $5bbb: $f0 $4f
	rrca                                             ; $5bbd: $0f
	and  b                                           ; $5bbe: $a0
	and  h                                           ; $5bbf: $a4
	ld   b, a                                        ; $5bc0: $47
	ld   a, h                                        ; $5bc1: $7c
	rst  $38                                         ; $5bc2: $ff
	ret  nz                                          ; $5bc3: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bc4: $cf

jr_076_5bc5:
	ld   c, h                                        ; $5bc5: $4c
	add  e                                           ; $5bc6: $83
	ld   b, $07                                      ; $5bc7: $06 $07
	add  c                                           ; $5bc9: $81
	adc  a                                           ; $5bca: $8f
	ld   [$1f07], sp                                 ; $5bcb: $08 $07 $1f
	ld   a, a                                        ; $5bce: $7f
	db   $10                                         ; $5bcf: $10
	rst  $38                                         ; $5bd0: $ff
	ld   [hl], b                                     ; $5bd1: $70
	rst  $38                                         ; $5bd2: $ff
	nop                                              ; $5bd3: $00
	rst  $38                                         ; $5bd4: $ff
	add  b                                           ; $5bd5: $80
	rst  $38                                         ; $5bd6: $ff
	add  b                                           ; $5bd7: $80
	add  b                                           ; $5bd8: $80
	ld   bc, $8000                                   ; $5bd9: $01 $00 $80
	add  d                                           ; $5bdc: $82
	rst  $38                                         ; $5bdd: $ff
	rlca                                             ; $5bde: $07
	nop                                              ; $5bdf: $00
	rst  $38                                         ; $5be0: $ff
	nop                                              ; $5be1: $00
	rst  $38                                         ; $5be2: $ff
	nop                                              ; $5be3: $00
	rst  $38                                         ; $5be4: $ff
	nop                                              ; $5be5: $00
	rst  $38                                         ; $5be6: $ff
	add  d                                           ; $5be7: $82
	nop                                              ; $5be8: $00
	add  b                                           ; $5be9: $80
	rst  $38                                         ; $5bea: $ff
	add  hl, bc                                      ; $5beb: $09
	add  b                                           ; $5bec: $80
	cp   a                                           ; $5bed: $bf
	nop                                              ; $5bee: $00
	cp   a                                           ; $5bef: $bf
	nop                                              ; $5bf0: $00
	cp   a                                           ; $5bf1: $bf
	jr   nz, jr_076_5b93                             ; $5bf2: $20 $9f

	ld   b, a                                        ; $5bf4: $47
	rst  ToBoot                                         ; $5bf5: $c7
	add  b                                           ; $5bf6: $80
	rrca                                             ; $5bf7: $0f
	add  b                                           ; $5bf8: $80
	rra                                              ; $5bf9: $1f
	add  b                                           ; $5bfa: $80
	rst  $38                                         ; $5bfb: $ff
	ld   [$fb78], sp                                 ; $5bfc: $08 $78 $fb
	nop                                              ; $5bff: $00
	ei                                               ; $5c00: $fb
	add  b                                           ; $5c01: $80
	ei                                               ; $5c02: $fb
	ld   [bc], a                                     ; $5c03: $02
	ld   sp, hl                                      ; $5c04: $f9
	ld   [$0f80], sp                                 ; $5c05: $08 $80 $0f
	add  c                                           ; $5c08: $81
	nop                                              ; $5c09: $00
	add  d                                           ; $5c0a: $82
	dec  c                                           ; $5c0b: $0d
	add  b                                           ; $5c0c: $80
	rrca                                             ; $5c0d: $0f
	add  b                                           ; $5c0e: $80
	dec  c                                           ; $5c0f: $0d
	add  b                                           ; $5c10: $80
	ld   [$f000], sp                                 ; $5c11: $08 $00 $f0
	add  b                                           ; $5c14: $80
	rst  $38                                         ; $5c15: $ff
	add  c                                           ; $5c16: $81
	nop                                              ; $5c17: $00
	ld   a, [bc]                                     ; $5c18: $0a
	cp   $ff                                         ; $5c19: $fe $ff
	db   $f4                                         ; $5c1b: $f4
	rst  $38                                         ; $5c1c: $ff
	ldh  [rIE], a                                    ; $5c1d: $e0 $ff
	ret  nz                                          ; $5c1f: $c0

	rst  $38                                         ; $5c20: $ff
	dec  a                                           ; $5c21: $3d
	rla                                              ; $5c22: $17
	nop                                              ; $5c23: $00
	add  b                                           ; $5c24: $80
	rst  $38                                         ; $5c25: $ff
	add  c                                           ; $5c26: $81
	nop                                              ; $5c27: $00
	ld   a, [bc]                                     ; $5c28: $0a
	add  b                                           ; $5c29: $80
	or   d                                           ; $5c2a: $b2
	ld   [hl], b                                     ; $5c2b: $70
	ldh  a, [$30]                                    ; $5c2c: $f0 $30
	ldh  a, [rSVBK]                                  ; $5c2e: $f0 $70
	ldh  a, [$c2]                                    ; $5c30: $f0 $c2
	ldh  a, [$c0]                                    ; $5c32: $f0 $c0
	add  b                                           ; $5c34: $80
	rst  $38                                         ; $5c35: $ff
	add  d                                           ; $5c36: $82
	nop                                              ; $5c37: $00
	nop                                              ; $5c38: $00
	xor  d                                           ; $5c39: $aa
	add  h                                           ; $5c3a: $84
	nop                                              ; $5c3b: $00
	nop                                              ; $5c3c: $00
	xor  d                                           ; $5c3d: $aa
	add  b                                           ; $5c3e: $80
	nop                                              ; $5c3f: $00
	add  b                                           ; $5c40: $80
	rst  $38                                         ; $5c41: $ff
	add  c                                           ; $5c42: $81
	nop                                              ; $5c43: $00
	dec  c                                           ; $5c44: $0d
	scf                                              ; $5c45: $37
	ld   [hl], a                                     ; $5c46: $77
	rra                                              ; $5c47: $1f
	ld   a, a                                        ; $5c48: $7f
	rlca                                             ; $5c49: $07
	ld   [hl], a                                     ; $5c4a: $77
	ld   c, a                                        ; $5c4b: $4f
	ld   a, a                                        ; $5c4c: $7f
	ld   d, $76                                      ; $5c4d: $16 $76

jr_076_5c4f:
	jr   nz, jr_076_5c4f                             ; $5c4f: $20 $fe

	sbc  $00                                         ; $5c51: $de $00
	add  b                                           ; $5c53: $80
	ld   e, $84                                      ; $5c54: $1e $84
	cp   $04                                         ; $5c56: $fe $04
	xor  $fe                                         ; $5c58: $ee $fe
	ld   b, $1e                                      ; $5c5a: $06 $1e
	ld   [$7f80], sp                                 ; $5c5c: $08 $80 $7f
	add  c                                           ; $5c5f: $81
	nop                                              ; $5c60: $00
	add  [hl]                                        ; $5c61: $86
	ld   [hl], a                                     ; $5c62: $77
	add  b                                           ; $5c63: $80
	ld   [hl+], a                                    ; $5c64: $22
	ld   [bc], a                                     ; $5c65: $02
	ld   b, b                                        ; $5c66: $40
	db   $fc                                         ; $5c67: $fc
	cp   h                                           ; $5c68: $bc
	add  b                                           ; $5c69: $80
	nop                                              ; $5c6a: $00
	nop                                              ; $5c6b: $00
	inc  a                                           ; $5c6c: $3c
	add  [hl]                                        ; $5c6d: $86
	db   $fc                                         ; $5c6e: $fc
	add  c                                           ; $5c6f: $81
	inc  a                                           ; $5c70: $3c
	add  b                                           ; $5c71: $80
	rst  $38                                         ; $5c72: $ff
	add  b                                           ; $5c73: $80
	nop                                              ; $5c74: $00
	ld   [$cd0c], sp                                 ; $5c75: $08 $0c $cd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c78: $cf
	and  h                                           ; $5c79: $a4
	xor  a                                           ; $5c7a: $af
	ld   c, a                                        ; $5c7b: $4f
	ld   l, a                                        ; $5c7c: $6f
	and  h                                           ; $5c7d: $a4
	pop  bc                                          ; $5c7e: $c1
	add  b                                           ; $5c7f: $80
	ret                                              ; $5c80: $c9


	nop                                              ; $5c81: $00
	ld   b, b                                        ; $5c82: $40
	add  b                                           ; $5c83: $80
	rst  $38                                         ; $5c84: $ff
	add  c                                           ; $5c85: $81
	nop                                              ; $5c86: $00
	add  b                                           ; $5c87: $80
	ei                                               ; $5c88: $fb
	add  b                                           ; $5c89: $80
	rst  $30                                         ; $5c8a: $f7
	ld   h, $6e                                      ; $5c8b: $26 $6e
	rst  $28                                         ; $5c8d: $ef
	sbc  h                                           ; $5c8e: $9c
	sbc  [hl]                                        ; $5c8f: $9e
	cp   e                                           ; $5c90: $bb
	cp   b                                           ; $5c91: $b8
	add  l                                           ; $5c92: $85
	push bc                                          ; $5c93: $c5
	db   $fd                                         ; $5c94: $fd
	ccf                                              ; $5c95: $3f
	ldh  [c], a                                      ; $5c96: $e2
	rst  $38                                         ; $5c97: $ff
	add  b                                           ; $5c98: $80
	and  b                                           ; $5c99: $a0
	cpl                                              ; $5c9a: $2f
	ret  nz                                          ; $5c9b: $c0

	rra                                              ; $5c9c: $1f
	nop                                              ; $5c9d: $00
	ld   a, e                                        ; $5c9e: $7b
	nop                                              ; $5c9f: $00
	rst  ToBoot                                         ; $5ca0: $c7
	nop                                              ; $5ca1: $00
	db   $e3                                         ; $5ca2: $e3
	pop  de                                          ; $5ca3: $d1
	sbc  a                                           ; $5ca4: $9f
	cp   $23                                         ; $5ca5: $fe $23
	ld   a, a                                        ; $5ca7: $7f
	nop                                              ; $5ca8: $00
	ld   [bc], a                                     ; $5ca9: $02
	ld   a, d                                        ; $5caa: $7a
	ld   bc, $007c                                   ; $5cab: $01 $7c $00
	ld   l, a                                        ; $5cae: $6f
	nop                                              ; $5caf: $00
	ld   [hl], c                                     ; $5cb0: $71
	nop                                              ; $5cb1: $00
	ld   h, a                                        ; $5cb2: $67
	add  b                                           ; $5cb3: $80
	rst  $38                                         ; $5cb4: $ff
	nop                                              ; $5cb5: $00
	nop                                              ; $5cb6: $00
	add  b                                           ; $5cb7: $80
	add  b                                           ; $5cb8: $80
	add  b                                           ; $5cb9: $80
	rst  $28                                         ; $5cba: $ef
	ld   [$f777], sp                                 ; $5cbb: $08 $77 $f7
	dec  sp                                          ; $5cbe: $3b
	ld   a, e                                        ; $5cbf: $7b
	inc  e                                           ; $5cc0: $1c
	inc  a                                           ; $5cc1: $3c
	xor  $0e                                         ; $5cc2: $ee $0e
	nop                                              ; $5cc4: $00
	add  b                                           ; $5cc5: $80
	rst  $38                                         ; $5cc6: $ff
	add  b                                           ; $5cc7: $80
	nop                                              ; $5cc8: $00
	ld   [$d918], sp                                 ; $5cc9: $08 $18 $d9
	ld   sp, hl                                      ; $5ccc: $f9
	sub  d                                           ; $5ccd: $92
	ld   a, [$fb79]                                  ; $5cce: $fa $79 $fb
	or   b                                           ; $5cd1: $b0
	db   $e3                                         ; $5cd2: $e3
	add  b                                           ; $5cd3: $80
	push de                                          ; $5cd4: $d5
	ld   [bc], a                                     ; $5cd5: $02
	add  b                                           ; $5cd6: $80
	sbc  a                                           ; $5cd7: $9f
	sbc  [hl]                                        ; $5cd8: $9e
	add  b                                           ; $5cd9: $80
	nop                                              ; $5cda: $00
	nop                                              ; $5cdb: $00
	ld   e, $82                                      ; $5cdc: $1e $82
	sbc  a                                           ; $5cde: $9f
	add  b                                           ; $5cdf: $80
	rra                                              ; $5ce0: $1f
	add  b                                           ; $5ce1: $80
	sbc  a                                           ; $5ce2: $9f
	add  b                                           ; $5ce3: $80
	sbc  [hl]                                        ; $5ce4: $9e
	nop                                              ; $5ce5: $00
	ld   e, $80                                      ; $5ce6: $1e $80
	ld   sp, hl                                      ; $5ce8: $f9
	nop                                              ; $5ce9: $00
	nop                                              ; $5cea: $00
	add  b                                           ; $5ceb: $80
	ld   bc, $7982                                   ; $5cec: $01 $82 $79
	ld   b, $78                                      ; $5cef: $06 $78
	ld   a, c                                        ; $5cf1: $79
	ld   a, b                                        ; $5cf2: $78
	ld   a, c                                        ; $5cf3: $79
	ld   b, b                                        ; $5cf4: $40
	ld   b, c                                        ; $5cf5: $41
	cp   $85                                         ; $5cf6: $fe $85
	rrca                                             ; $5cf8: $0f
	add  b                                           ; $5cf9: $80
	ld   [$0c16], sp                                 ; $5cfa: $08 $16 $0c
	dec  c                                           ; $5cfd: $0d
	ld   c, $0f                                      ; $5cfe: $0e $0f
	ld   [$310d], sp                                 ; $5d00: $08 $0d $31
	rst  $28                                         ; $5d03: $ef
	sub  e                                           ; $5d04: $93
	rst  $38                                         ; $5d05: $ff
	inc  bc                                          ; $5d06: $03
	xor  $12                                         ; $5d07: $ee $12
	db   $fc                                         ; $5d09: $fc
	db   $ec                                         ; $5d0a: $ec
	xor  b                                           ; $5d0b: $a8

jr_076_5d0c:
	and  b                                           ; $5d0c: $a0
	db   $fd                                         ; $5d0d: $fd
	dec  c                                           ; $5d0e: $0d
	db   $fd                                         ; $5d0f: $fd
	dec  c                                           ; $5d10: $0d
	db   $fd                                         ; $5d11: $fd
	ld   e, l                                        ; $5d12: $5d
	add  b                                           ; $5d13: $80
	ldh  a, [rP1]                                    ; $5d14: $f0 $00
	di                                               ; $5d16: $f3
	add  c                                           ; $5d17: $81
	ldh  [c], a                                      ; $5d18: $e2
	inc  b                                           ; $5d19: $04
	ld   h, d                                        ; $5d1a: $62
	ld   d, e                                        ; $5d1b: $53
	jr   nc, jr_076_5d1f                             ; $5d1c: $30 $01

	ldh  [c], a                                      ; $5d1e: $e2

jr_076_5d1f:
	add  d                                           ; $5d1f: $82
	ld   h, d                                        ; $5d20: $62
	nop                                              ; $5d21: $00
	di                                               ; $5d22: $f3
	add  b                                           ; $5d23: $80
	nop                                              ; $5d24: $00
	nop                                              ; $5d25: $00
	sbc  $82                                         ; $5d26: $de $82
	nop                                              ; $5d28: $00
	ld   [bc], a                                     ; $5d29: $02
	sbc  $00                                         ; $5d2a: $de $00
	sbc  $83                                         ; $5d2c: $de $83
	nop                                              ; $5d2e: $00
	jr   nz, jr_076_5d0c                             ; $5d2f: $20 $db

	ld   a, a                                        ; $5d31: $7f
	ld   [hl], b                                     ; $5d32: $70
	ld   a, a                                        ; $5d33: $7f
	ld   [hl], b                                     ; $5d34: $70
	ld   [hl], a                                     ; $5d35: $77
	ld   [hl], b                                     ; $5d36: $70
	ld   h, e                                        ; $5d37: $63
	ld   h, b                                        ; $5d38: $60
	ld   b, c                                        ; $5d39: $41
	ld   d, b                                        ; $5d3a: $50
	ld   l, e                                        ; $5d3b: $6b
	ld   l, d                                        ; $5d3c: $6a
	ld   l, e                                        ; $5d3d: $6b
	ld   a, d                                        ; $5d3e: $7a
	ld   a, e                                        ; $5d3f: $7b
	ld   de, $607e                                   ; $5d40: $11 $7e $60
	ld   a, [hl]                                     ; $5d43: $7e
	ld   h, b                                        ; $5d44: $60
	ld   a, [hl]                                     ; $5d45: $7e
	ld   [hl], b                                     ; $5d46: $70
	ld   a, [hl]                                     ; $5d47: $7e
	ret  c                                           ; $5d48: $d8

	sbc  $fc                                         ; $5d49: $de $fc
	cp   $7e                                         ; $5d4b: $fe $7e
	cp   $3e                                         ; $5d4d: $fe $3e
	cp   $21                                         ; $5d4f: $fe $21
	add  l                                           ; $5d51: $85
	ld   a, a                                        ; $5d52: $7f
	add  b                                           ; $5d53: $80
	inc  bc                                          ; $5d54: $03
	add  h                                           ; $5d55: $84
	ld   [hl], a                                     ; $5d56: $77
	ld   bc, $7d41                                   ; $5d57: $01 $41 $7d
	add  d                                           ; $5d5a: $82
	db   $fd                                         ; $5d5b: $fd
	add  b                                           ; $5d5c: $80
	ld   a, h                                        ; $5d5d: $7c
	add  b                                           ; $5d5e: $80
	inc  a                                           ; $5d5f: $3c
	add  h                                           ; $5d60: $84
	db   $fc                                         ; $5d61: $fc
	inc  c                                           ; $5d62: $0c
	inc  l                                           ; $5d63: $2c
	sub  b                                           ; $5d64: $90
	adc  d                                           ; $5d65: $8a
	adc  e                                           ; $5d66: $8b
	inc  d                                           ; $5d67: $14
	sub  l                                           ; $5d68: $95
	ld   bc, $feff                                   ; $5d69: $01 $ff $fe
	nop                                              ; $5d6c: $00
	ld   bc, $feff                                   ; $5d6d: $01 $ff $fe
	add  c                                           ; $5d70: $81
	nop                                              ; $5d71: $00
	ld   b, $d6                                      ; $5d72: $06 $d6
	ret  c                                           ; $5d74: $d8

	inc  bc                                          ; $5d75: $03
	ldh  a, [$30]                                    ; $5d76: $f0 $30
	ret  nc                                          ; $5d78: $d0

	dec  e                                           ; $5d79: $1d
	add  b                                           ; $5d7a: $80
	rst  JumpTable                                         ; $5d7b: $df
	add  b                                           ; $5d7c: $80
	nop                                              ; $5d7d: $00
	add  b                                           ; $5d7e: $80
	rst  JumpTable                                         ; $5d7f: $df
	add  b                                           ; $5d80: $80
	ret  nz                                          ; $5d81: $c0

	rlca                                             ; $5d82: $07
	nop                                              ; $5d83: $00
	dec  l                                           ; $5d84: $2d
	nop                                              ; $5d85: $00
	db   $eb                                         ; $5d86: $eb
	nop                                              ; $5d87: $00
	ld   a, [hl]                                     ; $5d88: $7e
	nop                                              ; $5d89: $00
	cp   b                                           ; $5d8a: $b8
	add  b                                           ; $5d8b: $80
	rst  $38                                         ; $5d8c: $ff
	add  b                                           ; $5d8d: $80
	nop                                              ; $5d8e: $00
	add  b                                           ; $5d8f: $80
	rst  $38                                         ; $5d90: $ff

jr_076_5d91:
	add  c                                           ; $5d91: $81
	nop                                              ; $5d92: $00
	ld   b, $5a                                      ; $5d93: $06 $5a
	nop                                              ; $5d95: $00
	ld   l, e                                        ; $5d96: $6b
	nop                                              ; $5d97: $00
	ccf                                              ; $5d98: $3f
	nop                                              ; $5d99: $00
	ld   c, $80                                      ; $5d9a: $0e $80
	rst  $38                                         ; $5d9c: $ff
	add  b                                           ; $5d9d: $80
	nop                                              ; $5d9e: $00
	add  b                                           ; $5d9f: $80
	rst  $38                                         ; $5da0: $ff
	nop                                              ; $5da1: $00
	nop                                              ; $5da2: $00
	add  b                                           ; $5da3: $80
	add  b                                           ; $5da4: $80
	ld   b, $34                                      ; $5da5: $06 $34
	dec  c                                           ; $5da7: $0d
	ldh  [c], a                                      ; $5da8: $e2
	rlca                                             ; $5da9: $07
	inc  b                                           ; $5daa: $04
	dec  b                                           ; $5dab: $05
	db   $dd                                         ; $5dac: $dd
	add  b                                           ; $5dad: $80
	db   $fd                                         ; $5dae: $fd
	add  b                                           ; $5daf: $80
	nop                                              ; $5db0: $00
	add  b                                           ; $5db1: $80
	db   $fd                                         ; $5db2: $fd
	add  b                                           ; $5db3: $80
	ld   bc, $000d                                   ; $5db4: $01 $0d $00
	jr   jr_076_5d91                                 ; $5db7: $18 $d8

	ld   a, [hl+]                                    ; $5db9: $2a
	ld   [$9414], a                                  ; $5dba: $ea $14 $94
	ret  nz                                          ; $5dbd: $c0

	rst  $38                                         ; $5dbe: $ff
	cp   a                                           ; $5dbf: $bf
	nop                                              ; $5dc0: $00
	ld   b, b                                        ; $5dc1: $40
	rst  $38                                         ; $5dc2: $ff
	cp   a                                           ; $5dc3: $bf
	add  b                                           ; $5dc4: $80
	add  b                                           ; $5dc5: $80
	ld   bc, $4100                                   ; $5dc6: $01 $00 $41
	add  c                                           ; $5dc9: $81
	rst  JumpTable                                         ; $5dca: $df
	ld   b, $1f                                      ; $5dcb: $06 $1f
	sbc  a                                           ; $5dcd: $9f
	rra                                              ; $5dce: $1f
	sbc  a                                           ; $5dcf: $9f
	sbc  [hl]                                        ; $5dd0: $9e
	ld   e, $1f                                      ; $5dd1: $1e $1f
	add  b                                           ; $5dd3: $80
	sbc  a                                           ; $5dd4: $9f
	add  c                                           ; $5dd5: $81
	rra                                              ; $5dd6: $1f
	nop                                              ; $5dd7: $00
	or   $85                                         ; $5dd8: $f6 $85
	jp   hl                                          ; $5dda: $e9


	add  b                                           ; $5ddb: $80
	ld   b, c                                        ; $5ddc: $41
	add  h                                           ; $5ddd: $84
	ld   a, c                                        ; $5dde: $79
	nop                                              ; $5ddf: $00
	cp   $81                                         ; $5de0: $fe $81
	rrca                                             ; $5de2: $0f
	ld   hl, $0f05                                   ; $5de3: $21 $05 $0f
	nop                                              ; $5de6: $00
	rrca                                             ; $5de7: $0f
	ld   [$0c07], sp                                 ; $5de8: $08 $07 $0c
	dec  bc                                          ; $5deb: $0b
	ld   c, $0c                                      ; $5dec: $0e $0c
	rrca                                             ; $5dee: $0f
	rlca                                             ; $5def: $07
	and  a                                           ; $5df0: $a7
	cp   $e0                                         ; $5df1: $fe $e0
	ld   c, [hl]                                     ; $5df3: $4e
	ld   d, b                                        ; $5df4: $50
	rst  $38                                         ; $5df5: $ff
	rrca                                             ; $5df6: $0f
	rst  $28                                         ; $5df7: $ef
	rra                                              ; $5df8: $1f
	rst  $38                                         ; $5df9: $ff
	rlca                                             ; $5dfa: $07
	rst  $28                                         ; $5dfb: $ef
	ld   e, l                                        ; $5dfc: $5d
	inc  de                                          ; $5dfd: $13
	call $ef3b                                       ; $5dfe: $cd $3b $ef
	ld   h, b                                        ; $5e01: $60
	pop  af                                          ; $5e02: $f1
	ldh  a, [c]                                      ; $5e03: $f2
	ld   h, d                                        ; $5e04: $62
	ldh  [c], a                                      ; $5e05: $e2
	add  b                                           ; $5e06: $80
	ldh  a, [c]                                      ; $5e07: $f2
	ld   a, [bc]                                     ; $5e08: $0a
	di                                               ; $5e09: $f3
	ldh  a, [$f1]                                    ; $5e0a: $f0 $f1
	ldh  a, [c]                                      ; $5e0c: $f2
	ldh  [c], a                                      ; $5e0d: $e2
	ldh  a, [c]                                      ; $5e0e: $f2
	add  e                                           ; $5e0f: $83
	ldh  [$80], a                                    ; $5e10: $e0 $80
	nop                                              ; $5e12: $00
	sbc  $83                                         ; $5e13: $de $83
	nop                                              ; $5e15: $00
	ld   [bc], a                                     ; $5e16: $02
	sbc  $00                                         ; $5e17: $de $00
	sbc  $80                                         ; $5e19: $de $80
	nop                                              ; $5e1b: $00
	ld   bc, $df01                                   ; $5e1c: $01 $01 $df
	add  b                                           ; $5e1f: $80
	inc  bc                                          ; $5e20: $03
	inc  bc                                          ; $5e21: $03
	ld   h, a                                        ; $5e22: $67
	ld   [hl], b                                     ; $5e23: $70
	ld   [hl], a                                     ; $5e24: $77
	ld   h, b                                        ; $5e25: $60
	add  l                                           ; $5e26: $85
	ld   a, a                                        ; $5e27: $7f
	dec  d                                           ; $5e28: $15
	pop  bc                                          ; $5e29: $c1
	ld   a, $c0                                      ; $5e2a: $3e $c0
	cp   a                                           ; $5e2c: $bf
	sbc  a                                           ; $5e2d: $9f
	cp   $9e                                         ; $5e2e: $fe $9e
	ld   e, $7e                                      ; $5e30: $1e $7e
	cp   $3e                                         ; $5e32: $fe $3e
	cp   $2e                                         ; $5e34: $fe $2e
	cp   $a6                                         ; $5e36: $fe $a6
	ld   a, [hl]                                     ; $5e38: $7e
	ld   b, d                                        ; $5e39: $42
	ld   e, $10                                      ; $5e3a: $1e $10
	cp   $93                                         ; $5e3c: $fe $93
	ld   [hl], a                                     ; $5e3e: $77
	add  b                                           ; $5e3f: $80
	ld   [bc], a                                     ; $5e40: $02
	add  [hl]                                        ; $5e41: $86
	ld   a, a                                        ; $5e42: $7f
	add  b                                           ; $5e43: $80
	inc  hl                                          ; $5e44: $23
	add  b                                           ; $5e45: $80
	ld   [hl], a                                     ; $5e46: $77
	ld   bc, $fcc0                                   ; $5e47: $01 $c0 $fc
	add  b                                           ; $5e4a: $80
	inc  a                                           ; $5e4b: $3c
	add  [hl]                                        ; $5e4c: $86
	ld   a, h                                        ; $5e4d: $7c
	add  b                                           ; $5e4e: $80
	inc  a                                           ; $5e4f: $3c
	add  b                                           ; $5e50: $80
	db   $fc                                         ; $5e51: $fc
	nop                                              ; $5e52: $00
	inc  a                                           ; $5e53: $3c
	adc  h                                           ; $5e54: $8c
	ld   [bc], a                                     ; $5e55: $02
	add  b                                           ; $5e56: $80
	ld   a, $8c                                      ; $5e57: $3e $8c
	pop  bc                                          ; $5e59: $c1
	add  b                                           ; $5e5a: $80
	rst  JumpTable                                         ; $5e5b: $df
	adc  h                                           ; $5e5c: $8c
	ld   [bc], a                                     ; $5e5d: $02
	add  b                                           ; $5e5e: $80

Jump_076_5e5f:
	ld   a, $8c                                      ; $5e5f: $3e $8c
	add  d                                           ; $5e61: $82
	add  b                                           ; $5e62: $80
	cp   [hl]                                        ; $5e63: $be
	adc  h                                           ; $5e64: $8c
	dec  b                                           ; $5e65: $05
	add  b                                           ; $5e66: $80
	ld   a, l                                        ; $5e67: $7d
	adc  h                                           ; $5e68: $8c
	add  d                                           ; $5e69: $82
	ld   bc, $bfbe                                   ; $5e6a: $01 $be $bf
	adc  c                                           ; $5e6d: $89
	rra                                              ; $5e6e: $1f
	add  b                                           ; $5e6f: $80
	ld   e, $80                                      ; $5e70: $1e $80
	rra                                              ; $5e72: $1f
	ld   bc, $7966                                   ; $5e73: $01 $66 $79
	add  b                                           ; $5e76: $80
	ld   bc, $e986                                   ; $5e77: $01 $86 $e9
	add  b                                           ; $5e7a: $80
	ld   b, c                                        ; $5e7b: $41
	add  b                                           ; $5e7c: $80
	ld   a, c                                        ; $5e7d: $79
	nop                                              ; $5e7e: $00
	pop  af                                          ; $5e7f: $f1
	add  b                                           ; $5e80: $80
	inc  bc                                          ; $5e81: $03
	nop                                              ; $5e82: $00
	inc  b                                           ; $5e83: $04
	add  b                                           ; $5e84: $80
	nop                                              ; $5e85: $00
	ld   hl, $0407                                   ; $5e86: $21 $07 $04
	inc  bc                                          ; $5e89: $03
	dec  bc                                          ; $5e8a: $0b
	rlca                                             ; $5e8b: $07
	ld   b, $0f                                      ; $5e8c: $06 $0f
	add  hl, bc                                      ; $5e8e: $09
	ld   [$cc00], sp                                 ; $5e8f: $08 $00 $cc
	rst  $38                                         ; $5e92: $ff
	or   a                                           ; $5e93: $b7
	adc  e                                           ; $5e94: $8b
	ld   a, d                                        ; $5e95: $7a
	ld   a, e                                        ; $5e96: $7b
	jp   z, $a9b8                                    ; $5e97: $ca $b8 $a9

	add  hl, sp                                      ; $5e9a: $39
	cp   h                                           ; $5e9b: $bc
	cp   b                                           ; $5e9c: $b8
	db   $fc                                         ; $5e9d: $fc
	cp   b                                           ; $5e9e: $b8
	ld   a, [$0ef8]                                  ; $5e9f: $fa $f8 $0e
	ldh  a, [$50]                                    ; $5ea2: $f0 $50
	ldh  a, [$3f]                                    ; $5ea4: $f0 $3f
	cp   a                                           ; $5ea6: $bf
	add  b                                           ; $5ea7: $80
	nop                                              ; $5ea8: $00
	add  d                                           ; $5ea9: $82
	rst  $38                                         ; $5eaa: $ff
	add  b                                           ; $5eab: $80
	ccf                                              ; $5eac: $3f
	inc  d                                           ; $5ead: $14
	rrca                                             ; $5eae: $0f
	ld   c, $02                                      ; $5eaf: $0e $02
	inc  bc                                          ; $5eb1: $03
	rlca                                             ; $5eb2: $07
	nop                                              ; $5eb3: $00
	ei                                               ; $5eb4: $fb
	di                                               ; $5eb5: $f3
	rla                                              ; $5eb6: $17
	ld   b, $ee                                      ; $5eb7: $06 $ee
	call $99dd                                       ; $5eb9: $cd $dd $99
	cp   l                                           ; $5ebc: $bd
	scf                                              ; $5ebd: $37
	ld   a, l                                        ; $5ebe: $7d
	ld   l, l                                        ; $5ebf: $6d
	inc  e                                           ; $5ec0: $1c
	add  b                                           ; $5ec1: $80
	ccf                                              ; $5ec2: $3f
	add  b                                           ; $5ec3: $80
	cp   a                                           ; $5ec4: $bf
	inc  bc                                          ; $5ec5: $03
	add  b                                           ; $5ec6: $80
	xor  l                                           ; $5ec7: $ad
	dec  l                                           ; $5ec8: $2d
	ccf                                              ; $5ec9: $3f
	add  c                                           ; $5eca: $81
	xor  l                                           ; $5ecb: $ad
	add  c                                           ; $5ecc: $81
	cp   a                                           ; $5ecd: $bf
	ld   bc, $f29f                                   ; $5ece: $01 $9f $f2
	add  b                                           ; $5ed1: $80
	cp   $80                                         ; $5ed2: $fe $80
	ld   a, [$0280]                                  ; $5ed4: $fa $80 $02
	add  b                                           ; $5ed7: $80
	xor  [hl]                                        ; $5ed8: $ae
	add  e                                           ; $5ed9: $83
	cp   $02                                         ; $5eda: $fe $02
	adc  [hl]                                        ; $5edc: $8e
	cp   $f1                                         ; $5edd: $fe $f1
	add  c                                           ; $5edf: $81
	ld   a, a                                        ; $5ee0: $7f
	add  b                                           ; $5ee1: $80
	ld   [hl], a                                     ; $5ee2: $77
	add  b                                           ; $5ee3: $80
	ld   bc, $7f80                                   ; $5ee4: $01 $80 $7f
	add  b                                           ; $5ee7: $80
	cp   a                                           ; $5ee8: $bf
	add  b                                           ; $5ee9: $80
	add  b                                           ; $5eea: $80
	add  b                                           ; $5eeb: $80
	cp   a                                           ; $5eec: $bf
	nop                                              ; $5eed: $00
	ret  nz                                          ; $5eee: $c0

	adc  c                                           ; $5eef: $89
	db   $fc                                         ; $5ef0: $fc
	add  b                                           ; $5ef1: $80
	inc  a                                           ; $5ef2: $3c
	add  b                                           ; $5ef3: $80
	db   $fc                                         ; $5ef4: $fc
	nop                                              ; $5ef5: $00
	inc  a                                           ; $5ef6: $3c
	add  b                                           ; $5ef7: $80
	nop                                              ; $5ef8: $00
	add  [hl]                                        ; $5ef9: $86
	ld   [bc], a                                     ; $5efa: $02
	add  b                                           ; $5efb: $80
	ld   a, $80                                      ; $5efc: $3e $80
	nop                                              ; $5efe: $00
	add  b                                           ; $5eff: $80
	ld   [bc], a                                     ; $5f00: $02
	add  b                                           ; $5f01: $80
	ret  nz                                          ; $5f02: $c0

	add  [hl]                                        ; $5f03: $86
	pop  bc                                          ; $5f04: $c1
	add  b                                           ; $5f05: $80
	rst  JumpTable                                         ; $5f06: $df
	add  b                                           ; $5f07: $80
	ret  nz                                          ; $5f08: $c0

	add  b                                           ; $5f09: $80
	pop  bc                                          ; $5f0a: $c1
	add  b                                           ; $5f0b: $80
	nop                                              ; $5f0c: $00
	add  [hl]                                        ; $5f0d: $86
	ld   [bc], a                                     ; $5f0e: $02
	add  b                                           ; $5f0f: $80
	ld   a, $80                                      ; $5f10: $3e $80
	nop                                              ; $5f12: $00
	add  b                                           ; $5f13: $80
	ld   [bc], a                                     ; $5f14: $02
	add  b                                           ; $5f15: $80
	add  b                                           ; $5f16: $80
	add  [hl]                                        ; $5f17: $86
	add  d                                           ; $5f18: $82
	add  b                                           ; $5f19: $80
	cp   [hl]                                        ; $5f1a: $be
	add  b                                           ; $5f1b: $80
	add  b                                           ; $5f1c: $80
	add  b                                           ; $5f1d: $80
	add  d                                           ; $5f1e: $82
	add  b                                           ; $5f1f: $80
	ld   bc, $0586                                   ; $5f20: $01 $86 $05
	add  b                                           ; $5f23: $80
	ld   a, l                                        ; $5f24: $7d
	add  b                                           ; $5f25: $80
	ld   bc, $0580                                   ; $5f26: $01 $80 $05
	add  b                                           ; $5f29: $80
	add  b                                           ; $5f2a: $80
	add  [hl]                                        ; $5f2b: $86
	add  d                                           ; $5f2c: $82
	add  b                                           ; $5f2d: $80
	cp   [hl]                                        ; $5f2e: $be
	add  b                                           ; $5f2f: $80
	add  b                                           ; $5f30: $80
	ld   bc, $8382                                   ; $5f31: $01 $82 $83
	add  e                                           ; $5f34: $83
	rra                                              ; $5f35: $1f
	add  b                                           ; $5f36: $80

Jump_076_5f37:
	ld   e, $82                                      ; $5f37: $1e $82
	rra                                              ; $5f39: $1f
	add  b                                           ; $5f3a: $80
	ld   e, $80                                      ; $5f3b: $1e $80
	rra                                              ; $5f3d: $1f
	nop                                              ; $5f3e: $00
	ld   h, [hl]                                     ; $5f3f: $66
	add  e                                           ; $5f40: $83
	ld   a, c                                        ; $5f41: $79
	add  b                                           ; $5f42: $80
	ld   sp, $f982                                   ; $5f43: $31 $82 $f9
	add  b                                           ; $5f46: $80
	ld   bc, $f980                                   ; $5f47: $01 $80 $f9
	ld   bc, $00f3                                   ; $5f4a: $01 $f3 $00
	add  c                                           ; $5f4d: $81
	ld   [bc], a                                     ; $5f4e: $02
	add  d                                           ; $5f4f: $82
	inc  bc                                          ; $5f50: $03
	add  b                                           ; $5f51: $80
	ld   b, $80                                      ; $5f52: $06 $80
	inc  c                                           ; $5f54: $0c
	add  c                                           ; $5f55: $81
	nop                                              ; $5f56: $00
	nop                                              ; $5f57: $00
	ldh  a, [$80]                                    ; $5f58: $f0 $80
	ld   [hl], b                                     ; $5f5a: $70
	inc  bc                                          ; $5f5b: $03
	ldh  [$ef], a                                    ; $5f5c: $e0 $ef
	adc  a                                           ; $5f5e: $8f
	add  b                                           ; $5f5f: $80
	add  c                                           ; $5f60: $81
	nop                                              ; $5f61: $00
	add  b                                           ; $5f62: $80
	db   $fc                                         ; $5f63: $fc
	add  d                                           ; $5f64: $82
	nop                                              ; $5f65: $00
	inc  c                                           ; $5f66: $0c
	inc  bc                                          ; $5f67: $03
	nop                                              ; $5f68: $00
	dec  b                                           ; $5f69: $05
	ld   bc, $e3eb                                   ; $5f6a: $01 $eb $e3
	scf                                              ; $5f6d: $37

Call_076_5f6e:
	ld   d, [hl]                                     ; $5f6e: $56
	ld   e, [hl]                                     ; $5f6f: $5e
	ld   c, h                                        ; $5f70: $4c
	adc  h                                           ; $5f71: $8c

jr_076_5f72:
	ld   hl, sp+$18                                  ; $5f72: $f8 $18
	add  c                                           ; $5f74: $81
	db   $e4                                         ; $5f75: $e4
	jr   nz, jr_076_5f72                             ; $5f76: $20 $fa

	call $92c2                                       ; $5f78: $cd $c2 $92
	add  d                                           ; $5f7b: $82
	ld   [bc], a                                     ; $5f7c: $02
	dec  b                                           ; $5f7d: $05
	nop                                              ; $5f7e: $00
	dec  de                                          ; $5f7f: $1b
	sub  b                                           ; $5f80: $90
	ld   d, $10                                      ; $5f81: $16 $10
	dec  l                                           ; $5f83: $2d
	nop                                              ; $5f84: $00
	jp   c, $1c81                                    ; $5f85: $da $81 $1c

	rrca                                             ; $5f88: $0f
	ld   [hl], d                                     ; $5f89: $72
	inc  c                                           ; $5f8a: $0c
	di                                               ; $5f8b: $f3
	rrca                                             ; $5f8c: $0f
	and  h                                           ; $5f8d: $a4
	jr   jr_076_5fd4                                 ; $5f8e: $18 $44

	inc  a                                           ; $5f90: $3c
	add  e                                           ; $5f91: $83
	ld   a, e                                        ; $5f92: $7b
	adc  h                                           ; $5f93: $8c
	db   $fc                                         ; $5f94: $fc
	push de                                          ; $5f95: $d5
	push hl                                          ; $5f96: $e5
	ld   [hl], b                                     ; $5f97: $70
	add  c                                           ; $5f98: $81
	ld   a, [hl]                                     ; $5f99: $7e
	ld   bc, $7c7d                                   ; $5f9a: $01 $7d $7c
	add  b                                           ; $5f9d: $80
	ld   h, b                                        ; $5f9e: $60
	ld   [bc], a                                     ; $5f9f: $02
	ld   d, b                                        ; $5fa0: $50
	ld   b, b                                        ; $5fa1: $40
	ld   e, a                                        ; $5fa2: $5f
	add  e                                           ; $5fa3: $83
	ld   b, b                                        ; $5fa4: $40
	db   $10                                         ; $5fa5: $10
	rrca                                             ; $5fa6: $0f
	nop                                              ; $5fa7: $00
	ld   [hl], b                                     ; $5fa8: $70
	nop                                              ; $5fa9: $00
	add  c                                           ; $5faa: $81
	nop                                              ; $5fab: $00
	ld   b, $00                                      ; $5fac: $06 $00
	dec  d                                           ; $5fae: $15
	nop                                              ; $5faf: $00
	ldh  [rP1], a                                    ; $5fb0: $e0 $00
	ld   [de], a                                     ; $5fb2: $12
	nop                                              ; $5fb3: $00
	inc  b                                           ; $5fb4: $04
	nop                                              ; $5fb5: $00
	db   $eb                                         ; $5fb6: $eb
	add  c                                           ; $5fb7: $81
	inc  c                                           ; $5fb8: $0c
	nop                                              ; $5fb9: $00
	ld   c, h                                        ; $5fba: $4c
	add  a                                           ; $5fbb: $87
	inc  c                                           ; $5fbc: $0c
	ld   [bc], a                                     ; $5fbd: $02
	sbc  h                                           ; $5fbe: $9c
	inc  c                                           ; $5fbf: $0c
	inc  l                                           ; $5fc0: $2c
	adc  d                                           ; $5fc1: $8a
	ld   [bc], a                                     ; $5fc2: $02
	add  b                                           ; $5fc3: $80
	ld   a, $80                                      ; $5fc4: $3e $80
	nop                                              ; $5fc6: $00
	adc  d                                           ; $5fc7: $8a
	pop  bc                                          ; $5fc8: $c1
	add  b                                           ; $5fc9: $80
	rst  JumpTable                                         ; $5fca: $df
	add  b                                           ; $5fcb: $80
	ret  nz                                          ; $5fcc: $c0

	adc  d                                           ; $5fcd: $8a
	ld   [bc], a                                     ; $5fce: $02
	add  b                                           ; $5fcf: $80
	ld   a, $80                                      ; $5fd0: $3e $80
	nop                                              ; $5fd2: $00
	adc  d                                           ; $5fd3: $8a

jr_076_5fd4:
	add  d                                           ; $5fd4: $82
	add  b                                           ; $5fd5: $80
	cp   [hl]                                        ; $5fd6: $be
	add  b                                           ; $5fd7: $80
	add  b                                           ; $5fd8: $80
	adc  d                                           ; $5fd9: $8a
	dec  b                                           ; $5fda: $05
	add  b                                           ; $5fdb: $80
	ld   a, l                                        ; $5fdc: $7d
	add  b                                           ; $5fdd: $80
	ld   bc, $828a                                   ; $5fde: $01 $8a $82
	add  b                                           ; $5fe1: $80
	cp   [hl]                                        ; $5fe2: $be
	add  b                                           ; $5fe3: $80
	add  b                                           ; $5fe4: $80
	add  c                                           ; $5fe5: $81
	ld   e, $04                                      ; $5fe6: $1e $04
	ld   de, $1610                                   ; $5fe8: $11 $10 $16
	db   $10                                         ; $5feb: $10
	inc  d                                           ; $5fec: $14
	add  l                                           ; $5fed: $85
	stop                                             ; $5fee: $10 $00
	dec  e                                           ; $5ff0: $1d
	add  b                                           ; $5ff1: $80
	ld   bc, $f902                                   ; $5ff2: $01 $02 $f9
	rlca                                             ; $5ff5: $07
	ld   bc, $0080                                   ; $5ff6: $01 $80 $00
	add  hl, bc                                      ; $5ff9: $09
	ld   b, b                                        ; $5ffa: $40
	nop                                              ; $5ffb: $00
	ld   a, b                                        ; $5ffc: $78
	nop                                              ; $5ffd: $00
	rla                                              ; $5ffe: $17
	nop                                              ; $5fff: $00
	xor  b                                           ; $6000: $a8
	nop                                              ; $6001: $00
	add  a                                           ; $6002: $87

jr_076_6003:
	rrca                                             ; $6003: $0f
	add  d                                           ; $6004: $82
	nop                                              ; $6005: $00
	add  b                                           ; $6006: $80
	rrca                                             ; $6007: $0f
	add  d                                           ; $6008: $82
	nop                                              ; $6009: $00
	add  b                                           ; $600a: $80
	inc  c                                           ; $600b: $0c
	add  c                                           ; $600c: $81
	nop                                              ; $600d: $00
	nop                                              ; $600e: $00
	ldh  a, [$82]                                    ; $600f: $f0 $82
	nop                                              ; $6011: $00
	add  b                                           ; $6012: $80
	add  b                                           ; $6013: $80
	add  [hl]                                        ; $6014: $86
	nop                                              ; $6015: $00
	inc  e                                           ; $6016: $1c
	db   $f4                                         ; $6017: $f4
	ldh  a, [rAUD1LEN]                               ; $6018: $f0 $11
	ldh  [$e6], a                                    ; $601a: $e0 $e6
	db   $e4                                         ; $601c: $e4
	db   $ed                                         ; $601d: $ed
	db   $e4                                         ; $601e: $e4
	db   $e3                                         ; $601f: $e3
	ldh  [$e6], a                                    ; $6020: $e0 $e6

jr_076_6022:
	add  sp, -$14                                    ; $6022: $e8 $ec
	add  sp, $08                                     ; $6024: $e8 $08
	ld   sp, hl                                      ; $6026: $f9
	ld   e, h                                        ; $6027: $5c
	add  e                                           ; $6028: $83
	ld   l, b                                        ; $6029: $68
	rlca                                             ; $602a: $07
	call c, $a00f                                    ; $602b: $dc $0f $a0
	ld   e, $64                                      ; $602e: $1e $64
	jr   nc, jr_076_6022                             ; $6030: $30 $f0

	rlca                                             ; $6032: $07
	add  a                                           ; $6033: $87
	add  b                                           ; $6034: $80
	ccf                                              ; $6035: $3f
	dec  b                                           ; $6036: $05
	rst  $38                                         ; $6037: $ff
	sbc  d                                           ; $6038: $9a
	ld   a, [$ef08]                                  ; $6039: $fa $08 $ef
	ld   h, a                                        ; $603c: $67
	add  b                                           ; $603d: $80
	db   $fc                                         ; $603e: $fc
	ld   [bc], a                                     ; $603f: $02
	nop                                              ; $6040: $00
	jr   nz, jr_076_6003                             ; $6041: $20 $c0

	add  b                                           ; $6043: $80
	add  b                                           ; $6044: $80
	add  b                                           ; $6045: $80
	nop                                              ; $6046: $00
	add  b                                           ; $6047: $80
	ld   hl, sp-$7f                                  ; $6048: $f8 $81
	nop                                              ; $604a: $00
	add  b                                           ; $604b: $80
	add  b                                           ; $604c: $80
	add  l                                           ; $604d: $85
	nop                                              ; $604e: $00
	add  b                                           ; $604f: $80
	ld   bc, $0780                                   ; $6050: $01 $80 $07
	add  hl, bc                                      ; $6053: $09
	dec  de                                          ; $6054: $1b
	nop                                              ; $6055: $00
	ld   [bc], a                                     ; $6056: $02
	nop                                              ; $6057: $00
	ld   bc, $0900                                   ; $6058: $01 $00 $09
	ld   bc, $0616                                   ; $605b: $01 $16 $06
	add  b                                           ; $605e: $80
	add  hl, de                                      ; $605f: $19
	add  b                                           ; $6060: $80
	rst  $20                                         ; $6061: $e7
	add  b                                           ; $6062: $80
	call c, $0080                                    ; $6063: $dc $80 $00
	add  b                                           ; $6066: $80
	rra                                              ; $6067: $1f
	add  b                                           ; $6068: $80
	ld   h, b                                        ; $6069: $60
	add  b                                           ; $606a: $80
	sbc  h                                           ; $606b: $9c
	add  b                                           ; $606c: $80
	ld   [hl], b                                     ; $606d: $70
	add  b                                           ; $606e: $80
	jp   nz, $0880                                   ; $606f: $c2 $80 $08

	add  b                                           ; $6072: $80
	inc  b                                           ; $6073: $04
	add  b                                           ; $6074: $80
	nop                                              ; $6075: $00
	add  b                                           ; $6076: $80
	rst  $38                                         ; $6077: $ff
	add  b                                           ; $6078: $80
	nop                                              ; $6079: $00
	add  b                                           ; $607a: $80
	ld   a, [bc]                                     ; $607b: $0a
	add  b                                           ; $607c: $80
	ld   b, $80                                      ; $607d: $06 $80
	call $fd80                                       ; $607f: $cd $80 $fd
	add  b                                           ; $6082: $80
	rst  ToBoot                                         ; $6083: $c7
	add  b                                           ; $6084: $80
	nop                                              ; $6085: $00
	add  b                                           ; $6086: $80
	rst  $38                                         ; $6087: $ff
	add  b                                           ; $6088: $80
	nop                                              ; $6089: $00
	add  b                                           ; $608a: $80
	inc  b                                           ; $608b: $04
	add  b                                           ; $608c: $80
	cp   d                                           ; $608d: $ba
	add  b                                           ; $608e: $80
	db   $fc                                         ; $608f: $fc
	add  b                                           ; $6090: $80
	sbc  c                                           ; $6091: $99
	add  b                                           ; $6092: $80
	rst  $38                                         ; $6093: $ff
	add  b                                           ; $6094: $80
	nop                                              ; $6095: $00
	add  b                                           ; $6096: $80
	rst  $38                                         ; $6097: $ff
	add  d                                           ; $6098: $82
	nop                                              ; $6099: $00
	add  b                                           ; $609a: $80
	inc  d                                           ; $609b: $14
	add  b                                           ; $609c: $80
	rrca                                             ; $609d: $0f
	add  b                                           ; $609e: $80
	res  0, b                                        ; $609f: $cb $80
	inc  h                                           ; $60a1: $24
	add  b                                           ; $60a2: $80
	nop                                              ; $60a3: $00
	add  b                                           ; $60a4: $80
	rst  $38                                         ; $60a5: $ff
	add  d                                           ; $60a6: $82
	nop                                              ; $60a7: $00
	add  b                                           ; $60a8: $80
	dec  bc                                          ; $60a9: $0b
	add  b                                           ; $60aa: $80
	ei                                               ; $60ab: $fb
	add  b                                           ; $60ac: $80
	ld   l, a                                        ; $60ad: $6f
	add  b                                           ; $60ae: $80
	ld   a, [de]                                     ; $60af: $1a
	add  b                                           ; $60b0: $80
	nop                                              ; $60b1: $00
	add  b                                           ; $60b2: $80
	rst  $38                                         ; $60b3: $ff
	add  b                                           ; $60b4: $80
	nop                                              ; $60b5: $00
	add  b                                           ; $60b6: $80
	dec  c                                           ; $60b7: $0d
	add  b                                           ; $60b8: $80
	ld   d, a                                        ; $60b9: $57
	add  b                                           ; $60ba: $80
	cp   h                                           ; $60bb: $bc
	add  b                                           ; $60bc: $80
	db   $fd                                         ; $60bd: $fd
	add  b                                           ; $60be: $80
	sbc  [hl]                                        ; $60bf: $9e
	add  b                                           ; $60c0: $80
	nop                                              ; $60c1: $00
	add  b                                           ; $60c2: $80
	rst  $38                                         ; $60c3: $ff
	add  b                                           ; $60c4: $80
	nop                                              ; $60c5: $00
	add  b                                           ; $60c6: $80
	inc  bc                                          ; $60c7: $03
	add  b                                           ; $60c8: $80
	ld   h, b                                        ; $60c9: $60
	add  b                                           ; $60ca: $80
	ld   hl, sp-$80                                  ; $60cb: $f8 $80
	ret  nz                                          ; $60cd: $c0

	add  b                                           ; $60ce: $80
	ldh  [c], a                                      ; $60cf: $e2
	ld   bc, $000d                                   ; $60d0: $01 $0d $00
	add  b                                           ; $60d3: $80
	ldh  a, [rSB]                                    ; $60d4: $f0 $01
	ld   a, h                                        ; $60d6: $7c
	ld   [hl], b                                     ; $60d7: $70
	add  b                                           ; $60d8: $80
	sbc  b                                           ; $60d9: $98
	ld   bc, $e6e7                                   ; $60da: $01 $e7 $e6
	add  b                                           ; $60dd: $80
	add  hl, de                                      ; $60de: $19
	add  b                                           ; $60df: $80
	ld   c, $80                                      ; $60e0: $0e $80
	add  e                                           ; $60e2: $83
	nop                                              ; $60e3: $00

Call_076_60e4:
	ld   e, b                                        ; $60e4: $58
	add  c                                           ; $60e5: $81
	nop                                              ; $60e6: $00
	nop                                              ; $60e7: $00
	db   $10                                         ; $60e8: $10
	add  c                                           ; $60e9: $81
	nop                                              ; $60ea: $00
	ld   bc, $0040                                   ; $60eb: $01 $40 $00
	add  b                                           ; $60ee: $80
	add  b                                           ; $60ef: $80
	ld   bc, $e0e8                                   ; $60f0: $01 $e8 $e0
	add  b                                           ; $60f3: $80
	ccf                                              ; $60f4: $3f
	inc  b                                           ; $60f5: $04
	ld   [bc], a                                     ; $60f6: $02
	add  [hl]                                        ; $60f7: $86
	nop                                              ; $60f8: $00
	nop                                              ; $60f9: $00
	ld   c, $85                                      ; $60fa: $0e $85
	rrca                                             ; $60fc: $0f
	nop                                              ; $60fd: $00
	ld   bc, $0085                                   ; $60fe: $01 $85 $00
	add  [hl]                                        ; $6101: $86
	rst  $38                                         ; $6102: $ff
	add  [hl]                                        ; $6103: $86
	nop                                              ; $6104: $00
	nop                                              ; $6105: $00
	ld   a, a                                        ; $6106: $7f
	add  b                                           ; $6107: $80
	cp   $83                                         ; $6108: $fe $83
	rst  $38                                         ; $610a: $ff
	nop                                              ; $610b: $00
	add  b                                           ; $610c: $80
	add  l                                           ; $610d: $85
	nop                                              ; $610e: $00
	ld   [$1ee1], sp                                 ; $610f: $08 $e1 $1e
	add  e                                           ; $6112: $83
	jp   $f8c0                                       ; $6113: $c3 $c0 $f8


	ld   sp, hl                                      ; $6116: $f9
	rst  $38                                         ; $6117: $ff
	add  c                                           ; $6118: $81
	add  l                                           ; $6119: $85
	nop                                              ; $611a: $00
	ld   bc, $00ff                                   ; $611b: $01 $ff $00
	add  b                                           ; $611e: $80
	add  b                                           ; $611f: $80
	add  b                                           ; $6120: $80
	ld   [hl], b                                     ; $6121: $70
	add  b                                           ; $6122: $80
	inc  c                                           ; $6123: $0c
	nop                                              ; $6124: $00
	rst  $38                                         ; $6125: $ff
	add  l                                           ; $6126: $85
	nop                                              ; $6127: $00
	nop                                              ; $6128: $00
	rst  $38                                         ; $6129: $ff
	add  c                                           ; $612a: $81
	nop                                              ; $612b: $00
	inc  b                                           ; $612c: $04

jr_076_612d:
	inc  b                                           ; $612d: $04
	inc  d                                           ; $612e: $14
	db   $10                                         ; $612f: $10
	ret  nc                                          ; $6130: $d0

	cpl                                              ; $6131: $2f
	add  l                                           ; $6132: $85
	nop                                              ; $6133: $00
	ld   bc, $00ff                                   ; $6134: $01 $ff $00
	add  b                                           ; $6137: $80
	add  b                                           ; $6138: $80

jr_076_6139:
	inc  b                                           ; $6139: $04

jr_076_613a:
	inc  bc                                          ; $613a: $03
	rst  ToBoot                                         ; $613b: $c7
	ret  nc                                          ; $613c: $d0

	dec  e                                           ; $613d: $1d
	or   $85                                         ; $613e: $f6 $85
	nop                                              ; $6140: $00
	nop                                              ; $6141: $00
	rst  $38                                         ; $6142: $ff
	add  c                                           ; $6143: $81
	nop                                              ; $6144: $00
	add  b                                           ; $6145: $80
	rst  ToBoot                                         ; $6146: $c7
	ld   [bc], a                                     ; $6147: $02
	jr   nz, jr_076_613a                             ; $6148: $20 $f0

	cpl                                              ; $614a: $2f
	add  l                                           ; $614b: $85
	nop                                              ; $614c: $00
	nop                                              ; $614d: $00
	rst  $38                                         ; $614e: $ff
	add  b                                           ; $614f: $80
	nop                                              ; $6150: $00
	ld   [bc], a                                     ; $6151: $02
	jr   jr_076_612d                                 ; $6152: $18 $d9

	db   $fd                                         ; $6154: $fd
	add  b                                           ; $6155: $80
	inc  a                                           ; $6156: $3c
	nop                                              ; $6157: $00
	jp   $0085                                       ; $6158: $c3 $85 $00


	dec  b                                           ; $615b: $05
	ei                                               ; $615c: $fb
	inc  b                                           ; $615d: $04
	nop                                              ; $615e: $00
	jr   jr_076_6139                                 ; $615f: $18 $d8

	ld   sp, hl                                      ; $6161: $f9
	add  b                                           ; $6162: $80
	add  hl, sp                                      ; $6163: $39
	nop                                              ; $6164: $00
	add  $85                                         ; $6165: $c6 $85
	nop                                              ; $6167: $00
	ld   [bc], a                                     ; $6168: $02
	db   $fd                                         ; $6169: $fd
	ld   [bc], a                                     ; $616a: $02
	nop                                              ; $616b: $00
	add  b                                           ; $616c: $80
	sub  c                                           ; $616d: $91
	add  c                                           ; $616e: $81
	pop  af                                          ; $616f: $f1
	nop                                              ; $6170: $00
	ld   c, $85                                      ; $6171: $0e $85
	nop                                              ; $6173: $00
	nop                                              ; $6174: $00
	rst  $38                                         ; $6175: $ff
	add  b                                           ; $6176: $80
	nop                                              ; $6177: $00
	ld   [bc], a                                     ; $6178: $02
	add  c                                           ; $6179: $81
	sbc  l                                           ; $617a: $9d
	rst  JumpTable                                         ; $617b: $df
	add  b                                           ; $617c: $80
	jp   $3c00                                       ; $617d: $c3 $00 $3c


	add  l                                           ; $6180: $85
	nop                                              ; $6181: $00
	nop                                              ; $6182: $00
	rst  $38                                         ; $6183: $ff
	add  b                                           ; $6184: $80
	nop                                              ; $6185: $00
	ld   [bc], a                                     ; $6186: $02
	add  b                                           ; $6187: $80
	sbc  a                                           ; $6188: $9f
	rst  JumpTable                                         ; $6189: $df
	add  b                                           ; $618a: $80
	ret  nz                                          ; $618b: $c0

	nop                                              ; $618c: $00
	ccf                                              ; $618d: $3f
	add  l                                           ; $618e: $85
	nop                                              ; $618f: $00
	nop                                              ; $6190: $00
	rst  $38                                         ; $6191: $ff
	add  c                                           ; $6192: $81
	nop                                              ; $6193: $00
	add  b                                           ; $6194: $80
	db   $fd                                         ; $6195: $fd
	add  b                                           ; $6196: $80
	nop                                              ; $6197: $00
	nop                                              ; $6198: $00
	rst  $38                                         ; $6199: $ff
	add  l                                           ; $619a: $85
	nop                                              ; $619b: $00
	nop                                              ; $619c: $00
	rst  $38                                         ; $619d: $ff
	add  c                                           ; $619e: $81
	nop                                              ; $619f: $00
	add  b                                           ; $61a0: $80
	ld   b, b                                        ; $61a1: $40
	add  b                                           ; $61a2: $80
	nop                                              ; $61a3: $00
	nop                                              ; $61a4: $00
	rst  $38                                         ; $61a5: $ff
	add  l                                           ; $61a6: $85
	nop                                              ; $61a7: $00
	ld   bc, $00ff                                   ; $61a8: $01 $ff $00
	add  b                                           ; $61ab: $80

jr_076_61ac:
	inc  bc                                          ; $61ac: $03
	add  b                                           ; $61ad: $80
	inc  e                                           ; $61ae: $1c
	add  b                                           ; $61af: $80
	pop  hl                                          ; $61b0: $e1
	nop                                              ; $61b1: $00
	pop  af                                          ; $61b2: $f1
	adc  l                                           ; $61b3: $8d
	rrca                                             ; $61b4: $0f
	nop                                              ; $61b5: $00
	cp   $8d                                         ; $61b6: $fe $8d
	rst  $38                                         ; $61b8: $ff
	nop                                              ; $61b9: $00
	ld   a, a                                        ; $61ba: $7f
	adc  l                                           ; $61bb: $8d
	rst  $38                                         ; $61bc: $ff
	nop                                              ; $61bd: $00
	cp   $8d                                         ; $61be: $fe $8d
	rst  $38                                         ; $61c0: $ff
	nop                                              ; $61c1: $00
	ld   a, [hl]                                     ; $61c2: $7e
	add  b                                           ; $61c3: $80
	ldh  [$80], a                                    ; $61c4: $e0 $80
	ld   hl, sp-$77                                  ; $61c6: $f8 $89
	ei                                               ; $61c8: $fb
	ld   bc, $1be0                                   ; $61c9: $01 $e0 $1b
	add  b                                           ; $61cc: $80
	inc  e                                           ; $61cd: $1c
	add  b                                           ; $61ce: $80
	ld   h, a                                        ; $61cf: $67
	add  b                                           ; $61d0: $80
	cp   b                                           ; $61d1: $b8
	add  b                                           ; $61d2: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61d3: $cf
	ld   bc, $c181                                   ; $61d4: $01 $81 $c1
	add  d                                           ; $61d7: $82
	ret  z                                           ; $61d8: $c8

	ld   bc, $f2b2                                   ; $61d9: $01 $b2 $f2
	add  b                                           ; $61dc: $80
	ld   c, $80                                      ; $61dd: $0e $80
	db   $fd                                         ; $61df: $fd
	add  b                                           ; $61e0: $80
	pop  af                                          ; $61e1: $f1
	add  b                                           ; $61e2: $80
	ld   c, $80                                      ; $61e3: $0e $80
	ldh  a, [$80]                                    ; $61e5: $f0 $80
	nop                                              ; $61e7: $00
	add  b                                           ; $61e8: $80
	ret                                              ; $61e9: $c9


	add  b                                           ; $61ea: $80
	pop  de                                          ; $61eb: $d1
	add  b                                           ; $61ec: $80
	sub  h                                           ; $61ed: $94
	add  b                                           ; $61ee: $80
	inc  [hl]                                        ; $61ef: $34
	ld   bc, $edec                                   ; $61f0: $01 $ec $ed
	add  b                                           ; $61f3: $80
	add  hl, bc                                      ; $61f4: $09
	add  b                                           ; $61f5: $80
	sub  c                                           ; $61f6: $91
	add  b                                           ; $61f7: $80
	ld   bc, $2180                                   ; $61f8: $01 $80 $21
	nop                                              ; $61fb: $00
	add  c                                           ; $61fc: $81
	add  b                                           ; $61fd: $80
	jp   c, $9802                                    ; $61fe: $da $02 $98

	jr   jr_076_6203                                 ; $6201: $18 $00

jr_076_6203:
	add  b                                           ; $6203: $80
	dec  h                                           ; $6204: $25
	add  d                                           ; $6205: $82
	ld   h, l                                        ; $6206: $65
	add  b                                           ; $6207: $80
	nop                                              ; $6208: $00
	add  b                                           ; $6209: $80
	ld   e, a                                        ; $620a: $5f
	ld   [bc], a                                     ; $620b: $02
	ldh  [$fd], a                                    ; $620c: $e0 $fd
	dec  e                                           ; $620e: $1d
	add  b                                           ; $620f: $80
	ld   c, $04                                      ; $6210: $0e $04
	inc  bc                                          ; $6212: $03
	db   $db                                         ; $6213: $db
	jp   c, $d9db                                    ; $6214: $da $db $d9

	add  b                                           ; $6217: $80
	ret  c                                           ; $6218: $d8

	add  b                                           ; $6219: $80
	nop                                              ; $621a: $00
	ld   [bc], a                                     ; $621b: $02
	ld   [de], a                                     ; $621c: $12
	cp   a                                           ; $621d: $bf
	xor  l                                           ; $621e: $ad
	add  b                                           ; $621f: $80
	di                                               ; $6220: $f3
	add  b                                           ; $6221: $80
	or   $02                                         ; $6222: $f6 $02
	ld   l, h                                        ; $6224: $6c
	ld   l, b                                        ; $6225: $68
	inc  b                                           ; $6226: $04
	add  b                                           ; $6227: $80
	jr   z, @-$7e                                    ; $6228: $28 $80

	jr   nz, jr_076_61ac                             ; $622a: $20 $80

	nop                                              ; $622c: $00
	inc  b                                           ; $622d: $04
	inc  b                                           ; $622e: $04
	rrca                                             ; $622f: $0f
	inc  sp                                          ; $6230: $33
	cp   l                                           ; $6231: $bd
	add  l                                           ; $6232: $85
	add  b                                           ; $6233: $80
	ld   bc, $0000                                   ; $6234: $01 $00 $00
	add  b                                           ; $6237: $80
	ret  c                                           ; $6238: $d8

	add  d                                           ; $6239: $82
	reti                                             ; $623a: $d9


	add  b                                           ; $623b: $80
	nop                                              ; $623c: $00
	ld   b, $3e                                      ; $623d: $06 $3e
	ld   a, [hl]                                     ; $623f: $7e
	ld   c, a                                        ; $6240: $4f
	xor  a                                           ; $6241: $af
	and  b                                           ; $6242: $a0
	add  b                                           ; $6243: $80
	adc  b                                           ; $6244: $88
	add  b                                           ; $6245: $80
	rrca                                             ; $6246: $0f
	nop                                              ; $6247: $00
	rra                                              ; $6248: $1f
	add  d                                           ; $6249: $82
	rst  JumpTable                                         ; $624a: $df
	add  c                                           ; $624b: $81
	rra                                              ; $624c: $1f
	ld   [bc], a                                     ; $624d: $02
	ld   e, a                                        ; $624e: $5f
	add  d                                           ; $624f: $82
	push de                                          ; $6250: $d5
	add  b                                           ; $6251: $80
	nop                                              ; $6252: $00
	nop                                              ; $6253: $00
	ld   b, d                                        ; $6254: $42
	adc  c                                           ; $6255: $89
	rst  $38                                         ; $6256: $ff
	ld   bc, $50ed                                   ; $6257: $01 $ed $50
	add  b                                           ; $625a: $80
	nop                                              ; $625b: $00
	nop                                              ; $625c: $00
	db   $10                                         ; $625d: $10
	adc  c                                           ; $625e: $89
	rst  $38                                         ; $625f: $ff
	nop                                              ; $6260: $00
	xor  $80                                         ; $6261: $ee $80
	rrca                                             ; $6263: $0f
	adc  e                                           ; $6264: $8b
	ld   a, a                                        ; $6265: $7f
	nop                                              ; $6266: $00
	adc  a                                           ; $6267: $8f
	adc  l                                           ; $6268: $8d
	rrca                                             ; $6269: $0f
	nop                                              ; $626a: $00
	cp   $8d                                         ; $626b: $fe $8d
	rst  $38                                         ; $626d: $ff
	nop                                              ; $626e: $00
	ld   a, a                                        ; $626f: $7f
	adc  c                                           ; $6270: $89
	rst  $38                                         ; $6271: $ff
	add  b                                           ; $6272: $80
	db   $fc                                         ; $6273: $fc
	add  b                                           ; $6274: $80
	ldh  a, [rP1]                                    ; $6275: $f0 $00
	cp   $87                                         ; $6277: $fe $87
	rst  $38                                         ; $6279: $ff
	nop                                              ; $627a: $00
	ccf                                              ; $627b: $3f
	add  e                                           ; $627c: $83
	cp   a                                           ; $627d: $bf
	nop                                              ; $627e: $00
	cp   $8d                                         ; $627f: $fe $8d
	ei                                               ; $6281: $fb
	nop                                              ; $6282: $00
	di                                               ; $6283: $f3
	add  e                                           ; $6284: $83
	ret  z                                           ; $6285: $c8

	add  h                                           ; $6286: $84
	ret  c                                           ; $6287: $d8

	ld   bc, $b8f8                                   ; $6288: $01 $f8 $b8
	add  b                                           ; $628b: $80
	or   b                                           ; $628c: $b0
	ld   bc, $d959                                   ; $628d: $01 $59 $d9
	add  d                                           ; $6290: $82
	ld   e, l                                        ; $6291: $5d
	inc  b                                           ; $6292: $04
	ld   a, e                                        ; $6293: $7b
	ld   a, a                                        ; $6294: $7f
	halt                                             ; $6295: $76
	ld   a, a                                        ; $6296: $7f
	rra                                              ; $6297: $1f
	add  c                                           ; $6298: $81
	ccf                                              ; $6299: $3f
	ld   [bc], a                                     ; $629a: $02
	dec  a                                           ; $629b: $3d
	ccf                                              ; $629c: $3f
	add  a                                           ; $629d: $87
	add  l                                           ; $629e: $85
	xor  c                                           ; $629f: $a9
	add  b                                           ; $62a0: $80
	ld   sp, hl                                      ; $62a1: $f9
	nop                                              ; $62a2: $00
	ld   sp, $f982                                   ; $62a3: $31 $82 $f9
	ld   b, $fd                                      ; $62a6: $06 $fd
	sbc  e                                           ; $62a8: $9b
	ld   d, a                                        ; $62a9: $57
	ld   d, c                                        ; $62aa: $51
	ld   d, a                                        ; $62ab: $57
	ld   b, l                                        ; $62ac: $45
	ld   d, a                                        ; $62ad: $57
	add  b                                           ; $62ae: $80
	ld   d, [hl]                                     ; $62af: $56
	add  d                                           ; $62b0: $82
	ld   a, d                                        ; $62b1: $7a
	dec  e                                           ; $62b2: $1d
	ld   e, d                                        ; $62b3: $5a
	ld   e, a                                        ; $62b4: $5f
	ld   e, [hl]                                     ; $62b5: $5e
	ld   e, a                                        ; $62b6: $5f
	inc  de                                          ; $62b7: $13
	rst  $28                                         ; $62b8: $ef
	xor  e                                           ; $62b9: $ab
	db   $eb                                         ; $62ba: $eb
	rst  $20                                         ; $62bb: $e7
	ldh  [c], a                                      ; $62bc: $e2
	ret                                              ; $62bd: $c9


	jp   nz, $c7e3                                   ; $62be: $c2 $e3 $c7

	ld   h, e                                        ; $62c1: $63
	rst  $30                                         ; $62c2: $f7
	ld   d, h                                        ; $62c3: $54
	or   h                                           ; $62c4: $b4
	push hl                                          ; $62c5: $e5
	rst  $38                                         ; $62c6: $ff
	call $2d2f                                       ; $62c7: $cd $2f $2d
	dec  h                                           ; $62ca: $25
	ld   [hl], e                                     ; $62cb: $73
	ld   [hl], b                                     ; $62cc: $70
	ldh  a, [c]                                      ; $62cd: $f2
	ld   a, [hl]                                     ; $62ce: $7e
	ld   [hl], e                                     ; $62cf: $73
	ld   [hl], c                                     ; $62d0: $71
	add  b                                           ; $62d1: $80
	di                                               ; $62d2: $f3
	ld   [$7f6c], sp                                 ; $62d3: $08 $6c $7f
	ld   h, e                                        ; $62d6: $63
	ld   [hl], c                                     ; $62d7: $71
	sbc  l                                           ; $62d8: $9d
	ld   a, [hl]                                     ; $62d9: $7e
	dec  sp                                          ; $62da: $3b
	ccf                                              ; $62db: $3f
	dec  e                                           ; $62dc: $1d
	add  c                                           ; $62dd: $81
	rra                                              ; $62de: $1f
	ld   [$3d5c], sp                                 ; $62df: $08 $5c $3d
	dec  [hl]                                        ; $62e2: $35
	ld   a, l                                        ; $62e3: $7d
	ld   b, l                                        ; $62e4: $45
	ld   a, a                                        ; $62e5: $7f
	ld   b, $c7                                      ; $62e6: $06 $c7
	ldh  a, [$81]                                    ; $62e8: $f0 $81
	ld   e, a                                        ; $62ea: $5f
	add  h                                           ; $62eb: $84
	rst  JumpTable                                         ; $62ec: $df
	add  h                                           ; $62ed: $84
	ld   e, a                                        ; $62ee: $5f
	rlca                                             ; $62ef: $07
	ld   d, a                                        ; $62f0: $57
	db   $fc                                         ; $62f1: $fc
	ei                                               ; $62f2: $fb
	rst  $38                                         ; $62f3: $ff
	db   $f4                                         ; $62f4: $f4
	db   $fc                                         ; $62f5: $fc
	ei                                               ; $62f6: $fb
	res  0, b                                        ; $62f7: $cb $80
	rst  $10                                         ; $62f9: $d7
	add  b                                           ; $62fa: $80
	call z, $db80                                    ; $62fb: $cc $80 $db
	add  b                                           ; $62fe: $80
	call nz, $8001                                   ; $62ff: $c4 $01 $80
	nop                                              ; $6302: $00
	add  b                                           ; $6303: $80
	add  b                                           ; $6304: $80
	add  b                                           ; $6305: $80
	ld   b, b                                        ; $6306: $40
	add  b                                           ; $6307: $80
	scf                                              ; $6308: $37
	add  b                                           ; $6309: $80
	ret  nz                                          ; $630a: $c0

	add  b                                           ; $630b: $80
	rst  $30                                         ; $630c: $f7
	add  b                                           ; $630d: $80
	ld   [hl], a                                     ; $630e: $77
	add  b                                           ; $630f: $80
	sub  a                                           ; $6310: $97
	add  h                                           ; $6311: $84
	nop                                              ; $6312: $00
	add  b                                           ; $6313: $80
	rst  $38                                         ; $6314: $ff
	add  b                                           ; $6315: $80
	nop                                              ; $6316: $00
	add  b                                           ; $6317: $80
	rst  $38                                         ; $6318: $ff
	add  b                                           ; $6319: $80
	ld   hl, sp-$80                                  ; $631a: $f8 $80
	push af                                          ; $631c: $f5
	nop                                              ; $631d: $00
	pop  af                                          ; $631e: $f1
	adc  c                                           ; $631f: $89
	rrca                                             ; $6320: $0f
	ld   bc, $0f0e                                   ; $6321: $01 $0e $0f
	add  b                                           ; $6324: $80
	add  hl, bc                                      ; $6325: $09
	add  d                                           ; $6326: $82
	rst  $38                                         ; $6327: $ff
	add  b                                           ; $6328: $80
	cp   $80                                         ; $6329: $fe $80
	ld   hl, sp-$80                                  ; $632b: $f8 $80
	ldh  [$80], a                                    ; $632d: $e0 $80
	add  b                                           ; $632f: $80
	add  d                                           ; $6330: $82
	nop                                              ; $6331: $00
	ld   [bc], a                                     ; $6332: $02
	ld   b, b                                        ; $6333: $40
	ret  nz                                          ; $6334: $c0

	nop                                              ; $6335: $00
	add  c                                           ; $6336: $81
	add  b                                           ; $6337: $80
	dec  b                                           ; $6338: $05
	add  a                                           ; $6339: $87
	add  b                                           ; $633a: $80
	xor  $80                                         ; $633b: $ee $80
	sbc  d                                           ; $633d: $9a
	add  b                                           ; $633e: $80
	add  b                                           ; $633f: $80
	sub  b                                           ; $6340: $90
	inc  bc                                          ; $6341: $03
	sub  c                                           ; $6342: $91
	add  c                                           ; $6343: $81
	db   $dd                                         ; $6344: $dd
	cp   a                                           ; $6345: $bf
	add  l                                           ; $6346: $85
	rst  $38                                         ; $6347: $ff
	rlca                                             ; $6348: $07
	ccf                                              ; $6349: $3f
	rst  $38                                         ; $634a: $ff
	sbc  a                                           ; $634b: $9f
	cp   a                                           ; $634c: $bf
	sbc  a                                           ; $634d: $9f
	adc  a                                           ; $634e: $8f
	rst  JumpTable                                         ; $634f: $df
	ld   l, $84                                      ; $6350: $2e $84
	ei                                               ; $6352: $fb
	nop                                              ; $6353: $00
	ld   a, [$fb81]                                  ; $6354: $fa $81 $fb
	nop                                              ; $6357: $00
	ld   sp, hl                                      ; $6358: $f9
	add  d                                           ; $6359: $82
	ei                                               ; $635a: $fb
	inc  bc                                          ; $635b: $03
	ret  z                                           ; $635c: $c8

	or   b                                           ; $635d: $b0
	ldh  a, [c]                                      ; $635e: $f2
	ld   [hl], d                                     ; $635f: $72
	add  b                                           ; $6360: $80
	ld   h, d                                        ; $6361: $62
	add  d                                           ; $6362: $82
	and  $82                                         ; $6363: $e6 $82
	sub  $80                                         ; $6365: $d6 $80
	sub  [hl]                                        ; $6367: $96
	nop                                              ; $6368: $00
	add  hl, bc                                      ; $6369: $09
	add  b                                           ; $636a: $80
	ccf                                              ; $636b: $3f
	inc  bc                                          ; $636c: $03
	rra                                              ; $636d: $1f
	sub  a                                           ; $636e: $97
	sbc  a                                           ; $636f: $9f
	sbc  d                                           ; $6370: $9a
	add  c                                           ; $6371: $81
	adc  a                                           ; $6372: $8f

jr_076_6373:
	ld   b, $89                                      ; $6373: $06 $89
	add  a                                           ; $6375: $87
	add  l                                           ; $6376: $85
	add  e                                           ; $6377: $83
	jp   nz, $12c3                                   ; $6378: $c2 $c3 $12

	add  c                                           ; $637b: $81
	db   $fd                                         ; $637c: $fd
	ld   sp, $fd6d                                   ; $637d: $31 $6d $fd
	db   $ed                                         ; $6380: $ed

jr_076_6381:
	db   $fd                                         ; $6381: $fd
	rst  $38                                         ; $6382: $ff
	cp   $2e                                         ; $6383: $fe $2e
	cp   $f6                                         ; $6385: $fe $f6
	cp   $be                                         ; $6387: $fe $be
	cp   $bb                                         ; $6389: $fe $bb
	ld   c, b                                        ; $638b: $48
	ld   c, $06                                      ; $638c: $0e $06
	pop  bc                                          ; $638e: $c1
	pop  de                                          ; $638f: $d1
	ret  z                                           ; $6390: $c8

	cp   b                                           ; $6391: $b8
	ret  nz                                          ; $6392: $c0

	cp   [hl]                                        ; $6393: $be
	sbc  a                                           ; $6394: $9f
	pop  af                                          ; $6395: $f1
	ret  c                                           ; $6396: $d8

	cp   b                                           ; $6397: $b8
	rst  $28                                         ; $6398: $ef
	cp   a                                           ; $6399: $bf
	xor  b                                           ; $639a: $a8
	db   $10                                         ; $639b: $10
	inc  c                                           ; $639c: $0c
	inc  e                                           ; $639d: $1c
	sub  e                                           ; $639e: $93
	rst  $30                                         ; $639f: $f7
	or   h                                           ; $63a0: $b4
	rst  $38                                         ; $63a1: $ff
	rrca                                             ; $63a2: $0f
	jr   nc, jr_076_6373                             ; $63a3: $30 $ce

	cp   $13                                         ; $63a5: $fe $13
	scf                                              ; $63a7: $37
	add  h                                           ; $63a8: $84
	db   $f4                                         ; $63a9: $f4
	adc  h                                           ; $63aa: $8c
	pop  af                                          ; $63ab: $f1
	ld   de, $7f73                                   ; $63ac: $11 $73 $7f
	ld   a, h                                        ; $63af: $7c
	add  b                                           ; $63b0: $80
	pop  af                                          ; $63b1: $f1
	add  hl, de                                      ; $63b2: $19
	sbc  [hl]                                        ; $63b3: $9e
	rst  $38                                         ; $63b4: $ff
	rra                                              ; $63b5: $1f
	ld   a, [hl]                                     ; $63b6: $7e
	cp   b                                           ; $63b7: $b8
	ld   hl, sp+$30                                  ; $63b8: $f8 $30
	ld   [hl], c                                     ; $63ba: $71
	cp   $4e                                         ; $63bb: $fe $4e
	pop  de                                          ; $63bd: $d1
	ldh  a, [rAUD3LEVEL]                             ; $63be: $f0 $1c
	ld   a, l                                        ; $63c0: $7d
	adc  l                                           ; $63c1: $8d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63c2: $cf
	ei                                               ; $63c3: $fb
	ld   hl, sp+$50                                  ; $63c4: $f8 $50
	pop  af                                          ; $63c6: $f1
	ld   l, l                                        ; $63c7: $6d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63c8: $cf
	add  b                                           ; $63c9: $80
	jp   Jump_076_5f37                               ; $63ca: $c3 $37 $5f


	add  b                                           ; $63cd: $80
	rra                                              ; $63ce: $1f
	add  b                                           ; $63cf: $80
	ld   a, a                                        ; $63d0: $7f
	ld   bc, $7f3f                                   ; $63d1: $01 $3f $7f
	add  b                                           ; $63d4: $80
	cp   a                                           ; $63d5: $bf
	nop                                              ; $63d6: $00
	scf                                              ; $63d7: $37
	add  b                                           ; $63d8: $80
	ld   [hl], c                                     ; $63d9: $71
	inc  bc                                          ; $63da: $03
	jr   nc, @+$78                                   ; $63db: $30 $76

	ld   h, [hl]                                     ; $63dd: $66
	inc  d                                           ; $63de: $14
	add  b                                           ; $63df: $80
	call nc, $d683                                   ; $63e0: $d4 $83 $d6
	add  d                                           ; $63e3: $82
	sbc  $81                                         ; $63e4: $de $81
	sub  $02                                         ; $63e6: $d6 $02
	ld   d, [hl]                                     ; $63e8: $56
	ld   d, l                                        ; $63e9: $55
	ld   d, a                                        ; $63ea: $57
	add  b                                           ; $63eb: $80
	scf                                              ; $63ec: $37
	inc  b                                           ; $63ed: $04
	rla                                              ; $63ee: $17
	sub  a                                           ; $63ef: $97
	rla                                              ; $63f0: $17
	ld   d, a                                        ; $63f1: $57
	ld   b, a                                        ; $63f2: $47
	add  c                                           ; $63f3: $81
	ld   d, a                                        ; $63f4: $57
	add  d                                           ; $63f5: $82
	ld   [hl], a                                     ; $63f6: $77
	ld   bc, $c818                                   ; $63f7: $01 $18 $c8
	add  b                                           ; $63fa: $80
	ld   [hl+], a                                    ; $63fb: $22
	add  b                                           ; $63fc: $80
	ld   c, l                                        ; $63fd: $4d
	add  b                                           ; $63fe: $80
	jr   jr_076_6381                                 ; $63ff: $18 $80

	dec  a                                           ; $6401: $3d
	add  b                                           ; $6402: $80
	ld   a, l                                        ; $6403: $7d
	add  b                                           ; $6404: $80
	dec  a                                           ; $6405: $3d
	add  b                                           ; $6406: $80
	ld   a, l                                        ; $6407: $7d
	nop                                              ; $6408: $00
	cp   $8d                                         ; $6409: $fe $8d
	ld   bc, $0085                                   ; $640b: $01 $85 $00
	add  d                                           ; $640e: $82
	ld   bc, $0380                                   ; $640f: $01 $80 $03
	add  b                                           ; $6412: $80
	ld   [bc], a                                     ; $6413: $02
	inc  bc                                          ; $6414: $03
	inc  b                                           ; $6415: $04
	add  $a1                                         ; $6416: $c6 $a1
	ld   hl, $8181                                   ; $6418: $21 $81 $81
	nop                                              ; $641b: $00
	jp   nz, $8181                                   ; $641c: $c2 $81 $81

	nop                                              ; $641f: $00
	ld   bc, $8183                                   ; $6420: $01 $83 $81
	inc  bc                                          ; $6423: $03
	adc  [hl]                                        ; $6424: $8e
	ld   e, a                                        ; $6425: $5f
	ld   c, a                                        ; $6426: $4f
	ld   e, a                                        ; $6427: $5f
	add  b                                           ; $6428: $80
	ccf                                              ; $6429: $3f
	nop                                              ; $642a: $00
	cp   a                                           ; $642b: $bf
	add  c                                           ; $642c: $81
	rst  $38                                         ; $642d: $ff
	ld   bc, $fff9                                   ; $642e: $01 $f9 $ff
	add  b                                           ; $6431: $80
	ld   hl, sp+$0b                                  ; $6432: $f8 $0b
	ldh  a, [$f8]                                    ; $6434: $f0 $f8
	ld   a, a                                        ; $6436: $7f
	rst  $38                                         ; $6437: $ff
	xor  $fe                                         ; $6438: $ee $fe
	call c, $b2fc                                    ; $643a: $dc $fc $b2
	ldh  a, [c]                                      ; $643d: $f2
	ld   b, d                                        ; $643e: $42
	jp   nz, $1382                                   ; $643f: $c2 $82 $13

	ld   [bc], a                                     ; $6442: $02
	ld   e, e                                        ; $6443: $5b
	ld   e, d                                        ; $6444: $5a
	scf                                              ; $6445: $37
	add  c                                           ; $6446: $81
	ld   [hl], $80                                   ; $6447: $36 $80
	ld   [hl], h                                     ; $6449: $74
	add  d                                           ; $644a: $82
	ld   a, h                                        ; $644b: $7c
	ld   b, $75                                      ; $644c: $06 $75
	ld   [hl], b                                     ; $644e: $70
	ld   d, d                                        ; $644f: $52
	ld   [bc], a                                     ; $6450: $02
	ld   [$820f], sp                                 ; $6451: $08 $0f $82
	add  b                                           ; $6454: $80
	pop  de                                          ; $6455: $d1
	nop                                              ; $6456: $00
	ret  nc                                          ; $6457: $d0

	add  b                                           ; $6458: $80
	ret  c                                           ; $6459: $d8

	add  b                                           ; $645a: $80
	jp   c, Jump_076_5a80                            ; $645b: $da $80 $5a

	ld   [bc], a                                     ; $645e: $02
	ld   b, d                                        ; $645f: $42
	ld   d, $b4                                      ; $6460: $16 $b4
	add  b                                           ; $6462: $80
	or   [hl]                                        ; $6463: $b6
	dec  c                                           ; $6464: $0d
	ldh  [rAUDENA], a                                ; $6465: $e0 $26
	cp   $ce                                         ; $6467: $fe $ce
	cp   $fa                                         ; $6469: $fe $fa
	ld   a, [hl]                                     ; $646b: $7e
	ld   h, h                                        ; $646c: $64
	ld   a, $30                                      ; $646d: $3e $30
	rra                                              ; $646f: $1f
	jr   jr_076_6477                                 ; $6470: $18 $05

	inc  b                                           ; $6472: $04
	add  b                                           ; $6473: $80
	add  b                                           ; $6474: $80
	inc  b                                           ; $6475: $04
	pop  de                                          ; $6476: $d1

jr_076_6477:
	ld   c, [hl]                                     ; $6477: $4e
	sbc  h                                           ; $6478: $9c
	db   $eb                                         ; $6479: $eb
	or   a                                           ; $647a: $b7
	add  b                                           ; $647b: $80
	ld   hl, sp+$03                                  ; $647c: $f8 $03
	db   $fc                                         ; $647e: $fc
	cp   h                                           ; $647f: $bc
	rlca                                             ; $6480: $07
	rla                                              ; $6481: $17
	add  b                                           ; $6482: $80
	xor  l                                           ; $6483: $ad
	add  b                                           ; $6484: $80
	dec  d                                           ; $6485: $15
	dec  b                                           ; $6486: $05
	rra                                              ; $6487: $1f
	sub  e                                           ; $6488: $93
	jr   nc, @+$81                                   ; $6489: $30 $7f

	add  h                                           ; $648b: $84
	cp   a                                           ; $648c: $bf
	add  b                                           ; $648d: $80
	ld   sp, $e02b                                   ; $648e: $31 $2b $e0
	db   $f4                                         ; $6491: $f4
	sub  b                                           ; $6492: $90
	rst  $38                                         ; $6493: $ff
	ld   l, $55                                      ; $6494: $2e $55
	ld   l, a                                        ; $6496: $6f
	ld   b, a                                        ; $6497: $47
	rst  JumpTable                                         ; $6498: $df
	ld   bc, $77ff                                   ; $6499: $01 $ff $77
	adc  c                                           ; $649c: $89
	rst  $38                                         ; $649d: $ff
	and  b                                           ; $649e: $a0
	ldh  a, [rHDMA1]                                 ; $649f: $f0 $51
	ld   [hl], c                                     ; $64a1: $71
	ld   a, a                                        ; $64a2: $7f
	rst  $38                                         ; $64a3: $ff
	inc  c                                           ; $64a4: $0c
	db   $fd                                         ; $64a5: $fd
	ld   h, $27                                      ; $64a6: $26 $27
	rst  $38                                         ; $64a8: $ff
	db   $ec                                         ; $64a9: $ec
	ld   [hl], h                                     ; $64aa: $74
	rst  $20                                         ; $64ab: $e7
	sbc  b                                           ; $64ac: $98
	ret  c                                           ; $64ad: $d8

	ld   b, d                                        ; $64ae: $42
	jp   $fc5d                                       ; $64af: $c3 $5d $fc


	sub  c                                           ; $64b2: $91
	pop  af                                          ; $64b3: $f1
	ld   a, a                                        ; $64b4: $7f
	rst  $38                                         ; $64b5: $ff
	ld   l, d                                        ; $64b6: $6a
	ld   a, [hl+]                                    ; $64b7: $2a
	cp   [hl]                                        ; $64b8: $be
	add  hl, de                                      ; $64b9: $19
	ld   a, $66                                      ; $64ba: $3e $66
	add  c                                           ; $64bc: $81
	and  [hl]                                        ; $64bd: $a6
	dec  bc                                          ; $64be: $0b
	and  $e0                                         ; $64bf: $e6 $e0
	or   b                                           ; $64c1: $b0
	cp   b                                           ; $64c2: $b8
	ld   sp, hl                                      ; $64c3: $f9
	ld   e, c                                        ; $64c4: $59
	ld   e, a                                        ; $64c5: $5f
	rst  $10                                         ; $64c6: $d7
	add  c                                           ; $64c7: $81
	pop  bc                                          ; $64c8: $c1
	add  b                                           ; $64c9: $80
	ld   d, h                                        ; $64ca: $54
	add  h                                           ; $64cb: $84
	ld   d, [hl]                                     ; $64cc: $56
	add  h                                           ; $64cd: $84
	sub  $81                                         ; $64ce: $d6 $81
	push de                                          ; $64d0: $d5
	nop                                              ; $64d1: $00
	ld   h, $86                                      ; $64d2: $26 $86
	ld   [hl], a                                     ; $64d4: $77
	add  d                                           ; $64d5: $82
	rst  $30                                         ; $64d6: $f7
	add  b                                           ; $64d7: $80
	scf                                              ; $64d8: $37
	ld   [bc], a                                     ; $64d9: $02
	rst  $30                                         ; $64da: $f7
	ld   l, a                                        ; $64db: $6f
	ccf                                              ; $64dc: $3f
	add  h                                           ; $64dd: $84
	ld   a, l                                        ; $64de: $7d
	add  b                                           ; $64df: $80
	ld   [hl], l                                     ; $64e0: $75
	add  b                                           ; $64e1: $80
	ld   a, b                                        ; $64e2: $78
	add  b                                           ; $64e3: $80
	ld   a, l                                        ; $64e4: $7d
	add  b                                           ; $64e5: $80
	ld   a, b                                        ; $64e6: $78
	nop                                              ; $64e7: $00
	cp   $8d                                         ; $64e8: $fe $8d
	ld   bc, $008e                                   ; $64ea: $01 $8e $00
	adc  b                                           ; $64ed: $88
	add  e                                           ; $64ee: $83
	add  h                                           ; $64ef: $84
	add  a                                           ; $64f0: $87
	ld   bc, $f976                                   ; $64f1: $01 $76 $f9
	add  h                                           ; $64f4: $84
	ei                                               ; $64f5: $fb
	add  b                                           ; $64f6: $80
	db   $fd                                         ; $64f7: $fd
	add  b                                           ; $64f8: $80
	rst  $38                                         ; $64f9: $ff
	add  b                                           ; $64fa: $80
	db   $f4                                         ; $64fb: $f4
	ld   a, [bc]                                     ; $64fc: $0a
	ei                                               ; $64fd: $fb
	db   $eb                                         ; $64fe: $eb
	dec  e                                           ; $64ff: $1d
	ld   a, b                                        ; $6500: $78
	ld   l, d                                        ; $6501: $6a
	ld   h, e                                        ; $6502: $63
	ld   d, b                                        ; $6503: $50
	ld   c, [hl]                                     ; $6504: $4e
	ld   [hl+], a                                    ; $6505: $22
	rla                                              ; $6506: $17
	daa                                              ; $6507: $27
	add  b                                           ; $6508: $80
	ld   d, $07                                      ; $6509: $16 $07
	add  e                                           ; $650b: $83
	sub  e                                           ; $650c: $93
	ld   [de], a                                     ; $650d: $12
	add  b                                           ; $650e: $80
	add  d                                           ; $650f: $82
	ldh  a, [rIE]                                    ; $6510: $f0 $ff
	rrca                                             ; $6512: $0f
	add  b                                           ; $6513: $80
	rst  $10                                         ; $6514: $d7
	add  b                                           ; $6515: $80
	xor  e                                           ; $6516: $ab
	db   $10                                         ; $6517: $10
	ld   d, h                                        ; $6518: $54
	ld   d, a                                        ; $6519: $57
	xor  e                                           ; $651a: $ab
	xor  c                                           ; $651b: $a9
	ld   b, c                                        ; $651c: $41
	ld   c, l                                        ; $651d: $4d
	dec  l                                           ; $651e: $2d
	jr   c, jr_076_653c                              ; $651f: $38 $1b

	rra                                              ; $6521: $1f
	db   $fc                                         ; $6522: $fc
	rst  JumpTable                                         ; $6523: $df
	rst  $38                                         ; $6524: $ff
	call nz, $ba24                                   ; $6525: $c4 $24 $ba
	sbc  d                                           ; $6528: $9a
	add  b                                           ; $6529: $80
	sub  e                                           ; $652a: $93
	add  b                                           ; $652b: $80
	ld   a, c                                        ; $652c: $79
	add  hl, bc                                      ; $652d: $09
	rrca                                             ; $652e: $0f
	rst  $38                                         ; $652f: $ff
	di                                               ; $6530: $f3
	rst  $38                                         ; $6531: $ff
	db   $fc                                         ; $6532: $fc
	dec  d                                           ; $6533: $15
	sub  l                                           ; $6534: $95
	add  d                                           ; $6535: $82
	ldh  [c], a                                      ; $6536: $e2
	pop  hl                                          ; $6537: $e1
	add  b                                           ; $6538: $80
	ld   sp, $9108                                   ; $6539: $31 $08 $91

jr_076_653c:
	pop  de                                          ; $653c: $d1
	or   c                                           ; $653d: $b1
	ldh  a, [rAUD4LEN]                               ; $653e: $f0 $20
	ld   hl, $0001                                   ; $6540: $21 $01 $00
	rrca                                             ; $6543: $0f
	add  b                                           ; $6544: $80
	add  b                                           ; $6545: $80
	inc  bc                                          ; $6546: $03
	ld   b, b                                        ; $6547: $40
	ret  nz                                          ; $6548: $c0

	nop                                              ; $6549: $00
	ret  nz                                          ; $654a: $c0

	add  b                                           ; $654b: $80
	add  b                                           ; $654c: $80
	inc  bc                                          ; $654d: $03
	nop                                              ; $654e: $00
	ld   b, b                                        ; $654f: $40
	add  b                                           ; $6550: $80
	adc  a                                           ; $6551: $8f
	add  b                                           ; $6552: $80
	ld   b, b                                        ; $6553: $40
	ld   bc, $5f80                                   ; $6554: $01 $80 $5f
	adc  c                                           ; $6557: $89
	nop                                              ; $6558: $00
	ld   bc, $00df                                   ; $6559: $01 $df $00
	add  b                                           ; $655c: $80
	add  a                                           ; $655d: $87
	nop                                              ; $655e: $00
	adc  a                                           ; $655f: $8f
	adc  c                                           ; $6560: $89
	nop                                              ; $6561: $00
	ld   bc, $008f                                   ; $6562: $01 $8f $00
	add  b                                           ; $6565: $80
	cp   $00                                         ; $6566: $fe $00
	cp   [hl]                                        ; $6568: $be
	add  b                                           ; $6569: $80
	ld   bc, $0087                                   ; $656a: $01 $87 $00
	ld   bc, $00be                                   ; $656d: $01 $be $00
	add  b                                           ; $6570: $80
	sub  b                                           ; $6571: $90
	add  b                                           ; $6572: $80
	ld   e, $80                                      ; $6573: $1e $80
	inc  sp                                          ; $6575: $33
	add  b                                           ; $6576: $80
	ld   b, b                                        ; $6577: $40
	add  b                                           ; $6578: $80
	ld   c, h                                        ; $6579: $4c
	add  d                                           ; $657a: $82
	sbc  l                                           ; $657b: $9d
	add  b                                           ; $657c: $80
	add  hl, bc                                      ; $657d: $09
	add  b                                           ; $657e: $80
	add  b                                           ; $657f: $80
	ld   bc, $5250                                   ; $6580: $01 $50 $52
	add  b                                           ; $6583: $80
	ld   [de], a                                     ; $6584: $12
	add  b                                           ; $6585: $80
	sub  [hl]                                        ; $6586: $96
	add  d                                           ; $6587: $82
	ld   d, $82                                      ; $6588: $16 $82
	sub  [hl]                                        ; $658a: $96
	add  b                                           ; $658b: $80
	ld   d, $00                                      ; $658c: $16 $00
	and  l                                           ; $658e: $a5
	add  d                                           ; $658f: $82
	or   a                                           ; $6590: $b7
	rlca                                             ; $6591: $07
	rst  $30                                         ; $6592: $f7
	or   a                                           ; $6593: $b7
	ld   [hl], a                                     ; $6594: $77
	rla                                              ; $6595: $17
	rst  $30                                         ; $6596: $f7
	or   a                                           ; $6597: $b7
	ld   [hl], a                                     ; $6598: $77
	scf                                              ; $6599: $37
	add  c                                           ; $659a: $81
	ld   [hl], a                                     ; $659b: $77
	ld   bc, $6595                                   ; $659c: $01 $95 $65
	add  b                                           ; $659f: $80
	ld   a, b                                        ; $65a0: $78
	add  d                                           ; $65a1: $82
	ld   a, l                                        ; $65a2: $7d
	add  b                                           ; $65a3: $80
	rrca                                             ; $65a4: $0f
	add  b                                           ; $65a5: $80
	inc  b                                           ; $65a6: $04
	add  b                                           ; $65a7: $80
	dec  sp                                          ; $65a8: $3b
	add  b                                           ; $65a9: $80
	ld   a, l                                        ; $65aa: $7d
	nop                                              ; $65ab: $00
	cp   $89                                         ; $65ac: $fe $89
	ld   bc, $0304                                   ; $65ae: $01 $04 $03
	nop                                              ; $65b1: $00
	inc  c                                           ; $65b2: $0c
	nop                                              ; $65b3: $00
	rrca                                             ; $65b4: $0f
	add  e                                           ; $65b5: $83
	nop                                              ; $65b6: $00
	ld   b, $01                                      ; $65b7: $06 $01
	nop                                              ; $65b9: $00
	ld   c, $00                                      ; $65ba: $0e $00
	ld   [hl], b                                     ; $65bc: $70
	nop                                              ; $65bd: $00
	add  b                                           ; $65be: $80
	add  b                                           ; $65bf: $80
	nop                                              ; $65c0: $00
	ld   bc, $7901                                   ; $65c1: $01 $01 $79
	add  b                                           ; $65c4: $80
	add  a                                           ; $65c5: $87
	inc  bc                                          ; $65c6: $03
	add  b                                           ; $65c7: $80
	cp   b                                           ; $65c8: $b8
	add  b                                           ; $65c9: $80
	ret  nz                                          ; $65ca: $c0

	add  d                                           ; $65cb: $82
	nop                                              ; $65cc: $00
	add  b                                           ; $65cd: $80
	inc  e                                           ; $65ce: $1c
	add  b                                           ; $65cf: $80
	ld   a, [hl]                                     ; $65d0: $7e
	db   $10                                         ; $65d1: $10
	rst  $38                                         ; $65d2: $ff
	ei                                               ; $65d3: $fb
	inc  d                                           ; $65d4: $14
	dec  de                                          ; $65d5: $1b
	dec  hl                                          ; $65d6: $2b
	daa                                              ; $65d7: $27
	rlca                                             ; $65d8: $07
	rla                                              ; $65d9: $17
	ld   [hl], a                                     ; $65da: $77
	ld   e, e                                        ; $65db: $5b
	ei                                               ; $65dc: $fb
	call nc, $2c34                                   ; $65dd: $d4 $34 $2c
	ld   l, h                                        ; $65e0: $6c
	ld   h, c                                        ; $65e1: $61
	ld   bc, $f880                                   ; $65e2: $01 $80 $f8
	inc  bc                                          ; $65e5: $03
	ldh  a, [$f7]                                    ; $65e6: $f0 $f7
	rst  $38                                         ; $65e8: $ff
	ld   hl, sp-$80                                  ; $65e9: $f8 $80
	cp   $80                                         ; $65eb: $fe $80
	rst  $38                                         ; $65ed: $ff
	add  b                                           ; $65ee: $80
	db   $fc                                         ; $65ef: $fc
	add  b                                           ; $65f0: $80
	ld   b, b                                        ; $65f1: $40
	inc  b                                           ; $65f2: $04
	ret  nz                                          ; $65f3: $c0

	pop  bc                                          ; $65f4: $c1
	ld   de, $4353                                   ; $65f5: $11 $53 $43
	add  b                                           ; $65f8: $80
	ld   b, a                                        ; $65f9: $47
	add  b                                           ; $65fa: $80
	rst  $30                                         ; $65fb: $f7
	add  b                                           ; $65fc: $80
	di                                               ; $65fd: $f3
	add  b                                           ; $65fe: $80
	ld   [hl], b                                     ; $65ff: $70
	add  b                                           ; $6600: $80
	inc  e                                           ; $6601: $1c
	add  b                                           ; $6602: $80
	rst  JumpTable                                         ; $6603: $df
	dec  b                                           ; $6604: $05
	sbc  h                                           ; $6605: $9c
	sbc  a                                           ; $6606: $9f
	rst  $38                                         ; $6607: $ff
	db   $fd                                         ; $6608: $fd
	rst  $38                                         ; $6609: $ff
	cp   $80                                         ; $660a: $fe $80
	rst  $38                                         ; $660c: $ff
	add  hl, de                                      ; $660d: $19
	db   $fc                                         ; $660e: $fc
	rst  $38                                         ; $660f: $ff
	inc  sp                                          ; $6610: $33
	dec  a                                           ; $6611: $3d
	ld   l, l                                        ; $6612: $6d
	ld   l, h                                        ; $6613: $6c
	xor  h                                           ; $6614: $ac
	and  b                                           ; $6615: $a0
	add  e                                           ; $6616: $83
	inc  hl                                          ; $6617: $23
	and  c                                           ; $6618: $a1
	ld   h, c                                        ; $6619: $61
	ld   l, d                                        ; $661a: $6a
	ld   a, [hl+]                                    ; $661b: $2a
	ld   l, $0f                                      ; $661c: $2e $0f
	rra                                              ; $661e: $1f
	sbc  l                                           ; $661f: $9d
	cp   a                                           ; $6620: $bf
	inc  bc                                          ; $6621: $03
	ld   a, a                                        ; $6622: $7f
	ld   c, [hl]                                     ; $6623: $4e
	cp   $fc                                         ; $6624: $fe $fc
	rst  $38                                         ; $6626: $ff
	di                                               ; $6627: $f3
	add  b                                           ; $6628: $80
	nop                                              ; $6629: $00
	ld   a, [bc]                                     ; $662a: $0a
	ret  nz                                          ; $662b: $c0

	add  $de                                         ; $662c: $c6 $de
	db   $db                                         ; $662e: $db
	ccf                                              ; $662f: $3f
	inc  sp                                          ; $6630: $33
	ccf                                              ; $6631: $3f
	ld   b, $36                                      ; $6632: $06 $36
	add  hl, sp                                      ; $6634: $39
	ccf                                              ; $6635: $3f
	add  b                                           ; $6636: $80
	ld   d, $00                                      ; $6637: $16 $00
	ld   b, $81                                      ; $6639: $06 $81
	nop                                              ; $663b: $00
	adc  b                                           ; $663c: $88
	dec  b                                           ; $663d: $05
	add  b                                           ; $663e: $80
	ld   b, l                                        ; $663f: $45
	add  d                                           ; $6640: $82
	nop                                              ; $6641: $00
	add  c                                           ; $6642: $81
	ld   b, b                                        ; $6643: $40
	add  b                                           ; $6644: $80
	ld   b, c                                        ; $6645: $41
	ld   b, $44                                      ; $6646: $06 $44
	ld   b, c                                        ; $6648: $41
	ld   c, l                                        ; $6649: $4d
	ld   c, b                                        ; $664a: $48
	ld   b, c                                        ; $664b: $41
	ld   c, e                                        ; $664c: $4b
	ld   c, d                                        ; $664d: $4a
	add  e                                           ; $664e: $83
	nop                                              ; $664f: $00
	ld   [$0080], sp                                 ; $6650: $08 $80 $00
	sub  b                                           ; $6653: $90
	jr   c, jr_076_667e                              ; $6654: $38 $28

	ld   [$f848], sp                                 ; $6656: $08 $48 $f8
	cp   h                                           ; $6659: $bc
	add  b                                           ; $665a: $80
	inc  b                                           ; $665b: $04
	ld   bc, $8084                                   ; $665c: $01 $84 $80
	add  b                                           ; $665f: $80
	nop                                              ; $6660: $00
	add  b                                           ; $6661: $80
	add  hl, de                                      ; $6662: $19
	add  b                                           ; $6663: $80
	ld   e, e                                        ; $6664: $5b
	add  b                                           ; $6665: $80
	ret  c                                           ; $6666: $d8

	add  b                                           ; $6667: $80
	ld   e, d                                        ; $6668: $5a
	add  d                                           ; $6669: $82
	nop                                              ; $666a: $00
	nop                                              ; $666b: $00
	inc  d                                           ; $666c: $14
	add  c                                           ; $666d: $81
	ld   d, $82                                      ; $666e: $16 $82
	sub  [hl]                                        ; $6670: $96
	add  b                                           ; $6671: $80
	sbc  $80                                         ; $6672: $de $80
	adc  $81                                         ; $6674: $ce $81
	ld   [bc], a                                     ; $6676: $02
	ld   [bc], a                                     ; $6677: $02
	ld   [$77af], sp                                 ; $6678: $08 $af $77
	add  b                                           ; $667b: $80
	halt                                             ; $667c: $76
	nop                                              ; $667d: $00

jr_076_667e:
	push af                                          ; $667e: $f5
	add  c                                           ; $667f: $81
	db   $f4                                         ; $6680: $f4
	add  b                                           ; $6681: $80
	ldh  a, [rSC]                                    ; $6682: $f0 $02
	rst  JumpTable                                         ; $6684: $df
	ret  nz                                          ; $6685: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6686: $cf
	add  c                                           ; $6687: $81
	ret  nz                                          ; $6688: $c0

	ld   bc, $3cfd                                   ; $6689: $01 $fd $3c
	add  b                                           ; $668c: $80
	ld   e, c                                        ; $668d: $59
	add  b                                           ; $668e: $80
	ld   d, e                                        ; $668f: $53
	add  b                                           ; $6690: $80
	ld   b, e                                        ; $6691: $43
	add  b                                           ; $6692: $80
	inc  bc                                          ; $6693: $03
	ld   [bc], a                                     ; $6694: $02
	ret                                              ; $6695: $c9


	add  hl, bc                                      ; $6696: $09
	ld   l, $81                                      ; $6697: $2e $81
	ld   c, $00                                      ; $6699: $0e $00
	db   $10                                         ; $669b: $10
	add  l                                           ; $669c: $85
	nop                                              ; $669d: $00
	nop                                              ; $669e: $00
	ld   [bc], a                                     ; $669f: $02
	add  c                                           ; $66a0: $81
	inc  bc                                          ; $66a1: $03
	ld   bc, $0302                                   ; $66a2: $01 $02 $03
	add  b                                           ; $66a5: $80
	rlca                                             ; $66a6: $07
	nop                                              ; $66a7: $00
	ldh  a, [$80]                                    ; $66a8: $f0 $80
	rlca                                             ; $66aa: $07
	add  b                                           ; $66ab: $80
	ccf                                              ; $66ac: $3f
	add  e                                           ; $66ad: $83
	rst  $38                                         ; $66ae: $ff
	ld   b, $3f                                      ; $66af: $06 $3f
	rst  $38                                         ; $66b1: $ff
	rst  $28                                         ; $66b2: $ef
	ret  c                                           ; $66b3: $d8

	sub  c                                           ; $66b4: $91
	sbc  c                                           ; $66b5: $99
	nop                                              ; $66b6: $00
	adc  c                                           ; $66b7: $89
	rst  $38                                         ; $66b8: $ff
	ld   b, $eb                                      ; $66b9: $06 $eb
	sub  l                                           ; $66bb: $95
	inc  d                                           ; $66bc: $14
	sub  l                                           ; $66bd: $95
	db   $10                                         ; $66be: $10
	ldh  a, [$e0]                                    ; $66bf: $f0 $e0
	add  a                                           ; $66c1: $87

jr_076_66c2:
	rst  $38                                         ; $66c2: $ff
	inc  b                                           ; $66c3: $04
	push af                                          ; $66c4: $f5
	jp   z, $f232                                    ; $66c5: $ca $32 $f2

	nop                                              ; $66c8: $00
	add  b                                           ; $66c9: $80

jr_076_66ca:
	ld   bc, $2080                                   ; $66ca: $01 $80 $20
	add  l                                           ; $66cd: $85
	rst  $38                                         ; $66ce: $ff
	inc  b                                           ; $66cf: $04
	ld   a, l                                        ; $66d0: $7d
	cp   e                                           ; $66d1: $bb
	add  h                                           ; $66d2: $84
	cp   l                                           ; $66d3: $bd
	nop                                              ; $66d4: $00
	add  b                                           ; $66d5: $80
	adc  a                                           ; $66d6: $8f
	add  b                                           ; $66d7: $80
	ld   bc, $f880                                   ; $66d8: $01 $80 $f8
	add  e                                           ; $66db: $83
	rst  $38                                         ; $66dc: $ff
	inc  b                                           ; $66dd: $04
	ret  z                                           ; $66de: $c8

	or   a                                           ; $66df: $b7
	rla                                              ; $66e0: $17
	sub  a                                           ; $66e1: $97
	nop                                              ; $66e2: $00
	add  b                                           ; $66e3: $80
	rrca                                             ; $66e4: $0f
	add  b                                           ; $66e5: $80
	ccf                                              ; $66e6: $3f
	add  b                                           ; $66e7: $80
	ld   a, a                                        ; $66e8: $7f
	ld   b, $ff                                      ; $66e9: $06 $ff
	ld   hl, sp-$01                                  ; $66eb: $f8 $ff
	add  [hl]                                        ; $66ed: $86
	cp   $cc                                         ; $66ee: $fe $cc
	ld   c, h                                        ; $66f0: $4c
	add  b                                           ; $66f1: $80
	rst  $30                                         ; $66f2: $f7
	rlca                                             ; $66f3: $07
	inc  c                                           ; $66f4: $0c
	rst  $38                                         ; $66f5: $ff
	rst  $10                                         ; $66f6: $d7
	rst  $28                                         ; $66f7: $ef
	xor  a                                           ; $66f8: $af
	rst  $28                                         ; $66f9: $ef
	ld   c, c                                        ; $66fa: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66fb: $cf
	add  b                                           ; $66fc: $80
	cpl                                              ; $66fd: $2f
	ld   [$afa8], sp                                 ; $66fe: $08 $a8 $af
	push hl                                          ; $6701: $e5
	rst  $38                                         ; $6702: $ff
	and  $ff                                         ; $6703: $e6 $ff
	add  hl, bc                                      ; $6705: $09
	ld   b, $3e                                      ; $6706: $06 $3e
	add  b                                           ; $6708: $80
	add  hl, sp                                      ; $6709: $39
	nop                                              ; $670a: $00
	ccf                                              ; $670b: $3f
	add  b                                           ; $670c: $80
	ld   a, a                                        ; $670d: $7f
	nop                                              ; $670e: $00
	ld   c, b                                        ; $670f: $48
	add  c                                           ; $6710: $81
	ld   l, a                                        ; $6711: $6f
	rrca                                             ; $6712: $0f
	jr   nz, jr_076_6715                             ; $6713: $20 $00

jr_076_6715:
	ld   [$0b1e], sp                                 ; $6715: $08 $1e $0b
	dec  e                                           ; $6718: $1d
	ld   bc, $c0c1                                   ; $6719: $01 $c1 $c0
	or   b                                           ; $671c: $b0
	and  b                                           ; $671d: $a0
	ret  nc                                          ; $671e: $d0

	ret  nz                                          ; $671f: $c0

	ldh  [rP1], a                                    ; $6720: $e0 $00
	and  $80                                         ; $6722: $e6 $80
	ld   c, $09                                      ; $6724: $0e $09
	ld   a, [bc]                                     ; $6726: $0a
	ld   c, h                                        ; $6727: $4c
	ld   d, h                                        ; $6728: $54
	inc  e                                           ; $6729: $1c
	ld   bc, $4109                                   ; $672a: $01 $09 $41
	ld   b, e                                        ; $672d: $43
	ld   c, h                                        ; $672e: $4c
	ld   c, [hl]                                     ; $672f: $4e
	add  d                                           ; $6730: $82
	ld   c, $09                                      ; $6731: $0e $09
	rlca                                             ; $6733: $07
	ld   [hl], a                                     ; $6734: $77
	ld   [hl], b                                     ; $6735: $70
	ld   hl, sp-$70                                  ; $6736: $f8 $90
	ld   l, b                                        ; $6738: $68
	inc  d                                           ; $6739: $14
	ld   e, h                                        ; $673a: $5c
	ld   d, b                                        ; $673b: $50
	jr   jr_076_66c2                                 ; $673c: $18 $84

	inc  b                                           ; $673e: $04
	add  b                                           ; $673f: $80
	ld   [$0080], sp                                 ; $6740: $08 $80 $00
	add  b                                           ; $6743: $80
	jr   c, jr_076_66ca                              ; $6744: $38 $84

	nop                                              ; $6746: $00
	add  b                                           ; $6747: $80
	rra                                              ; $6748: $1f
	add  h                                           ; $6749: $84
	nop                                              ; $674a: $00
	ld   [bc], a                                     ; $674b: $02
	ld   [bc], a                                     ; $674c: $02
	ld   e, $1a                                      ; $674d: $1e $1a
	add  b                                           ; $674f: $80
	ld   e, $04                                      ; $6750: $1e $04
	ld   l, [hl]                                     ; $6752: $6e
	ld   h, h                                        ; $6753: $64
	ld   l, l                                        ; $6754: $6d
	ld   c, c                                        ; $6755: $49
	dec  hl                                          ; $6756: $2b
	add  b                                           ; $6757: $80
	inc  bc                                          ; $6758: $03
	rlca                                             ; $6759: $07
	ld   a, [de]                                     ; $675a: $1a
	ld   a, c                                        ; $675b: $79
	ld   c, h                                        ; $675c: $4c
	ld   l, h                                        ; $675d: $6c
	ld   c, h                                        ; $675e: $4c
	inc  c                                           ; $675f: $0c
	ld   [bc], a                                     ; $6760: $02
	ldh  a, [c]                                      ; $6761: $f2
	add  c                                           ; $6762: $81
	ld   a, [$7a18]                                  ; $6763: $fa $18 $7a
	ld   hl, sp-$48                                  ; $6766: $f8 $b8
	xor  b                                           ; $6768: $a8
	cp   b                                           ; $6769: $b8
	sbc  b                                           ; $676a: $98
	cp   b                                           ; $676b: $b8
	ld   h, b                                        ; $676c: $60
	ld   h, e                                        ; $676d: $63
	call $e60e                                       ; $676e: $cd $0e $e6
	ld   b, $91                                      ; $6771: $06 $91
	ld   bc, $0109                                   ; $6773: $01 $09 $01
	add  $00                                         ; $6776: $c6 $00
	ld   c, [hl]                                     ; $6778: $4e
	nop                                              ; $6779: $00
	inc  a                                           ; $677a: $3c
	nop                                              ; $677b: $00
	inc  c                                           ; $677c: $0c
	pop  hl                                          ; $677d: $e1
	sub  l                                           ; $677e: $95
	ld   [bc], a                                     ; $677f: $02
	add  a                                           ; $6780: $87
	nop                                              ; $6781: $00
	add  c                                           ; $6782: $81
	rrca                                             ; $6783: $0f
	add  b                                           ; $6784: $80
	ld   [bc], a                                     ; $6785: $02
	add  b                                           ; $6786: $80
	rlca                                             ; $6787: $07
	nop                                              ; $6788: $00
	rrca                                             ; $6789: $0f
	add  l                                           ; $678a: $85
	nop                                              ; $678b: $00
	nop                                              ; $678c: $00
	add  b                                           ; $678d: $80
	add  c                                           ; $678e: $81
	ld   a, a                                        ; $678f: $7f
	add  b                                           ; $6790: $80
	ld   h, $80                                      ; $6791: $26 $80
	rst  $30                                         ; $6793: $f7
	nop                                              ; $6794: $00
	rst  $38                                         ; $6795: $ff
	add  l                                           ; $6796: $85
	nop                                              ; $6797: $00
	nop                                              ; $6798: $00
	add  b                                           ; $6799: $80
	add  c                                           ; $679a: $81
	ld   a, a                                        ; $679b: $7f
	add  b                                           ; $679c: $80
	ld   a, $80                                      ; $679d: $3e $80
	rst  $30                                         ; $679f: $f7
	nop                                              ; $67a0: $00
	rst  $38                                         ; $67a1: $ff
	add  l                                           ; $67a2: $85
	nop                                              ; $67a3: $00
	nop                                              ; $67a4: $00
	add  b                                           ; $67a5: $80
	add  c                                           ; $67a6: $81
	ld   a, a                                        ; $67a7: $7f
	add  b                                           ; $67a8: $80
	ld   [bc], a                                     ; $67a9: $02
	add  b                                           ; $67aa: $80
	rst  $30                                         ; $67ab: $f7
	nop                                              ; $67ac: $00
	rst  $38                                         ; $67ad: $ff
	add  l                                           ; $67ae: $85
	nop                                              ; $67af: $00
	nop                                              ; $67b0: $00
	add  b                                           ; $67b1: $80
	add  c                                           ; $67b2: $81
	ld   a, a                                        ; $67b3: $7f
	add  b                                           ; $67b4: $80
	ld   [hl+], a                                    ; $67b5: $22
	add  b                                           ; $67b6: $80
	rst  $30                                         ; $67b7: $f7
	db   $10                                         ; $67b8: $10
	ld   a, a                                        ; $67b9: $7f
	rst  $38                                         ; $67ba: $ff
	ld   a, a                                        ; $67bb: $7f
	cp   a                                           ; $67bc: $bf
	ld   a, a                                        ; $67bd: $7f
	rst  $38                                         ; $67be: $ff
	ld   a, a                                        ; $67bf: $7f
	cp   a                                           ; $67c0: $bf
	ld   a, a                                        ; $67c1: $7f
	ccf                                              ; $67c2: $3f
	cp   a                                           ; $67c3: $bf
	ccf                                              ; $67c4: $3f
	and  a                                           ; $67c5: $a7
	rlca                                             ; $67c6: $07
	rst  $28                                         ; $67c7: $ef
	rrca                                             ; $67c8: $0f
	ld   a, a                                        ; $67c9: $7f
	add  l                                           ; $67ca: $85
	nop                                              ; $67cb: $00
	nop                                              ; $67cc: $00
	add  b                                           ; $67cd: $80
	add  c                                           ; $67ce: $81
	ld   a, a                                        ; $67cf: $7f
	add  b                                           ; $67d0: $80
	ld   [bc], a                                     ; $67d1: $02
	add  b                                           ; $67d2: $80
	rst  $30                                         ; $67d3: $f7
	inc  bc                                          ; $67d4: $03
	ld   h, $27                                      ; $67d5: $26 $27
	ld   h, d                                        ; $67d7: $62
	ld   h, e                                        ; $67d8: $63
	add  b                                           ; $67d9: $80
	dec  h                                           ; $67da: $25
	add  b                                           ; $67db: $80
	ld   h, d                                        ; $67dc: $62
	add  b                                           ; $67dd: $80
	nop                                              ; $67de: $00
	rlca                                             ; $67df: $07
	rst  $38                                         ; $67e0: $ff
	rra                                              ; $67e1: $1f
	add  b                                           ; $67e2: $80
	nop                                              ; $67e3: $00
	ld   h, c                                        ; $67e4: $61
	nop                                              ; $67e5: $00
	ld   a, $3f                                      ; $67e6: $3e $3f
	add  b                                           ; $67e8: $80
	rst  JumpTable                                         ; $67e9: $df
	add  b                                           ; $67ea: $80
	rst  $28                                         ; $67eb: $ef
	add  b                                           ; $67ec: $80
	ld   [hl], a                                     ; $67ed: $77
	add  b                                           ; $67ee: $80
	ld   a, e                                        ; $67ef: $7b
	add  b                                           ; $67f0: $80
	dec  a                                           ; $67f1: $3d
	inc  b                                           ; $67f2: $04
	sbc  [hl]                                        ; $67f3: $9e
	sbc  h                                           ; $67f4: $9c
	ld   c, $0c                                      ; $67f5: $0e $0c
	rst  $38                                         ; $67f7: $ff
	add  l                                           ; $67f8: $85
	nop                                              ; $67f9: $00
	nop                                              ; $67fa: $00
	add  b                                           ; $67fb: $80
	add  c                                           ; $67fc: $81
	ld   a, a                                        ; $67fd: $7f
	add  b                                           ; $67fe: $80
	ld   [hl-], a                                    ; $67ff: $32
	add  b                                           ; $6800: $80
	rst  $30                                         ; $6801: $f7
	nop                                              ; $6802: $00
	rst  $38                                         ; $6803: $ff
	add  l                                           ; $6804: $85
	nop                                              ; $6805: $00

jr_076_6806:
	nop                                              ; $6806: $00
	add  b                                           ; $6807: $80
	add  c                                           ; $6808: $81
	ld   a, a                                        ; $6809: $7f

jr_076_680a:
	add  b                                           ; $680a: $80
	ld   [bc], a                                     ; $680b: $02
	add  b                                           ; $680c: $80
	rst  $30                                         ; $680d: $f7
	nop                                              ; $680e: $00
	rst  $38                                         ; $680f: $ff
	add  l                                           ; $6810: $85
	nop                                              ; $6811: $00
	nop                                              ; $6812: $00
	sbc  h                                           ; $6813: $9c
	add  c                                           ; $6814: $81
	ld   h, b                                        ; $6815: $60
	add  b                                           ; $6816: $80
	nop                                              ; $6817: $00
	ld   [bc], a                                     ; $6818: $02
	ldh  [c], a                                      ; $6819: $e2
	and  $f8                                         ; $681a: $e6 $f8
	add  [hl]                                        ; $681c: $86
	nop                                              ; $681d: $00
	ld   [bc], a                                     ; $681e: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $681f: $cf
	ld   c, b                                        ; $6820: $48
	nop                                              ; $6821: $00
	add  b                                           ; $6822: $80
	add  a                                           ; $6823: $87
	add  b                                           ; $6824: $80
	nop                                              ; $6825: $00
	nop                                              ; $6826: $00
	add  a                                           ; $6827: $87
	add  l                                           ; $6828: $85
	nop                                              ; $6829: $00
	ld   bc, $f807                                   ; $682a: $01 $07 $f8
	add  b                                           ; $682d: $80
	nop                                              ; $682e: $00
	add  b                                           ; $682f: $80
	ld   hl, sp-$80                                  ; $6830: $f8 $80
	nop                                              ; $6832: $00
	nop                                              ; $6833: $00
	rst  $38                                         ; $6834: $ff
	add  l                                           ; $6835: $85
	nop                                              ; $6836: $00
	nop                                              ; $6837: $00
	db   $fc                                         ; $6838: $fc
	add  c                                           ; $6839: $81
	inc  bc                                          ; $683a: $03
	add  b                                           ; $683b: $80
	nop                                              ; $683c: $00
	add  b                                           ; $683d: $80
	ld   bc, $ff00                                   ; $683e: $01 $00 $ff
	add  l                                           ; $6841: $85

jr_076_6842:
	nop                                              ; $6842: $00
	inc  b                                           ; $6843: $04
	add  hl, de                                      ; $6844: $19
	ldh  [$87], a                                    ; $6845: $e0 $87
	add  c                                           ; $6847: $81

jr_076_6848:
	ld   h, a                                        ; $6848: $67
	add  c                                           ; $6849: $81
	ld   h, c                                        ; $684a: $61
	ld   bc, $07f1                                   ; $684b: $01 $f1 $07
	add  b                                           ; $684e: $80
	ld   [bc], a                                     ; $684f: $02
	add  d                                           ; $6850: $82
	rrca                                             ; $6851: $0f
	add  b                                           ; $6852: $80
	ld   c, $82                                      ; $6853: $0e $82
	rlca                                             ; $6855: $07
	add  b                                           ; $6856: $80
	ld   bc, $0701                                   ; $6857: $01 $01 $07
	rst  $30                                         ; $685a: $f7
	add  b                                           ; $685b: $80
	ld   [hl+], a                                    ; $685c: $22
	add  d                                           ; $685d: $82
	ld   a, a                                        ; $685e: $7f
	add  b                                           ; $685f: $80
	inc  a                                           ; $6860: $3c
	add  b                                           ; $6861: $80
	rst  $38                                         ; $6862: $ff
	add  b                                           ; $6863: $80
	rst  $30                                         ; $6864: $f7
	add  b                                           ; $6865: $80
	ldh  [c], a                                      ; $6866: $e2
	add  b                                           ; $6867: $80
	rst  $30                                         ; $6868: $f7
	add  b                                           ; $6869: $80
	ld   [hl+], a                                    ; $686a: $22
	add  d                                           ; $686b: $82
	ld   a, a                                        ; $686c: $7f
	add  b                                           ; $686d: $80
	ld   a, $82                                      ; $686e: $3e $82
	rst  $30                                         ; $6870: $f7
	add  b                                           ; $6871: $80
	inc  hl                                          ; $6872: $23
	add  b                                           ; $6873: $80
	rst  $30                                         ; $6874: $f7
	add  b                                           ; $6875: $80
	ld   a, $82                                      ; $6876: $3e $82
	ld   a, a                                        ; $6878: $7f
	add  b                                           ; $6879: $80
	ld   [hl+], a                                    ; $687a: $22
	add  d                                           ; $687b: $82
	rst  $30                                         ; $687c: $f7
	add  b                                           ; $687d: $80
	db   $e3                                         ; $687e: $e3
	add  b                                           ; $687f: $80
	rst  $30                                         ; $6880: $f7
	add  b                                           ; $6881: $80
	jr   nz, jr_076_6806                             ; $6882: $20 $82

	ld   a, a                                        ; $6884: $7f
	add  b                                           ; $6885: $80
	jr   nz, jr_076_680a                             ; $6886: $20 $82

	rst  $30                                         ; $6888: $f7
	add  b                                           ; $6889: $80
	ldh  [c], a                                      ; $688a: $e2
	add  b                                           ; $688b: $80
	rst  $30                                         ; $688c: $f7
	add  b                                           ; $688d: $80
	ld   [hl+], a                                    ; $688e: $22
	add  d                                           ; $688f: $82
	ld   a, a                                        ; $6890: $7f
	add  b                                           ; $6891: $80
	ld   a, $82                                      ; $6892: $3e $82
	rst  $30                                         ; $6894: $f7
	add  b                                           ; $6895: $80
	ld   [hl+], a                                    ; $6896: $22
	add  b                                           ; $6897: $80
	rst  $30                                         ; $6898: $f7
	add  b                                           ; $6899: $80
	ld   [hl+], a                                    ; $689a: $22
	add  d                                           ; $689b: $82
	ld   a, a                                        ; $689c: $7f
	add  b                                           ; $689d: $80
	inc  hl                                          ; $689e: $23
	add  d                                           ; $689f: $82
	rst  $30                                         ; $68a0: $f7
	add  b                                           ; $68a1: $80
	ld   [bc], a                                     ; $68a2: $02
	add  b                                           ; $68a3: $80
	rst  $30                                         ; $68a4: $f7
	add  b                                           ; $68a5: $80
	ld   [hl+], a                                    ; $68a6: $22
	add  d                                           ; $68a7: $82
	ld   a, a                                        ; $68a8: $7f
	add  b                                           ; $68a9: $80
	ldh  [c], a                                      ; $68aa: $e2
	add  d                                           ; $68ab: $82
	rst  $30                                         ; $68ac: $f7
	add  b                                           ; $68ad: $80
	ld   [hl+], a                                    ; $68ae: $22
	add  b                                           ; $68af: $80
	rst  $30                                         ; $68b0: $f7
	add  b                                           ; $68b1: $80
	ld   hl, $7f82                                   ; $68b2: $21 $82 $7f
	add  b                                           ; $68b5: $80
	ld   [hl+], a                                    ; $68b6: $22
	add  d                                           ; $68b7: $82
	rst  $30                                         ; $68b8: $f7
	add  b                                           ; $68b9: $80
	ld   [hl+], a                                    ; $68ba: $22
	add  b                                           ; $68bb: $80
	rst  $30                                         ; $68bc: $f7
	add  b                                           ; $68bd: $80
	jr   nz, jr_076_6842                             ; $68be: $20 $82

	ld   a, a                                        ; $68c0: $7f
	add  b                                           ; $68c1: $80
	ld   [hl+], a                                    ; $68c2: $22
	add  d                                           ; $68c3: $82
	rst  $30                                         ; $68c4: $f7
	add  b                                           ; $68c5: $80
	jr   nz, jr_076_6848                             ; $68c6: $20 $80

	rst  $30                                         ; $68c8: $f7
	add  b                                           ; $68c9: $80
	inc  h                                           ; $68ca: $24
	add  d                                           ; $68cb: $82
	ld   a, a                                        ; $68cc: $7f
	add  b                                           ; $68cd: $80
	ld   b, b                                        ; $68ce: $40
	rlca                                             ; $68cf: $07
	rst  $30                                         ; $68d0: $f7
	or   $ff                                         ; $68d1: $f6 $ff
	ldh  a, [$7e]                                    ; $68d3: $f0 $7e
	nop                                              ; $68d5: $00
	sub  b                                           ; $68d6: $90
	rst  $28                                         ; $68d7: $ef
	add  b                                           ; $68d8: $80
	rrca                                             ; $68d9: $0f
	db   $10                                         ; $68da: $10
	ld   l, h                                        ; $68db: $6c
	ld   h, b                                        ; $68dc: $60
	ld   l, a                                        ; $68dd: $6f
	ld   h, b                                        ; $68de: $60
	ld   a, h                                        ; $68df: $7c
	nop                                              ; $68e0: $00
	ld   hl, sp+$4f                                  ; $68e1: $f8 $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68e3: $cf
	rrca                                             ; $68e4: $0f
	ld   [hl], a                                     ; $68e5: $77
	rst  $20                                         ; $68e6: $e7
	sub  b                                           ; $68e7: $90
	rlca                                             ; $68e8: $07
	ld   a, a                                        ; $68e9: $7f
	inc  b                                           ; $68ea: $04
	ld   a, e                                        ; $68eb: $7b
	add  c                                           ; $68ec: $81
	nop                                              ; $68ed: $00
	ld   bc, $87ff                                   ; $68ee: $01 $ff $87
	add  b                                           ; $68f1: $80
	nop                                              ; $68f2: $00
	add  b                                           ; $68f3: $80
	add  a                                           ; $68f4: $87
	add  b                                           ; $68f5: $80
	nop                                              ; $68f6: $00
	inc  b                                           ; $68f7: $04
	add  h                                           ; $68f8: $84
	db   $fc                                         ; $68f9: $fc
	rst  $38                                         ; $68fa: $ff
	nop                                              ; $68fb: $00
	rst  $38                                         ; $68fc: $ff
	add  c                                           ; $68fd: $81
	nop                                              ; $68fe: $00
	add  b                                           ; $68ff: $80
	and  $01                                         ; $6900: $e6 $01
	stop                                             ; $6902: $10 $00
	add  b                                           ; $6904: $80
	rst  $20                                         ; $6905: $e7
	add  b                                           ; $6906: $80
	nop                                              ; $6907: $00
	inc  b                                           ; $6908: $04
	ld   de, $ff01                                   ; $6909: $11 $01 $ff
	ld   a, a                                        ; $690c: $7f
	add  b                                           ; $690d: $80
	add  c                                           ; $690e: $81
	nop                                              ; $690f: $00
	add  [hl]                                        ; $6910: $86
	jr   nz, @+$05                                   ; $6911: $20 $03

	rlca                                             ; $6913: $07
	ld   bc, $fcfa                                   ; $6914: $01 $fa $fc
	add  b                                           ; $6917: $80
	nop                                              ; $6918: $00
	add  b                                           ; $6919: $80
	ret  c                                           ; $691a: $d8

	add  b                                           ; $691b: $80
	add  $80                                         ; $691c: $c6 $80
	sbc  $80                                         ; $691e: $de $80
	ld   e, h                                        ; $6920: $5c
	add  b                                           ; $6921: $80
	ld   b, e                                        ; $6922: $43
	nop                                              ; $6923: $00
	rst  $38                                         ; $6924: $ff
	add  e                                           ; $6925: $83
	rrca                                             ; $6926: $0f
	add  d                                           ; $6927: $82
	rlca                                             ; $6928: $07
	add  h                                           ; $6929: $84
	rrca                                             ; $692a: $0f
	nop                                              ; $692b: $00
	adc  a                                           ; $692c: $8f
	add  c                                           ; $692d: $81
	ld   a, a                                        ; $692e: $7f
	add  b                                           ; $692f: $80
	inc  hl                                          ; $6930: $23
	add  d                                           ; $6931: $82
	rst  $30                                         ; $6932: $f7
	add  b                                           ; $6933: $80
	ldh  [c], a                                      ; $6934: $e2
	add  d                                           ; $6935: $82
	rst  $38                                         ; $6936: $ff
	add  d                                           ; $6937: $82
	ld   a, a                                        ; $6938: $7f
	add  b                                           ; $6939: $80
	cp   $82                                         ; $693a: $fe $82
	rst  $30                                         ; $693c: $f7
	add  b                                           ; $693d: $80
	ld   [hl+], a                                    ; $693e: $22
	add  b                                           ; $693f: $80
	ld   a, a                                        ; $6940: $7f
	add  b                                           ; $6941: $80
	rst  $38                                         ; $6942: $ff
	add  d                                           ; $6943: $82
	ld   a, a                                        ; $6944: $7f
	add  b                                           ; $6945: $80
	ld   [hl+], a                                    ; $6946: $22
	add  b                                           ; $6947: $80
	rst  $30                                         ; $6948: $f7
	add  b                                           ; $6949: $80
	rst  $38                                         ; $694a: $ff
	add  b                                           ; $694b: $80
	ld   a, [hl]                                     ; $694c: $7e
	add  [hl]                                        ; $694d: $86
	ld   a, a                                        ; $694e: $7f
	add  b                                           ; $694f: $80

jr_076_6950:
	inc  hl                                          ; $6950: $23
	add  d                                           ; $6951: $82
	rst  $30                                         ; $6952: $f7
	add  b                                           ; $6953: $80
	ld   a, $86                                      ; $6954: $3e $86
	ld   a, a                                        ; $6956: $7f
	add  b                                           ; $6957: $80
	ld   [bc], a                                     ; $6958: $02
	add  d                                           ; $6959: $82
	rst  $30                                         ; $695a: $f7
	add  b                                           ; $695b: $80
	ld   a, $86                                      ; $695c: $3e $86
	ld   a, a                                        ; $695e: $7f
	add  b                                           ; $695f: $80
	ld   [hl+], a                                    ; $6960: $22
	add  d                                           ; $6961: $82
	rst  $30                                         ; $6962: $f7
	add  b                                           ; $6963: $80
	ld   [hl+], a                                    ; $6964: $22
	add  [hl]                                        ; $6965: $86
	ld   a, a                                        ; $6966: $7f
	add  b                                           ; $6967: $80
	ld   [hl+], a                                    ; $6968: $22
	add  d                                           ; $6969: $82
	rst  $30                                         ; $696a: $f7
	add  b                                           ; $696b: $80
	ld   [hl+], a                                    ; $696c: $22
	inc  b                                           ; $696d: $04
	ld   a, a                                        ; $696e: $7f
	ld   a, [hl]                                     ; $696f: $7e
	ld   a, a                                        ; $6970: $7f
	ld   [hl], b                                     ; $6971: $70
	ld   [hl], c                                     ; $6972: $71
	add  c                                           ; $6973: $81
	ld   a, a                                        ; $6974: $7f
	add  b                                           ; $6975: $80
	jr   nz, jr_076_698d                             ; $6976: $20 $15

	rst  $30                                         ; $6978: $f7
	or   $ff                                         ; $6979: $f6 $ff
	ldh  a, [$7e]                                    ; $697b: $f0 $7e
	nop                                              ; $697d: $00
	db   $fd                                         ; $697e: $fd
	ld   c, l                                        ; $697f: $4d
	rst  $28                                         ; $6980: $ef
	dec  a                                           ; $6981: $3d
	ld   l, l                                        ; $6982: $6d
	ld   a, [hl]                                     ; $6983: $7e
	ld   a, a                                        ; $6984: $7f
	ld   [hl], b                                     ; $6985: $70
	ld   a, [hl]                                     ; $6986: $7e
	nop                                              ; $6987: $00
	di                                               ; $6988: $f3
	ld   b, e                                        ; $6989: $43
	rst  $30                                         ; $698a: $f7
	inc  sp                                          ; $698b: $33
	nop                                              ; $698c: $00

jr_076_698d:
	ld   b, b                                        ; $698d: $40
	add  d                                           ; $698e: $82
	ld   a, e                                        ; $698f: $7b
	dec  b                                           ; $6990: $05
	jp   $ff47                                       ; $6991: $c3 $47 $ff


	scf                                              ; $6994: $37
	nop                                              ; $6995: $00
	add  b                                           ; $6996: $80
	add  d                                           ; $6997: $82
	rst  $30                                         ; $6998: $f7
	add  b                                           ; $6999: $80
	add  b                                           ; $699a: $80
	add  d                                           ; $699b: $82
	rst  $30                                         ; $699c: $f7
	nop                                              ; $699d: $00
	ldh  a, [$81]                                    ; $699e: $f0 $81
	rst  $28                                         ; $69a0: $ef
	add  b                                           ; $69a1: $80
	and  a                                           ; $69a2: $a7
	add  d                                           ; $69a3: $82
	rst  $28                                         ; $69a4: $ef
	add  b                                           ; $69a5: $80
	and  a                                           ; $69a6: $a7
	add  b                                           ; $69a7: $80
	rst  $28                                         ; $69a8: $ef
	add  b                                           ; $69a9: $80
	xor  $01                                         ; $69aa: $ee $01
	ld   l, b                                        ; $69ac: $68
	add  a                                           ; $69ad: $87
	add  b                                           ; $69ae: $80
	nop                                              ; $69af: $00
	add  b                                           ; $69b0: $80
	add  a                                           ; $69b1: $87
	add  b                                           ; $69b2: $80
	nop                                              ; $69b3: $00
	add  b                                           ; $69b4: $80
	add  a                                           ; $69b5: $87
	add  b                                           ; $69b6: $80
	nop                                              ; $69b7: $00
	add  c                                           ; $69b8: $81
	add  a                                           ; $69b9: $87
	ld   [bc], a                                     ; $69ba: $02
	nop                                              ; $69bb: $00
	ld   [$80e7], sp                                 ; $69bc: $08 $e7 $80
	nop                                              ; $69bf: $00
	add  b                                           ; $69c0: $80
	rst  $20                                         ; $69c1: $e7
	add  b                                           ; $69c2: $80
	nop                                              ; $69c3: $00
	add  b                                           ; $69c4: $80
	rst  $20                                         ; $69c5: $e7
	add  b                                           ; $69c6: $80
	nop                                              ; $69c7: $00
	add  c                                           ; $69c8: $81
	rst  $20                                         ; $69c9: $e7
	ld   bc, $d700                                   ; $69ca: $01 $00 $d7
	adc  e                                           ; $69cd: $8b
	jr   nz, jr_076_6950                             ; $69ce: $20 $80

	rst  $38                                         ; $69d0: $ff
	add  b                                           ; $69d1: $80
	ld   d, a                                        ; $69d2: $57
	add  b                                           ; $69d3: $80
	ld   d, h                                        ; $69d4: $54
	add  b                                           ; $69d5: $80
	ld   b, d                                        ; $69d6: $42
	add  b                                           ; $69d7: $80
	ld   e, [hl]                                     ; $69d8: $5e
	add  b                                           ; $69d9: $80
	ld   e, h                                        ; $69da: $5c
	add  b                                           ; $69db: $80
	ld   b, e                                        ; $69dc: $43
	add  b                                           ; $69dd: $80
	ld   d, a                                        ; $69de: $57
	add  c                                           ; $69df: $81
	rst  $38                                         ; $69e0: $ff
	adc  c                                           ; $69e1: $89
	rrca                                             ; $69e2: $0f
	add  d                                           ; $69e3: $82
	nop                                              ; $69e4: $00
	ld   bc, $ff0f                                   ; $69e5: $01 $0f $ff
	add  d                                           ; $69e8: $82
	rst  $30                                         ; $69e9: $f7
	add  b                                           ; $69ea: $80
	db   $e3                                         ; $69eb: $e3
	add  d                                           ; $69ec: $82
	rst  $38                                         ; $69ed: $ff
	add  b                                           ; $69ee: $80
	ret  nz                                          ; $69ef: $c0

	inc  bc                                          ; $69f0: $03
	and  b                                           ; $69f1: $a0
	ldh  [hScriptOpcodeParams+2], a                                    ; $69f2: $e0 $a2
	ldh  [c], a                                      ; $69f4: $e2
	add  d                                           ; $69f5: $82
	rst  $30                                         ; $69f6: $f7
	add  h                                           ; $69f7: $84
	rst  $38                                         ; $69f8: $ff
	add  b                                           ; $69f9: $80
	ret  nz                                          ; $69fa: $c0

	inc  bc                                          ; $69fb: $03
	and  b                                           ; $69fc: $a0
	ldh  [$63], a                                    ; $69fd: $e0 $63
	inc  hl                                          ; $69ff: $23
	add  d                                           ; $6a00: $82
	rst  $30                                         ; $6a01: $f7
	add  b                                           ; $6a02: $80
	ret  nz                                          ; $6a03: $c0

	add  d                                           ; $6a04: $82
	rst  $38                                         ; $6a05: $ff
	add  b                                           ; $6a06: $80
	ret  nz                                          ; $6a07: $c0

	inc  bc                                          ; $6a08: $03
	sbc  h                                           ; $6a09: $9c
	db   $fc                                         ; $6a0a: $fc
	add  d                                           ; $6a0b: $82
	ldh  [c], a                                      ; $6a0c: $e2
	add  b                                           ; $6a0d: $80
	rst  $30                                         ; $6a0e: $f7
	inc  bc                                          ; $6a0f: $03
	or   $f7                                         ; $6a10: $f6 $f7
	nop                                              ; $6a12: $00
	ld   [bc], a                                     ; $6a13: $02
	add  b                                           ; $6a14: $80
	cp   $80                                         ; $6a15: $fe $80
	rst  $38                                         ; $6a17: $ff
	add  hl, hl                                      ; $6a18: $29
	jp   $a3c0                                       ; $6a19: $c3 $c0 $a3


	ldh  [$63], a                                    ; $6a1c: $e0 $63
	jr   nz, @-$08                                   ; $6a1e: $20 $f6

	rst  $30                                         ; $6a20: $f7
	push af                                          ; $6a21: $f5
	ld   [hl], a                                     ; $6a22: $77
	ld   b, b                                        ; $6a23: $40
	inc  bc                                          ; $6a24: $03
	dec  a                                           ; $6a25: $3d
	ld   a, $fd                                      ; $6a26: $3e $fd
	ldh  a, [$be]                                    ; $6a28: $f0 $be
	ld   c, c                                        ; $6a2a: $49
	ld   sp, hl                                      ; $6a2b: $f9
	inc  bc                                          ; $6a2c: $03
	jp   Jump_076_7b00                               ; $6a2d: $c3 $00 $7b


	ld   a, [$f0bf]                                  ; $6a30: $fa $bf $f0
	ld   a, $80                                      ; $6a33: $3e $80
	rst  $38                                         ; $6a35: $ff
	ld   c, a                                        ; $6a36: $4f
	rst  $28                                         ; $6a37: $ef
	ccf                                              ; $6a38: $3f
	ld   [de], a                                     ; $6a39: $12
	sub  e                                           ; $6a3a: $93
	db   $d3                                         ; $6a3b: $d3
	sub  e                                           ; $6a3c: $93
	and  c                                           ; $6a3d: $a1
	nop                                              ; $6a3e: $00
	or   $46                                         ; $6a3f: $f6 $46
	rst  $20                                         ; $6a41: $e7
	ld   [hl], $80                                   ; $6a42: $36 $80
	stop                                             ; $6a44: $10 $00
	cp   $81                                         ; $6a46: $fe $81
	ld   a, [hl]                                     ; $6a48: $7e
	add  d                                           ; $6a49: $82
	ld   [de], a                                     ; $6a4a: $12
	ld   bc, $1093                                   ; $6a4b: $01 $93 $10
	add  d                                           ; $6a4e: $82
	push af                                          ; $6a4f: $f5
	add  b                                           ; $6a50: $80
	db   $10                                         ; $6a51: $10
	add  d                                           ; $6a52: $82
	db   $fd                                         ; $6a53: $fd
	add  b                                           ; $6a54: $80
	ld   de, $f180                                   ; $6a55: $11 $80 $f1
	ld   bc, $4016                                   ; $6a58: $01 $16 $40
	add  d                                           ; $6a5b: $82
	di                                               ; $6a5c: $f3
	add  b                                           ; $6a5d: $80
	ld   b, b                                        ; $6a5e: $40
	add  d                                           ; $6a5f: $82
	ei                                               ; $6a60: $fb
	dec  b                                           ; $6a61: $05
	jp   $d8c0                                       ; $6a62: $c3 $c0 $d8


	jp   $8054                                       ; $6a65: $c3 $54 $80


	add  d                                           ; $6a68: $82
	rst  $30                                         ; $6a69: $f7
	inc  b                                           ; $6a6a: $04
	sub  a                                           ; $6a6b: $97
	sub  b                                           ; $6a6c: $90
	ldh  a, [$e7]                                    ; $6a6d: $f0 $e7
	ld   h, a                                        ; $6a6f: $67
	add  b                                           ; $6a70: $80
	jr   @-$7e                                       ; $6a71: $18 $80

	rst  $20                                         ; $6a73: $e7
	dec  b                                           ; $6a74: $05
	inc  e                                           ; $6a75: $1c
	db   $f4                                         ; $6a76: $f4
	add  c                                           ; $6a77: $81
	jp   hl                                          ; $6a78: $e9


	add  $46                                         ; $6a79: $c6 $46
	add  b                                           ; $6a7b: $80

jr_076_6a7c:
	add  hl, sp                                      ; $6a7c: $39
	add  b                                           ; $6a7d: $80
	rst  ToBoot                                         ; $6a7e: $c7
	add  b                                           ; $6a7f: $80
	inc  a                                           ; $6a80: $3c
	add  b                                           ; $6a81: $80
	ldh  [$03], a                                    ; $6a82: $e0 $03
	add  e                                           ; $6a84: $83
	add  b                                           ; $6a85: $80
	rra                                              ; $6a86: $1f
	inc  e                                           ; $6a87: $1c
	add  b                                           ; $6a88: $80
	rst  $38                                         ; $6a89: $ff
	add  b                                           ; $6a8a: $80
	nop                                              ; $6a8b: $00
	add  b                                           ; $6a8c: $80
	rst  $38                                         ; $6a8d: $ff
	add  d                                           ; $6a8e: $82
	nop                                              ; $6a8f: $00
	dec  bc                                          ; $6a90: $0b
	rst  $38                                         ; $6a91: $ff
	add  a                                           ; $6a92: $87
	rst  $38                                         ; $6a93: $ff
	set  7, a                                        ; $6a94: $cb $ff
	or   b                                           ; $6a96: $b0
	db   $fc                                         ; $6a97: $fc
	rst  $38                                         ; $6a98: $ff
	rlca                                             ; $6a99: $07
	jr   jr_076_6a7c                                 ; $6a9a: $18 $e0

	rst  $38                                         ; $6a9c: $ff
	add  b                                           ; $6a9d: $80
	rrca                                             ; $6a9e: $0f
	ld   [bc], a                                     ; $6a9f: $02
	ccf                                              ; $6aa0: $3f
	ld   b, b                                        ; $6aa1: $40
	add  b                                           ; $6aa2: $80
	add  b                                           ; $6aa3: $80
	call z, $9b80                                    ; $6aa4: $cc $80 $9b
	add  b                                           ; $6aa7: $80
	nop                                              ; $6aa8: $00
	add  b                                           ; $6aa9: $80
	rst  $38                                         ; $6aaa: $ff
	add  b                                           ; $6aab: $80
	nop                                              ; $6aac: $00
	add  d                                           ; $6aad: $82
	rst  $38                                         ; $6aae: $ff
	add  b                                           ; $6aaf: $80
	nop                                              ; $6ab0: $00
	add  b                                           ; $6ab1: $80
	ld   l, b                                        ; $6ab2: $68

jr_076_6ab3:
	add  b                                           ; $6ab3: $80
	xor  e                                           ; $6ab4: $ab
	add  b                                           ; $6ab5: $80
	nop                                              ; $6ab6: $00
	add  b                                           ; $6ab7: $80
	rst  $38                                         ; $6ab8: $ff
	add  b                                           ; $6ab9: $80
	nop                                              ; $6aba: $00
	add  d                                           ; $6abb: $82
	rst  $38                                         ; $6abc: $ff
	add  b                                           ; $6abd: $80
	ld   bc, $d180                                   ; $6abe: $01 $80 $d1
	add  b                                           ; $6ac1: $80
	ld   bc, $fc00                                   ; $6ac2: $01 $00 $fc
	add  e                                           ; $6ac5: $83
	inc  c                                           ; $6ac6: $0c
	nop                                              ; $6ac7: $00
	nop                                              ; $6ac8: $00
	add  b                                           ; $6ac9: $80
	inc  c                                           ; $6aca: $0c
	ld   [bc], a                                     ; $6acb: $02
	ld   c, $01                                      ; $6acc: $0e $01
	rrca                                             ; $6ace: $0f
	add  b                                           ; $6acf: $80
	nop                                              ; $6ad0: $00
	add  b                                           ; $6ad1: $80
	rrca                                             ; $6ad2: $0f
	nop                                              ; $6ad3: $00
	ld   l, h                                        ; $6ad4: $6c
	add  e                                           ; $6ad5: $83
	db   $fc                                         ; $6ad6: $fc
	nop                                              ; $6ad7: $00
	ldh  [$80], a                                    ; $6ad8: $e0 $80
	db   $fc                                         ; $6ada: $fc
	ld   [bc], a                                     ; $6adb: $02
	cp   $81                                         ; $6adc: $fe $81
	rst  $38                                         ; $6ade: $ff
	add  b                                           ; $6adf: $80
	nop                                              ; $6ae0: $00
	add  c                                           ; $6ae1: $81
	rst  $38                                         ; $6ae2: $ff
	add  e                                           ; $6ae3: $83
	rrca                                             ; $6ae4: $0f
	add  d                                           ; $6ae5: $82
	rlca                                             ; $6ae6: $07
	add  h                                           ; $6ae7: $84

jr_076_6ae8:
	ld   c, $00                                      ; $6ae8: $0e $00
	adc  a                                           ; $6aea: $8f
	add  c                                           ; $6aeb: $81
	ld   a, a                                        ; $6aec: $7f
	add  b                                           ; $6aed: $80
	di                                               ; $6aee: $f3
	add  b                                           ; $6aef: $80
	rst  $38                                         ; $6af0: $ff
	ld   [$af97], sp                                 ; $6af1: $08 $97 $af
	jp   nz, $fff2                                   ; $6af4: $c2 $f2 $ff

	ei                                               ; $6af7: $fb
	inc  bc                                          ; $6af8: $03
	scf                                              ; $6af9: $37
	and  h                                           ; $6afa: $a4
	add  b                                           ; $6afb: $80
	rst  $38                                         ; $6afc: $ff
	inc  bc                                          ; $6afd: $03
	db   $fc                                         ; $6afe: $fc
	rst  $38                                         ; $6aff: $ff
	db   $fc                                         ; $6b00: $fc
	ldh  [$81], a                                    ; $6b01: $e0 $81
	db   $fc                                         ; $6b03: $fc
	ld   bc, $fc80                                   ; $6b04: $01 $80 $fc
	add  b                                           ; $6b07: $80
	nop                                              ; $6b08: $00
	add  b                                           ; $6b09: $80
	db   $fc                                         ; $6b0a: $fc
	nop                                              ; $6b0b: $00
	dec  sp                                          ; $6b0c: $3b
	add  b                                           ; $6b0d: $80
	ei                                               ; $6b0e: $fb
	inc  bc                                          ; $6b0f: $03
	dec  sp                                          ; $6b10: $3b
	ei                                               ; $6b11: $fb
	dec  sp                                          ; $6b12: $3b
	inc  bc                                          ; $6b13: $03
	add  b                                           ; $6b14: $80
	dec  sp                                          ; $6b15: $3b
	ld   [bc], a                                     ; $6b16: $02
	ccf                                              ; $6b17: $3f
	inc  bc                                          ; $6b18: $03
	ccf                                              ; $6b19: $3f
	add  b                                           ; $6b1a: $80
	inc  bc                                          ; $6b1b: $03
	add  b                                           ; $6b1c: $80
	ccf                                              ; $6b1d: $3f
	nop                                              ; $6b1e: $00
	and  c                                           ; $6b1f: $a1
	add  e                                           ; $6b20: $83
	or   e                                           ; $6b21: $b3
	nop                                              ; $6b22: $00
	sub  e                                           ; $6b23: $93
	add  b                                           ; $6b24: $80
	cp   e                                           ; $6b25: $bb
	rlca                                             ; $6b26: $07
	cp   a                                           ; $6b27: $bf
	sub  d                                           ; $6b28: $92
	cp   a                                           ; $6b29: $bf
	sub  b                                           ; $6b2a: $90
	sub  c                                           ; $6b2b: $91
	cp   [hl]                                        ; $6b2c: $be
	cp   h                                           ; $6b2d: $bc
	jr   nc, jr_076_6ab3                             ; $6b2e: $30 $83

	ld   [hl], d                                     ; $6b30: $72
	inc  b                                           ; $6b31: $04
	ld   [de], a                                     ; $6b32: $12
	ld   a, d                                        ; $6b33: $7a
	ld   l, d                                        ; $6b34: $6a
	ld   a, h                                        ; $6b35: $7c
	db   $10                                         ; $6b36: $10
	add  b                                           ; $6b37: $80
	ld   h, e                                        ; $6b38: $63
	add  b                                           ; $6b39: $80
	inc  e                                           ; $6b3a: $1c
	inc  b                                           ; $6b3b: $04
	di                                               ; $6b3c: $f3
	ld   c, $81                                      ; $6b3d: $0e $81
	cp   h                                           ; $6b3f: $bc
	ld   a, $82                                      ; $6b40: $3e $82
	ld   a, [hl]                                     ; $6b42: $7e
	add  b                                           ; $6b43: $80
	ld   d, h                                        ; $6b44: $54
	add  b                                           ; $6b45: $80
	ld   a, [hl+]                                    ; $6b46: $2a
	add  b                                           ; $6b47: $80
	ld   d, h                                        ; $6b48: $54
	inc  b                                           ; $6b49: $04
	nop                                              ; $6b4a: $00
	ld   bc, $1c7f                                   ; $6b4b: $01 $7f $1c
	sbc  h                                           ; $6b4e: $9c
	add  b                                           ; $6b4f: $80
	ld   h, e                                        ; $6b50: $63
	add  b                                           ; $6b51: $80
	sbc  [hl]                                        ; $6b52: $9e
	add  b                                           ; $6b53: $80
	ld   [hl], b                                     ; $6b54: $70
	add  b                                           ; $6b55: $80
	add  b                                           ; $6b56: $80
	dec  b                                           ; $6b57: $05
	rrca                                             ; $6b58: $0f
	ld   [$487f], sp                                 ; $6b59: $08 $7f $48
	rst  $38                                         ; $6b5c: $ff
	jr   nc, jr_076_6ae8                             ; $6b5d: $30 $89

	nop                                              ; $6b5f: $00
	add  b                                           ; $6b60: $80
	ret  nz                                          ; $6b61: $c0

	dec  e                                           ; $6b62: $1d
	rst  $38                                         ; $6b63: $ff
	ld   a, a                                        ; $6b64: $7f
	ld   [hl], h                                     ; $6b65: $74
	ld   a, a                                        ; $6b66: $7f
	ldh  [rIE], a                                    ; $6b67: $e0 $ff
	or   l                                           ; $6b69: $b5
	rst  $38                                         ; $6b6a: $ff
	db   $10                                         ; $6b6b: $10
	rst  $38                                         ; $6b6c: $ff
	db   $e3                                         ; $6b6d: $e3
	rst  $38                                         ; $6b6e: $ff
	sub  h                                           ; $6b6f: $94
	rst  $38                                         ; $6b70: $ff
	ld   b, [hl]                                     ; $6b71: $46
	rst  $38                                         ; $6b72: $ff
	adc  $ff                                         ; $6b73: $ce $ff
	sub  d                                           ; $6b75: $92
	db   $fc                                         ; $6b76: $fc
	dec  h                                           ; $6b77: $25
	db   $fd                                         ; $6b78: $fd
	ld   [de], a                                     ; $6b79: $12
	ld   a, [$ffaf]                                  ; $6b7a: $fa $af $ff
	call $06ed                                       ; $6b7d: $cd $ed $06
	and  $80                                         ; $6b80: $e6 $80
	rst  $28                                         ; $6b82: $ef
	add  b                                           ; $6b83: $80
	ld   a, [hl]                                     ; $6b84: $7e
	add  b                                           ; $6b85: $80
	rst  $38                                         ; $6b86: $ff
	add  b                                           ; $6b87: $80
	cp   d                                           ; $6b88: $ba
	add  b                                           ; $6b89: $80
	cp   $80                                         ; $6b8a: $fe $80
	db   $ed                                         ; $6b8c: $ed
	add  b                                           ; $6b8d: $80
	reti                                             ; $6b8e: $d9


	add  b                                           ; $6b8f: $80
	ld   hl, sp-$80                                  ; $6b90: $f8 $80
	jp   hl                                          ; $6b92: $e9


	add  b                                           ; $6b93: $80
	db   $db                                         ; $6b94: $db
	add  b                                           ; $6b95: $80
	or   a                                           ; $6b96: $b7
	add  b                                           ; $6b97: $80
	sub  $80                                         ; $6b98: $d6 $80
	ld   a, e                                        ; $6b9a: $7b
	add  b                                           ; $6b9b: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b9c: $cf
	add  b                                           ; $6b9d: $80
	ld   sp, $3f80                                   ; $6b9e: $31 $80 $3f
	add  b                                           ; $6ba1: $80
	xor  $80                                         ; $6ba2: $ee $80
	ret                                              ; $6ba4: $c9


	add  b                                           ; $6ba5: $80
	db   $ed                                         ; $6ba6: $ed
	add  b                                           ; $6ba7: $80
	ld   sp, $a180                                   ; $6ba8: $31 $80 $a1
	add  b                                           ; $6bab: $80
	db   $dd                                         ; $6bac: $dd
	add  b                                           ; $6bad: $80
	ld   e, c                                        ; $6bae: $59
	add  b                                           ; $6baf: $80
	push af                                          ; $6bb0: $f5
	add  b                                           ; $6bb1: $80
	ld   d, c                                        ; $6bb2: $51
	add  b                                           ; $6bb3: $80
	pop  de                                          ; $6bb4: $d1
	nop                                              ; $6bb5: $00
	ldh  a, [$83]                                    ; $6bb6: $f0 $83
	nop                                              ; $6bb8: $00
	adc  b                                           ; $6bb9: $88
	rrca                                             ; $6bba: $0f
	nop                                              ; $6bbb: $00
	ldh  a, [$83]                                    ; $6bbc: $f0 $83
	nop                                              ; $6bbe: $00
	adc  b                                           ; $6bbf: $88
	rst  $38                                         ; $6bc0: $ff
	add  d                                           ; $6bc1: $82
	inc  a                                           ; $6bc2: $3c
	add  b                                           ; $6bc3: $80
	ld   [bc], a                                     ; $6bc4: $02
	add  b                                           ; $6bc5: $80
	cp   l                                           ; $6bc6: $bd
	add  b                                           ; $6bc7: $80
	add  d                                           ; $6bc8: $82
	add  b                                           ; $6bc9: $80
	cp   l                                           ; $6bca: $bd
	add  d                                           ; $6bcb: $82
	cp   h                                           ; $6bcc: $bc
	add  h                                           ; $6bcd: $84
	nop                                              ; $6bce: $00
	add  b                                           ; $6bcf: $80
	ldh  [$84], a                                    ; $6bd0: $e0 $84
	rst  $38                                         ; $6bd2: $ff

jr_076_6bd3:
	add  b                                           ; $6bd3: $80
	nop                                              ; $6bd4: $00
	nop                                              ; $6bd5: $00
	inc  bc                                          ; $6bd6: $03
	add  a                                           ; $6bd7: $87
	nop                                              ; $6bd8: $00
	inc  bc                                          ; $6bd9: $03
	ei                                               ; $6bda: $fb
	ld   hl, sp-$09                                  ; $6bdb: $f8 $f7
	ldh  a, [$80]                                    ; $6bdd: $f0 $80
	nop                                              ; $6bdf: $00
	ld   [bc], a                                     ; $6be0: $02
	rst  ToBoot                                         ; $6be1: $c7
	inc  bc                                          ; $6be2: $03
	ld   [bc], a                                     ; $6be3: $02
	add  b                                           ; $6be4: $80
	inc  bc                                          ; $6be5: $03
	rlca                                             ; $6be6: $07
	nop                                              ; $6be7: $00
	ld   b, $01                                      ; $6be8: $06 $01
	add  hl, de                                      ; $6bea: $19
	ld   b, [hl]                                     ; $6beb: $46
	add  [hl]                                        ; $6bec: $86
	ld   sp, hl                                      ; $6bed: $f9
	add  hl, de                                      ; $6bee: $19
	add  b                                           ; $6bef: $80
	rlca                                             ; $6bf0: $07
	inc  bc                                          ; $6bf1: $03
	inc  e                                           ; $6bf2: $1c
	cp   [hl]                                        ; $6bf3: $be
	or   e                                           ; $6bf4: $b3
	ld   de, $8e80                                   ; $6bf5: $11 $80 $8e
	add  b                                           ; $6bf8: $80

jr_076_6bf9:
	ld   sp, $ce80                                   ; $6bf9: $31 $80 $ce
	add  b                                           ; $6bfc: $80
	jr   c, jr_076_6c06                              ; $6bfd: $38 $07

	pop  bc                                          ; $6bff: $c1
	ret  nz                                          ; $6c00: $c0

	rlca                                             ; $6c01: $07
	ld   bc, $cf1f                                   ; $6c02: $01 $1f $cf
	ccf                                              ; $6c05: $3f

jr_076_6c06:
	scf                                              ; $6c06: $37
	add  b                                           ; $6c07: $80
	ccf                                              ; $6c08: $3f
	ld   b, $37                                      ; $6c09: $06 $37
	rla                                              ; $6c0b: $17
	scf                                              ; $6c0c: $37
	ld   h, a                                        ; $6c0d: $67
	ld   [hl], a                                     ; $6c0e: $77
	ld   h, [hl]                                     ; $6c0f: $66
	ld   l, a                                        ; $6c10: $6f
	add  b                                           ; $6c11: $80
	ld   l, [hl]                                     ; $6c12: $6e
	ld   [bc], a                                     ; $6c13: $02
	xor  $ce                                         ; $6c14: $ee $ce
	ld   c, $82                                      ; $6c16: $0e $82
	rst  $38                                         ; $6c18: $ff
	ld   [bc], a                                     ; $6c19: $02
	db   $fd                                         ; $6c1a: $fd
	ld   sp, hl                                      ; $6c1b: $f9
	dec  a                                           ; $6c1c: $3d
	add  l                                           ; $6c1d: $85
	add  hl, sp                                      ; $6c1e: $39
	dec  b                                           ; $6c1f: $05
	jr   nc, jr_076_6bd3                             ; $6c20: $30 $b1

	sbc  a                                           ; $6c22: $9f
	sbc  [hl]                                        ; $6c23: $9e
	sbc  a                                           ; $6c24: $9f
	rra                                              ; $6c25: $1f
	add  d                                           ; $6c26: $82
	sbc  a                                           ; $6c27: $9f
	add  c                                           ; $6c28: $81
	cp   e                                           ; $6c29: $bb
	ld   b, $b3                                      ; $6c2a: $06 $b3
	ei                                               ; $6c2c: $fb
	ldh  a, [c]                                      ; $6c2d: $f2
	di                                               ; $6c2e: $f3
	or   d                                           ; $6c2f: $b2
	ld   a, a                                        ; $6c30: $7f
	ccf                                              ; $6c31: $3f
	add  b                                           ; $6c32: $80
	ld   a, a                                        ; $6c33: $7f
	add  b                                           ; $6c34: $80
	rst  $38                                         ; $6c35: $ff
	add  c                                           ; $6c36: $81
	cp   $01                                         ; $6c37: $fe $01
	db   $fc                                         ; $6c39: $fc
	ld   a, [hl]                                     ; $6c3a: $7e
	add  b                                           ; $6c3b: $80
	ld   a, h                                        ; $6c3c: $7c
	ld   [bc], a                                     ; $6c3d: $02
	inc  a                                           ; $6c3e: $3c
	ld   a, h                                        ; $6c3f: $7c
	inc  a                                           ; $6c40: $3c
	add  d                                           ; $6c41: $82
	or   $82                                         ; $6c42: $f6 $82
	cp   $02                                         ; $6c44: $fe $02
	or   $76                                         ; $6c46: $f6 $76
	rst  $30                                         ; $6c48: $f7
	add  b                                           ; $6c49: $80
	ld   [hl], a                                     ; $6c4a: $77
	inc  bc                                          ; $6c4b: $03
	ld   [hl], e                                     ; $6c4c: $73
	ld   [hl], a                                     ; $6c4d: $77
	ld   a, [bc]                                     ; $6c4e: $0a
	ld   a, c                                        ; $6c4f: $79
	add  b                                           ; $6c50: $80
	ld   a, a                                        ; $6c51: $7f

jr_076_6c52:
	add  b                                           ; $6c52: $80
	ei                                               ; $6c53: $fb

jr_076_6c54:
	add  b                                           ; $6c54: $80
	or   $80                                         ; $6c55: $f6 $80
	or   e                                           ; $6c57: $b3
	add  b                                           ; $6c58: $80
	inc  e                                           ; $6c59: $1c
	add  d                                           ; $6c5a: $82
	rst  $38                                         ; $6c5b: $ff
	add  b                                           ; $6c5c: $80
	ld   d, [hl]                                     ; $6c5d: $56
	add  b                                           ; $6c5e: $80
	push af                                          ; $6c5f: $f5
	add  b                                           ; $6c60: $80
	rst  $38                                         ; $6c61: $ff
	add  b                                           ; $6c62: $80
	dec  e                                           ; $6c63: $1d
	add  b                                           ; $6c64: $80
	or   e                                           ; $6c65: $b3
	add  b                                           ; $6c66: $80
	ld   h, $82                                      ; $6c67: $26 $82
	rst  $38                                         ; $6c69: $ff
	add  b                                           ; $6c6a: $80
	xor  c                                           ; $6c6b: $a9
	add  b                                           ; $6c6c: $80
	db   $ed                                         ; $6c6d: $ed
	add  b                                           ; $6c6e: $80
	ld   sp, $9780                                   ; $6c6f: $31 $80 $97
	add  b                                           ; $6c72: $80
	cp   [hl]                                        ; $6c73: $be
	add  b                                           ; $6c74: $80
	jr   jr_076_6bf9                                 ; $6c75: $18 $82

	rst  $38                                         ; $6c77: $ff
	add  b                                           ; $6c78: $80
	ld   d, l                                        ; $6c79: $55
	add  b                                           ; $6c7a: $80
	ld   [hl], c                                     ; $6c7b: $71
	add  b                                           ; $6c7c: $80
	adc  l                                           ; $6c7d: $8d
	add  b                                           ; $6c7e: $80
	db   $dd                                         ; $6c7f: $dd
	add  b                                           ; $6c80: $80
	ld   [hl], l                                     ; $6c81: $75
	add  b                                           ; $6c82: $80
	ld   b, c                                        ; $6c83: $41
	add  e                                           ; $6c84: $83
	rst  $38                                         ; $6c85: $ff
	adc  [hl]                                        ; $6c86: $8e
	rrca                                             ; $6c87: $0f
	adc  l                                           ; $6c88: $8d
	rst  $38                                         ; $6c89: $ff
	dec  bc                                          ; $6c8a: $0b
	cp   h                                           ; $6c8b: $bc
	cp   [hl]                                        ; $6c8c: $be
	cp   b                                           ; $6c8d: $b8
	cp   d                                           ; $6c8e: $ba
	ret  c                                           ; $6c8f: $d8

	call c, $ded8                                    ; $6c90: $dc $d8 $de
	call c, Call_076_4fde                            ; $6c93: $dc $de $4f
	ld   c, [hl]                                     ; $6c96: $4e
	add  b                                           ; $6c97: $80
	ld   h, a                                        ; $6c98: $67
	ld   bc, $6b6a                                   ; $6c99: $01 $6a $6b
	add  b                                           ; $6c9c: $80
	ret  nz                                          ; $6c9d: $c0

	adc  h                                           ; $6c9e: $8c
	rst  $38                                         ; $6c9f: $ff
	ld   bc, $0007                                   ; $6ca0: $01 $07 $00
	add  c                                           ; $6ca3: $81
	ld   hl, sp-$76                                  ; $6ca4: $f8 $8a
	rst  $38                                         ; $6ca6: $ff
	add  b                                           ; $6ca7: $80
	jr   jr_076_6cac                                 ; $6ca8: $18 $02

	rra                                              ; $6caa: $1f
	db   $10                                         ; $6cab: $10

jr_076_6cac:
	ldh  a, [$80]                                    ; $6cac: $f0 $80
	cp   $87                                         ; $6cae: $fe $87
	rst  $38                                         ; $6cb0: $ff
	inc  bc                                          ; $6cb1: $03
	nop                                              ; $6cb2: $00
	ld   bc, $00fe                                   ; $6cb3: $01 $fe $00
	add  c                                           ; $6cb6: $81
	ld   bc, $e101                                   ; $6cb7: $01 $01 $e1
	ldh  [$80], a                                    ; $6cba: $e0 $80
	db   $fc                                         ; $6cbc: $fc
	add  d                                           ; $6cbd: $82
	rst  $38                                         ; $6cbe: $ff
	nop                                              ; $6cbf: $00
	nop                                              ; $6cc0: $00
	add  b                                           ; $6cc1: $80
	ld   c, $82                                      ; $6cc2: $0e $82
	inc  c                                           ; $6cc4: $0c
	add  b                                           ; $6cc5: $80
	nop                                              ; $6cc6: $00
	add  b                                           ; $6cc7: $80
	rst  $38                                         ; $6cc8: $ff
	nop                                              ; $6cc9: $00
	nop                                              ; $6cca: $00

jr_076_6ccb:
	add  d                                           ; $6ccb: $82
	rst  $38                                         ; $6ccc: $ff
	nop                                              ; $6ccd: $00
	nop                                              ; $6cce: $00
	add  d                                           ; $6ccf: $82
	jr   nc, jr_076_6c52                             ; $6cd0: $30 $80

	jr   nz, jr_076_6c54                             ; $6cd2: $20 $80

	nop                                              ; $6cd4: $00
	add  b                                           ; $6cd5: $80
	rst  $38                                         ; $6cd6: $ff
	nop                                              ; $6cd7: $00
	nop                                              ; $6cd8: $00
	add  d                                           ; $6cd9: $82
	rst  $38                                         ; $6cda: $ff
	nop                                              ; $6cdb: $00
	nop                                              ; $6cdc: $00
	add  d                                           ; $6cdd: $82
	ldh  a, [c]                                      ; $6cde: $f2
	add  b                                           ; $6cdf: $80
	ld   h, b                                        ; $6ce0: $60
	add  b                                           ; $6ce1: $80
	nop                                              ; $6ce2: $00
	add  b                                           ; $6ce3: $80
	rst  $38                                         ; $6ce4: $ff
	nop                                              ; $6ce5: $00
	nop                                              ; $6ce6: $00
	add  d                                           ; $6ce7: $82
	rst  $38                                         ; $6ce8: $ff
	nop                                              ; $6ce9: $00
	nop                                              ; $6cea: $00
	add  d                                           ; $6ceb: $82
	inc  a                                           ; $6cec: $3c
	add  b                                           ; $6ced: $80
	jr   c, @-$7e                                    ; $6cee: $38 $80

	nop                                              ; $6cf0: $00
	add  b                                           ; $6cf1: $80
	rst  $38                                         ; $6cf2: $ff
	nop                                              ; $6cf3: $00
	nop                                              ; $6cf4: $00
	add  d                                           ; $6cf5: $82
	rst  $38                                         ; $6cf6: $ff
	nop                                              ; $6cf7: $00
	nop                                              ; $6cf8: $00
	add  b                                           ; $6cf9: $80
	ld   [hl], e                                     ; $6cfa: $73
	add  d                                           ; $6cfb: $82
	inc  sp                                          ; $6cfc: $33
	add  b                                           ; $6cfd: $80
	nop                                              ; $6cfe: $00
	add  b                                           ; $6cff: $80
	rst  $38                                         ; $6d00: $ff
	nop                                              ; $6d01: $00
	nop                                              ; $6d02: $00
	add  d                                           ; $6d03: $82
	rst  $38                                         ; $6d04: $ff
	add  b                                           ; $6d05: $80
	nop                                              ; $6d06: $00
	add  b                                           ; $6d07: $80
	ld   [hl], b                                     ; $6d08: $70
	add  b                                           ; $6d09: $80
	ld   a, a                                        ; $6d0a: $7f
	nop                                              ; $6d0b: $00
	ccf                                              ; $6d0c: $3f
	add  c                                           ; $6d0d: $81
	cp   a                                           ; $6d0e: $bf
	ld   bc, $7fff                                   ; $6d0f: $01 $ff $7f
	add  d                                           ; $6d12: $82
	rst  $38                                         ; $6d13: $ff
	add  d                                           ; $6d14: $82
	nop                                              ; $6d15: $00
	add  b                                           ; $6d16: $80
	add  b                                           ; $6d17: $80
	add  b                                           ; $6d18: $80
	cp   $86                                         ; $6d19: $fe $86
	rst  $38                                         ; $6d1b: $ff
	add  [hl]                                        ; $6d1c: $86
	nop                                              ; $6d1d: $00
	add  b                                           ; $6d1e: $80
	ld   hl, sp-$7c                                  ; $6d1f: $f8 $84
	rst  $38                                         ; $6d21: $ff
	adc  b                                           ; $6d22: $88
	nop                                              ; $6d23: $00
	add  b                                           ; $6d24: $80
	ldh  [$82], a                                    ; $6d25: $e0 $82
	rst  $38                                         ; $6d27: $ff
	ld   bc, $00f0                                   ; $6d28: $01 $f0 $00
	add  b                                           ; $6d2b: $80
	rrca                                             ; $6d2c: $0f
	add  b                                           ; $6d2d: $80
	ld   bc, $0c80                                   ; $6d2e: $01 $80 $0c
	add  b                                           ; $6d31: $80
	dec  c                                           ; $6d32: $0d
	add  h                                           ; $6d33: $84
	rrca                                             ; $6d34: $0f
	ld   bc, $00f0                                   ; $6d35: $01 $f0 $00
	add  b                                           ; $6d38: $80
	rst  $38                                         ; $6d39: $ff
	add  b                                           ; $6d3a: $80
	ld   b, b                                        ; $6d3b: $40
	add  b                                           ; $6d3c: $80
	cp   $80                                         ; $6d3d: $fe $80
	rst  $38                                         ; $6d3f: $ff
	add  b                                           ; $6d40: $80
	db   $fd                                         ; $6d41: $fd
	add  d                                           ; $6d42: $82
	rst  $38                                         ; $6d43: $ff
	add  b                                           ; $6d44: $80
	nop                                              ; $6d45: $00
	add  b                                           ; $6d46: $80
	rst  $38                                         ; $6d47: $ff
	add  b                                           ; $6d48: $80
	jr   nz, jr_076_6ccb                             ; $6d49: $20 $80

	nop                                              ; $6d4b: $00
	add  b                                           ; $6d4c: $80
	inc  d                                           ; $6d4d: $14
	add  b                                           ; $6d4e: $80
	ret  nc                                          ; $6d4f: $d0

	add  b                                           ; $6d50: $80
	ld   a, b                                        ; $6d51: $78
	add  b                                           ; $6d52: $80
	ld   h, c                                        ; $6d53: $61
	add  b                                           ; $6d54: $80
	nop                                              ; $6d55: $00
	add  b                                           ; $6d56: $80
	rst  $38                                         ; $6d57: $ff
	add  b                                           ; $6d58: $80
	rrca                                             ; $6d59: $0f
	add  b                                           ; $6d5a: $80
	ld   e, $80                                      ; $6d5b: $1e $80
	dec  a                                           ; $6d5d: $3d
	add  b                                           ; $6d5e: $80
	ld   a, e                                        ; $6d5f: $7b
	add  b                                           ; $6d60: $80
	rst  $30                                         ; $6d61: $f7
	add  b                                           ; $6d62: $80
	rst  $28                                         ; $6d63: $ef
	add  b                                           ; $6d64: $80
	rra                                              ; $6d65: $1f
	add  b                                           ; $6d66: $80

jr_076_6d67:
	cp   a                                           ; $6d67: $bf
	add  b                                           ; $6d68: $80
	ld   a, a                                        ; $6d69: $7f
	add  b                                           ; $6d6a: $80
	cp   $80                                         ; $6d6b: $fe $80
	db   $fd                                         ; $6d6d: $fd
	add  b                                           ; $6d6e: $80
	ei                                               ; $6d6f: $fb
	add  b                                           ; $6d70: $80
	rst  $30                                         ; $6d71: $f7
	add  b                                           ; $6d72: $80
	rst  $28                                         ; $6d73: $ef
	add  b                                           ; $6d74: $80
	ret  nz                                          ; $6d75: $c0

	add  b                                           ; $6d76: $80
	cp   a                                           ; $6d77: $bf
	add  b                                           ; $6d78: $80
	ld   [hl], b                                     ; $6d79: $70
	add  b                                           ; $6d7a: $80
	ldh  [$80], a                                    ; $6d7b: $e0 $80
	ret  nz                                          ; $6d7d: $c0

	add  b                                           ; $6d7e: $80
	xor  l                                           ; $6d7f: $ad
	add  b                                           ; $6d80: $80
	cp   a                                           ; $6d81: $bf
	add  b                                           ; $6d82: $80
	ld   a, a                                        ; $6d83: $7f
	add  b                                           ; $6d84: $80
	nop                                              ; $6d85: $00
	add  b                                           ; $6d86: $80
	rst  $38                                         ; $6d87: $ff
	add  b                                           ; $6d88: $80
	dec  d                                           ; $6d89: $15
	add  b                                           ; $6d8a: $80
	rla                                              ; $6d8b: $17
	add  b                                           ; $6d8c: $80
	ld   a, a                                        ; $6d8d: $7f
	add  b                                           ; $6d8e: $80
	ccf                                              ; $6d8f: $3f
	add  b                                           ; $6d90: $80
	rst  JumpTable                                         ; $6d91: $df
	add  b                                           ; $6d92: $80
	rst  $38                                         ; $6d93: $ff
	add  b                                           ; $6d94: $80
	nop                                              ; $6d95: $00
	add  b                                           ; $6d96: $80
	rst  $38                                         ; $6d97: $ff
	add  b                                           ; $6d98: $80
	nop                                              ; $6d99: $00
	add  b                                           ; $6d9a: $80
	add  sp, -$80                                    ; $6d9b: $e8 $80
	db   $d3                                         ; $6d9d: $d3
	add  h                                           ; $6d9e: $84
	rst  $38                                         ; $6d9f: $ff
	add  b                                           ; $6da0: $80
	nop                                              ; $6da1: $00
	add  b                                           ; $6da2: $80
	rst  $38                                         ; $6da3: $ff
	add  b                                           ; $6da4: $80
	ld   bc, $ff82                                   ; $6da5: $01 $82 $ff
	add  b                                           ; $6da8: $80
	db   $fd                                         ; $6da9: $fd
	add  b                                           ; $6daa: $80
	call z, $ef80                                    ; $6dab: $cc $80 $ef
	add  b                                           ; $6dae: $80
	nop                                              ; $6daf: $00
	add  b                                           ; $6db0: $80
	rst  $38                                         ; $6db1: $ff
	add  b                                           ; $6db2: $80
	inc  b                                           ; $6db3: $04
	add  d                                           ; $6db4: $82
	jp   $3b80                                       ; $6db5: $c3 $80 $3b


	add  b                                           ; $6db8: $80
	nop                                              ; $6db9: $00
	add  b                                           ; $6dba: $80
	or   b                                           ; $6dbb: $b0
	add  b                                           ; $6dbc: $80
	nop                                              ; $6dbd: $00
	add  b                                           ; $6dbe: $80
	rst  $38                                         ; $6dbf: $ff
	add  b                                           ; $6dc0: $80
	add  hl, de                                      ; $6dc1: $19
	add  d                                           ; $6dc2: $82
	rst  $38                                         ; $6dc3: $ff
	add  b                                           ; $6dc4: $80
	sbc  a                                           ; $6dc5: $9f
	add  b                                           ; $6dc6: $80
	rst  $38                                         ; $6dc7: $ff
	add  b                                           ; $6dc8: $80
	ld   sp, hl                                      ; $6dc9: $f9
	add  b                                           ; $6dca: $80
	nop                                              ; $6dcb: $00
	add  b                                           ; $6dcc: $80
	rst  $38                                         ; $6dcd: $ff
	add  b                                           ; $6dce: $80
	add  b                                           ; $6dcf: $80
	add  b                                           ; $6dd0: $80
	ldh  a, [c]                                      ; $6dd1: $f2
	add  b                                           ; $6dd2: $80
	ei                                               ; $6dd3: $fb
	add  h                                           ; $6dd4: $84
	rst  $38                                         ; $6dd5: $ff
	add  b                                           ; $6dd6: $80
	nop                                              ; $6dd7: $00
	add  b                                           ; $6dd8: $80
	rst  $38                                         ; $6dd9: $ff
	add  b                                           ; $6dda: $80
	add  hl, hl                                      ; $6ddb: $29
	adc  b                                           ; $6ddc: $88
	rst  $38                                         ; $6ddd: $ff
	add  b                                           ; $6dde: $80
	nop                                              ; $6ddf: $00
	add  b                                           ; $6de0: $80
	rst  $38                                         ; $6de1: $ff
	add  b                                           ; $6de2: $80
	inc  b                                           ; $6de3: $04
	add  b                                           ; $6de4: $80
	jr   z, jr_076_6d67                              ; $6de5: $28 $80

	nop                                              ; $6de7: $00
	add  b                                           ; $6de8: $80
	ld   a, h                                        ; $6de9: $7c
	add  b                                           ; $6dea: $80
	cp   $80                                         ; $6deb: $fe $80
	db   $f4                                         ; $6ded: $f4
	add  b                                           ; $6dee: $80
	ccf                                              ; $6def: $3f
	add  b                                           ; $6df0: $80
	rst  JumpTable                                         ; $6df1: $df
	add  b                                           ; $6df2: $80
	rst  $28                                         ; $6df3: $ef
	add  b                                           ; $6df4: $80
	ld   [hl], a                                     ; $6df5: $77
	add  b                                           ; $6df6: $80
	ld   a, e                                        ; $6df7: $7b
	add  b                                           ; $6df8: $80
	dec  a                                           ; $6df9: $3d
	add  b                                           ; $6dfa: $80
	sbc  [hl]                                        ; $6dfb: $9e
	add  b                                           ; $6dfc: $80
	rrca                                             ; $6dfd: $0f
	adc  h                                           ; $6dfe: $8c
	rst  $38                                         ; $6dff: $ff
	add  b                                           ; $6e00: $80
	ld   a, a                                        ; $6e01: $7f
	ld   d, c                                        ; $6e02: $51
	ld   [bc], a                                     ; $6e03: $02
	add  [hl]                                        ; $6e04: $86
	nop                                              ; $6e05: $00
	nop                                              ; $6e06: $00
	ld   bc, $0985                                   ; $6e07: $01 $85 $09
	nop                                              ; $6e0a: $00
	ld   [$0085], sp                                 ; $6e0b: $08 $85 $00
	nop                                              ; $6e0e: $00
	cp   a                                           ; $6e0f: $bf
	add  d                                           ; $6e10: $82
	pop  af                                          ; $6e11: $f1
	add  c                                           ; $6e12: $81
	ldh  a, [rP1]                                    ; $6e13: $f0 $00
	ld   c, a                                        ; $6e15: $4f
	add  l                                           ; $6e16: $85
	nop                                              ; $6e17: $00
	inc  b                                           ; $6e18: $04
	ld   bc, $4b5b                                   ; $6e19: $01 $5b $4b
	ld   e, e                                        ; $6e1c: $5b
	or   l                                           ; $6e1d: $b5
	add  c                                           ; $6e1e: $81
	nop                                              ; $6e1f: $00
	nop                                              ; $6e20: $00
	rst  $38                                         ; $6e21: $ff
	add  l                                           ; $6e22: $85
	nop                                              ; $6e23: $00
	nop                                              ; $6e24: $00
	ld   [de], a                                     ; $6e25: $12
	add  c                                           ; $6e26: $81
	halt                                             ; $6e27: $76
	nop                                              ; $6e28: $00
	sbc  e                                           ; $6e29: $9b
	add  c                                           ; $6e2a: $81
	nop                                              ; $6e2b: $00
	nop                                              ; $6e2c: $00
	rst  $38                                         ; $6e2d: $ff
	add  l                                           ; $6e2e: $85
	nop                                              ; $6e2f: $00
	nop                                              ; $6e30: $00
	inc  a                                           ; $6e31: $3c
	add  c                                           ; $6e32: $81
	db   $e4                                         ; $6e33: $e4
	nop                                              ; $6e34: $00
	daa                                              ; $6e35: $27
	add  c                                           ; $6e36: $81
	nop                                              ; $6e37: $00
	nop                                              ; $6e38: $00
	rst  $38                                         ; $6e39: $ff
	add  l                                           ; $6e3a: $85
	nop                                              ; $6e3b: $00
	inc  b                                           ; $6e3c: $04
	daa                                              ; $6e3d: $27
	rst  JumpTable                                         ; $6e3e: $df
	rst  $10                                         ; $6e3f: $d7
	rst  JumpTable                                         ; $6e40: $df
	rrca                                             ; $6e41: $0f
	add  c                                           ; $6e42: $81
	nop                                              ; $6e43: $00
	nop                                              ; $6e44: $00
	rst  $38                                         ; $6e45: $ff
	add  l                                           ; $6e46: $85
	nop                                              ; $6e47: $00
	add  b                                           ; $6e48: $80
	ldh  a, [$80]                                    ; $6e49: $f0 $80
	pop  af                                          ; $6e4b: $f1
	nop                                              ; $6e4c: $00
	rst  $38                                         ; $6e4d: $ff
	add  c                                           ; $6e4e: $81
	nop                                              ; $6e4f: $00
	nop                                              ; $6e50: $00
	rst  $38                                         ; $6e51: $ff
	add  l                                           ; $6e52: $85
	nop                                              ; $6e53: $00
	nop                                              ; $6e54: $00
	rst  $38                                         ; $6e55: $ff
	add  d                                           ; $6e56: $82
	sbc  a                                           ; $6e57: $9f
	add  c                                           ; $6e58: $81
	nop                                              ; $6e59: $00
	nop                                              ; $6e5a: $00
	rst  $38                                         ; $6e5b: $ff
	add  l                                           ; $6e5c: $85
	nop                                              ; $6e5d: $00
	add  e                                           ; $6e5e: $83
	rst  $38                                         ; $6e5f: $ff
	add  c                                           ; $6e60: $81
	nop                                              ; $6e61: $00
	nop                                              ; $6e62: $00
	rst  $38                                         ; $6e63: $ff
	add  l                                           ; $6e64: $85
	nop                                              ; $6e65: $00
	nop                                              ; $6e66: $00
	rst  $38                                         ; $6e67: $ff
	add  d                                           ; $6e68: $82
	ccf                                              ; $6e69: $3f
	add  c                                           ; $6e6a: $81
	nop                                              ; $6e6b: $00
	nop                                              ; $6e6c: $00
	rst  $38                                         ; $6e6d: $ff
	add  l                                           ; $6e6e: $85
	nop                                              ; $6e6f: $00
	add  b                                           ; $6e70: $80
	ld   hl, sp-$80                                  ; $6e71: $f8 $80
	ldh  a, [rP1]                                    ; $6e73: $f0 $00
	rst  $38                                         ; $6e75: $ff
	add  c                                           ; $6e76: $81
	nop                                              ; $6e77: $00
	nop                                              ; $6e78: $00
	rst  $38                                         ; $6e79: $ff
	add  l                                           ; $6e7a: $85
	nop                                              ; $6e7b: $00
	ld   bc, $0203                                   ; $6e7c: $01 $03 $02
	add  b                                           ; $6e7f: $80
	ld   b, $00                                      ; $6e80: $06 $00
	cp   $81                                         ; $6e82: $fe $81
	nop                                              ; $6e84: $00
	nop                                              ; $6e85: $00
	rst  $38                                         ; $6e86: $ff
	add  l                                           ; $6e87: $85

jr_076_6e88:
	nop                                              ; $6e88: $00
	nop                                              ; $6e89: $00
	rst  $38                                         ; $6e8a: $ff
	add  d                                           ; $6e8b: $82
	ld   a, a                                        ; $6e8c: $7f
	add  c                                           ; $6e8d: $81
	nop                                              ; $6e8e: $00
	nop                                              ; $6e8f: $00
	rst  $38                                         ; $6e90: $ff
	add  l                                           ; $6e91: $85
	nop                                              ; $6e92: $00
	ld   bc, $c8cf                                   ; $6e93: $01 $cf $c8
	add  b                                           ; $6e96: $80
	adc  b                                           ; $6e97: $88
	nop                                              ; $6e98: $00
	ld   hl, sp-$7f                                  ; $6e99: $f8 $81
	nop                                              ; $6e9b: $00
	nop                                              ; $6e9c: $00
	rst  $38                                         ; $6e9d: $ff
	add  l                                           ; $6e9e: $85
	nop                                              ; $6e9f: $00
	nop                                              ; $6ea0: $00
	ret  nc                                          ; $6ea1: $d0

	add  e                                           ; $6ea2: $83
	or   b                                           ; $6ea3: $b0
	ld   a, [bc]                                     ; $6ea4: $0a
	and  b                                           ; $6ea5: $a0
	or   b                                           ; $6ea6: $b0
	ld   [hl], d                                     ; $6ea7: $72
	dec  bc                                          ; $6ea8: $0b
	ld   [$090f], sp                                 ; $6ea9: $08 $0f $09
	rrca                                             ; $6eac: $0f
	nop                                              ; $6ead: $00
	rrca                                             ; $6eae: $0f
	ld   b, $85                                      ; $6eaf: $06 $85
	ld   bc, $3f02                                   ; $6eb1: $01 $02 $3f

jr_076_6eb4:
	pop  af                                          ; $6eb4: $f1
	ld   [hl], c                                     ; $6eb5: $71
	add  c                                           ; $6eb6: $81
	pop  af                                          ; $6eb7: $f1
	ld   [bc], a                                     ; $6eb8: $02
	ld   [hl], c                                     ; $6eb9: $71
	pop  af                                          ; $6eba: $f1
	ld   [hl], b                                     ; $6ebb: $70
	add  l                                           ; $6ebc: $85
	pop  af                                          ; $6ebd: $f1
	add  hl, bc                                      ; $6ebe: $09
	ld   e, [hl]                                     ; $6ebf: $5e
	ld   e, e                                        ; $6ec0: $5b
	ld   c, e                                        ; $6ec1: $4b
	ld   e, e                                        ; $6ec2: $5b
	ld   c, e                                        ; $6ec3: $4b
	ld   e, e                                        ; $6ec4: $5b
	ld   c, e                                        ; $6ec5: $4b
	ld   e, e                                        ; $6ec6: $5b
	and  l                                           ; $6ec7: $a5
	rst  $38                                         ; $6ec8: $ff
	add  b                                           ; $6ec9: $80
	nop                                              ; $6eca: $00
	add  d                                           ; $6ecb: $82
	rst  $38                                         ; $6ecc: $ff
	nop                                              ; $6ecd: $00
	ld   [de], a                                     ; $6ece: $12
	add  l                                           ; $6ecf: $85
	halt                                             ; $6ed0: $76
	ld   bc, $ff9b                                   ; $6ed1: $01 $9b $ff
	add  b                                           ; $6ed4: $80
	nop                                              ; $6ed5: $00
	add  d                                           ; $6ed6: $82
	rst  $38                                         ; $6ed7: $ff
	nop                                              ; $6ed8: $00
	inc  a                                           ; $6ed9: $3c
	add  l                                           ; $6eda: $85
	db   $e4                                         ; $6edb: $e4
	ld   bc, $e424                                   ; $6edc: $01 $24 $e4
	add  b                                           ; $6edf: $80
	nop                                              ; $6ee0: $00
	add  b                                           ; $6ee1: $80
	ldh  [$80], a                                    ; $6ee2: $e0 $80
	rst  $20                                         ; $6ee4: $e7
	nop                                              ; $6ee5: $00
	ld   h, a                                        ; $6ee6: $67
	add  c                                           ; $6ee7: $81
	rst  $38                                         ; $6ee8: $ff
	nop                                              ; $6ee9: $00
	ld   a, a                                        ; $6eea: $7f
	add  l                                           ; $6eeb: $85
	rst  $38                                         ; $6eec: $ff
	inc  b                                           ; $6eed: $04
	cp   $ff                                         ; $6eee: $fe $ff
	ld   a, l                                        ; $6ef0: $7d
	rst  $38                                         ; $6ef1: $ff
	ld   [hl], e                                     ; $6ef2: $73
	add  c                                           ; $6ef3: $81
	ldh  a, [rTMA]                                   ; $6ef4: $f0 $06
	ldh  [$f0], a                                    ; $6ef6: $e0 $f0
	ret  nc                                          ; $6ef8: $d0

	ldh  a, [$b0]                                    ; $6ef9: $f0 $b0
	ldh  a, [rSVBK]                                  ; $6efb: $f0 $70
	add  e                                           ; $6efd: $83
	ldh  a, [rP1]                                    ; $6efe: $f0 $00
	adc  a                                           ; $6f00: $8f
	add  a                                           ; $6f01: $87
	rra                                              ; $6f02: $1f
	add  b                                           ; $6f03: $80
	nop                                              ; $6f04: $00
	add  b                                           ; $6f05: $80
	jr   jr_076_6e88                                 ; $6f06: $18 $80

	rra                                              ; $6f08: $1f
	nop                                              ; $6f09: $00
	sbc  a                                           ; $6f0a: $9f
	adc  c                                           ; $6f0b: $89
	rst  $38                                         ; $6f0c: $ff
	add  b                                           ; $6f0d: $80
	nop                                              ; $6f0e: $00
	add  b                                           ; $6f0f: $80
	add  b                                           ; $6f10: $80
	adc  d                                           ; $6f11: $8a
	rst  $38                                         ; $6f12: $ff
	add  d                                           ; $6f13: $82
	nop                                              ; $6f14: $00
	nop                                              ; $6f15: $00
	rst  $38                                         ; $6f16: $ff
	adc  [hl]                                        ; $6f17: $8e
	ccf                                              ; $6f18: $3f
	add  e                                           ; $6f19: $83
	rst  $38                                         ; $6f1a: $ff
	add  b                                           ; $6f1b: $80
	cp   $80                                         ; $6f1c: $fe $80
	add  b                                           ; $6f1e: $80
	add  b                                           ; $6f1f: $80
	db   $fc                                         ; $6f20: $fc
	add  [hl]                                        ; $6f21: $86
	rst  $38                                         ; $6f22: $ff
	add  b                                           ; $6f23: $80
	ldh  [$84], a                                    ; $6f24: $e0 $84
	nop                                              ; $6f26: $00
	add  e                                           ; $6f27: $83
	rst  $38                                         ; $6f28: $ff
	add  c                                           ; $6f29: $81
	ccf                                              ; $6f2a: $3f
	add  b                                           ; $6f2b: $80
	ld   c, $82                                      ; $6f2c: $0e $82
	nop                                              ; $6f2e: $00
	add  b                                           ; $6f2f: $80
	dec  a                                           ; $6f30: $3d
	add  b                                           ; $6f31: $80
	jr   nz, jr_076_6eb4                             ; $6f32: $20 $80

	nop                                              ; $6f34: $00
	ld   bc, $8040                                   ; $6f35: $01 $40 $80
	add  d                                           ; $6f38: $82
	nop                                              ; $6f39: $00
	add  b                                           ; $6f3a: $80
	ld   bc, $3380                                   ; $6f3b: $01 $80 $33
	add  b                                           ; $6f3e: $80
	rst  ToBoot                                         ; $6f3f: $c7
	add  b                                           ; $6f40: $80
	rrca                                             ; $6f41: $0f
	add  b                                           ; $6f42: $80
	rra                                              ; $6f43: $1f
	ld   bc, $3e3f                                   ; $6f44: $01 $3f $3e
	add  b                                           ; $6f47: $80
	ld   a, [hl]                                     ; $6f48: $7e
	add  h                                           ; $6f49: $84
	cp   $80                                         ; $6f4a: $fe $80
	ldh  [$80], a                                    ; $6f4c: $e0 $80
	add  [hl]                                        ; $6f4e: $86
	add  c                                           ; $6f4f: $81
	cp   $8b                                         ; $6f50: $fe $8b
	ld   a, a                                        ; $6f52: $7f
	add  b                                           ; $6f53: $80
	ld   d, a                                        ; $6f54: $57
	ld   bc, $fe7e                                   ; $6f55: $01 $7e $fe
	add  b                                           ; $6f58: $80
	db   $fc                                         ; $6f59: $fc
	add  b                                           ; $6f5a: $80
	ld   hl, sp-$80                                  ; $6f5b: $f8 $80
	ldh  a, [$80]                                    ; $6f5d: $f0 $80
	ldh  [$80], a                                    ; $6f5f: $e0 $80
	ret  nz                                          ; $6f61: $c0

	add  b                                           ; $6f62: $80
	add  b                                           ; $6f63: $80
	add  b                                           ; $6f64: $80
	nop                                              ; $6f65: $00
	nop                                              ; $6f66: $00
	rrca                                             ; $6f67: $0f

jr_076_6f68:
	adc  l                                           ; $6f68: $8d
	ld   [$c702], sp                                 ; $6f69: $08 $02 $c7
	or   b                                           ; $6f6c: $b0
	and  b                                           ; $6f6d: $a0
	add  e                                           ; $6f6e: $83
	or   b                                           ; $6f6f: $b0
	ld   [bc], a                                     ; $6f70: $02
	and  b                                           ; $6f71: $a0
	or   b                                           ; $6f72: $b0
	and  b                                           ; $6f73: $a0
	add  e                                           ; $6f74: $83
	or   b                                           ; $6f75: $b0
	nop                                              ; $6f76: $00
	ld   h, c                                        ; $6f77: $61
	adc  c                                           ; $6f78: $89
	ld   bc, $0004                                   ; $6f79: $01 $04 $00
	rrca                                             ; $6f7c: $0f
	ld   c, $09                                      ; $6f7d: $0e $09

jr_076_6f7f:
	or   [hl]                                        ; $6f7f: $b6
	adc  c                                           ; $6f80: $89
	pop  af                                          ; $6f81: $f1
	ld   b, $71                                      ; $6f82: $06 $71
	pop  af                                          ; $6f84: $f1
	ld   [hl], c                                     ; $6f85: $71
	pop  af                                          ; $6f86: $f1
	ld   c, a                                        ; $6f87: $4f
	nop                                              ; $6f88: $00
	ld   d, d                                        ; $6f89: $52
	add  b                                           ; $6f8a: $80
	rst  JumpTable                                         ; $6f8b: $df
	add  [hl]                                        ; $6f8c: $86
	ld   e, d                                        ; $6f8d: $5a
	add  b                                           ; $6f8e: $80
	rst  JumpTable                                         ; $6f8f: $df
	inc  bc                                          ; $6f90: $03
	ld   e, d                                        ; $6f91: $5a
	inc  e                                           ; $6f92: $1c
	inc  d                                           ; $6f93: $14
	ld   d, h                                        ; $6f94: $54
	add  b                                           ; $6f95: $80
	rst  $30                                         ; $6f96: $f7
	add  e                                           ; $6f97: $83
	ld   d, [hl]                                     ; $6f98: $56
	rlca                                             ; $6f99: $07
	ld   d, h                                        ; $6f9a: $54
	ld   d, [hl]                                     ; $6f9b: $56
	ld   h, a                                        ; $6f9c: $67
	rst  $20                                         ; $6f9d: $e7
	call nz, $1a46                                   ; $6f9e: $c4 $46 $1a
	nop                                              ; $6fa1: $00
	add  b                                           ; $6fa2: $80
	add  b                                           ; $6fa3: $80
	add  b                                           ; $6fa4: $80
	nop                                              ; $6fa5: $00
	add  d                                           ; $6fa6: $82
	ld   b, b                                        ; $6fa7: $40
	add  b                                           ; $6fa8: $80
	nop                                              ; $6fa9: $00
	add  b                                           ; $6faa: $80
	add  b                                           ; $6fab: $80
	add  b                                           ; $6fac: $80
	nop                                              ; $6fad: $00
	dec  bc                                          ; $6fae: $0b
	sub  b                                           ; $6faf: $90
	rst  $38                                         ; $6fb0: $ff
	adc  e                                           ; $6fb1: $8b
	di                                               ; $6fb2: $f3
	xor  $fe                                         ; $6fb3: $ee $fe
	ld   e, a                                        ; $6fb5: $5f
	rst  $38                                         ; $6fb6: $ff
	inc  de                                          ; $6fb7: $13
	db   $d3                                         ; $6fb8: $d3
	ld   d, b                                        ; $6fb9: $50
	pop  de                                          ; $6fba: $d1
	add  d                                           ; $6fbb: $82
	db   $d3                                         ; $6fbc: $d3
	nop                                              ; $6fbd: $00
	cp   $83                                         ; $6fbe: $fe $83
	ldh  a, [$80]                                    ; $6fc0: $f0 $80
	sub  b                                           ; $6fc2: $90
	add  b                                           ; $6fc3: $80
	ldh  a, [rSB]                                    ; $6fc4: $f0 $01
	rrca                                             ; $6fc6: $0f
	rst  $38                                         ; $6fc7: $ff
	add  b                                           ; $6fc8: $80
	ret  nz                                          ; $6fc9: $c0

	add  b                                           ; $6fca: $80
	rst  $38                                         ; $6fcb: $ff
	nop                                              ; $6fcc: $00
	ld   h, b                                        ; $6fcd: $60
	add  a                                           ; $6fce: $87
	nop                                              ; $6fcf: $00
	add  b                                           ; $6fd0: $80
	sbc  a                                           ; $6fd1: $9f
	add  b                                           ; $6fd2: $80
	ld   [bc], a                                     ; $6fd3: $02
	add  b                                           ; $6fd4: $80
	sbc  [hl]                                        ; $6fd5: $9e
	ld   bc, $ff9f                                   ; $6fd6: $01 $9f $ff
	add  b                                           ; $6fd9: $80
	ld   b, a                                        ; $6fda: $47
	add  b                                           ; $6fdb: $80
	xor  d                                           ; $6fdc: $aa
	add  b                                           ; $6fdd: $80
	ld   d, l                                        ; $6fde: $55
	add  b                                           ; $6fdf: $80
	ld   a, [bc]                                     ; $6fe0: $0a
	add  b                                           ; $6fe1: $80
	push hl                                          ; $6fe2: $e5
	add  b                                           ; $6fe3: $80
	ld   [hl-], a                                    ; $6fe4: $32
	add  b                                           ; $6fe5: $80
	jr   c, jr_076_6f68                              ; $6fe6: $38 $80

	add  b                                           ; $6fe8: $80
	add  b                                           ; $6fe9: $80
	db   $fd                                         ; $6fea: $fd
	add  b                                           ; $6feb: $80
	ld   a, [hl]                                     ; $6fec: $7e
	add  b                                           ; $6fed: $80
	ld   d, l                                        ; $6fee: $55
	add  b                                           ; $6fef: $80
	xor  d                                           ; $6ff0: $aa
	add  b                                           ; $6ff1: $80
	ld   d, l                                        ; $6ff2: $55
	add  b                                           ; $6ff3: $80
	xor  d                                           ; $6ff4: $aa
	add  b                                           ; $6ff5: $80
	nop                                              ; $6ff6: $00
	ld   bc, $03c3                                   ; $6ff7: $01 $c3 $03
	add  b                                           ; $6ffa: $80
	nop                                              ; $6ffb: $00
	add  b                                           ; $6ffc: $80
	jr   nz, jr_076_6f7f                             ; $6ffd: $20 $80

	dec  d                                           ; $6fff: $15
	add  b                                           ; $7000: $80
	ld   a, [hl+]                                    ; $7001: $2a
	add  b                                           ; $7002: $80
	dec  d                                           ; $7003: $15
	add  b                                           ; $7004: $80
	ld   a, [hl+]                                    ; $7005: $2a
	add  b                                           ; $7006: $80
	dec  d                                           ; $7007: $15
	ld   bc, $ff3f                                   ; $7008: $01 $3f $ff
	add  b                                           ; $700b: $80
	ccf                                              ; $700c: $3f
	add  b                                           ; $700d: $80
	ld   [bc], a                                     ; $700e: $02
	add  b                                           ; $700f: $80
	ld   d, l                                        ; $7010: $55
	add  b                                           ; $7011: $80
	xor  d                                           ; $7012: $aa
	add  b                                           ; $7013: $80
	ld   d, l                                        ; $7014: $55
	add  b                                           ; $7015: $80
	xor  d                                           ; $7016: $aa
	add  b                                           ; $7017: $80
	ld   bc, $fa80                                   ; $7018: $01 $80 $fa
	add  b                                           ; $701b: $80
	push de                                          ; $701c: $d5
	add  b                                           ; $701d: $80
	xor  d                                           ; $701e: $aa
	add  b                                           ; $701f: $80
	ld   d, h                                        ; $7020: $54
	add  b                                           ; $7021: $80
	xor  b                                           ; $7022: $a8
	add  b                                           ; $7023: $80
	ld   d, b                                        ; $7024: $50
	add  b                                           ; $7025: $80
	and  b                                           ; $7026: $a0
	add  b                                           ; $7027: $80
	ld   b, b                                        ; $7028: $40
	ld   bc, $20e0                                   ; $7029: $01 $e0 $20
	add  d                                           ; $702c: $82
	nop                                              ; $702d: $00
	add  b                                           ; $702e: $80
	ld   bc, $0280                                   ; $702f: $01 $80 $02
	add  b                                           ; $7032: $80
	dec  b                                           ; $7033: $05
	add  b                                           ; $7034: $80
	nop                                              ; $7035: $00
	add  b                                           ; $7036: $80
	ld   a, [bc]                                     ; $7037: $0a
	ld   bc, $2aea                                   ; $7038: $01 $ea $2a
	add  b                                           ; $703b: $80
	ld   d, l                                        ; $703c: $55
	add  b                                           ; $703d: $80
	xor  d                                           ; $703e: $aa
	add  b                                           ; $703f: $80
	ld   d, b                                        ; $7040: $50
	add  b                                           ; $7041: $80
	add  d                                           ; $7042: $82
	add  b                                           ; $7043: $80
	ld   d, l                                        ; $7044: $55
	add  b                                           ; $7045: $80
	ld   [bc], a                                     ; $7046: $02
	add  b                                           ; $7047: $80
	sub  b                                           ; $7048: $90
	ld   bc, $aaab                                   ; $7049: $01 $ab $aa
	add  b                                           ; $704c: $80
	ld   d, h                                        ; $704d: $54
	add  b                                           ; $704e: $80
	add  b                                           ; $704f: $80
	add  d                                           ; $7050: $82
	nop                                              ; $7051: $00
	add  b                                           ; $7052: $80
	ld   d, [hl]                                     ; $7053: $56
	add  b                                           ; $7054: $80
	xor  d                                           ; $7055: $aa
	add  b                                           ; $7056: $80
	ld   [bc], a                                     ; $7057: $02
	ld   bc, $2aab                                   ; $7058: $01 $ab $2a
	add  b                                           ; $705b: $80
	ld   b, l                                        ; $705c: $45
	add  d                                           ; $705d: $82
	nop                                              ; $705e: $00
	add  b                                           ; $705f: $80
	ld   a, [hl+]                                    ; $7060: $2a
	add  b                                           ; $7061: $80
	ld   d, l                                        ; $7062: $55
	add  e                                           ; $7063: $83
	nop                                              ; $7064: $00
	nop                                              ; $7065: $00
	add  b                                           ; $7066: $80
	add  h                                           ; $7067: $84
	nop                                              ; $7068: $00
	add  b                                           ; $7069: $80
	and  b                                           ; $706a: $a0
	add  b                                           ; $706b: $80
	ld   d, l                                        ; $706c: $55
	add  d                                           ; $706d: $82
	nop                                              ; $706e: $00
	nop                                              ; $706f: $00
	rrca                                             ; $7070: $0f
	add  e                                           ; $7071: $83
	ld   [$1880], sp                                 ; $7072: $08 $80 $18
	add  b                                           ; $7075: $80
	xor  b                                           ; $7076: $a8
	add  b                                           ; $7077: $80
	ld   e, b                                        ; $7078: $58
	add  d                                           ; $7079: $82
	ld   [$d700], sp                                 ; $707a: $08 $00 $d7
	adc  e                                           ; $707d: $8b
	or   b                                           ; $707e: $b0
	ld   [bc], a                                     ; $707f: $02
	and  b                                           ; $7080: $a0
	or   b                                           ; $7081: $b0
	ld   [hl], c                                     ; $7082: $71
	adc  l                                           ; $7083: $8d
	add  hl, bc                                      ; $7084: $09
	nop                                              ; $7085: $00
	or   [hl]                                        ; $7086: $b6
	adc  e                                           ; $7087: $8b
	pop  af                                          ; $7088: $f1
	add  b                                           ; $7089: $80
	ldh  a, [rP1]                                    ; $708a: $f0 $00
	dec  e                                           ; $708c: $1d
	add  c                                           ; $708d: $81
	ld   e, d                                        ; $708e: $5a
	inc  bc                                          ; $708f: $03
	sbc  $df                                         ; $7090: $de $df
	ld   d, c                                        ; $7092: $51
	ld   e, b                                        ; $7093: $58
	add  b                                           ; $7094: $80
	ld   d, b                                        ; $7095: $50
	add  b                                           ; $7096: $80
	ld   b, b                                        ; $7097: $40
	ld   bc, $f708                                   ; $7098: $01 $08 $f7
	add  b                                           ; $709b: $80
	nop                                              ; $709c: $00
	nop                                              ; $709d: $00
	db   $eb                                         ; $709e: $eb
	add  c                                           ; $709f: $81
	ld   d, $02                                      ; $70a0: $16 $02
	rla                                              ; $70a2: $17
	or   a                                           ; $70a3: $b7
	or   h                                           ; $70a4: $b4
	add  e                                           ; $70a5: $83
	ld   d, $01                                      ; $70a6: $16 $01
	rlca                                             ; $70a8: $07
	ld   hl, sp-$80                                  ; $70a9: $f8 $80
	nop                                              ; $70ab: $00
	nop                                              ; $70ac: $00
	and  a                                           ; $70ad: $a7
	add  c                                           ; $70ae: $81
	ld   b, b                                        ; $70af: $40
	add  b                                           ; $70b0: $80
	ldh  [$80], a                                    ; $70b1: $e0 $80
	inc  b                                           ; $70b3: $04
	add  d                                           ; $70b4: $82
	nop                                              ; $70b5: $00
	nop                                              ; $70b6: $00
	rst  $20                                         ; $70b7: $e7
	add  c                                           ; $70b8: $81
	nop                                              ; $70b9: $00
	nop                                              ; $70ba: $00
	jp   nc, $d387                                   ; $70bb: $d2 $87 $d3

	ld   [bc], a                                     ; $70be: $02
	db   $fd                                         ; $70bf: $fd
	rst  $38                                         ; $70c0: $ff
	inc  bc                                          ; $70c1: $03
	add  c                                           ; $70c2: $81
	nop                                              ; $70c3: $00
	ld   bc, $c03f                                   ; $70c4: $01 $3f $c0
	add  b                                           ; $70c7: $80
	rst  $38                                         ; $70c8: $ff
	add  d                                           ; $70c9: $82
	ret  nz                                          ; $70ca: $c0

	add  b                                           ; $70cb: $80
	rst  $38                                         ; $70cc: $ff
	add  b                                           ; $70cd: $80
	ret  nz                                          ; $70ce: $c0

	nop                                              ; $70cf: $00
	rst  $38                                         ; $70d0: $ff
	add  c                                           ; $70d1: $81
	nop                                              ; $70d2: $00
	ld   bc, $029d                                   ; $70d3: $01 $9d $02
	add  b                                           ; $70d6: $80
	sbc  [hl]                                        ; $70d7: $9e
	add  d                                           ; $70d8: $82
	ld   [bc], a                                     ; $70d9: $02
	add  b                                           ; $70da: $80
	sbc  a                                           ; $70db: $9f
	add  b                                           ; $70dc: $80
	nop                                              ; $70dd: $00
	nop                                              ; $70de: $00
	sbc  a                                           ; $70df: $9f
	add  c                                           ; $70e0: $81
	nop                                              ; $70e1: $00
	inc  c                                           ; $70e2: $0c
	jp   $1e3c                                       ; $70e3: $c3 $3c $1e


	ld   a, $2e                                      ; $70e6: $3e $2e
	ld   a, $06                                      ; $70e8: $3e $06
	ld   a, $f6                                      ; $70ea: $3e $f6
	cp   $3a                                         ; $70ec: $fe $3a
	ld   a, $fb                                      ; $70ee: $3e $fb
	add  c                                           ; $70f0: $81
	nop                                              ; $70f1: $00
	nop                                              ; $70f2: $00
	rst  $38                                         ; $70f3: $ff
	adc  c                                           ; $70f4: $89
	nop                                              ; $70f5: $00
	nop                                              ; $70f6: $00
	rst  $38                                         ; $70f7: $ff
	add  c                                           ; $70f8: $81
	nop                                              ; $70f9: $00
	ld   bc, $0a35                                   ; $70fa: $01 $35 $0a
	adc  b                                           ; $70fd: $88
	nop                                              ; $70fe: $00
	nop                                              ; $70ff: $00
	ccf                                              ; $7100: $3f
	add  c                                           ; $7101: $81
	nop                                              ; $7102: $00
	ld   bc, $827d                                   ; $7103: $01 $7d $82
	adc  b                                           ; $7106: $88
	nop                                              ; $7107: $00
	nop                                              ; $7108: $00
	rst  $38                                         ; $7109: $ff
	add  c                                           ; $710a: $81
	nop                                              ; $710b: $00
	nop                                              ; $710c: $00
	ccf                                              ; $710d: $3f
	adc  c                                           ; $710e: $89
	nop                                              ; $710f: $00
	nop                                              ; $7110: $00
	ccf                                              ; $7111: $3f
	add  c                                           ; $7112: $81
	nop                                              ; $7113: $00
	nop                                              ; $7114: $00
	rst  $38                                         ; $7115: $ff
	add  e                                           ; $7116: $83
	nop                                              ; $7117: $00
	ld   b, $0e                                      ; $7118: $06 $0e
	rrca                                             ; $711a: $0f
	nop                                              ; $711b: $00
	rrca                                             ; $711c: $0f
	ld   bc, $ff0f                                   ; $711d: $01 $0f $ff
	add  c                                           ; $7120: $81
	nop                                              ; $7121: $00
	ld   bc, $06f8                                   ; $7122: $01 $f8 $06
	add  b                                           ; $7125: $80
	ld   [bc], a                                     ; $7126: $02
	add  c                                           ; $7127: $81
	ld   e, $01                                      ; $7128: $1e $01
	cp   $1e                                         ; $712a: $fe $1e
	add  d                                           ; $712c: $82
	cp   $81                                         ; $712d: $fe $81
	nop                                              ; $712f: $00
	nop                                              ; $7130: $00
	ld   a, a                                        ; $7131: $7f
	add  c                                           ; $7132: $81
	nop                                              ; $7133: $00
	ld   [$7f1f], sp                                 ; $7134: $08 $1f $7f
	jr   jr_076_71b1                                 ; $7137: $18 $78

	ld   b, d                                        ; $7139: $42
	ld   b, e                                        ; $713a: $43
	ld   a, l                                        ; $713b: $7d
	ld   a, a                                        ; $713c: $7f
	ld   a, h                                        ; $713d: $7c
	add  c                                           ; $713e: $81
	nop                                              ; $713f: $00
	inc  bc                                          ; $7140: $03
	db   $fc                                         ; $7141: $fc
	nop                                              ; $7142: $00
	inc  bc                                          ; $7143: $03
	nop                                              ; $7144: $00
	add  b                                           ; $7145: $80
	rst  $28                                         ; $7146: $ef
	ld   [bc], a                                     ; $7147: $02
	pop  bc                                          ; $7148: $c1
	rst  $38                                         ; $7149: $ff
	ld   a, $81                                      ; $714a: $3e $81
	rst  $38                                         ; $714c: $ff
	add  b                                           ; $714d: $80
	rlca                                             ; $714e: $07
	add  b                                           ; $714f: $80
	nop                                              ; $7150: $00
	ld   [$c8f0], sp                                 ; $7151: $08 $f0 $c8
	ld   [$0828], sp                                 ; $7154: $08 $28 $08
	sbc  b                                           ; $7157: $98
	adc  b                                           ; $7158: $88
	add  sp, $08                                     ; $7159: $e8 $08
	add  b                                           ; $715b: $80
	adc  b                                           ; $715c: $88
	nop                                              ; $715d: $00
	add  sp, -$80                                    ; $715e: $e8 $80
	ld   hl, sp+$02                                  ; $7160: $f8 $02
	ld   [hl], b                                     ; $7162: $70
	ld   a, b                                        ; $7163: $78
	rrca                                             ; $7164: $0f
	add  l                                           ; $7165: $85
	sub  b                                           ; $7166: $90
	ld   bc, $9080                                   ; $7167: $01 $80 $90
	add  d                                           ; $716a: $82
	or   b                                           ; $716b: $b0
	add  b                                           ; $716c: $80
	ldh  a, [rTIMA]                                  ; $716d: $f0 $05
	halt                                             ; $716f: $76
	rrca                                             ; $7170: $0f
	add  hl, bc                                      ; $7171: $09
	rrca                                             ; $7172: $0f
	ld   b, $09                                      ; $7173: $06 $09
	adc  b                                           ; $7175: $88
	ld   bc, $3e02                                   ; $7176: $01 $02 $3e
	pop  af                                          ; $7179: $f1
	ld   [hl], c                                     ; $717a: $71
	adc  e                                           ; $717b: $8b
	pop  af                                          ; $717c: $f1
	ld   [bc], a                                     ; $717d: $02
	ld   c, a                                        ; $717e: $4f
	nop                                              ; $717f: $00
	ld   d, d                                        ; $7180: $52
	add  b                                           ; $7181: $80
	rst  JumpTable                                         ; $7182: $df
	add  h                                           ; $7183: $84
	ld   e, d                                        ; $7184: $5a
	add  b                                           ; $7185: $80
	rst  JumpTable                                         ; $7186: $df
	add  c                                           ; $7187: $81
	ld   e, d                                        ; $7188: $5a
	ld   [bc], a                                     ; $7189: $02
	ld   [$5400], sp                                 ; $718a: $08 $00 $54
	add  b                                           ; $718d: $80
	rst  $30                                         ; $718e: $f7
	add  e                                           ; $718f: $83
	ld   d, [hl]                                     ; $7190: $56
	ld   [bc], a                                     ; $7191: $02
	ld   d, a                                        ; $7192: $57
	rst  $30                                         ; $7193: $f7
	or   $81                                         ; $7194: $f6 $81
	ld   d, [hl]                                     ; $7196: $56
	inc  b                                           ; $7197: $04
	ld   a, [de]                                     ; $7198: $1a
	nop                                              ; $7199: $00
	add  h                                           ; $719a: $84
	db   $e4                                         ; $719b: $e4
	ld   h, b                                        ; $719c: $60
	add  e                                           ; $719d: $83
	ld   b, b                                        ; $719e: $40
	ld   [bc], a                                     ; $719f: $02
	call nz, Call_076_60e4                           ; $71a0: $c4 $e4 $60
	add  c                                           ; $71a3: $81
	ld   b, b                                        ; $71a4: $40
	inc  b                                           ; $71a5: $04
	rla                                              ; $71a6: $17
	cp   a                                           ; $71a7: $bf
	xor  a                                           ; $71a8: $af
	cp   a                                           ; $71a9: $bf
	sbc  a                                           ; $71aa: $9f
	add  b                                           ; $71ab: $80
	cp   a                                           ; $71ac: $bf
	dec  de                                          ; $71ad: $1b
	rst  $38                                         ; $71ae: $ff
	ld   a, l                                        ; $71af: $7d
	rst  $38                                         ; $71b0: $ff

jr_076_71b1:
	ei                                               ; $71b1: $fb
	rst  $38                                         ; $71b2: $ff
	rst  $30                                         ; $71b3: $f7
	rst  $38                                         ; $71b4: $ff
	xor  a                                           ; $71b5: $af
	rst  $38                                         ; $71b6: $ff
	adc  d                                           ; $71b7: $8a
	rst  $30                                         ; $71b8: $f7
	rst  ToBoot                                         ; $71b9: $c7
	db   $e4                                         ; $71ba: $e4
	or   h                                           ; $71bb: $b4
	rst  $30                                         ; $71bc: $f7
	rla                                              ; $71bd: $17
	rst  $30                                         ; $71be: $f7
	or   e                                           ; $71bf: $b3
	rst  $30                                         ; $71c0: $f7
	ld   e, [hl]                                     ; $71c1: $5e
	ld   e, a                                        ; $71c2: $5f
	add  [hl]                                        ; $71c3: $86
	ldh  [$60], a                                    ; $71c4: $e0 $60
	ldh  [$6c], a                                    ; $71c6: $e0 $6c
	sub  d                                           ; $71c8: $92
	sub  [hl]                                        ; $71c9: $96
	add  b                                           ; $71ca: $80
	inc  de                                          ; $71cb: $13
	nop                                              ; $71cc: $00
	sub  [hl]                                        ; $71cd: $96
	add  b                                           ; $71ce: $80
	sub  e                                           ; $71cf: $93
	dec  b                                           ; $71d0: $05
	sbc  d                                           ; $71d1: $9a
	ld   e, $83                                      ; $71d2: $1e $83
	add  a                                           ; $71d4: $87
	inc  e                                           ; $71d5: $1c
	ld   [bc], a                                     ; $71d6: $02
	add  b                                           ; $71d7: $80
	inc  bc                                          ; $71d8: $03
	ld   de, $7e3a                                   ; $71d9: $11 $3a $7e
	ld   a, [hl+]                                    ; $71dc: $2a
	cp   $a6                                         ; $71dd: $fe $a6
	ld   a, [hl]                                     ; $71df: $7e
	or   $fe                                         ; $71e0: $f6 $fe
	ld   l, [hl]                                     ; $71e2: $6e
	ld   a, a                                        ; $71e3: $7f
	rst  $20                                         ; $71e4: $e7
	rst  $38                                         ; $71e5: $ff
	ld   [hl], a                                     ; $71e6: $77
	ld   a, a                                        ; $71e7: $7f
	rst  $28                                         ; $71e8: $ef
	rst  $38                                         ; $71e9: $ff
	ld   hl, $8010                                   ; $71ea: $21 $10 $80
	nop                                              ; $71ed: $00
	add  b                                           ; $71ee: $80
	db   $10                                         ; $71ef: $10
	add  b                                           ; $71f0: $80
	sub  b                                           ; $71f1: $90
	add  b                                           ; $71f2: $80

jr_076_71f3:
	rst  $38                                         ; $71f3: $ff
	add  b                                           ; $71f4: $80
	call $3d80                                       ; $71f5: $cd $80 $3d
	add  b                                           ; $71f8: $80
	pop  af                                          ; $71f9: $f1
	nop                                              ; $71fa: $00
	ret  nz                                          ; $71fb: $c0

	add  l                                           ; $71fc: $85
	nop                                              ; $71fd: $00
	add  b                                           ; $71fe: $80
	dec  [hl]                                        ; $71ff: $35
	add  b                                           ; $7200: $80
	nop                                              ; $7201: $00
	add  b                                           ; $7202: $80
	inc  [hl]                                        ; $7203: $34
	add  b                                           ; $7204: $80
	inc  h                                           ; $7205: $24
	nop                                              ; $7206: $00
	ret  nz                                          ; $7207: $c0

	add  l                                           ; $7208: $85
	nop                                              ; $7209: $00
	add  b                                           ; $720a: $80
	pop  bc                                          ; $720b: $c1
	rlca                                             ; $720c: $07
	nop                                              ; $720d: $00
	inc  bc                                          ; $720e: $03
	dec  b                                           ; $720f: $05
	rlca                                             ; $7210: $07
	ld   a, [bc]                                     ; $7211: $0a
	rrca                                             ; $7212: $0f
	inc  b                                           ; $7213: $04
	nop                                              ; $7214: $00
	add  b                                           ; $7215: $80
	ld   bc, $b905                                   ; $7216: $01 $05 $b9
	ld   sp, hl                                      ; $7219: $f9
	ld   hl, sp-$28                                  ; $721a: $f8 $d8
	and  a                                           ; $721c: $a7
	cp   a                                           ; $721d: $bf
	add  b                                           ; $721e: $80
	rst  $38                                         ; $721f: $ff
	dec  b                                           ; $7220: $05
	xor  a                                           ; $7221: $af
	rst  $38                                         ; $7222: $ff
	rst  $10                                         ; $7223: $d7
	rst  $38                                         ; $7224: $ff
	ret  nz                                          ; $7225: $c0

	nop                                              ; $7226: $00
	add  b                                           ; $7227: $80
	ccf                                              ; $7228: $3f
	add  b                                           ; $7229: $80
	jr   c, jr_076_722e                              ; $722a: $38 $02

	jr   jr_076_724d                                 ; $722c: $18 $1f

jr_076_722e:
	rrca                                             ; $722e: $0f
	add  c                                           ; $722f: $81
	ld   [$1880], sp                                 ; $7230: $08 $80 $18
	add  b                                           ; $7233: $80
	jr   c, jr_076_7237                              ; $7234: $38 $01

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7236: $cf

jr_076_7237:
	rrca                                             ; $7237: $0f
	add  b                                           ; $7238: $80
	rst  $38                                         ; $7239: $ff
	add  c                                           ; $723a: $81
	nop                                              ; $723b: $00
	add  b                                           ; $723c: $80
	rst  $38                                         ; $723d: $ff
	add  l                                           ; $723e: $85
	nop                                              ; $723f: $00
	nop                                              ; $7240: $00
	rst  $38                                         ; $7241: $ff
	add  c                                           ; $7242: $81
	cp   $81                                         ; $7243: $fe $81
	ld   [bc], a                                     ; $7245: $02
	add  b                                           ; $7246: $80
	cp   $83                                         ; $7247: $fe $83
	ld   [bc], a                                     ; $7249: $02
	add  b                                           ; $724a: $80
	nop                                              ; $724b: $00
	nop                                              ; $724c: $00

jr_076_724d:
	cp   $80                                         ; $724d: $fe $80
	ld   [hl], c                                     ; $724f: $71
	rrca                                             ; $7250: $0f
	ld   h, a                                        ; $7251: $67
	jr   c, jr_076_72b3                              ; $7252: $38 $5f

	ld   a, a                                        ; $7254: $7f
	nop                                              ; $7255: $00
	ld   b, e                                        ; $7256: $43
	ld   b, b                                        ; $7257: $40
	ld   b, h                                        ; $7258: $44
	ld   b, b                                        ; $7259: $40
	ld   l, b                                        ; $725a: $68
	ld   h, e                                        ; $725b: $63
	ld   c, [hl]                                     ; $725c: $4e
	ld   c, a                                        ; $725d: $4f
	ld   [hl], d                                     ; $725e: $72
	ld   hl, sp+$07                                  ; $725f: $f8 $07
	add  b                                           ; $7261: $80
	nop                                              ; $7262: $00
	add  b                                           ; $7263: $80
	ld   a, h                                        ; $7264: $7c
	nop                                              ; $7265: $00
	rst  $38                                         ; $7266: $ff
	add  b                                           ; $7267: $80
	ccf                                              ; $7268: $3f
	add  b                                           ; $7269: $80
	rlca                                             ; $726a: $07
	dec  b                                           ; $726b: $05
	ld   b, e                                        ; $726c: $43
	jp   $80b0                                       ; $726d: $c3 $b0 $80


	xor  b                                           ; $7270: $a8
	jr   jr_076_71f3                                 ; $7271: $18 $80

	inc  c                                           ; $7273: $0c
	inc  b                                           ; $7274: $04
	call nz, $c404                                   ; $7275: $c4 $04 $c4
	db   $e4                                         ; $7278: $e4
	ld   [de], a                                     ; $7279: $12
	add  b                                           ; $727a: $80
	adc  d                                           ; $727b: $8a
	add  c                                           ; $727c: $81
	jp   z, $c904                                    ; $727d: $ca $04 $c9

	jp   hl                                          ; $7280: $e9


	ld   h, a                                        ; $7281: $67
	ldh  a, [$60]                                    ; $7282: $f0 $60
	add  c                                           ; $7284: $81
	ldh  [$82], a                                    ; $7285: $e0 $82
	ret  nc                                          ; $7287: $d0

	add  b                                           ; $7288: $80
	or   b                                           ; $7289: $b0
	add  b                                           ; $728a: $80
	and  b                                           ; $728b: $a0
	add  b                                           ; $728c: $80
	ld   h, b                                        ; $728d: $60
	nop                                              ; $728e: $00
	pop  af                                          ; $728f: $f1
	add  a                                           ; $7290: $87
	ld   bc, $0006                                   ; $7291: $01 $06 $00
	rrca                                             ; $7294: $0f
	ld   c, $01                                      ; $7295: $0e $01
	nop                                              ; $7297: $00
	rrca                                             ; $7298: $0f
	or   c                                           ; $7299: $b1
	add  l                                           ; $729a: $85
	pop  af                                          ; $729b: $f1
	nop                                              ; $729c: $00
	ld   [hl], c                                     ; $729d: $71
	add  c                                           ; $729e: $81
	pop  af                                          ; $729f: $f1
	ld   [$f171], sp                                 ; $72a0: $08 $71 $f1
	ld   [hl], c                                     ; $72a3: $71
	pop  af                                          ; $72a4: $f1
	sbc  l                                           ; $72a5: $9d

jr_076_72a6:
	ld   e, d                                        ; $72a6: $5a
	ld   e, [hl]                                     ; $72a7: $5e
	rst  JumpTable                                         ; $72a8: $df
	reti                                             ; $72a9: $d9


	add  [hl]                                        ; $72aa: $86
	ld   e, b                                        ; $72ab: $58
	add  hl, bc                                      ; $72ac: $09
	rst  JumpTable                                         ; $72ad: $df
	jp   c, Jump_076_5e5f                            ; $72ae: $da $5f $5e

	ld   d, [hl]                                     ; $72b1: $56
	ld   b, e                                        ; $72b2: $43

jr_076_72b3:
	rst  $38                                         ; $72b3: $ff
	cp   [hl]                                        ; $72b4: $be
	ld   [de], a                                     ; $72b5: $12
	db   $10                                         ; $72b6: $10
	add  c                                           ; $72b7: $81
	ld   [de], a                                     ; $72b8: $12
	nop                                              ; $72b9: $00
	nop                                              ; $72ba: $00
	add  b                                           ; $72bb: $80
	db   $10                                         ; $72bc: $10
	inc  b                                           ; $72bd: $04
	ret  nc                                          ; $72be: $d0

	ld   d, d                                        ; $72bf: $52
	sub  d                                           ; $72c0: $92
	ld   e, b                                        ; $72c1: $58
	ld   b, b                                        ; $72c2: $40
	add  b                                           ; $72c3: $80
	add  b                                           ; $72c4: $80
	add  [hl]                                        ; $72c5: $86
	nop                                              ; $72c6: $00
	add  b                                           ; $72c7: $80
	inc  h                                           ; $72c8: $24
	add  b                                           ; $72c9: $80
	ld   b, b                                        ; $72ca: $40
	ld   bc, $ff99                                   ; $72cb: $01 $99 $ff
	add  b                                           ; $72ce: $80
	cp   a                                           ; $72cf: $bf
	nop                                              ; $72d0: $00
	ccf                                              ; $72d1: $3f
	add  l                                           ; $72d2: $85
	cp   a                                           ; $72d3: $bf
	add  d                                           ; $72d4: $82
	cp   e                                           ; $72d5: $bb
	dec  bc                                          ; $72d6: $0b
	ld   e, $e0                                      ; $72d7: $1e $e0
	ld   h, b                                        ; $72d9: $60
	ldh  [$80], a                                    ; $72da: $e0 $80
	rst  $30                                         ; $72dc: $f7
	or   $f7                                         ; $72dd: $f6 $f7
	call nz, $b6f6                                   ; $72df: $c4 $f6 $b6
	sub  l                                           ; $72e2: $95
	add  b                                           ; $72e3: $80
	rst  $10                                         ; $72e4: $d7
	ld   [bc], a                                     ; $72e5: $02
	or   [hl]                                        ; $72e6: $b6
	rst  $30                                         ; $72e7: $f7
	call nz, $0380                                   ; $72e8: $c4 $80 $03
	inc  b                                           ; $72eb: $04
	ld   [bc], a                                     ; $72ec: $02
	jr   @-$77                                       ; $72ed: $18 $87

	inc  de                                          ; $72ef: $13
	sub  [hl]                                        ; $72f0: $96
	add  b                                           ; $72f1: $80
	rla                                              ; $72f2: $17
	ld   b, $10                                      ; $72f3: $06 $10
	sub  l                                           ; $72f5: $95
	dec  d                                           ; $72f6: $15
	sub  [hl]                                        ; $72f7: $96
	sub  b                                           ; $72f8: $90
	sub  a                                           ; $72f9: $97
	dec  h                                           ; $72fa: $25
	add  b                                           ; $72fb: $80
	rst  $38                                         ; $72fc: $ff
	inc  b                                           ; $72fd: $04
	ld   a, a                                        ; $72fe: $7f
	ld   l, a                                        ; $72ff: $6f
	rst  $38                                         ; $7300: $ff
	rst  $28                                         ; $7301: $ef
	ld   a, a                                        ; $7302: $7f
	add  b                                           ; $7303: $80
	rst  $38                                         ; $7304: $ff
	nop                                              ; $7305: $00
	ld   a, a                                        ; $7306: $7f
	add  b                                           ; $7307: $80
	rst  $38                                         ; $7308: $ff
	add  b                                           ; $7309: $80
	ld   a, a                                        ; $730a: $7f
	ld   [bc], a                                     ; $730b: $02
	rst  $38                                         ; $730c: $ff
	ld   l, h                                        ; $730d: $6c
	call $3f80                                       ; $730e: $cd $80 $3f
	add  hl, bc                                      ; $7311: $09
	di                                               ; $7312: $f3
	ei                                               ; $7313: $fb
	jp   z, $08fa                                    ; $7314: $ca $fa $08

	ld   hl, sp+$38                                  ; $7317: $f8 $38
	ld   hl, sp-$1e                                  ; $7319: $f8 $e2
	ld   [$ca80], a                                  ; $731b: $ea $80 $ca
	ld   bc, $20e0                                   ; $731e: $01 $e0 $20
	add  d                                           ; $7321: $82
	nop                                              ; $7322: $00
	add  b                                           ; $7323: $80
	jr   nz, jr_076_72a6                             ; $7324: $20 $80

	ld   hl, $0402                                   ; $7326: $21 $02 $04
	rlca                                             ; $7329: $07
	inc  bc                                          ; $732a: $03
	add  b                                           ; $732b: $80
	rlca                                             ; $732c: $07
	ld   [$db00], sp                                 ; $732d: $08 $00 $db
	rra                                              ; $7330: $1f
	ld   b, a                                        ; $7331: $47
	ld   [hl], a                                     ; $7332: $77
	sbc  [hl]                                        ; $7333: $9e
	ld   e, a                                        ; $7334: $5f
	jp   hl                                          ; $7335: $e9


	rst  $38                                         ; $7336: $ff
	add  b                                           ; $7337: $80

jr_076_7338:
	ld   e, a                                        ; $7338: $5f
	dec  b                                           ; $7339: $05
	ld   d, b                                        ; $733a: $50
	ld   d, a                                        ; $733b: $57
	db   $db                                         ; $733c: $db
	rst  $38                                         ; $733d: $ff
	jr   c, jr_076_7338                              ; $733e: $38 $f8

	add  b                                           ; $7340: $80
	rst  $38                                         ; $7341: $ff
	add  c                                           ; $7342: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7343: $cf
	inc  bc                                          ; $7344: $03
	rst  $38                                         ; $7345: $ff
	pop  af                                          ; $7346: $f1
	call $80c0                                       ; $7347: $cd $c0 $80
	adc  $06                                         ; $734a: $ce $06
	call z, $f8c8                                    ; $734c: $cc $c8 $f8
	inc  c                                           ; $734f: $0c
	inc  l                                           ; $7350: $2c
	add  sp, $38                                     ; $7351: $e8 $38
	add  b                                           ; $7353: $80
	ccf                                              ; $7354: $3f
	add  d                                           ; $7355: $82
	jr   c, @+$06                                    ; $7356: $38 $04

	ld   [$2038], sp                                 ; $7358: $08 $38 $20
	jr   z, jr_076_735d                              ; $735b: $28 $00

jr_076_735d:
	add  c                                           ; $735d: $81
	jr   c, jr_076_7363                              ; $735e: $38 $03

	ret  nz                                          ; $7360: $c0

	nop                                              ; $7361: $00
	ld   b, c                                        ; $7362: $41

jr_076_7363:
	cp   l                                           ; $7363: $bd
	add  b                                           ; $7364: $80
	ld   l, h                                        ; $7365: $6c
	ld   [bc], a                                     ; $7366: $02
	ld   [hl], h                                     ; $7367: $74
	db   $fc                                         ; $7368: $fc
	sub  h                                           ; $7369: $94
	add  c                                           ; $736a: $81
	db   $f4                                         ; $736b: $f4
	dec  bc                                          ; $736c: $0b
	db   $e4                                         ; $736d: $e4
	db   $f4                                         ; $736e: $f4
	sbc  h                                           ; $736f: $9c
	db   $fc                                         ; $7370: $fc
	ld   h, l                                        ; $7371: $65
	nop                                              ; $7372: $00
	adc  b                                           ; $7373: $88
	ld   hl, sp+$50                                  ; $7374: $f8 $50
	ld   h, b                                        ; $7376: $60
	ld   c, $4e                                      ; $7377: $0e $4e
	add  b                                           ; $7379: $80
	ld   a, [bc]                                     ; $737a: $0a
	add  b                                           ; $737b: $80
	ld   a, [hl+]                                    ; $737c: $2a
	add  b                                           ; $737d: $80
	ld   l, d                                        ; $737e: $6a
	add  b                                           ; $737f: $80
	ld   a, [hl]                                     ; $7380: $7e
	ld   bc, $4fc0                                   ; $7381: $01 $c0 $4f
	add  b                                           ; $7384: $80
	rrca                                             ; $7385: $0f
	ld   [$7a7c], sp                                 ; $7386: $08 $7c $7a
	ld   c, d                                        ; $7389: $4a
	ld   c, a                                        ; $738a: $4f
	dec  e                                           ; $738b: $1d
	ld   a, d                                        ; $738c: $7a
	ld   c, b                                        ; $738d: $48
	ld   l, e                                        ; $738e: $6b
	ld   a, l                                        ; $738f: $7d
	add  b                                           ; $7390: $80
	ld   a, a                                        ; $7391: $7f
	ld   a, [bc]                                     ; $7392: $0a
	ld   [hl], a                                     ; $7393: $77
	ld   b, h                                        ; $7394: $44
	ret  nz                                          ; $7395: $c0

	call nz, Call_076_4240                           ; $7396: $c4 $40 $42
	ret  nz                                          ; $7399: $c0

	ld   b, b                                        ; $739a: $40
	db   $fd                                         ; $739b: $fd
	db   $fc                                         ; $739c: $fc
	rst  $38                                         ; $739d: $ff
	add  b                                           ; $739e: $80
	db   $e3                                         ; $739f: $e3
	add  b                                           ; $73a0: $80
	add  b                                           ; $73a1: $80
	inc  bc                                          ; $73a2: $03
	nop                                              ; $73a3: $00
	ld   c, $ff                                      ; $73a4: $0e $ff
	ld   sp, hl                                      ; $73a6: $f9
	add  b                                           ; $73a7: $80
	ld   a, c                                        ; $73a8: $79
	add  hl, bc                                      ; $73a9: $09
	ld   sp, $1939                                   ; $73aa: $31 $39 $19
	sbc  c                                           ; $73ad: $99
	adc  l                                           ; $73ae: $8d
	ld   l, l                                        ; $73af: $6d
	db   $f4                                         ; $73b0: $f4
	or   h                                           ; $73b1: $b4
	and  d                                           ; $73b2: $a2
	sub  d                                           ; $73b3: $92
	add  b                                           ; $73b4: $80
	ld   [de], a                                     ; $73b5: $12
	nop                                              ; $73b6: $00
	ld   e, a                                        ; $73b7: $5f

jr_076_73b8:
	add  b                                           ; $73b8: $80
	ld   b, b                                        ; $73b9: $40
	add  c                                           ; $73ba: $81
	ld   d, b                                        ; $73bb: $50
	nop                                              ; $73bc: $00
	sub  b                                           ; $73bd: $90
	add  c                                           ; $73be: $81
	or   b                                           ; $73bf: $b0
	ld   bc, $3000                                   ; $73c0: $01 $00 $30
	add  d                                           ; $73c3: $82
	ld   [hl], b                                     ; $73c4: $70
	ld   [bc], a                                     ; $73c5: $02
	pop  af                                          ; $73c6: $f1
	ld   bc, $8000                                   ; $73c7: $01 $00 $80
	ld   bc, $0f02                                   ; $73ca: $01 $02 $0f
	ld   bc, $860f                                   ; $73cd: $01 $0f $86
	ld   bc, $bf00                                   ; $73d0: $01 $00 $bf
	adc  l                                           ; $73d3: $8d
	pop  af                                          ; $73d4: $f1
	ld   b, $1a                                      ; $73d5: $06 $1a
	ld   e, a                                        ; $73d7: $5f
	ld   e, h                                        ; $73d8: $5c
	ld   e, [hl]                                     ; $73d9: $5e
	ld   e, d                                        ; $73da: $5a
	jp   c, $81d2                                    ; $73db: $da $d2 $81

	ld   e, d                                        ; $73de: $5a
	add  b                                           ; $73df: $80
	ld   c, d                                        ; $73e0: $4a
	add  b                                           ; $73e1: $80
	ld   e, d                                        ; $73e2: $5a
	add  b                                           ; $73e3: $80
	rst  $38                                         ; $73e4: $ff
	add  d                                           ; $73e5: $82
	ld   [bc], a                                     ; $73e6: $02
	ld   bc, $0301                                   ; $73e7: $01 $01 $03
	add  b                                           ; $73ea: $80
	ld   [de], a                                     ; $73eb: $12
	nop                                              ; $73ec: $00
	db   $10                                         ; $73ed: $10
	add  c                                           ; $73ee: $81
	ld   [de], a                                     ; $73ef: $12
	inc  b                                           ; $73f0: $04
	ld   b, b                                        ; $73f1: $40
	ld   b, d                                        ; $73f2: $42
	db   $fd                                         ; $73f3: $fd
	rst  $38                                         ; $73f4: $ff
	ld   e, b                                        ; $73f5: $58
	add  c                                           ; $73f6: $81
	ld   b, b                                        ; $73f7: $40
	add  b                                           ; $73f8: $80
	and  b                                           ; $73f9: $a0

jr_076_73fa:
	nop                                              ; $73fa: $00

jr_076_73fb:
	nop                                              ; $73fb: $00

jr_076_73fc:
	add  l                                           ; $73fc: $85
	ld   b, b                                        ; $73fd: $40
	ld   [bc], a                                     ; $73fe: $02
	and  a                                           ; $73ff: $a7
	rst  $20                                         ; $7400: $e7
	ld   e, l                                        ; $7401: $5d
	adc  e                                           ; $7402: $8b
	cp   e                                           ; $7403: $bb
	ld   b, $01                                      ; $7404: $06 $01
	rst  $38                                         ; $7406: $ff
	ld   sp, $f4d7                                   ; $7407: $31 $d7 $f4
	or   $eb                                         ; $740a: $f6 $eb
	add  a                                           ; $740c: $87
	rst  $38                                         ; $740d: $ff
	ld   b, $0f                                      ; $740e: $06 $0f
	rst  $38                                         ; $7410: $ff
	db   $ec                                         ; $7411: $ec
	sub  [hl]                                        ; $7412: $96
	ld   e, $1f                                      ; $7413: $1e $1f
	adc  c                                           ; $7415: $89
	add  b                                           ; $7416: $80
	sub  d                                           ; $7417: $92
	add  b                                           ; $7418: $80
	sub  e                                           ; $7419: $93
	nop                                              ; $741a: $00
	sub  d                                           ; $741b: $92
	add  b                                           ; $741c: $80
	sub  e                                           ; $741d: $93
	rrca                                             ; $741e: $0f
	adc  [hl]                                        ; $741f: $8e
	sbc  [hl]                                        ; $7420: $9e
	adc  a                                           ; $7421: $8f
	sbc  a                                           ; $7422: $9f
	ld   a, $7f                                      ; $7423: $3e $7f
	ld   a, e                                        ; $7425: $7b
	rst  $38                                         ; $7426: $ff
	rst  JumpTable                                         ; $7427: $df
	ld   a, a                                        ; $7428: $7f
	ld   e, b                                        ; $7429: $58
	db   $fd                                         ; $742a: $fd
	ld   sp, hl                                      ; $742b: $f9
	ld   a, c                                        ; $742c: $79
	pop  de                                          ; $742d: $d1
	pop  af                                          ; $742e: $f1
	add  b                                           ; $742f: $80
	ld   h, c                                        ; $7430: $61
	add  b                                           ; $7431: $80
	rst  $38                                         ; $7432: $ff
	add  b                                           ; $7433: $80
	sbc  d                                           ; $7434: $9a
	add  b                                           ; $7435: $80
	jr   c, jr_076_73b8                              ; $7436: $38 $80

	ld   [hl], b                                     ; $7438: $70
	add  b                                           ; $7439: $80
	ld   h, b                                        ; $743a: $60
	add  b                                           ; $743b: $80
	ld   b, e                                        ; $743c: $43
	ld   bc, FarGetAddrBank                                   ; $743d: $01 $09 $0b
	add  b                                           ; $7440: $80
	rrca                                             ; $7441: $0f
	inc  bc                                          ; $7442: $03
	db   $fd                                         ; $7443: $fd
	rst  $38                                         ; $7444: $ff
	ret  nz                                          ; $7445: $c0

	nop                                              ; $7446: $00
	add  b                                           ; $7447: $80
	ld   e, $00                                      ; $7448: $1e $00
	ld   a, [hl-]                                    ; $744a: $3a
	add  b                                           ; $744b: $80
	ld   h, $85                                      ; $744c: $26 $85
	ld   l, $05                                      ; $744e: $2e $05
	ld   a, [hl+]                                    ; $7450: $2a
	ld   a, $b8                                      ; $7451: $3e $b8
	ld   hl, sp+$78                                  ; $7453: $f8 $78
	ld   hl, sp-$80                                  ; $7455: $f8 $80
	ldh  a, [$80]                                    ; $7457: $f0 $80
	cp   $80                                         ; $7459: $fe $80
	db   $ec                                         ; $745b: $ec
	add  b                                           ; $745c: $80
	ld   hl, sp-$80                                  ; $745d: $f8 $80
	ldh  a, [$80]                                    ; $745f: $f0 $80
	rst  $38                                         ; $7461: $ff
	nop                                              ; $7462: $00
	ld   c, $80                                      ; $7463: $0e $80
	ld   e, $07                                      ; $7465: $1e $07
	ld   e, [hl]                                     ; $7467: $5e
	ld   e, l                                        ; $7468: $5d
	ld   e, a                                        ; $7469: $5f
	dec  de                                          ; $746a: $1b
	ld   e, a                                        ; $746b: $5f
	ld   b, a                                        ; $746c: $47
	ld   d, a                                        ; $746d: $57
	ld   e, c                                        ; $746e: $59
	add  c                                           ; $746f: $81
	ld   e, a                                        ; $7470: $5f
	add  b                                           ; $7471: $80
	rst  $38                                         ; $7472: $ff
	ld   [bc], a                                     ; $7473: $02
	ld   hl, sp+$08                                  ; $7474: $f8 $08
	jr   z, jr_076_73fb                              ; $7476: $28 $83

	jr   c, jr_076_73fa                              ; $7478: $38 $80

	jr   jr_076_73fc                                 ; $747a: $18 $80

	jr   c, @+$03                                    ; $747c: $38 $01

	jr   jr_076_74b8                                 ; $747e: $18 $38

	add  b                                           ; $7480: $80
	ccf                                              ; $7481: $3f
	ld   a, h                                        ; $7482: $7c
	ld   [bc], a                                     ; $7483: $02
	add  [hl]                                        ; $7484: $86
	nop                                              ; $7485: $00
	add  l                                           ; $7486: $85
	rrca                                             ; $7487: $0f
	ld   bc, $0c03                                   ; $7488: $01 $03 $0c
	add  l                                           ; $748b: $85
	nop                                              ; $748c: $00
	nop                                              ; $748d: $00
	rst  $38                                         ; $748e: $ff
	add  b                                           ; $748f: $80
	ldh  a, [$80]                                    ; $7490: $f0 $80
	db   $fc                                         ; $7492: $fc
	add  b                                           ; $7493: $80
	cp   $00                                         ; $7494: $fe $00
	rst  $38                                         ; $7496: $ff
	add  [hl]                                        ; $7497: $86
	nop                                              ; $7498: $00
	nop                                              ; $7499: $00
	rst  $38                                         ; $749a: $ff
	add  b                                           ; $749b: $80
	sbc  a                                           ; $749c: $9f
	add  d                                           ; $749d: $82
	ccf                                              ; $749e: $3f
	ld   bc, $708f                                   ; $749f: $01 $8f $70
	add  l                                           ; $74a2: $85
	nop                                              ; $74a3: $00
	nop                                              ; $74a4: $00
	rst  $38                                         ; $74a5: $ff
	add  b                                           ; $74a6: $80
	ldh  a, [$80]                                    ; $74a7: $f0 $80
	db   $e4                                         ; $74a9: $e4
	add  b                                           ; $74aa: $80
	ret                                              ; $74ab: $c9


	ld   bc, $6c93                                   ; $74ac: $01 $93 $6c
	add  l                                           ; $74af: $85
	nop                                              ; $74b0: $00
	ld   bc, $10ef                                   ; $74b1: $01 $ef $10
	add  b                                           ; $74b4: $80
	ld   [$0404], sp                                 ; $74b5: $08 $04 $04

jr_076_74b8:
	add  h                                           ; $74b8: $84
	add  d                                           ; $74b9: $82
	jp   nz, $853f                                   ; $74ba: $c2 $3f $85

	nop                                              ; $74bd: $00
	ld   bc, $05fa                                   ; $74be: $01 $fa $05
	add  b                                           ; $74c1: $80

jr_076_74c2:
	nop                                              ; $74c2: $00
	add  b                                           ; $74c3: $80
	ld   bc, $0080                                   ; $74c4: $01 $80 $00
	nop                                              ; $74c7: $00
	rst  $38                                         ; $74c8: $ff
	add  l                                           ; $74c9: $85
	nop                                              ; $74ca: $00
	ld   bc, $55aa                                   ; $74cb: $01 $aa $55
	add  b                                           ; $74ce: $80
	xor  d                                           ; $74cf: $aa
	add  b                                           ; $74d0: $80
	ld   d, l                                        ; $74d1: $55
	add  b                                           ; $74d2: $80
	ld   [bc], a                                     ; $74d3: $02
	nop                                              ; $74d4: $00
	rst  $38                                         ; $74d5: $ff
	add  l                                           ; $74d6: $85
	nop                                              ; $74d7: $00
	ld   bc, $55aa                                   ; $74d8: $01 $aa $55
	add  b                                           ; $74db: $80
	xor  d                                           ; $74dc: $aa
	add  b                                           ; $74dd: $80
	ld   d, l                                        ; $74de: $55
	add  b                                           ; $74df: $80
	xor  e                                           ; $74e0: $ab
	nop                                              ; $74e1: $00

jr_076_74e2:
	rst  $38                                         ; $74e2: $ff
	add  l                                           ; $74e3: $85
	nop                                              ; $74e4: $00
	ld   bc, $55aa                                   ; $74e5: $01 $aa $55
	add  b                                           ; $74e8: $80
	xor  e                                           ; $74e9: $ab
	add  b                                           ; $74ea: $80
	ld   a, a                                        ; $74eb: $7f
	add  c                                           ; $74ec: $81
	rst  $38                                         ; $74ed: $ff
	add  l                                           ; $74ee: $85
	nop                                              ; $74ef: $00
	ld   bc, $57a9                                   ; $74f0: $01 $a9 $57
	add  b                                           ; $74f3: $80
	rst  $38                                         ; $74f4: $ff
	nop                                              ; $74f5: $00
	db   $fc                                         ; $74f6: $fc
	add  c                                           ; $74f7: $81
	rst  $38                                         ; $74f8: $ff
	nop                                              ; $74f9: $00
	db   $fd                                         ; $74fa: $fd
	add  l                                           ; $74fb: $85
	nop                                              ; $74fc: $00
	ld   bc, $75ca                                   ; $74fd: $01 $ca $75
	add  b                                           ; $7500: $80
	ld   a, a                                        ; $7501: $7f
	inc  b                                           ; $7502: $04
	rra                                              ; $7503: $1f
	rst  $38                                         ; $7504: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7505: $cf
	rst  $38                                         ; $7506: $ff
	ld   l, a                                        ; $7507: $6f
	add  l                                           ; $7508: $85
	nop                                              ; $7509: $00
	ld   bc, $55aa                                   ; $750a: $01 $aa $55
	add  b                                           ; $750d: $80
	ld   [$ff83], a                                  ; $750e: $ea $83 $ff
	add  l                                           ; $7511: $85
	nop                                              ; $7512: $00
	ld   bc, $55aa                                   ; $7513: $01 $aa $55
	add  b                                           ; $7516: $80
	xor  d                                           ; $7517: $aa
	add  b                                           ; $7518: $80
	ld   d, l                                        ; $7519: $55
	add  b                                           ; $751a: $80
	ld   [$ff00], a                                  ; $751b: $ea $00 $ff
	add  l                                           ; $751e: $85
	nop                                              ; $751f: $00
	ld   bc, $55aa                                   ; $7520: $01 $aa $55
	add  b                                           ; $7523: $80
	xor  d                                           ; $7524: $aa
	add  b                                           ; $7525: $80
	ld   b, b                                        ; $7526: $40
	add  b                                           ; $7527: $80
	xor  c                                           ; $7528: $a9
	nop                                              ; $7529: $00
	rst  $38                                         ; $752a: $ff
	add  l                                           ; $752b: $85
	nop                                              ; $752c: $00
	ld   bc, $40bf                                   ; $752d: $01 $bf $40
	add  b                                           ; $7530: $80
	and  b                                           ; $7531: $a0
	add  b                                           ; $7532: $80
	nop                                              ; $7533: $00
	add  b                                           ; $7534: $80
	ld   b, b                                        ; $7535: $40
	nop                                              ; $7536: $00
	rst  $38                                         ; $7537: $ff
	add  l                                           ; $7538: $85
	nop                                              ; $7539: $00
	ld   bc, $08f7                                   ; $753a: $01 $f7 $08
	add  b                                           ; $753d: $80
	db   $10                                         ; $753e: $10
	add  b                                           ; $753f: $80
	jr   nz, jr_076_74c2                             ; $7540: $20 $80

	ld   b, b                                        ; $7542: $40
	nop                                              ; $7543: $00
	ldh  a, [$80]                                    ; $7544: $f0 $80
	nop                                              ; $7546: $00
	add  b                                           ; $7547: $80
	inc  c                                           ; $7548: $0c
	add  e                                           ; $7549: $83
	rrca                                             ; $754a: $0f
	ld   [bc], a                                     ; $754b: $02
	inc  bc                                          ; $754c: $03
	rrca                                             ; $754d: $0f
	inc  c                                           ; $754e: $0c

jr_076_754f:
	add  c                                           ; $754f: $81
	rrca                                             ; $7550: $0f
	nop                                              ; $7551: $00
	ldh  a, [$80]                                    ; $7552: $f0 $80
	ld   a, a                                        ; $7554: $7f
	add  b                                           ; $7555: $80
	rra                                              ; $7556: $1f
	add  b                                           ; $7557: $80

jr_076_7558:
	add  a                                           ; $7558: $87
	add  b                                           ; $7559: $80
	pop  hl                                          ; $755a: $e1
	add  e                                           ; $755b: $83
	ld   hl, sp+$02                                  ; $755c: $f8 $02
	jr   jr_076_7558                                 ; $755e: $18 $f8

	jr   jr_076_74e2                                 ; $7560: $18 $80

	db   $e3                                         ; $7562: $e3
	add  b                                           ; $7563: $80
	ld   hl, sp-$80                                  ; $7564: $f8 $80
	db   $fc                                         ; $7566: $fc
	add  b                                           ; $7567: $80
	rst  $38                                         ; $7568: $ff
	add  b                                           ; $7569: $80
	ccf                                              ; $756a: $3f
	add  b                                           ; $756b: $80
	rrca                                             ; $756c: $0f
	add  b                                           ; $756d: $80
	add  e                                           ; $756e: $83
	add  b                                           ; $756f: $80
	and  b                                           ; $7570: $a0
	add  b                                           ; $7571: $80
	daa                                              ; $7572: $27
	add  b                                           ; $7573: $80
	ld   c, a                                        ; $7574: $4f
	add  b                                           ; $7575: $80
	rra                                              ; $7576: $1f
	add  b                                           ; $7577: $80
	ld   a, $80                                      ; $7578: $3e $80
	adc  h                                           ; $757a: $8c
	add  b                                           ; $757b: $80
	pop  hl                                          ; $757c: $e1
	add  b                                           ; $757d: $80
	ld   hl, sp+$03                                  ; $757e: $f8 $03
	cp   $ff                                         ; $7580: $fe $ff
	pop  bc                                          ; $7582: $c1
	ret  nz                                          ; $7583: $c0

	add  b                                           ; $7584: $80
	and  b                                           ; $7585: $a0
	add  b                                           ; $7586: $80
	ld   c, b                                        ; $7587: $48
	add  b                                           ; $7588: $80
	call c, $be80                                    ; $7589: $dc $80 $be
	ld   bc, $3f3e                                   ; $758c: $01 $3e $3f
	add  b                                           ; $758f: $80
	ld   a, l                                        ; $7590: $7d
	ld   [bc], a                                     ; $7591: $02
	dec  a                                           ; $7592: $3d
	inc  a                                           ; $7593: $3c
	nop                                              ; $7594: $00
	add  b                                           ; $7595: $80
	rst  $38                                         ; $7596: $ff
	add  h                                           ; $7597: $84
	nop                                              ; $7598: $00
	ld   [bc], a                                     ; $7599: $02
	add  b                                           ; $759a: $80
	cp   a                                           ; $759b: $bf
	ccf                                              ; $759c: $3f
	add  c                                           ; $759d: $81
	ld   a, a                                        ; $759e: $7f
	ld   bc, $552a                                   ; $759f: $01 $2a $55
	add  b                                           ; $75a2: $80
	rst  $38                                         ; $75a3: $ff
	add  l                                           ; $75a4: $85
	nop                                              ; $75a5: $00
	add  d                                           ; $75a6: $82
	xor  a                                           ; $75a7: $af
	ld   [bc], a                                     ; $75a8: $02
	rst  $10                                         ; $75a9: $d7
	add  d                                           ; $75aa: $82
	ld   d, l                                        ; $75ab: $55
	add  b                                           ; $75ac: $80
	rst  $38                                         ; $75ad: $ff
	add  l                                           ; $75ae: $85
	nop                                              ; $75af: $00
	add  b                                           ; $75b0: $80
	rst  ToBoot                                         ; $75b1: $c7
	add  c                                           ; $75b2: $81
	db   $eb                                         ; $75b3: $eb
	ld   bc, $7f94                                   ; $75b4: $01 $94 $7f
	add  b                                           ; $75b7: $80
	rst  $38                                         ; $75b8: $ff
	add  h                                           ; $75b9: $84
	nop                                              ; $75ba: $00
	ld   bc, $f00a                                   ; $75bb: $01 $0a $f0
	add  b                                           ; $75be: $80
	ldh  [$0b], a                                    ; $75bf: $e0 $0b
	add  $c0                                         ; $75c1: $c6 $c0
	rrca                                             ; $75c3: $0f
	rst  $38                                         ; $75c4: $ff
	and  h                                           ; $75c5: $a4
	rst  $38                                         ; $75c6: $ff
	ld   b, h                                        ; $75c7: $44
	inc  e                                           ; $75c8: $1c
	jr   nz, jr_076_75fb                             ; $75c9: $20 $30

	ld   h, b                                        ; $75cb: $60
	jr   nz, jr_076_754f                             ; $75cc: $20 $81

	and  b                                           ; $75ce: $a0
	ld   [$93a3], sp                                 ; $75cf: $08 $a3 $93
	adc  h                                           ; $75d2: $8c
	db   $f4                                         ; $75d3: $f4
	rst  $38                                         ; $75d4: $ff
	ld   c, d                                        ; $75d5: $4a
	rst  $38                                         ; $75d6: $ff
	inc  b                                           ; $75d7: $04
	ld   b, a                                        ; $75d8: $47
	add  b                                           ; $75d9: $80
	ld   b, e                                        ; $75da: $43
	add  d                                           ; $75db: $82
	ld   b, c                                        ; $75dc: $41
	inc  b                                           ; $75dd: $04
	and  c                                           ; $75de: $a1
	add  hl, de                                      ; $75df: $19
	ld   a, [de]                                     ; $75e0: $1a
	inc  b                                           ; $75e1: $04
	rst  $20                                         ; $75e2: $e7
	add  c                                           ; $75e3: $81
	rst  $38                                         ; $75e4: $ff
	add  d                                           ; $75e5: $82
	nop                                              ; $75e6: $00
	dec  b                                           ; $75e7: $05
	add  b                                           ; $75e8: $80
	nop                                              ; $75e9: $00
	ld   d, h                                        ; $75ea: $54
	ld   b, e                                        ; $75eb: $43
	ld   a, c                                        ; $75ec: $79
	ld   b, c                                        ; $75ed: $41
	add  b                                           ; $75ee: $80
	ld   b, b                                        ; $75ef: $40
	ld   bc, $55fa                                   ; $75f0: $01 $fa $55

jr_076_75f3:
	add  b                                           ; $75f3: $80
	rst  $38                                         ; $75f4: $ff
	add  l                                           ; $75f5: $85
	nop                                              ; $75f6: $00
	add  b                                           ; $75f7: $80
	db   $f4                                         ; $75f8: $f4
	add  b                                           ; $75f9: $80
	push af                                          ; $75fa: $f5

jr_076_75fb:
	ld   [bc], a                                     ; $75fb: $02
	db   $eb                                         ; $75fc: $eb
	cp   a                                           ; $75fd: $bf
	ld   d, h                                        ; $75fe: $54
	add  b                                           ; $75ff: $80
	rst  $38                                         ; $7600: $ff
	add  l                                           ; $7601: $85
	nop                                              ; $7602: $00
	add  b                                           ; $7603: $80
	db   $fd                                         ; $7604: $fd
	add  d                                           ; $7605: $82
	ld   a, [rRAMG]                                  ; $7606: $fa $00 $00
	add  b                                           ; $7609: $80
	rst  $38                                         ; $760a: $ff
	add  l                                           ; $760b: $85
	nop                                              ; $760c: $00
	add  b                                           ; $760d: $80
	ld   a, [hl]                                     ; $760e: $7e
	add  c                                           ; $760f: $81
	rst  $38                                         ; $7610: $ff
	ld   [bc], a                                     ; $7611: $02
	ld   a, a                                        ; $7612: $7f
	add  c                                           ; $7613: $81
	ld   bc, $0080                                   ; $7614: $01 $80 $00
	add  b                                           ; $7617: $80
	ld   b, $80                                      ; $7618: $06 $80
	rra                                              ; $761a: $1f
	nop                                              ; $761b: $00
	ccf                                              ; $761c: $3f
	add  b                                           ; $761d: $80
	cp   a                                           ; $761e: $bf
	dec  b                                           ; $761f: $05
	ld   a, a                                        ; $7620: $7f
	ld   e, a                                        ; $7621: $5f
	ccf                                              ; $7622: $3f
	xor  [hl]                                        ; $7623: $ae
	ld   [hl], c                                     ; $7624: $71
	rrca                                             ; $7625: $0f
	add  b                                           ; $7626: $80
	inc  bc                                          ; $7627: $03
	add  h                                           ; $7628: $84
	nop                                              ; $7629: $00
	add  b                                           ; $762a: $80
	inc  c                                           ; $762b: $0c
	add  d                                           ; $762c: $82
	rrca                                             ; $762d: $0f
	nop                                              ; $762e: $00
	ld   [$f881], sp                                 ; $762f: $08 $81 $f8
	add  b                                           ; $7632: $80
	ld   a, b                                        ; $7633: $78
	add  b                                           ; $7634: $80
	ld   [$0082], sp                                 ; $7635: $08 $82 $00
	add  c                                           ; $7638: $81
	add  b                                           ; $7639: $80
	ld   bc, $70f0                                   ; $763a: $01 $f0 $70
	add  b                                           ; $763d: $80
	ld   c, b                                        ; $763e: $48
	add  b                                           ; $763f: $80
	ld   b, c                                        ; $7640: $41
	inc  b                                           ; $7641: $04
	sub  d                                           ; $7642: $92
	adc  d                                           ; $7643: $8a
	sbc  c                                           ; $7644: $99
	and  l                                           ; $7645: $a5
	inc  h                                           ; $7646: $24
	add  b                                           ; $7647: $80
	inc  a                                           ; $7648: $3c
	add  b                                           ; $7649: $80
	jr   @-$7d                                       ; $764a: $18 $81

	nop                                              ; $764c: $00
	add  b                                           ; $764d: $80
	ccf                                              ; $764e: $3f
	add  b                                           ; $764f: $80
	rrca                                             ; $7650: $0f
	add  b                                           ; $7651: $80
	add  e                                           ; $7652: $83
	add  b                                           ; $7653: $80
	db   $10                                         ; $7654: $10
	add  b                                           ; $7655: $80
	ld   c, b                                        ; $7656: $48
	add  b                                           ; $7657: $80
	ld   b, e                                        ; $7658: $43
	add  b                                           ; $7659: $80
	inc  l                                           ; $765a: $2c
	ld   bc, $a3a1                                   ; $765b: $01 $a1 $a3
	add  b                                           ; $765e: $80
	adc  d                                           ; $765f: $8a
	inc  bc                                          ; $7660: $03
	ldh  [c], a                                      ; $7661: $e2
	ldh  [$f8], a                                    ; $7662: $e0 $f8
	ld   a, [$fe80]                                  ; $7664: $fa $80 $fe
	add  b                                           ; $7667: $80
	ld   e, $01                                      ; $7668: $1e $01
	ld   b, $04                                      ; $766a: $06 $04
	add  b                                           ; $766c: $80
	ret  nz                                          ; $766d: $c0

	add  b                                           ; $766e: $80
	jr   z, jr_076_75f3                              ; $766f: $28 $82

	rst  $38                                         ; $7671: $ff
	add  b                                           ; $7672: $80
	nop                                              ; $7673: $00
	add  h                                           ; $7674: $84
	rst  $38                                         ; $7675: $ff
	add  d                                           ; $7676: $82
	nop                                              ; $7677: $00
	add  d                                           ; $7678: $82
	rst  $10                                         ; $7679: $d7
	add  b                                           ; $767a: $80
	nop                                              ; $767b: $00
	add  h                                           ; $767c: $84
	rst  $38                                         ; $767d: $ff
	add  d                                           ; $767e: $82
	nop                                              ; $767f: $00
	add  d                                           ; $7680: $82
	push af                                          ; $7681: $f5
	ld   [bc], a                                     ; $7682: $02
	nop                                              ; $7683: $00
	ccf                                              ; $7684: $3f
	ret  nz                                          ; $7685: $c0

	add  b                                           ; $7686: $80
	push af                                          ; $7687: $f5
	add  b                                           ; $7688: $80
	ld   [$ff00], a                                  ; $7689: $ea $00 $ff
	add  c                                           ; $768c: $81
	nop                                              ; $768d: $00
	ld   bc, $807e                                   ; $768e: $01 $7e $80
	add  b                                           ; $7691: $80
	nop                                              ; $7692: $00
	inc  bc                                          ; $7693: $03
	cp   $00                                         ; $7694: $fe $00
	rst  $38                                         ; $7696: $ff
	nop                                              ; $7697: $00
	add  b                                           ; $7698: $80
	ld   d, b                                        ; $7699: $50
	add  b                                           ; $769a: $80
	and  b                                           ; $769b: $a0
	nop                                              ; $769c: $00
	rst  $38                                         ; $769d: $ff
	add  c                                           ; $769e: $81
	nop                                              ; $769f: $00
	ld   b, $df                                      ; $76a0: $06 $df
	ret  nc                                          ; $76a2: $d0

	or   b                                           ; $76a3: $b0
	xor  h                                           ; $76a4: $ac
	inc  c                                           ; $76a5: $0c
	ld   [bc], a                                     ; $76a6: $02
	ldh  [c], a                                      ; $76a7: $e2

jr_076_76a8:
	add  b                                           ; $76a8: $80
	dec  c                                           ; $76a9: $0d
	add  c                                           ; $76aa: $81
	nop                                              ; $76ab: $00
	nop                                              ; $76ac: $00
	rst  $38                                         ; $76ad: $ff
	add  c                                           ; $76ae: $81
	nop                                              ; $76af: $00
	ld   [$42be], sp                                 ; $76b0: $08 $be $42
	ld   b, e                                        ; $76b3: $43
	ld   c, l                                        ; $76b4: $4d
	ld   c, h                                        ; $76b5: $4c
	ld   d, b                                        ; $76b6: $50
	pop  af                                          ; $76b7: $f1
	inc  c                                           ; $76b8: $0c
	db   $ec                                         ; $76b9: $ec
	add  c                                           ; $76ba: $81
	nop                                              ; $76bb: $00
	nop                                              ; $76bc: $00
	rst  $38                                         ; $76bd: $ff
	add  c                                           ; $76be: $81
	nop                                              ; $76bf: $00
	nop                                              ; $76c0: $00
	rst  JumpTable                                         ; $76c1: $df
	add  c                                           ; $76c2: $81
	ret  nz                                          ; $76c3: $c0

	inc  bc                                          ; $76c4: $03
	rra                                              ; $76c5: $1f
	nop                                              ; $76c6: $00
	rst  $38                                         ; $76c7: $ff
	nop                                              ; $76c8: $00
	add  b                                           ; $76c9: $80
	ld   a, [bc]                                     ; $76ca: $0a
	add  b                                           ; $76cb: $80
	dec  b                                           ; $76cc: $05
	nop                                              ; $76cd: $00
	rst  $38                                         ; $76ce: $ff
	add  c                                           ; $76cf: $81
	nop                                              ; $76d0: $00
	ld   bc, $6b80                                   ; $76d1: $01 $80 $6b
	add  b                                           ; $76d4: $80
	dec  hl                                          ; $76d5: $2b
	inc  bc                                          ; $76d6: $03
	db   $eb                                         ; $76d7: $eb
	nop                                              ; $76d8: $00
	db   $fc                                         ; $76d9: $fc
	inc  bc                                          ; $76da: $03
	add  b                                           ; $76db: $80
	xor  a                                           ; $76dc: $af
	add  b                                           ; $76dd: $80
	ld   d, a                                        ; $76de: $57
	nop                                              ; $76df: $00
	rst  $38                                         ; $76e0: $ff
	add  d                                           ; $76e1: $82
	nop                                              ; $76e2: $00
	add  d                                           ; $76e3: $82
	push af                                          ; $76e4: $f5
	add  b                                           ; $76e5: $80
	nop                                              ; $76e6: $00
	add  b                                           ; $76e7: $80
	cp   $80                                         ; $76e8: $fe $80
	db   $fc                                         ; $76ea: $fc
	ld   [bc], a                                     ; $76eb: $02
	ld   sp, hl                                      ; $76ec: $f9
	ld   hl, sp+$01                                  ; $76ed: $f8 $01
	add  c                                           ; $76ef: $81
	nop                                              ; $76f0: $00
	add  d                                           ; $76f1: $82
	rst  $38                                         ; $76f2: $ff
	add  b                                           ; $76f3: $80
	nop                                              ; $76f4: $00
	add  b                                           ; $76f5: $80
	rst  $38                                         ; $76f6: $ff
	add  b                                           ; $76f7: $80
	ld   a, a                                        ; $76f8: $7f
	add  b                                           ; $76f9: $80
	ccf                                              ; $76fa: $3f
	add  c                                           ; $76fb: $81
	nop                                              ; $76fc: $00
	ld   [bc], a                                     ; $76fd: $02

Call_076_76fe:
	jr   nz, jr_076_76a8                             ; $76fe: $20 $a8

	adc  b                                           ; $7700: $88
	add  b                                           ; $7701: $80
	add  e                                           ; $7702: $83
	ld   bc, $4f0f                                   ; $7703: $01 $0f $4f
	add  b                                           ; $7706: $80
	db   $dd                                         ; $7707: $dd
	add  b                                           ; $7708: $80
	ret  c                                           ; $7709: $d8

	ld   [bc], a                                     ; $770a: $02
	ret  nc                                          ; $770b: $d0

	sub  b                                           ; $770c: $90
	nop                                              ; $770d: $00
	add  b                                           ; $770e: $80
	inc  c                                           ; $770f: $0c
	inc  b                                           ; $7710: $04
	cp   $0f                                         ; $7711: $fe $0f
	add  hl, bc                                      ; $7713: $09
	rrca                                             ; $7714: $0f
	rlca                                             ; $7715: $07
	adc  c                                           ; $7716: $89
	rrca                                             ; $7717: $0f
	nop                                              ; $7718: $00
	rst  $38                                         ; $7719: $ff
	add  l                                           ; $771a: $85
	ld   hl, sp+$00                                  ; $771b: $f8 $00
	ldh  a, [$81]                                    ; $771d: $f0 $81
	ld   hl, sp+$05                                  ; $771f: $f8 $05
	add  sp, -$08                                    ; $7721: $e8 $f8
	ldh  a, [$f8]                                    ; $7723: $f0 $f8
	add  sp, $08                                     ; $7725: $e8 $08
	add  b                                           ; $7727: $80
	add  sp, $00                                     ; $7728: $e8 $00
	db   $ec                                         ; $772a: $ec
	add  b                                           ; $772b: $80
	and  $81                                         ; $772c: $e6 $81
	rst  $28                                         ; $772e: $ef
	nop                                              ; $772f: $00
	rrca                                             ; $7730: $0f
	add  b                                           ; $7731: $80
	rst  $38                                         ; $7732: $ff
	nop                                              ; $7733: $00
	rrca                                             ; $7734: $0f
	add  b                                           ; $7735: $80
	rst  $28                                         ; $7736: $ef
	nop                                              ; $7737: $00
	dec  bc                                          ; $7738: $0b
	add  b                                           ; $7739: $80
	inc  b                                           ; $773a: $04
	add  d                                           ; $773b: $82
	nop                                              ; $773c: $00
	nop                                              ; $773d: $00
	ret  nz                                          ; $773e: $c0

	add  e                                           ; $773f: $83
	ld   hl, sp-$7f                                  ; $7740: $f8 $81
	ld   sp, hl                                      ; $7742: $f9
	nop                                              ; $7743: $00
	pop  bc                                          ; $7744: $c1
	add  b                                           ; $7745: $80
	sub  h                                           ; $7746: $94
	add  b                                           ; $7747: $80
	adc  b                                           ; $7748: $88
	add  b                                           ; $7749: $80
	inc  h                                           ; $774a: $24
	add  b                                           ; $774b: $80
	inc  c                                           ; $774c: $0c
	add  d                                           ; $774d: $82
	nop                                              ; $774e: $00
	nop                                              ; $774f: $00
	add  b                                           ; $7750: $80
	add  b                                           ; $7751: $80
	ldh  a, [rP1]                                    ; $7752: $f0 $00
	add  b                                           ; $7754: $80
	add  [hl]                                        ; $7755: $86
	rst  $38                                         ; $7756: $ff
	add  e                                           ; $7757: $83
	nop                                              ; $7758: $00
	add  b                                           ; $7759: $80
	rst  $38                                         ; $775a: $ff
	nop                                              ; $775b: $00
	nop                                              ; $775c: $00
	add  [hl]                                        ; $775d: $86
	rst  $38                                         ; $775e: $ff
	add  e                                           ; $775f: $83
	nop                                              ; $7760: $00
	add  b                                           ; $7761: $80
	rst  $38                                         ; $7762: $ff
	ld   bc, $0380                                   ; $7763: $01 $80 $03
	add  d                                           ; $7766: $82
	ld   [bc], a                                     ; $7767: $02
	inc  b                                           ; $7768: $04
	inc  bc                                          ; $7769: $03
	nop                                              ; $776a: $00
	add  c                                           ; $776b: $81
	ld   [bc], a                                     ; $776c: $02
	inc  bc                                          ; $776d: $03
	add  c                                           ; $776e: $81
	nop                                              ; $776f: $00
	inc  bc                                          ; $7770: $03
	add  b                                           ; $7771: $80
	add  e                                           ; $7772: $83
	inc  bc                                          ; $7773: $03
	or   a                                           ; $7774: $b7
	add  d                                           ; $7775: $82
	nop                                              ; $7776: $00
	inc  b                                           ; $7777: $04
	or   a                                           ; $7778: $b7
	nop                                              ; $7779: $00
	or   a                                           ; $777a: $b7
	nop                                              ; $777b: $00
	or   a                                           ; $777c: $b7
	add  d                                           ; $777d: $82
	nop                                              ; $777e: $00
	add  b                                           ; $777f: $80
	ld   l, a                                        ; $7780: $6f
	nop                                              ; $7781: $00
	ld   [hl], a                                     ; $7782: $77
	add  d                                           ; $7783: $82
	inc  b                                           ; $7784: $04
	inc  b                                           ; $7785: $04
	ld   [hl], a                                     ; $7786: $77
	nop                                              ; $7787: $00
	ld   [hl], e                                     ; $7788: $73
	inc  b                                           ; $7789: $04
	ld   [hl], a                                     ; $778a: $77
	add  d                                           ; $778b: $82
	nop                                              ; $778c: $00
	add  b                                           ; $778d: $80
	ld   l, h                                        ; $778e: $6c
	nop                                              ; $778f: $00
	ld   [hl], a                                     ; $7790: $77
	add  d                                           ; $7791: $82
	db   $10                                         ; $7792: $10
	inc  b                                           ; $7793: $04
	ld   [hl], a                                     ; $7794: $77
	nop                                              ; $7795: $00
	ld   h, a                                        ; $7796: $67
	db   $10                                         ; $7797: $10
	ld   [hl], a                                     ; $7798: $77
	add  d                                           ; $7799: $82
	nop                                              ; $779a: $00
	add  b                                           ; $779b: $80
	db   $d3                                         ; $779c: $d3
	nop                                              ; $779d: $00
	ld   [hl], a                                     ; $779e: $77
	add  d                                           ; $779f: $82
	nop                                              ; $77a0: $00
	inc  b                                           ; $77a1: $04
	ld   [hl], a                                     ; $77a2: $77
	nop                                              ; $77a3: $00
	ld   [hl], a                                     ; $77a4: $77
	nop                                              ; $77a5: $00
	ld   [hl], a                                     ; $77a6: $77
	add  d                                           ; $77a7: $82
	nop                                              ; $77a8: $00
	ld   bc, $efeb                                   ; $77a9: $01 $eb $ef
	add  h                                           ; $77ac: $84
	add  e                                           ; $77ad: $83
	ld   bc, $0703                                   ; $77ae: $01 $03 $07
	add  b                                           ; $77b1: $80
	add  b                                           ; $77b2: $80
	add  c                                           ; $77b3: $81
	nop                                              ; $77b4: $00
	ld   [bc], a                                     ; $77b5: $02
	rlca                                             ; $77b6: $07
	add  a                                           ; $77b7: $87
	add  b                                           ; $77b8: $80
	add  b                                           ; $77b9: $80
	cp   $80                                         ; $77ba: $fe $80
	or   $80                                         ; $77bc: $f6 $80
	ldh  a, [$80]                                    ; $77be: $f0 $80
	or   [hl]                                        ; $77c0: $b6
	add  b                                           ; $77c1: $80
	ld   b, b                                        ; $77c2: $40
	add  c                                           ; $77c3: $81
	nop                                              ; $77c4: $00
	add  b                                           ; $77c5: $80
	cp   $00                                         ; $77c6: $fe $00
	nop                                              ; $77c8: $00
	add  b                                           ; $77c9: $80
	rst  $38                                         ; $77ca: $ff
	add  b                                           ; $77cb: $80
	rst  JumpTable                                         ; $77cc: $df
	add  b                                           ; $77cd: $80
	rra                                              ; $77ce: $1f
	add  b                                           ; $77cf: $80
	db   $db                                         ; $77d0: $db
	add  b                                           ; $77d1: $80
	inc  b                                           ; $77d2: $04
	add  c                                           ; $77d3: $81
	nop                                              ; $77d4: $00
	add  b                                           ; $77d5: $80
	rst  $38                                         ; $77d6: $ff
	ld   bc, $d848                                   ; $77d7: $01 $48 $d8
	add  b                                           ; $77da: $80
	sbc  $82                                         ; $77db: $de $82
	ret  c                                           ; $77dd: $d8

	ld   bc, $0c9c                                   ; $77de: $01 $9c $0c
	add  d                                           ; $77e1: $82
	nop                                              ; $77e2: $00
	ld   [bc], a                                     ; $77e3: $02
	add  b                                           ; $77e4: $80
	and  b                                           ; $77e5: $a0
	ret  nc                                          ; $77e6: $d0

	adc  l                                           ; $77e7: $8d
	rrca                                             ; $77e8: $0f
	inc  b                                           ; $77e9: $04
	rst  JumpTable                                         ; $77ea: $df
	ld   hl, sp-$68                                  ; $77eb: $f8 $98
	ld   hl, sp-$48                                  ; $77ed: $f8 $b8
	adc  c                                           ; $77ef: $89
	ld   hl, sp+$04                                  ; $77f0: $f8 $04
	inc  e                                           ; $77f2: $1c
	rst  $28                                         ; $77f3: $ef
	rla                                              ; $77f4: $17
	rst  $38                                         ; $77f5: $ff
	db   $e4                                         ; $77f6: $e4
	adc  c                                           ; $77f7: $89
	rst  $38                                         ; $77f8: $ff
	nop                                              ; $77f9: $00
	ret  nz                                          ; $77fa: $c0

	add  c                                           ; $77fb: $81
	ld   sp, hl                                      ; $77fc: $f9
	ld   [bc], a                                     ; $77fd: $02
	ld   bc, $f8f9                                   ; $77fe: $01 $f9 $f8
	add  a                                           ; $7801: $87
	ld   sp, hl                                      ; $7802: $f9
	nop                                              ; $7803: $00
	ld   c, b                                        ; $7804: $48
	add  e                                           ; $7805: $83
	db   $fc                                         ; $7806: $fc
	ld   [bc], a                                     ; $7807: $02
	ld   a, h                                        ; $7808: $7c
	db   $fc                                         ; $7809: $fc
	add  b                                           ; $780a: $80
	add  l                                           ; $780b: $85
	db   $fc                                         ; $780c: $fc
	nop                                              ; $780d: $00
	ld   [hl], b                                     ; $780e: $70
	adc  a                                           ; $780f: $8f
	rst  $38                                         ; $7810: $ff
	add  b                                           ; $7811: $80
	cp   $80                                         ; $7812: $fe $80
	db   $fc                                         ; $7814: $fc
	add  b                                           ; $7815: $80
	ld   a, [$f480]                                  ; $7816: $fa $80 $f4
	add  b                                           ; $7819: $80
	add  sp, -$80                                    ; $781a: $e8 $80
	ldh  a, [$80]                                    ; $781c: $f0 $80
	add  sp, $00                                     ; $781e: $e8 $00
	ld   a, [hl]                                     ; $7820: $7e
	add  e                                           ; $7821: $83
	ld   [bc], a                                     ; $7822: $02
	ld   b, $03                                      ; $7823: $06 $03
	nop                                              ; $7825: $00
	ld   bc, $0302                                   ; $7826: $01 $02 $03
	nop                                              ; $7829: $00
	ld   bc, $0281                                   ; $782a: $01 $81 $02
	nop                                              ; $782d: $00
	db   $ec                                         ; $782e: $ec
	add  e                                           ; $782f: $83
	nop                                              ; $7830: $00
	ld   b, $6f                                      ; $7831: $06 $6f
	nop                                              ; $7833: $00
	ld   l, a                                        ; $7834: $6f
	nop                                              ; $7835: $00
	ld   l, a                                        ; $7836: $6f
	nop                                              ; $7837: $00
	ld   l, a                                        ; $7838: $6f
	add  c                                           ; $7839: $81
	nop                                              ; $783a: $00
	nop                                              ; $783b: $00
	daa                                              ; $783c: $27
	add  e                                           ; $783d: $83
	inc  h                                           ; $783e: $24
	ld   b, $6c                                      ; $783f: $06 $6c
	nop                                              ; $7841: $00
	ld   l, b                                        ; $7842: $68
	inc  b                                           ; $7843: $04
	ld   l, h                                        ; $7844: $6c
	nop                                              ; $7845: $00
	ld   c, b                                        ; $7846: $48
	add  c                                           ; $7847: $81
	inc  h                                           ; $7848: $24
	nop                                              ; $7849: $00
	ccf                                              ; $784a: $3f
	add  e                                           ; $784b: $83
	adc  b                                           ; $784c: $88
	ld   b, $db                                      ; $784d: $06 $db
	nop                                              ; $784f: $00
	ld   d, e                                        ; $7850: $53
	ld   [$005b], sp                                 ; $7851: $08 $5b $00
	ld   d, e                                        ; $7854: $53
	add  c                                           ; $7855: $81
	adc  b                                           ; $7856: $88
	nop                                              ; $7857: $00
	db   $10                                         ; $7858: $10
	add  e                                           ; $7859: $83
	jr   nz, jr_076_7862                             ; $785a: $20 $06

	db   $eb                                         ; $785c: $eb
	nop                                              ; $785d: $00
	sla  b                                           ; $785e: $cb $20
	db   $eb                                         ; $7860: $eb
	nop                                              ; $7861: $00

jr_076_7862:
	res  0, c                                        ; $7862: $cb $81
	jr   nz, jr_076_7867                             ; $7864: $20 $01

	db   $ed                                         ; $7866: $ed

jr_076_7867:
	add  c                                           ; $7867: $81
	add  e                                           ; $7868: $83
	add  b                                           ; $7869: $80
	add  b                                           ; $786a: $80
	nop                                              ; $786b: $00
	add  b                                           ; $786c: $80
	add  b                                           ; $786d: $80
	add  b                                           ; $786e: $80
	nop                                              ; $786f: $00
	add  c                                           ; $7870: $81
	add  b                                           ; $7871: $80
	ld   bc, $7e07                                   ; $7872: $01 $07 $7e
	add  b                                           ; $7875: $80
	cp   [hl]                                        ; $7876: $be
	rlca                                             ; $7877: $07
	ld   a, [hl]                                     ; $7878: $7e
	ld   a, l                                        ; $7879: $7d
	cp   l                                           ; $787a: $bd
	cp   h                                           ; $787b: $bc
	ld   e, h                                        ; $787c: $5c
	ld   e, [hl]                                     ; $787d: $5e
	ld   l, $2f                                      ; $787e: $2e $2f
	add  b                                           ; $7880: $80
	rra                                              ; $7881: $1f
	add  b                                           ; $7882: $80
	cpl                                              ; $7883: $2f
	nop                                              ; $7884: $00
	rst  $38                                         ; $7885: $ff
	add  c                                           ; $7886: $81
	db   $fc                                         ; $7887: $fc
	nop                                              ; $7888: $00
	rst  $38                                         ; $7889: $ff
	add  d                                           ; $788a: $82
	ld   a, a                                        ; $788b: $7f
	add  c                                           ; $788c: $81
	rst  $38                                         ; $788d: $ff
	add  b                                           ; $788e: $80
	db   $fc                                         ; $788f: $fc
	add  b                                           ; $7890: $80
	rst  $38                                         ; $7891: $ff
	nop                                              ; $7892: $00
	db   $fc                                         ; $7893: $fc
	add  b                                           ; $7894: $80
	inc  bc                                          ; $7895: $03
	add  c                                           ; $7896: $81
	di                                               ; $7897: $f3
	ld   [bc], a                                     ; $7898: $02
	db   $d3                                         ; $7899: $d3
	ld   a, a                                        ; $789a: $7f
	ld   e, a                                        ; $789b: $5f
	add  b                                           ; $789c: $80
	rra                                              ; $789d: $1f
	add  b                                           ; $789e: $80
	db   $fc                                         ; $789f: $fc
	add  b                                           ; $78a0: $80
	inc  bc                                          ; $78a1: $03
	ld   bc, $03f3                                   ; $78a2: $01 $f3 $03
	adc  l                                           ; $78a5: $8d
	rrca                                             ; $78a6: $0f
	nop                                              ; $78a7: $00
	rst  $38                                         ; $78a8: $ff
	add  b                                           ; $78a9: $80
	ld   hl, sp+$04                                  ; $78aa: $f8 $04
	ldh  [$e3], a                                    ; $78ac: $e0 $e3
	jp   $8fcf                                       ; $78ae: $c3 $cf $8f


	add  [hl]                                        ; $78b1: $86
	sbc  a                                           ; $78b2: $9f
	ld   b, $87                                      ; $78b3: $06 $87
	rst  $38                                         ; $78b5: $ff
	rst  ToBoot                                         ; $78b6: $c7
	ccf                                              ; $78b7: $3f
	ret  c                                           ; $78b8: $d8

	rra                                              ; $78b9: $1f
	rst  $28                                         ; $78ba: $ef
	add  a                                           ; $78bb: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78bc: $cf
	ld   [bc], a                                     ; $78bd: $02
	ld   h, $f9                                      ; $78be: $26 $f9
	nop                                              ; $78c0: $00
	adc  e                                           ; $78c1: $8b
	ld   sp, hl                                      ; $78c2: $f9
	ld   [bc], a                                     ; $78c3: $02
	ld   c, l                                        ; $78c4: $4d
	db   $fc                                         ; $78c5: $fc
	nop                                              ; $78c6: $00
	adc  c                                           ; $78c7: $89
	db   $fc                                         ; $78c8: $fc
	ld   [bc], a                                     ; $78c9: $02
	nop                                              ; $78ca: $00
	db   $fc                                         ; $78cb: $fc
	ld   [hl], b                                     ; $78cc: $70
	add  a                                           ; $78cd: $87
	rst  $38                                         ; $78ce: $ff
	add  b                                           ; $78cf: $80
	cp   $80                                         ; $78d0: $fe $80
	db   $fd                                         ; $78d2: $fd
	add  b                                           ; $78d3: $80
	cp   $80                                         ; $78d4: $fe $80
	ret  nc                                          ; $78d6: $d0

	add  b                                           ; $78d7: $80
	ldh  [$80], a                                    ; $78d8: $e0 $80
	ret  nz                                          ; $78da: $c0

	add  b                                           ; $78db: $80
	and  b                                           ; $78dc: $a0
	add  b                                           ; $78dd: $80
	ld   b, b                                        ; $78de: $40
	add  b                                           ; $78df: $80
	add  b                                           ; $78e0: $80
	add  b                                           ; $78e1: $80
	nop                                              ; $78e2: $00
	add  b                                           ; $78e3: $80
	add  b                                           ; $78e4: $80
	nop                                              ; $78e5: $00
	ld   a, [hl]                                     ; $78e6: $7e
	add  a                                           ; $78e7: $87
	ld   [bc], a                                     ; $78e8: $02
	ld   [bc], a                                     ; $78e9: $02
	inc  bc                                          ; $78ea: $03
	nop                                              ; $78eb: $00
	ld   bc, $0281                                   ; $78ec: $01 $81 $02
	ld   [bc], a                                     ; $78ef: $02
	and  h                                           ; $78f0: $a4
	nop                                              ; $78f1: $00
	jr   nz, @-$7e                                   ; $78f2: $20 $80

	ld   d, b                                        ; $78f4: $50
	add  d                                           ; $78f5: $82
	ld   [hl], b                                     ; $78f6: $70
	inc  b                                           ; $78f7: $04
	jr   nz, jr_076_7921                             ; $78f8: $20 $27

	nop                                              ; $78fa: $00
	ld   c, a                                        ; $78fb: $4f
	nop                                              ; $78fc: $00
	add  b                                           ; $78fd: $80
	jr   nz, jr_076_7900                             ; $78fe: $20 $00

jr_076_7900:
	rlca                                             ; $7900: $07
	add  a                                           ; $7901: $87
	inc  h                                           ; $7902: $24
	ld   [bc], a                                     ; $7903: $02
	ld   l, h                                        ; $7904: $6c
	nop                                              ; $7905: $00
	ld   c, b                                        ; $7906: $48
	add  c                                           ; $7907: $81
	inc  h                                           ; $7908: $24
	nop                                              ; $7909: $00
	ccf                                              ; $790a: $3f
	add  a                                           ; $790b: $87
	adc  b                                           ; $790c: $88
	ld   [bc], a                                     ; $790d: $02
	db   $db                                         ; $790e: $db
	nop                                              ; $790f: $00
	ld   d, e                                        ; $7910: $53
	add  c                                           ; $7911: $81
	adc  b                                           ; $7912: $88
	nop                                              ; $7913: $00
	db   $10                                         ; $7914: $10
	add  a                                           ; $7915: $87
	jr   nz, jr_076_791a                             ; $7916: $20 $02

	db   $eb                                         ; $7918: $eb
	nop                                              ; $7919: $00

jr_076_791a:
	res  0, c                                        ; $791a: $cb $81
	jr   nz, jr_076_791e                             ; $791c: $20 $00

jr_076_791e:
	db   $ec                                         ; $791e: $ec
	adc  b                                           ; $791f: $88
	add  b                                           ; $7920: $80

jr_076_7921:
	add  b                                           ; $7921: $80
	nop                                              ; $7922: $00
	add  c                                           ; $7923: $81
	add  b                                           ; $7924: $80
	ld   bc, $176f                                   ; $7925: $01 $6f $17
	add  b                                           ; $7928: $80
	dec  bc                                          ; $7929: $0b
	inc  c                                           ; $792a: $0c
	ld   a, [bc]                                     ; $792b: $0a
	rrca                                             ; $792c: $0f
	ld   [de], a                                     ; $792d: $12
	ld   [$1d34], sp                                 ; $792e: $08 $34 $1d
	ld   h, a                                        ; $7931: $67
	ld   l, $74                                      ; $7932: $2e $74
	inc  e                                           ; $7934: $1c
	nop                                              ; $7935: $00
	ld   a, [hl+]                                    ; $7936: $2a
	pop  bc                                          ; $7937: $c1
	add  e                                           ; $7938: $83
	rst  $38                                         ; $7939: $ff

jr_076_793a:
	ld   c, $df                                      ; $793a: $0e $df
	xor  a                                           ; $793c: $af
	sbc  h                                           ; $793d: $9c
	inc  a                                           ; $793e: $3c
	xor  a                                           ; $793f: $af
	rst  $10                                         ; $7940: $d7
	dec  b                                           ; $7941: $05
	ld   a, c                                        ; $7942: $79
	add  hl, bc                                      ; $7943: $09
	pop  hl                                          ; $7944: $e1
	ret  nz                                          ; $7945: $c0

	di                                               ; $7946: $f3
	db   $d3                                         ; $7947: $d3
	ld   a, a                                        ; $7948: $7f
	ld   e, a                                        ; $7949: $5f
	add  b                                           ; $794a: $80
	rra                                              ; $794b: $1f
	add  b                                           ; $794c: $80
	rst  $38                                         ; $794d: $ff
	add  b                                           ; $794e: $80
	nop                                              ; $794f: $00
	add  b                                           ; $7950: $80
	di                                               ; $7951: $f3
	add  b                                           ; $7952: $80
	ld   [hl], e                                     ; $7953: $73
	dec  b                                           ; $7954: $05
	rra                                              ; $7955: $1f
	xor  $0f                                         ; $7956: $ee $0f
	dec  c                                           ; $7958: $0d
	rrca                                             ; $7959: $0f
	dec  bc                                          ; $795a: $0b
	add  c                                           ; $795b: $81
	rrca                                             ; $795c: $0f
	nop                                              ; $795d: $00
	rlca                                             ; $795e: $07
	add  l                                           ; $795f: $85
	rrca                                             ; $7960: $0f
	nop                                              ; $7961: $00
	ld   [hl], b                                     ; $7962: $70
	add  a                                           ; $7963: $87
	sbc  a                                           ; $7964: $9f
	add  b                                           ; $7965: $80
	sbc  [hl]                                        ; $7966: $9e
	add  b                                           ; $7967: $80
	sbc  h                                           ; $7968: $9c
	add  b                                           ; $7969: $80
	sbc  b                                           ; $796a: $98
	ld   [bc], a                                     ; $796b: $02
	ld   [hl], $cf                                   ; $796c: $36 $cf
	pop  bc                                          ; $796e: $c1
	add  c                                           ; $796f: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7970: $cf
	add  b                                           ; $7971: $80
	adc  a                                           ; $7972: $8f
	add  h                                           ; $7973: $84
	rrca                                             ; $7974: $0f
	add  b                                           ; $7975: $80
	ld   c, a                                        ; $7976: $4f
	nop                                              ; $7977: $00
	add  hl, hl                                      ; $7978: $29
	adc  c                                           ; $7979: $89
	ld   sp, hl                                      ; $797a: $f9
	inc  b                                           ; $797b: $04
	ld   hl, sp-$07                                  ; $797c: $f8 $f9
	pop  af                                          ; $797e: $f1
	ld   sp, hl                                      ; $797f: $f9
	cp   l                                           ; $7980: $bd
	add  a                                           ; $7981: $87

jr_076_7982:
	db   $fc                                         ; $7982: $fc
	ld   [bc], a                                     ; $7983: $02
	ret  nz                                          ; $7984: $c0

	db   $fc                                         ; $7985: $fc
	inc  a                                           ; $7986: $3c
	add  c                                           ; $7987: $81
	db   $fc                                         ; $7988: $fc
	ld   bc, $fd8e                                   ; $7989: $01 $8e $fd
	add  b                                           ; $798c: $80
	cp   $80                                         ; $798d: $fe $80
	db   $fc                                         ; $798f: $fc
	add  b                                           ; $7990: $80
	ld   a, [$f480]                                  ; $7991: $fa $80 $f4
	add  b                                           ; $7994: $80
	add  sp, -$80                                    ; $7995: $e8 $80
	ldh  a, [$80]                                    ; $7997: $f0 $80
	add  sp, -$72                                    ; $7999: $e8 $8e
	nop                                              ; $799b: $00
	ld   [bc], a                                     ; $799c: $02
	ld   a, a                                        ; $799d: $7f
	nop                                              ; $799e: $00
	ld   bc, $0283                                   ; $799f: $01 $83 $02
	ld   bc, $4447                                   ; $79a2: $01 $47 $44
	add  b                                           ; $79a5: $80
	ld   a, b                                        ; $79a6: $78
	ld   bc, $7879                                   ; $79a7: $01 $79 $78
	add  b                                           ; $79aa: $80
	ld   a, c                                        ; $79ab: $79
	ld   [bc], a                                     ; $79ac: $02
	and  c                                           ; $79ad: $a1
	jr   nz, jr_076_7a1f                             ; $79ae: $20 $6f

	add  e                                           ; $79b0: $83
	jr   nz, jr_076_79b3                             ; $79b1: $20 $00

jr_076_79b3:
	ld   l, a                                        ; $79b3: $6f
	add  c                                           ; $79b4: $81
	jr   nz, jr_076_79b8                             ; $79b5: $20 $01

	rst  $28                                         ; $79b7: $ef

jr_076_79b8:
	jr   nz, jr_076_793a                             ; $79b8: $20 $80

	rst  $28                                         ; $79ba: $ef
	ld   [bc], a                                     ; $79bb: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79bc: $cf
	nop                                              ; $79bd: $00
	ld   l, h                                        ; $79be: $6c
	add  e                                           ; $79bf: $83
	inc  h                                           ; $79c0: $24
	nop                                              ; $79c1: $00
	ld   c, b                                        ; $79c2: $48
	add  c                                           ; $79c3: $81
	nop                                              ; $79c4: $00
	ld   bc, $00ff                                   ; $79c5: $01 $ff $00
	add  c                                           ; $79c8: $81
	rst  $38                                         ; $79c9: $ff
	ld   bc, $5b00                                   ; $79ca: $01 $00 $5b
	add  d                                           ; $79cd: $82
	ld   [$0901], sp                                 ; $79ce: $08 $01 $09
	ld   d, e                                        ; $79d1: $53
	add  c                                           ; $79d2: $81
	ld   bc, $fd01                                   ; $79d3: $01 $01 $fd
	ld   bc, $fd80                                   ; $79d6: $01 $80 $fd
	ld   [bc], a                                     ; $79d9: $02
	db   $fc                                         ; $79da: $fc
	nop                                              ; $79db: $00
	res  0, c                                        ; $79dc: $cb $81
	jr   nz, jr_076_79e2                             ; $79de: $20 $02

	jr   z, jr_076_7982                              ; $79e0: $28 $a0

jr_076_79e2:
	db   $e3                                         ; $79e2: $e3
	add  c                                           ; $79e3: $81
	adc  b                                           ; $79e4: $88
	inc  b                                           ; $79e5: $04
	adc  c                                           ; $79e6: $89
	add  sp, -$67                                    ; $79e7: $e8 $99
	ld   hl, sp+$0f                                  ; $79e9: $f8 $0f
	add  b                                           ; $79eb: $80
	nop                                              ; $79ec: $00
	add  h                                           ; $79ed: $84
	add  b                                           ; $79ee: $80
	add  c                                           ; $79ef: $81
	nop                                              ; $79f0: $00
	nop                                              ; $79f1: $00
	add  b                                           ; $79f2: $80
	add  c                                           ; $79f3: $81
	nop                                              ; $79f4: $00
	dec  bc                                          ; $79f5: $0b
	ld   [hl], e                                     ; $79f6: $73
	ld   d, l                                        ; $79f7: $55
	ld   c, e                                        ; $79f8: $4b
	ld   a, [bc]                                     ; $79f9: $0a
	ld   b, l                                        ; $79fa: $45
	rrca                                             ; $79fb: $0f
	ld   [hl+], a                                    ; $79fc: $22
	dec  e                                           ; $79fd: $1d
	ld   d, b                                        ; $79fe: $50
	dec  d                                           ; $79ff: $15
	jr   nc, jr_076_7a22                             ; $7a00: $30 $20

	add  b                                           ; $7a02: $80
	jr   c, jr_076_7a17                              ; $7a03: $38 $12

	ccf                                              ; $7a05: $3f
	ld   a, $80                                      ; $7a06: $3e $80
	ld   [hl], c                                     ; $7a08: $71
	or   b                                           ; $7a09: $b0
	ret  c                                           ; $7a0a: $d8

	ld   c, e                                        ; $7a0b: $4b
	sub  e                                           ; $7a0c: $93

jr_076_7a0d:
	dec  hl                                          ; $7a0d: $2b
	db   $eb                                         ; $7a0e: $eb
	ld   d, e                                        ; $7a0f: $53
	inc  de                                          ; $7a10: $13
	inc  bc                                          ; $7a11: $03
	ld   b, e                                        ; $7a12: $43
	jp   Jump_076_4083                               ; $7a13: $c3 $83 $40


	ret  nz                                          ; $7a16: $c0

jr_076_7a17:
	add  b                                           ; $7a17: $80
	add  b                                           ; $7a18: $80
	rst  $38                                         ; $7a19: $ff
	add  b                                           ; $7a1a: $80
	inc  bc                                          ; $7a1b: $03
	inc  bc                                          ; $7a1c: $03
	ldh  a, [$d0]                                    ; $7a1d: $f0 $d0

jr_076_7a1f:
	ld   [hl], e                                     ; $7a1f: $73
	ld   d, e                                        ; $7a20: $53
	add  b                                           ; $7a21: $80

jr_076_7a22:
	rra                                              ; $7a22: $1f
	add  d                                           ; $7a23: $82
	rst  $38                                         ; $7a24: $ff
	ld   bc, $e01f                                   ; $7a25: $01 $1f $e0
	adc  l                                           ; $7a28: $8d
	rrca                                             ; $7a29: $0f
	ld   bc, $907f                                   ; $7a2a: $01 $7f $90
	add  b                                           ; $7a2d: $80
	sub  c                                           ; $7a2e: $91
	add  b                                           ; $7a2f: $80
	sub  e                                           ; $7a30: $93
	add  b                                           ; $7a31: $80
	sub  [hl]                                        ; $7a32: $96
	add  b                                           ; $7a33: $80
	sbc  h                                           ; $7a34: $9c
	add  b                                           ; $7a35: $80
	sbc  c                                           ; $7a36: $99
	add  b                                           ; $7a37: $80
	sub  e                                           ; $7a38: $93
	add  b                                           ; $7a39: $80
	sub  a                                           ; $7a3a: $97
	dec  b                                           ; $7a3b: $05
	jr   c, jr_076_7a0d                              ; $7a3c: $38 $cf

	adc  [hl]                                        ; $7a3e: $8e
	adc  a                                           ; $7a3f: $8f
	ld   bc, $800f                                   ; $7a40: $01 $0f $80
	ld   c, a                                        ; $7a43: $4f
	add  [hl]                                        ; $7a44: $86
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a45: $cf
	ld   [bc], a                                     ; $7a46: $02
	rra                                              ; $7a47: $1f
	ld   sp, hl                                      ; $7a48: $f9
	add  hl, sp                                      ; $7a49: $39
	add  l                                           ; $7a4a: $85
	ld   sp, hl                                      ; $7a4b: $f9
	nop                                              ; $7a4c: $00
	ld   hl, sp-$7f                                  ; $7a4d: $f8 $81
	ld   sp, hl                                      ; $7a4f: $f9
	ld   [bc], a                                     ; $7a50: $02
	pop  hl                                          ; $7a51: $e1
	ld   sp, hl                                      ; $7a52: $f9
	xor  b                                           ; $7a53: $a8
	add  c                                           ; $7a54: $81
	db   $fc                                         ; $7a55: $fc
	ld   b, $f8                                      ; $7a56: $06 $f8
	db   $fc                                         ; $7a58: $fc
	call nz, $bcfc                                   ; $7a59: $c4 $fc $bc
	db   $fc                                         ; $7a5c: $fc
	ld   a, h                                        ; $7a5d: $7c
	add  e                                           ; $7a5e: $83
	db   $fc                                         ; $7a5f: $fc
	ld   bc, $d05f                                   ; $7a60: $01 $5f $d0
	add  b                                           ; $7a63: $80
	ldh  [$80], a                                    ; $7a64: $e0 $80
	ret  nz                                          ; $7a66: $c0

	add  b                                           ; $7a67: $80
	and  b                                           ; $7a68: $a0
	add  b                                           ; $7a69: $80
	ret  nz                                          ; $7a6a: $c0

	add  b                                           ; $7a6b: $80
	add  b                                           ; $7a6c: $80
	add  b                                           ; $7a6d: $80
	nop                                              ; $7a6e: $00
	add  b                                           ; $7a6f: $80
	add  b                                           ; $7a70: $80
	rlca                                             ; $7a71: $07
	inc  bc                                          ; $7a72: $03
	nop                                              ; $7a73: $00
	inc  c                                           ; $7a74: $0c
	nop                                              ; $7a75: $00
	jr   nc, jr_076_7a78                             ; $7a76: $30 $00

jr_076_7a78:
	ccf                                              ; $7a78: $3f
	ld   a, a                                        ; $7a79: $7f
	add  b                                           ; $7a7a: $80
	stop                                             ; $7a7b: $10 $00
	ld   d, b                                        ; $7a7d: $50
	add  e                                           ; $7a7e: $83
	db   $10                                         ; $7a7f: $10
	inc  bc                                          ; $7a80: $03
	ld   c, h                                        ; $7a81: $4c
	db   $fc                                         ; $7a82: $fc
	ldh  a, [$80]                                    ; $7a83: $f0 $80
	add  b                                           ; $7a85: $80
	pop  bc                                          ; $7a86: $c1
	add  b                                           ; $7a87: $80
	rst  $38                                         ; $7a88: $ff
	nop                                              ; $7a89: $00
	nop                                              ; $7a8a: $00
	add  c                                           ; $7a8b: $81
	ld   b, b                                        ; $7a8c: $40
	add  b                                           ; $7a8d: $80
	ld   b, e                                        ; $7a8e: $43
	add  b                                           ; $7a8f: $80
	ld   b, b                                        ; $7a90: $40
	ld   bc, $2f4f                                   ; $7a91: $01 $4f $2f
	add  b                                           ; $7a94: $80
	rst  $28                                         ; $7a95: $ef
	ld   bc, $c7e7                                   ; $7a96: $01 $e7 $c7
	add  b                                           ; $7a99: $80
	rst  $38                                         ; $7a9a: $ff
	add  d                                           ; $7a9b: $82
	nop                                              ; $7a9c: $00
	add  b                                           ; $7a9d: $80
	rst  $38                                         ; $7a9e: $ff
	add  b                                           ; $7a9f: $80
	nop                                              ; $7aa0: $00
	add  [hl]                                        ; $7aa1: $86
	rst  $38                                         ; $7aa2: $ff
	add  d                                           ; $7aa3: $82
	nop                                              ; $7aa4: $00
	add  b                                           ; $7aa5: $80
	rst  $38                                         ; $7aa6: $ff
	add  b                                           ; $7aa7: $80
	nop                                              ; $7aa8: $00
	nop                                              ; $7aa9: $00
	db   $fc                                         ; $7aaa: $fc
	add  d                                           ; $7aab: $82
	db   $fd                                         ; $7aac: $fd
	nop                                              ; $7aad: $00
	db   $fc                                         ; $7aae: $fc
	add  b                                           ; $7aaf: $80
	rst  $38                                         ; $7ab0: $ff
	add  d                                           ; $7ab1: $82
	nop                                              ; $7ab2: $00
	add  b                                           ; $7ab3: $80
	db   $fc                                         ; $7ab4: $fc
	add  b                                           ; $7ab5: $80
	nop                                              ; $7ab6: $00
	ld   bc, $8880                                   ; $7ab7: $01 $80 $88
	add  b                                           ; $7aba: $80
	xor  d                                           ; $7abb: $aa
	ld   bc, $0109                                   ; $7abc: $01 $09 $01
	add  b                                           ; $7abf: $80
	rst  $38                                         ; $7ac0: $ff
	nop                                              ; $7ac1: $00
	nop                                              ; $7ac2: $00
	add  l                                           ; $7ac3: $85
	stop                                             ; $7ac4: $10 $00
	rla                                              ; $7ac6: $17
	add  e                                           ; $7ac7: $83
	nop                                              ; $7ac8: $00
	add  b                                           ; $7ac9: $80
	ldh  a, [$83]                                    ; $7aca: $f0 $83
	nop                                              ; $7acc: $00
	add  c                                           ; $7acd: $81
	ld   b, b                                        ; $7ace: $40
	add  hl, bc                                      ; $7acf: $09
	cp   b                                           ; $7ad0: $b8
	ld   e, $1c                                      ; $7ad1: $1e $1c
	inc  b                                           ; $7ad3: $04
	dec  bc                                          ; $7ad4: $0b
	rlca                                             ; $7ad5: $07
	dec  b                                           ; $7ad6: $05
	rlca                                             ; $7ad7: $07
	dec  c                                           ; $7ad8: $0d
	ld   a, [bc]                                     ; $7ad9: $0a
	add  d                                           ; $7ada: $82
	rrca                                             ; $7adb: $0f
	add  b                                           ; $7adc: $80
	rlca                                             ; $7add: $07
	nop                                              ; $7ade: $00
	or   e                                           ; $7adf: $b3
	add  c                                           ; $7ae0: $81
	jp   $8300                                       ; $7ae1: $c3 $00 $83


	add  b                                           ; $7ae4: $80
	dec  bc                                          ; $7ae5: $0b
	ld   [bc], a                                     ; $7ae6: $02
	ei                                               ; $7ae7: $fb
	sbc  e                                           ; $7ae8: $9b
	ld   h, e                                        ; $7ae9: $63
	add  b                                           ; $7aea: $80
	ldh  a, [$82]                                    ; $7aeb: $f0 $82
	add  e                                           ; $7aed: $83
	nop                                              ; $7aee: $00
	nop                                              ; $7aef: $00
	add  b                                           ; $7af0: $80
	ldh  [$03], a                                    ; $7af1: $e0 $03
	di                                               ; $7af3: $f3
	db   $d3                                         ; $7af4: $d3
	ld   [hl], e                                     ; $7af5: $73
	ld   d, e                                        ; $7af6: $53
	add  b                                           ; $7af7: $80
	rra                                              ; $7af8: $1f
	ld   bc, $feff                                   ; $7af9: $01 $ff $fe
	add  b                                           ; $7afc: $80
	rra                                              ; $7afd: $1f
	ld   [bc], a                                     ; $7afe: $02
	pop  hl                                          ; $7aff: $e1

Jump_076_7b00:
	ldh  [$90], a                                    ; $7b00: $e0 $90
	add  hl, de                                      ; $7b02: $19
	ld   [bc], a                                     ; $7b03: $02
	add  [hl]                                        ; $7b04: $86
	nop                                              ; $7b05: $00
	nop                                              ; $7b06: $00
	rrca                                             ; $7b07: $0f
	add  l                                           ; $7b08: $85
	nop                                              ; $7b09: $00
	nop                                              ; $7b0a: $00
	rrca                                             ; $7b0b: $0f
	add  l                                           ; $7b0c: $85
	nop                                              ; $7b0d: $00
	nop                                              ; $7b0e: $00
	rst  $38                                         ; $7b0f: $ff
	add  l                                           ; $7b10: $85

jr_076_7b11:
	nop                                              ; $7b11: $00
	nop                                              ; $7b12: $00
	rst  $38                                         ; $7b13: $ff
	add  l                                           ; $7b14: $85
	nop                                              ; $7b15: $00
	nop                                              ; $7b16: $00
	rst  $38                                         ; $7b17: $ff
	add  b                                           ; $7b18: $80
	dec  d                                           ; $7b19: $15
	add  b                                           ; $7b1a: $80
	cpl                                              ; $7b1b: $2f
	add  c                                           ; $7b1c: $81
	ccf                                              ; $7b1d: $3f
	nop                                              ; $7b1e: $00
	ret  nz                                          ; $7b1f: $c0

	add  l                                           ; $7b20: $85
	nop                                              ; $7b21: $00
	nop                                              ; $7b22: $00
	rst  $38                                         ; $7b23: $ff
	add  l                                           ; $7b24: $85
	cp   $00                                         ; $7b25: $fe $00
	ld   bc, $0085                                   ; $7b27: $01 $85 $00
	nop                                              ; $7b2a: $00
	rst  $38                                         ; $7b2b: $ff
	add  b                                           ; $7b2c: $80
	ld   a, b                                        ; $7b2d: $78
	add  e                                           ; $7b2e: $83
	ld   [hl], b                                     ; $7b2f: $70
	jr   nz, jr_076_7b11                             ; $7b30: $20 $df

	ld   a, [$ff00]                                  ; $7b32: $fa $00 $ff
	nop                                              ; $7b35: $00
	rst  $38                                         ; $7b36: $ff
	xor  d                                           ; $7b37: $aa
	rst  $38                                         ; $7b38: $ff
	xor  d                                           ; $7b39: $aa
	rst  $38                                         ; $7b3a: $ff
	nop                                              ; $7b3b: $00
	rst  $38                                         ; $7b3c: $ff
	nop                                              ; $7b3d: $00
	rst  $38                                         ; $7b3e: $ff
	xor  d                                           ; $7b3f: $aa
	rst  $38                                         ; $7b40: $ff
	ld   [$00bf], a                                  ; $7b41: $ea $bf $00
	rst  $38                                         ; $7b44: $ff
	nop                                              ; $7b45: $00
	rst  $38                                         ; $7b46: $ff
	xor  d                                           ; $7b47: $aa
	rst  $38                                         ; $7b48: $ff
	xor  d                                           ; $7b49: $aa
	rst  $38                                         ; $7b4a: $ff
	nop                                              ; $7b4b: $00
	rst  $38                                         ; $7b4c: $ff
	nop                                              ; $7b4d: $00
	rst  $38                                         ; $7b4e: $ff
	xor  d                                           ; $7b4f: $aa
	rst  $38                                         ; $7b50: $ff
	rrca                                             ; $7b51: $0f
	adc  h                                           ; $7b52: $8c
	ret  nc                                          ; $7b53: $d0

	inc  b                                           ; $7b54: $04
	db   $10                                         ; $7b55: $10
	sbc  a                                           ; $7b56: $9f
	rst  $38                                         ; $7b57: $ff
	ld   l, d                                        ; $7b58: $6a
	ld   [$d580], a                                  ; $7b59: $ea $80 $d5
	inc  bc                                          ; $7b5c: $03
	ld   a, a                                        ; $7b5d: $7f
	rst  $38                                         ; $7b5e: $ff
	ld   d, l                                        ; $7b5f: $55
	push de                                          ; $7b60: $d5
	add  b                                           ; $7b61: $80
	ld   [$7f03], a                                  ; $7b62: $ea $03 $7f
	rst  $38                                         ; $7b65: $ff
	ld   l, d                                        ; $7b66: $6a
	ld   [$ff80], a                                  ; $7b67: $ea $80 $ff
	add  b                                           ; $7b6a: $80
	xor  d                                           ; $7b6b: $aa
	add  b                                           ; $7b6c: $80
	ld   d, l                                        ; $7b6d: $55
	add  b                                           ; $7b6e: $80
	rst  $38                                         ; $7b6f: $ff
	add  b                                           ; $7b70: $80
	ld   d, l                                        ; $7b71: $55
	add  b                                           ; $7b72: $80
	xor  d                                           ; $7b73: $aa
	add  b                                           ; $7b74: $80
	rst  $38                                         ; $7b75: $ff
	add  b                                           ; $7b76: $80
	xor  e                                           ; $7b77: $ab
	add  b                                           ; $7b78: $80
	ldh  a, [$82]                                    ; $7b79: $f0 $82
	ld   [hl], b                                     ; $7b7b: $70
	nop                                              ; $7b7c: $00
	ldh  a, [$87]                                    ; $7b7d: $f0 $87
	ldh  [rP1], a                                    ; $7b7f: $e0 $00
	db   $10                                         ; $7b81: $10
	add  l                                           ; $7b82: $85
	nop                                              ; $7b83: $00
	ld   bc, $00ff                                   ; $7b84: $01 $ff $00
	add  b                                           ; $7b87: $80
	ld   b, b                                        ; $7b88: $40
	add  b                                           ; $7b89: $80
	nop                                              ; $7b8a: $00
	add  b                                           ; $7b8b: $80
	ld   b, b                                        ; $7b8c: $40
	nop                                              ; $7b8d: $00
	rrca                                             ; $7b8e: $0f
	add  [hl]                                        ; $7b8f: $86
	ret  nc                                          ; $7b90: $d0

	add  l                                           ; $7b91: $85
	ldh  [rP1], a                                    ; $7b92: $e0 $00
	rst  $28                                         ; $7b94: $ef
	add  [hl]                                        ; $7b95: $86
	ld   bc, $008d                                   ; $7b96: $01 $8d $00
	add  b                                           ; $7b99: $80
	ld   [bc], a                                     ; $7b9a: $02
	add  b                                           ; $7b9b: $80
	nop                                              ; $7b9c: $00
	add  b                                           ; $7b9d: $80
	ld   [bc], a                                     ; $7b9e: $02
	add  b                                           ; $7b9f: $80
	nop                                              ; $7ba0: $00
	nop                                              ; $7ba1: $00
	rst  $38                                         ; $7ba2: $ff
	add  l                                           ; $7ba3: $85
	nop                                              ; $7ba4: $00
	nop                                              ; $7ba5: $00
	db   $fc                                         ; $7ba6: $fc
	add  c                                           ; $7ba7: $81
	inc  bc                                          ; $7ba8: $03
	add  d                                           ; $7ba9: $82
	rlca                                             ; $7baa: $07
	nop                                              ; $7bab: $00
	ldh  a, [$8d]                                    ; $7bac: $f0 $8d
	nop                                              ; $7bae: $00
	nop                                              ; $7baf: $00
	ldh  a, [$8e]                                    ; $7bb0: $f0 $8e
	nop                                              ; $7bb2: $00
	add  d                                           ; $7bb3: $82
	ccf                                              ; $7bb4: $3f
	ld   bc, $7f7d                                   ; $7bb5: $01 $7d $7f
	add  a                                           ; $7bb8: $87
	ld   a, e                                        ; $7bb9: $7b
	nop                                              ; $7bba: $00
	ld   a, c                                        ; $7bbb: $79
	add  d                                           ; $7bbc: $82
	cp   $8a                                         ; $7bbd: $fe $8a
	db   $fc                                         ; $7bbf: $fc
	add  b                                           ; $7bc0: $80
	ld   [hl], b                                     ; $7bc1: $70
	adc  b                                           ; $7bc2: $88
	ldh  a, [$81]                                    ; $7bc3: $f0 $81
	ldh  [rTIMA], a                                  ; $7bc5: $e0 $05
	ld   a, [bc]                                     ; $7bc7: $0a
	rst  $38                                         ; $7bc8: $ff
	ret  nz                                          ; $7bc9: $c0

	rst  $38                                         ; $7bca: $ff
	push de                                          ; $7bcb: $d5
	rst  $38                                         ; $7bcc: $ff
	add  b                                           ; $7bcd: $80
	nop                                              ; $7bce: $00
	add  [hl]                                        ; $7bcf: $86
	rst  $38                                         ; $7bd0: $ff
	dec  b                                           ; $7bd1: $05
	xor  d                                           ; $7bd2: $aa
	rst  $38                                         ; $7bd3: $ff
	nop                                              ; $7bd4: $00
	rst  $38                                         ; $7bd5: $ff
	ld   d, l                                        ; $7bd6: $55
	rst  $38                                         ; $7bd7: $ff
	add  b                                           ; $7bd8: $80
	nop                                              ; $7bd9: $00
	add  [hl]                                        ; $7bda: $86
	rst  $38                                         ; $7bdb: $ff
	ld   bc, $404f                                   ; $7bdc: $01 $4f $40
	add  b                                           ; $7bdf: $80
	and  b                                           ; $7be0: $a0
	add  b                                           ; $7be1: $80
	ld   d, b                                        ; $7be2: $50
	add  b                                           ; $7be3: $80
	nop                                              ; $7be4: $00
	add  b                                           ; $7be5: $80
	ret  nc                                          ; $7be6: $d0

	add  b                                           ; $7be7: $80
	ldh  [$80], a                                    ; $7be8: $e0 $80
	ret  nc                                          ; $7bea: $d0

	add  b                                           ; $7beb: $80
	ldh  [rAUD1SWEEP], a                             ; $7bec: $e0 $10
	dec  h                                           ; $7bee: $25
	push de                                          ; $7bef: $d5
	ld   d, l                                        ; $7bf0: $55
	rst  $38                                         ; $7bf1: $ff
	ld   b, b                                        ; $7bf2: $40
	ld   [$f5b5], a                                  ; $7bf3: $ea $b5 $f5
	dec  d                                           ; $7bf6: $15
	rst  $38                                         ; $7bf7: $ff
	rra                                              ; $7bf8: $1f
	push af                                          ; $7bf9: $f5
	rra                                              ; $7bfa: $1f
	rst  $38                                         ; $7bfb: $ff
	adc  d                                           ; $7bfc: $8a
	rst  $38                                         ; $7bfd: $ff
	add  b                                           ; $7bfe: $80
	add  b                                           ; $7bff: $80
	ld   d, l                                        ; $7c00: $55
	ld   [bc], a                                     ; $7c01: $02
	rst  $38                                         ; $7c02: $ff
	ld   bc, $80ab                                   ; $7c03: $01 $ab $80
	ld   d, a                                        ; $7c06: $57
	ld   [$ff54], sp                                 ; $7c07: $08 $54 $ff
	db   $fc                                         ; $7c0a: $fc
	ld   d, a                                        ; $7c0b: $57
	push af                                          ; $7c0c: $f5
	rst  $38                                         ; $7c0d: $ff
	and  b                                           ; $7c0e: $a0
	rst  $38                                         ; $7c0f: $ff
	and  l                                           ; $7c10: $a5
	add  d                                           ; $7c11: $82
	ldh  [$84], a                                    ; $7c12: $e0 $84
	ret  nz                                          ; $7c14: $c0

	add  e                                           ; $7c15: $83
	ret  nc                                          ; $7c16: $d0

	nop                                              ; $7c17: $00
	rst  JumpTable                                         ; $7c18: $df
	add  e                                           ; $7c19: $83
	nop                                              ; $7c1a: $00
	add  d                                           ; $7c1b: $82
	ld   b, b                                        ; $7c1c: $40
	add  b                                           ; $7c1d: $80
	add  b                                           ; $7c1e: $80
	add  b                                           ; $7c1f: $80
	ld   b, b                                        ; $7c20: $40
	add  b                                           ; $7c21: $80
	add  b                                           ; $7c22: $80
	add  d                                           ; $7c23: $82
	cp   a                                           ; $7c24: $bf
	add  b                                           ; $7c25: $80
	rst  $38                                         ; $7c26: $ff
	add  b                                           ; $7c27: $80
	cp   a                                           ; $7c28: $bf
	add  d                                           ; $7c29: $82
	rst  $38                                         ; $7c2a: $ff
	add  d                                           ; $7c2b: $82
	cp   a                                           ; $7c2c: $bf
	adc  d                                           ; $7c2d: $8a
	nop                                              ; $7c2e: $00
	add  d                                           ; $7c2f: $82
	inc  b                                           ; $7c30: $04
	nop                                              ; $7c31: $00
	rst  $38                                         ; $7c32: $ff
	add  l                                           ; $7c33: $85
	nop                                              ; $7c34: $00
	nop                                              ; $7c35: $00
	ldh  a, [$85]                                    ; $7c36: $f0 $85
	ret  nc                                          ; $7c38: $d0

	ld   bc, $07d8                                   ; $7c39: $01 $d8 $07
	add  h                                           ; $7c3c: $84
	rrca                                             ; $7c3d: $0f
	add  h                                           ; $7c3e: $84
	rra                                              ; $7c3f: $1f
	add  b                                           ; $7c40: $80
	ccf                                              ; $7c41: $3f
	ld   bc, $01f1                                   ; $7c42: $01 $f1 $01
	add  b                                           ; $7c45: $80
	ld   [bc], a                                     ; $7c46: $02
	add  b                                           ; $7c47: $80
	dec  b                                           ; $7c48: $05
	add  b                                           ; $7c49: $80
	ld   a, [bc]                                     ; $7c4a: $0a
	add  b                                           ; $7c4b: $80
	dec  b                                           ; $7c4c: $05
	add  b                                           ; $7c4d: $80
	ld   a, [bc]                                     ; $7c4e: $0a
	add  b                                           ; $7c4f: $80
	dec  b                                           ; $7c50: $05
	add  b                                           ; $7c51: $80
	ld   a, [bc]                                     ; $7c52: $0a
	nop                                              ; $7c53: $00
	ldh  a, [$8a]                                    ; $7c54: $f0 $8a
	nop                                              ; $7c56: $00
	add  c                                           ; $7c57: $81
	ld   bc, $0202                                   ; $7c58: $01 $02 $02
	ei                                               ; $7c5b: $fb
	ld   sp, hl                                      ; $7c5c: $f9
	adc  e                                           ; $7c5d: $8b
	db   $fd                                         ; $7c5e: $fd
	nop                                              ; $7c5f: $00
	db   $fc                                         ; $7c60: $fc
	adc  d                                           ; $7c61: $8a
	ld   hl, sp+$03                                  ; $7c62: $f8 $03
	pop  af                                          ; $7c64: $f1
	ld   [hl], c                                     ; $7c65: $71
	pop  af                                          ; $7c66: $f1
	ld   [hl], c                                     ; $7c67: $71
	adc  d                                           ; $7c68: $8a
	ldh  [$81], a                                    ; $7c69: $e0 $81
	ret  nz                                          ; $7c6b: $c0

	nop                                              ; $7c6c: $00
	rra                                              ; $7c6d: $1f
	adc  l                                           ; $7c6e: $8d
	rst  JumpTable                                         ; $7c6f: $df
	adc  d                                           ; $7c70: $8a
	ld   b, $83                                      ; $7c71: $06 $83
	nop                                              ; $7c73: $00
	add  b                                           ; $7c74: $80
	ld   c, $80                                      ; $7c75: $0e $80
	nop                                              ; $7c77: $00
	add  b                                           ; $7c78: $80
	ld   c, $80                                      ; $7c79: $0e $80

jr_076_7c7b:
	rrca                                             ; $7c7b: $0f
	add  h                                           ; $7c7c: $84
	rra                                              ; $7c7d: $1f
	ld   [bc], a                                     ; $7c7e: $02
	ld   e, $41                                      ; $7c7f: $1e $41
	and  b                                           ; $7c81: $a0
	add  c                                           ; $7c82: $81
	ret  nz                                          ; $7c83: $c0

	nop                                              ; $7c84: $00
	ldh  [$84], a                                    ; $7c85: $e0 $84
	ldh  a, [$03]                                    ; $7c87: $f0 $03
	jr   nz, jr_076_7c7b                             ; $7c89: $20 $f0

	nop                                              ; $7c8b: $00
	ldh  a, [$86]                                    ; $7c8c: $f0 $86
	nop                                              ; $7c8e: $00
	nop                                              ; $7c8f: $00
	rst  $38                                         ; $7c90: $ff
	add  d                                           ; $7c91: $82
	inc  bc                                          ; $7c92: $03
	add  c                                           ; $7c93: $81
	ld   bc, $fe00                                   ; $7c94: $01 $00 $fe
	add  l                                           ; $7c97: $85
	nop                                              ; $7c98: $00
	nop                                              ; $7c99: $00
	rst  $38                                         ; $7c9a: $ff
	add  l                                           ; $7c9b: $85
	nop                                              ; $7c9c: $00
	add  b                                           ; $7c9d: $80
	ld   b, b                                        ; $7c9e: $40
	add  b                                           ; $7c9f: $80
	add  b                                           ; $7ca0: $80
	add  b                                           ; $7ca1: $80
	ld   b, b                                        ; $7ca2: $40
	add  b                                           ; $7ca3: $80
	add  b                                           ; $7ca4: $80
	add  b                                           ; $7ca5: $80
	ld   b, b                                        ; $7ca6: $40
	add  b                                           ; $7ca7: $80
	add  b                                           ; $7ca8: $80
	add  b                                           ; $7ca9: $80
	ld   b, b                                        ; $7caa: $40
	add  b                                           ; $7cab: $80
	add  b                                           ; $7cac: $80
	nop                                              ; $7cad: $00
	rst  $38                                         ; $7cae: $ff
	add  l                                           ; $7caf: $85
	nop                                              ; $7cb0: $00
	ld   bc, $bf40                                   ; $7cb1: $01 $40 $bf
	add  b                                           ; $7cb4: $80
	rst  $38                                         ; $7cb5: $ff
	add  d                                           ; $7cb6: $82
	cp   a                                           ; $7cb7: $bf
	add  b                                           ; $7cb8: $80
	inc  b                                           ; $7cb9: $04
	add  d                                           ; $7cba: $82
	ld   b, $82                                      ; $7cbb: $06 $82
	ld   h, $82                                      ; $7cbd: $26 $82
	ld   h, [hl]                                     ; $7cbf: $66
	add  b                                           ; $7cc0: $80
	and  $80                                         ; $7cc1: $e6 $80
	nop                                              ; $7cc3: $00
	add  d                                           ; $7cc4: $82
	rst  $38                                         ; $7cc5: $ff
	add  b                                           ; $7cc6: $80
	nop                                              ; $7cc7: $00
	add  [hl]                                        ; $7cc8: $86
	rst  $38                                         ; $7cc9: $ff
	add  d                                           ; $7cca: $82
	ccf                                              ; $7ccb: $3f
	adc  d                                           ; $7ccc: $8a
	ld   a, a                                        ; $7ccd: $7f
	ld   bc, $05f5                                   ; $7cce: $01 $f5 $05
	add  b                                           ; $7cd1: $80
	ld   a, [bc]                                     ; $7cd2: $0a
	add  b                                           ; $7cd3: $80
	inc  b                                           ; $7cd4: $04
	add  b                                           ; $7cd5: $80
	ld   a, [bc]                                     ; $7cd6: $0a
	add  b                                           ; $7cd7: $80
	inc  b                                           ; $7cd8: $04
	add  b                                           ; $7cd9: $80
	ld   a, [bc]                                     ; $7cda: $0a
	add  b                                           ; $7cdb: $80
	inc  b                                           ; $7cdc: $04
	add  b                                           ; $7cdd: $80
	ld   a, [bc]                                     ; $7cde: $0a
	nop                                              ; $7cdf: $00
	ldh  a, [$88]                                    ; $7ce0: $f0 $88
	ld   bc, $0384                                   ; $7ce2: $01 $84 $03
	adc  h                                           ; $7ce5: $8c
	cp   $01                                         ; $7ce6: $fe $01
	rst  $38                                         ; $7ce8: $ff
	ld   a, a                                        ; $7ce9: $7f
	adc  b                                           ; $7cea: $88
	pop  af                                          ; $7ceb: $f1
	ld   [bc], a                                     ; $7cec: $02
	pop  hl                                          ; $7ced: $e1
	and  c                                           ; $7cee: $a1
	pop  hl                                          ; $7cef: $e1
	add  b                                           ; $7cf0: $80
	ld   h, c                                        ; $7cf1: $61
	nop                                              ; $7cf2: $00
	ld   hl, $c08c                                   ; $7cf3: $21 $8c $c0

jr_076_7cf6:
	ld   bc, $5f80                                   ; $7cf6: $01 $80 $5f
	adc  c                                           ; $7cf9: $89
	rst  JumpTable                                         ; $7cfa: $df
	add  b                                           ; $7cfb: $80
	adc  a                                           ; $7cfc: $8f
	add  b                                           ; $7cfd: $80
	nop                                              ; $7cfe: $00
	rlca                                             ; $7cff: $07
	db   $e3                                         ; $7d00: $e3
	rst  $38                                         ; $7d01: $ff
	ld   h, e                                        ; $7d02: $63
	add  b                                           ; $7d03: $80
	ld   a, a                                        ; $7d04: $7f
	rst  $38                                         ; $7d05: $ff
	ld   l, d                                        ; $7d06: $6a
	ld   [$d580], a                                  ; $7d07: $ea $80 $d5
	inc  bc                                          ; $7d0a: $03
	ld   a, a                                        ; $7d0b: $7f
	rst  $38                                         ; $7d0c: $ff
	ld   d, l                                        ; $7d0d: $55
	push de                                          ; $7d0e: $d5
	add  b                                           ; $7d0f: $80
	ld   [$1f07], a                                  ; $7d10: $ea $07 $1f
	rst  $38                                         ; $7d13: $ff
	ldh  [rP1], a                                    ; $7d14: $e0 $00
	cp   $ff                                         ; $7d16: $fe $ff
	xor  c                                           ; $7d18: $a9
	xor  b                                           ; $7d19: $a8
	add  b                                           ; $7d1a: $80
	ld   d, b                                        ; $7d1b: $50
	add  b                                           ; $7d1c: $80
	rst  $38                                         ; $7d1d: $ff
	add  b                                           ; $7d1e: $80
	ld   d, h                                        ; $7d1f: $54
	add  b                                           ; $7d20: $80
	xor  d                                           ; $7d21: $aa
	ld   b, $a0                                      ; $7d22: $06 $a0
	ldh  a, [rP1]                                    ; $7d24: $f0 $00
	ld   [hl], b                                     ; $7d26: $70
	nop                                              ; $7d27: $00
	ldh  a, [$c0]                                    ; $7d28: $f0 $c0
	add  b                                           ; $7d2a: $80
	jr   nc, @+$03                                   ; $7d2b: $30 $01

	stop                                             ; $7d2d: $10 $00
	add  b                                           ; $7d2f: $80
	ldh  a, [rDIV]                                   ; $7d30: $f0 $04
	stop                                             ; $7d32: $10 $00
	jr   nz, jr_076_7cf6                             ; $7d34: $20 $c0

	rrca                                             ; $7d36: $0f
	add  d                                           ; $7d37: $82
	rst  $38                                         ; $7d38: $ff
	add  b                                           ; $7d39: $80
	nop                                              ; $7d3a: $00
	add  [hl]                                        ; $7d3b: $86
	rst  $38                                         ; $7d3c: $ff
	add  b                                           ; $7d3d: $80
	nop                                              ; $7d3e: $00
	add  d                                           ; $7d3f: $82
	rst  $38                                         ; $7d40: $ff
	add  b                                           ; $7d41: $80
	nop                                              ; $7d42: $00
	add  b                                           ; $7d43: $80
	rst  $38                                         ; $7d44: $ff
	add  b                                           ; $7d45: $80
	ld   a, a                                        ; $7d46: $7f

jr_076_7d47:
	add  b                                           ; $7d47: $80

jr_076_7d48:
	cp   a                                           ; $7d48: $bf
	add  b                                           ; $7d49: $80
	ld   e, a                                        ; $7d4a: $5f
	add  b                                           ; $7d4b: $80
	ld   c, $80                                      ; $7d4c: $0e $80
	ld   d, a                                        ; $7d4e: $57
	add  b                                           ; $7d4f: $80
	xor  e                                           ; $7d50: $ab
	add  b                                           ; $7d51: $80
	nop                                              ; $7d52: $00
	add  b                                           ; $7d53: $80
	xor  d                                           ; $7d54: $aa
	add  b                                           ; $7d55: $80
	ld   d, l                                        ; $7d56: $55
	add  b                                           ; $7d57: $80
	xor  d                                           ; $7d58: $aa
	add  b                                           ; $7d59: $80
	ld   d, l                                        ; $7d5a: $55
	add  b                                           ; $7d5b: $80
	nop                                              ; $7d5c: $00
	adc  h                                           ; $7d5d: $8c
	ld   bc, $e68e                                   ; $7d5e: $01 $8e $e6
	add  b                                           ; $7d61: $80
	jr   z, @-$7e                                    ; $7d62: $28 $80

	ld   d, l                                        ; $7d64: $55
	add  b                                           ; $7d65: $80
	xor  d                                           ; $7d66: $aa
	add  b                                           ; $7d67: $80
	nop                                              ; $7d68: $00
	add  b                                           ; $7d69: $80
	xor  d                                           ; $7d6a: $aa
	add  b                                           ; $7d6b: $80
	ld   d, l                                        ; $7d6c: $55
	add  b                                           ; $7d6d: $80
	xor  d                                           ; $7d6e: $aa
	add  b                                           ; $7d6f: $80
	ld   d, l                                        ; $7d70: $55
	adc  [hl]                                        ; $7d71: $8e
	ld   a, a                                        ; $7d72: $7f
	ld   bc, $04f4                                   ; $7d73: $01 $f4 $04
	add  b                                           ; $7d76: $80
	ld   [$0480], sp                                 ; $7d77: $08 $80 $04
	add  b                                           ; $7d7a: $80
	ld   [$0480], sp                                 ; $7d7b: $08 $80 $04
	add  b                                           ; $7d7e: $80
	ld   [$0480], sp                                 ; $7d7f: $08 $80 $04

Jump_076_7d82:
	add  b                                           ; $7d82: $80
	ld   [$f000], sp                                 ; $7d83: $08 $00 $f0
	add  h                                           ; $7d86: $84
	inc  bc                                          ; $7d87: $03
	add  b                                           ; $7d88: $80
	ld   [bc], a                                     ; $7d89: $02
	add  b                                           ; $7d8a: $80
	ld   b, $82                                      ; $7d8b: $06 $82
	rlca                                             ; $7d8d: $07
	add  b                                           ; $7d8e: $80
	ld   [bc], a                                     ; $7d8f: $02
	add  b                                           ; $7d90: $80
	rst  $38                                         ; $7d91: $ff
	inc  bc                                          ; $7d92: $03
	rst  $28                                         ; $7d93: $ef
	rst  $38                                         ; $7d94: $ff
	ld   de, $8193                                   ; $7d95: $11 $93 $81
	sub  d                                           ; $7d98: $92
	ld   [bc], a                                     ; $7d99: $02
	ld   a, h                                        ; $7d9a: $7c
	ld   a, l                                        ; $7d9b: $7d
	ld   bc, $8380                                   ; $7d9c: $01 $80 $83
	ld   bc, $4101                                   ; $7d9f: $01 $01 $41
	add  h                                           ; $7da2: $84
	ld   h, c                                        ; $7da3: $61
	add  c                                           ; $7da4: $81
	ld   h, e                                        ; $7da5: $63
	ld   [bc], a                                     ; $7da6: $02
	ld   b, e                                        ; $7da7: $43
	ld   h, e                                        ; $7da8: $63
	inc  hl                                          ; $7da9: $23
	add  b                                           ; $7daa: $80
	and  e                                           ; $7dab: $a3
	ld   bc, $0323                                   ; $7dac: $01 $23 $03
	adc  l                                           ; $7daf: $8d
	add  b                                           ; $7db0: $80
	nop                                              ; $7db1: $00
	ld   a, a                                        ; $7db2: $7f
	adc  l                                           ; $7db3: $8d
	rst  $38                                         ; $7db4: $ff
	add  d                                           ; $7db5: $82
	ld   [bc], a                                     ; $7db6: $02
	adc  d                                           ; $7db7: $8a
	ld   b, $8b                                      ; $7db8: $06 $8b
	nop                                              ; $7dba: $00
	add  c                                           ; $7dbb: $81
	ld   bc, $0e01                                   ; $7dbc: $01 $01 $0e
	ldh  [$84], a                                    ; $7dbf: $e0 $84
	ld   h, b                                        ; $7dc1: $60
	nop                                              ; $7dc2: $00
	jr   nz, jr_076_7d48                             ; $7dc3: $20 $83

	jr   nc, jr_076_7d47                             ; $7dc5: $30 $80

	db   $10                                         ; $7dc7: $10
	ld   bc, $a05f                                   ; $7dc8: $01 $5f $a0
	add  b                                           ; $7dcb: $80
	ld   d, l                                        ; $7dcc: $55
	add  b                                           ; $7dcd: $80
	xor  d                                           ; $7dce: $aa
	add  b                                           ; $7dcf: $80
	nop                                              ; $7dd0: $00
	add  b                                           ; $7dd1: $80
	xor  d                                           ; $7dd2: $aa
	add  b                                           ; $7dd3: $80
	ld   d, l                                        ; $7dd4: $55
	add  b                                           ; $7dd5: $80
	xor  d                                           ; $7dd6: $aa
	add  b                                           ; $7dd7: $80
	ld   d, l                                        ; $7dd8: $55
	add  d                                           ; $7dd9: $82
	nop                                              ; $7dda: $00
	add  b                                           ; $7ddb: $80
	ld   b, b                                        ; $7ddc: $40
	add  h                                           ; $7ddd: $84
	nop                                              ; $7dde: $00
	add  b                                           ; $7ddf: $80
	ld   b, b                                        ; $7de0: $40
	add  b                                           ; $7de1: $80
	nop                                              ; $7de2: $00
	add  b                                           ; $7de3: $80
	ld   b, b                                        ; $7de4: $40
	add  b                                           ; $7de5: $80
	add  b                                           ; $7de6: $80
	add  b                                           ; $7de7: $80
	ld   b, b                                        ; $7de8: $40
	add  b                                           ; $7de9: $80
	add  b                                           ; $7dea: $80
	add  b                                           ; $7deb: $80
	ld   b, b                                        ; $7dec: $40
	add  b                                           ; $7ded: $80
	ret  nz                                          ; $7dee: $c0

	add  b                                           ; $7def: $80
	ld   b, b                                        ; $7df0: $40
	add  b                                           ; $7df1: $80
	ret  nz                                          ; $7df2: $c0

	add  d                                           ; $7df3: $82
	dec  b                                           ; $7df4: $05
	add  d                                           ; $7df5: $82
	dec  c                                           ; $7df6: $0d
	add  d                                           ; $7df7: $82
	dec  e                                           ; $7df8: $1d
	add  d                                           ; $7df9: $82
	dec  a                                           ; $7dfa: $3d
	add  b                                           ; $7dfb: $80
	xor  d                                           ; $7dfc: $aa
	add  b                                           ; $7dfd: $80
	ld   d, l                                        ; $7dfe: $55
	add  b                                           ; $7dff: $80
	xor  d                                           ; $7e00: $aa
	add  b                                           ; $7e01: $80
	nop                                              ; $7e02: $00
	add  b                                           ; $7e03: $80
	xor  d                                           ; $7e04: $aa
	add  b                                           ; $7e05: $80
	ld   d, l                                        ; $7e06: $55
	add  b                                           ; $7e07: $80
	xor  d                                           ; $7e08: $aa
	add  b                                           ; $7e09: $80
	ld   d, l                                        ; $7e0a: $55
	adc  b                                           ; $7e0b: $88
	nop                                              ; $7e0c: $00
	add  h                                           ; $7e0d: $84
	ld   [bc], a                                     ; $7e0e: $02
	inc  bc                                          ; $7e0f: $03
	jp   z, $d50a                                    ; $7e10: $ca $0a $d5

	dec  d                                           ; $7e13: $15
	add  b                                           ; $7e14: $80
	xor  d                                           ; $7e15: $aa
	add  b                                           ; $7e16: $80
	nop                                              ; $7e17: $00
	add  b                                           ; $7e18: $80
	xor  d                                           ; $7e19: $aa
	add  b                                           ; $7e1a: $80
	ld   d, l                                        ; $7e1b: $55
	add  b                                           ; $7e1c: $80
	xor  d                                           ; $7e1d: $aa
	add  b                                           ; $7e1e: $80
	ld   d, l                                        ; $7e1f: $55
	ld   bc, $00f0                                   ; $7e20: $01 $f0 $00
	add  b                                           ; $7e23: $80
	ld   [$0080], sp                                 ; $7e24: $08 $80 $00
	add  b                                           ; $7e27: $80
	ld   [$0080], sp                                 ; $7e28: $08 $80 $00
	add  b                                           ; $7e2b: $80
	ld   [$0082], sp                                 ; $7e2c: $08 $82 $00
	ld   [bc], a                                     ; $7e2f: $02
	rst  $30                                         ; $7e30: $f7
	rlca                                             ; $7e31: $07
	nop                                              ; $7e32: $00
	add  b                                           ; $7e33: $80
	ld   [bc], a                                     ; $7e34: $02
	ld   [bc], a                                     ; $7e35: $02
	ld   a, [bc]                                     ; $7e36: $0a
	dec  b                                           ; $7e37: $05
	rrca                                             ; $7e38: $0f
	add  c                                           ; $7e39: $81
	nop                                              ; $7e3a: $00
	ld   [bc], a                                     ; $7e3b: $02
	rrca                                             ; $7e3c: $0f
	ld   a, [bc]                                     ; $7e3d: $0a
	dec  b                                           ; $7e3e: $05
	add  b                                           ; $7e3f: $80
	nop                                              ; $7e40: $00
	add  b                                           ; $7e41: $80
	rst  $38                                         ; $7e42: $ff
	nop                                              ; $7e43: $00
	nop                                              ; $7e44: $00
	add  c                                           ; $7e45: $81
	xor  d                                           ; $7e46: $aa
	ld   bc, $ff55                                   ; $7e47: $01 $55 $ff
	add  c                                           ; $7e4a: $81
	nop                                              ; $7e4b: $00
	ld   [bc], a                                     ; $7e4c: $02
	rst  $38                                         ; $7e4d: $ff
	xor  d                                           ; $7e4e: $aa
	ld   d, l                                        ; $7e4f: $55
	add  b                                           ; $7e50: $80
	nop                                              ; $7e51: $00
	ld   [bc], a                                     ; $7e52: $02
	and  b                                           ; $7e53: $a0
	and  e                                           ; $7e54: $a3
	inc  hl                                          ; $7e55: $23
	add  d                                           ; $7e56: $82
	and  e                                           ; $7e57: $a3
	nop                                              ; $7e58: $00
	inc  hl                                          ; $7e59: $23
	add  b                                           ; $7e5a: $80
	inc  sp                                          ; $7e5b: $33
	add  h                                           ; $7e5c: $84
	inc  de                                          ; $7e5d: $13
	nop                                              ; $7e5e: $00
	ld   hl, $3d81                                   ; $7e5f: $21 $81 $3d
	nop                                              ; $7e62: $00
	rra                                              ; $7e63: $1f
	add  c                                           ; $7e64: $81
	nop                                              ; $7e65: $00
	add  b                                           ; $7e66: $80
	xor  d                                           ; $7e67: $aa
	add  b                                           ; $7e68: $80
	ld   d, l                                        ; $7e69: $55
	add  b                                           ; $7e6a: $80
	xor  d                                           ; $7e6b: $aa
	add  b                                           ; $7e6c: $80
	ld   d, l                                        ; $7e6d: $55
	add  b                                           ; $7e6e: $80
	rst  $38                                         ; $7e6f: $ff
	adc  h                                           ; $7e70: $8c
	rst  JumpTable                                         ; $7e71: $df
	adc  [hl]                                        ; $7e72: $8e
	ld   b, $00                                      ; $7e73: $06 $00
	nop                                              ; $7e75: $00
	add  b                                           ; $7e76: $80
	ld   de, $1786                                   ; $7e77: $11 $86 $17
	add  b                                           ; $7e7a: $80
	ld   [bc], a                                     ; $7e7b: $02
	add  b                                           ; $7e7c: $80
	nop                                              ; $7e7d: $00
	ld   [bc], a                                     ; $7e7e: $02
	ld   de, $10fe                                   ; $7e7f: $11 $fe $10
	adc  h                                           ; $7e82: $8c
	nop                                              ; $7e83: $00
	nop                                              ; $7e84: $00
	rst  $38                                         ; $7e85: $ff
	add  c                                           ; $7e86: $81
	nop                                              ; $7e87: $00
	add  b                                           ; $7e88: $80
	ld   bc, $0080                                   ; $7e89: $01 $80 $00
	add  b                                           ; $7e8c: $80
	ld   bc, $0080                                   ; $7e8d: $01 $80 $00
	add  d                                           ; $7e90: $82
	ld   bc, $4180                                   ; $7e91: $01 $80 $41
	add  b                                           ; $7e94: $80
	add  d                                           ; $7e95: $82
	add  b                                           ; $7e96: $80
	ld   b, l                                        ; $7e97: $45
	add  b                                           ; $7e98: $80
	adc  e                                           ; $7e99: $8b
	add  b                                           ; $7e9a: $80
	ld   d, a                                        ; $7e9b: $57
	add  b                                           ; $7e9c: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e9d: $cf
	add  d                                           ; $7e9e: $82
	rst  JumpTable                                         ; $7e9f: $df
	add  [hl]                                        ; $7ea0: $86
	ret  nz                                          ; $7ea1: $c0

	add  b                                           ; $7ea2: $80
	push bc                                          ; $7ea3: $c5
	add  b                                           ; $7ea4: $80
	jp   $c780                                       ; $7ea5: $c3 $80 $c7


	add  b                                           ; $7ea8: $80
	jp   Jump_076_7d82                               ; $7ea9: $c3 $82 $7d


	adc  d                                           ; $7eac: $8a
	db   $fd                                         ; $7ead: $fd
	add  d                                           ; $7eae: $82
	and  $8a                                         ; $7eaf: $e6 $8a
	rst  $20                                         ; $7eb1: $e7
	add  [hl]                                        ; $7eb2: $86
	ld   b, $82                                      ; $7eb3: $06 $82
	add  [hl]                                        ; $7eb5: $86
	add  d                                           ; $7eb6: $82
	add  $80                                         ; $7eb7: $c6 $80
	db   $fc                                         ; $7eb9: $fc
	ld   c, $e2                                      ; $7eba: $0e $e2
	ldh  [rTIMA], a                                  ; $7ebc: $e0 $05
	nop                                              ; $7ebe: $00
	ld   [hl], $8e                                   ; $7ebf: $36 $8e
	adc  l                                           ; $7ec1: $8d
	xor  $69                                         ; $7ec2: $ee $69
	ld   h, l                                        ; $7ec4: $65
	ld   a, d                                        ; $7ec5: $7a
	ld   l, d                                        ; $7ec6: $6a
	sub  l                                           ; $7ec7: $95
	ld   d, l                                        ; $7ec8: $55
	ldh  a, [$8d]                                    ; $7ec9: $f0 $8d
	nop                                              ; $7ecb: $00
	dec  b                                           ; $7ecc: $05
	ei                                               ; $7ecd: $fb
	dec  bc                                          ; $7ece: $0b
	ld   [bc], a                                     ; $7ecf: $02
	ld   d, $0f                                      ; $7ed0: $16 $0f
	dec  de                                          ; $7ed2: $1b
	add  c                                           ; $7ed3: $81
	nop                                              ; $7ed4: $00
	add  b                                           ; $7ed5: $80
	rra                                              ; $7ed6: $1f
	nop                                              ; $7ed7: $00
	nop                                              ; $7ed8: $00
	add  b                                           ; $7ed9: $80
	rla                                              ; $7eda: $17
	rlca                                             ; $7edb: $07
	nop                                              ; $7edc: $00
	cpl                                              ; $7edd: $2f
	ld   b, d                                        ; $7ede: $42
	ld   l, l                                        ; $7edf: $6d
	ld   c, d                                        ; $7ee0: $4a
	db   $db                                         ; $7ee1: $db
	db   $fc                                         ; $7ee2: $fc
	ld   l, l                                        ; $7ee3: $6d
	add  c                                           ; $7ee4: $81
	nop                                              ; $7ee5: $00
	add  b                                           ; $7ee6: $80
	rst  $38                                         ; $7ee7: $ff
	nop                                              ; $7ee8: $00
	nop                                              ; $7ee9: $00
	add  b                                           ; $7eea: $80
	ld   a, d                                        ; $7eeb: $7a
	ld   [bc], a                                     ; $7eec: $02
	nop                                              ; $7eed: $00
	ld   a, [$82ea]                                  ; $7eee: $fa $ea $82
	inc  de                                          ; $7ef1: $13
	ld   [bc], a                                     ; $7ef2: $02
	ld   [de], a                                     ; $7ef3: $12
	ld   a, [de]                                     ; $7ef4: $1a
	ld   e, $86                                      ; $7ef5: $1e $86
	ld   c, $01                                      ; $7ef7: $0e $01
	inc  bc                                          ; $7ef9: $03
	dec  b                                           ; $7efa: $05
	add  b                                           ; $7efb: $80
	rra                                              ; $7efc: $1f
	add  b                                           ; $7efd: $80
	cpl                                              ; $7efe: $2f
	add  b                                           ; $7eff: $80
	jr   nc, @+$05                                   ; $7f00: $30 $03

	inc  hl                                          ; $7f02: $23
	ld   [hl+], a                                    ; $7f03: $22
	jr   @+$21                                       ; $7f04: $18 $1f

	add  b                                           ; $7f06: $80
	ccf                                              ; $7f07: $3f
	ld   [bc], a                                     ; $7f08: $02
	dec  sp                                          ; $7f09: $3b
	ccf                                              ; $7f0a: $3f
	ld   [bc], a                                     ; $7f0b: $02
	add  b                                           ; $7f0c: $80
	ld   d, b                                        ; $7f0d: $50
	add  b                                           ; $7f0e: $80
	nop                                              ; $7f0f: $00
	add  b                                           ; $7f10: $80
	ldh  a, [$80]                                    ; $7f11: $f0 $80
	nop                                              ; $7f13: $00
	ld   [bc], a                                     ; $7f14: $02
	ldh  a, [$f4]                                    ; $7f15: $f0 $f4
	inc  b                                           ; $7f17: $04
	add  b                                           ; $7f18: $80
	ld   a, [bc]                                     ; $7f19: $0a
	add  b                                           ; $7f1a: $80
	ld   d, l                                        ; $7f1b: $55
	nop                                              ; $7f1c: $00
	nop                                              ; $7f1d: $00
	add  b                                           ; $7f1e: $80
	ld   bc, $fe80                                   ; $7f1f: $01 $80 $fe
	add  b                                           ; $7f22: $80
	ld   bc, $fe80                                   ; $7f23: $01 $80 $fe
	add  b                                           ; $7f26: $80
	rra                                              ; $7f27: $1f
	nop                                              ; $7f28: $00

jr_076_7f29:
	nop                                              ; $7f29: $00
	add  b                                           ; $7f2a: $80
	xor  b                                           ; $7f2b: $a8
	add  b                                           ; $7f2c: $80
	ld   d, l                                        ; $7f2d: $55
	nop                                              ; $7f2e: $00
	ldh  a, [$80]                                    ; $7f2f: $f0 $80
	nop                                              ; $7f31: $00
	add  b                                           ; $7f32: $80
	ld   bc, $0080                                   ; $7f33: $01 $80 $00
	add  b                                           ; $7f36: $80
	ld   bc, $0000                                   ; $7f37: $01 $00 $00
	add  b                                           ; $7f3a: $80
	inc  b                                           ; $7f3b: $04
	add  b                                           ; $7f3c: $80
	ld   a, [bc]                                     ; $7f3d: $0a
	add  b                                           ; $7f3e: $80
	dec  b                                           ; $7f3f: $05
	nop                                              ; $7f40: $00
	adc  a                                           ; $7f41: $8f
	adc  c                                           ; $7f42: $89
	ld   a, a                                        ; $7f43: $7f
	add  b                                           ; $7f44: $80
	ccf                                              ; $7f45: $3f
	add  b                                           ; $7f46: $80
	nop                                              ; $7f47: $00
	adc  d                                           ; $7f48: $8a
	ld   bc, $1380                                   ; $7f49: $01 $80 $13
	add  b                                           ; $7f4c: $80
	inc  hl                                          ; $7f4d: $23
	adc  [hl]                                        ; $7f4e: $8e
	rst  JumpTable                                         ; $7f4f: $df
	add  b                                           ; $7f50: $80
	rst  ToBoot                                         ; $7f51: $c7
	add  b                                           ; $7f52: $80
	jp   $c780                                       ; $7f53: $c3 $80 $c7


	add  b                                           ; $7f56: $80
	jp   $c780                                       ; $7f57: $c3 $80 $c7


	add  b                                           ; $7f5a: $80
	jp   $c780                                       ; $7f5b: $c3 $80 $c7


	add  b                                           ; $7f5e: $80
	jp   $fd82                                       ; $7f5f: $c3 $82 $fd


	adc  d                                           ; $7f62: $8a
	db   $ed                                         ; $7f63: $ed
	adc  [hl]                                        ; $7f64: $8e
	rst  $20                                         ; $7f65: $e7
	sbc  d                                           ; $7f66: $9a
	add  $80                                         ; $7f67: $c6 $80
	ret  nz                                          ; $7f69: $c0

	add  b                                           ; $7f6a: $80
	nop                                              ; $7f6b: $00
	adc  h                                           ; $7f6c: $8c
	rst  $20                                         ; $7f6d: $e7
	add  c                                           ; $7f6e: $81
	nop                                              ; $7f6f: $00
	add  b                                           ; $7f70: $80
	rra                                              ; $7f71: $1f
	add  [hl]                                        ; $7f72: $86
	ccf                                              ; $7f73: $3f
	add  h                                           ; $7f74: $84
	ld   a, a                                        ; $7f75: $7f
	add  b                                           ; $7f76: $80
	db   $fc                                         ; $7f77: $fc
	add  [hl]                                        ; $7f78: $86
	cp   $83                                         ; $7f79: $fe $83
	db   $fc                                         ; $7f7b: $fc
	nop                                              ; $7f7c: $00
	db   $f4                                         ; $7f7d: $f4
	add  b                                           ; $7f7e: $80
	ld   c, $02                                      ; $7f7f: $0e $02
	inc  c                                           ; $7f81: $0c
	ld   [$810c], sp                                 ; $7f82: $08 $0c $81
	inc  b                                           ; $7f85: $04
	add  l                                           ; $7f86: $85
	inc  d                                           ; $7f87: $14
	ld   bc, $0010                                   ; $7f88: $01 $10 $00
	add  b                                           ; $7f8b: $80
	ld   bc, $0280                                   ; $7f8c: $01 $80 $02
	add  b                                           ; $7f8f: $80
	inc  b                                           ; $7f90: $04
	add  h                                           ; $7f91: $84
	rlca                                             ; $7f92: $07
	add  b                                           ; $7f93: $80
	inc  bc                                          ; $7f94: $03
	add  b                                           ; $7f95: $80
	nop                                              ; $7f96: $00
	add  b                                           ; $7f97: $80
	rst  $38                                         ; $7f98: $ff
	add  d                                           ; $7f99: $82
	nop                                              ; $7f9a: $00
	add  b                                           ; $7f9b: $80
	rst  $38                                         ; $7f9c: $ff
	nop                                              ; $7f9d: $00
	ldh  [c], a                                      ; $7f9e: $e2
	add  e                                           ; $7f9f: $83
	db   $fd                                         ; $7fa0: $fd
	ld   bc, $001f                                   ; $7fa1: $01 $1f $00
	add  b                                           ; $7fa4: $80
	ldh  [$80], a                                    ; $7fa5: $e0 $80
	jr   c, jr_076_7f29                              ; $7fa7: $38 $80

	inc  l                                           ; $7fa9: $2c
	nop                                              ; $7faa: $00
	call nc, $c480                                   ; $7fab: $d4 $80 $c4
	ld   bc, $6404                                   ; $7fae: $01 $04 $64
	add  c                                           ; $7fb1: $81
	inc  h                                           ; $7fb2: $24
	nop                                              ; $7fb3: $00
	sub  b                                           ; $7fb4: $90
	add  a                                           ; $7fb5: $87
	nop                                              ; $7fb6: $00
	add  b                                           ; $7fb7: $80
	ld   [bc], a                                     ; $7fb8: $02
	add  b                                           ; $7fb9: $80
	inc  b                                           ; $7fba: $04
	add  b                                           ; $7fbb: $80
	ld   a, [bc]                                     ; $7fbc: $0a
	add  b                                           ; $7fbd: $80
	ld   bc, $0280                                   ; $7fbe: $01 $80 $02
	add  b                                           ; $7fc1: $80
	dec  b                                           ; $7fc2: $05
	add  b                                           ; $7fc3: $80
	dec  bc                                          ; $7fc4: $0b
	add  b                                           ; $7fc5: $80
	rlca                                             ; $7fc6: $07
	add  h                                           ; $7fc7: $84
	rrca                                             ; $7fc8: $0f
	add  b                                           ; $7fc9: $80
	ld   d, a                                        ; $7fca: $57
	add  b                                           ; $7fcb: $80
	or   a                                           ; $7fcc: $b7
	adc  d                                           ; $7fcd: $8a
	rst  $30                                         ; $7fce: $f7
	adc  d                                           ; $7fcf: $8a
	db   $ed                                         ; $7fd0: $ed
	add  b                                           ; $7fd1: $80
	dec  c                                           ; $7fd2: $0d
	add  b                                           ; $7fd3: $80
	nop                                              ; $7fd4: $00
	add  b                                           ; $7fd5: $80
	rst  ToBoot                                         ; $7fd6: $c7
	add  b                                           ; $7fd7: $80
	jp   $c780                                       ; $7fd8: $c3 $80 $c7


	add  b                                           ; $7fdb: $80
	jp   $c780                                       ; $7fdc: $c3 $80 $c7


	add  b                                           ; $7fdf: $80
	pop  bc                                          ; $7fe0: $c1
	add  b                                           ; $7fe1: $80
	ret  nz                                          ; $7fe2: $c0

	add  b                                           ; $7fe3: $80
	nop                                              ; $7fe4: $00
	adc  [hl]                                        ; $7fe5: $8e
	db   $ed                                         ; $7fe6: $ed
	adc  b                                           ; $7fe7: $88
	rst  JumpTable                                         ; $7fe8: $df
	add  b                                           ; $7fe9: $80
	rra                                              ; $7fea: $1f
	add  b                                           ; $7feb: $80
	rrca                                             ; $7fec: $0f
	add  b                                           ; $7fed: $80
	nop                                              ; $7fee: $00
	adc  b                                           ; $7fef: $88
	rst  $30                                         ; $7ff0: $f7
	add  b                                           ; $7ff1: $80
	ldh  a, [$80]                                    ; $7ff2: $f0 $80
	ldh  [$80], a                                    ; $7ff4: $e0 $80
	nop                                              ; $7ff6: $00
	adc  d                                           ; $7ff7: $8a
	rrca                                             ; $7ff8: $0f
	add  b                                           ; $7ff9: $80
	rlca                                             ; $7ffa: $07
	add  b                                           ; $7ffb: $80
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
