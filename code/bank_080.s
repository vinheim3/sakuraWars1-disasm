; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $080", ROMX[$4000], BANK[$80]

	jr   z, jr_080_4003                              ; $4000: $28 $01

	nop                                              ; $4002: $00

jr_080_4003:
	rrca                                             ; $4003: $0f
	add  c                                           ; $4004: $81
	nop                                              ; $4005: $00
	add  b                                           ; $4006: $80
	inc  bc                                          ; $4007: $03
	add  b                                           ; $4008: $80
	rrca                                             ; $4009: $0f
	add  b                                           ; $400a: $80
	ld   c, $80                                      ; $400b: $0e $80
	ld   bc, $0f82                                   ; $400d: $01 $82 $0f
	ld   bc, $0fff                                   ; $4010: $01 $ff $0f
	add  b                                           ; $4013: $80
	ld   a, h                                        ; $4014: $7c
	add  b                                           ; $4015: $80
	db   $e3                                         ; $4016: $e3
	add  b                                           ; $4017: $80
	sbc  a                                           ; $4018: $9f
	add  b                                           ; $4019: $80
	ld   a, a                                        ; $401a: $7f
	add  b                                           ; $401b: $80
	rst  $38                                         ; $401c: $ff
	add  b                                           ; $401d: $80
	db   $fc                                         ; $401e: $fc
	add  b                                           ; $401f: $80
	di                                               ; $4020: $f3
	add  b                                           ; $4021: $80
	rra                                              ; $4022: $1f
	add  b                                           ; $4023: $80
	rst  $38                                         ; $4024: $ff
	add  b                                           ; $4025: $80
	db   $fc                                         ; $4026: $fc
	add  b                                           ; $4027: $80
	di                                               ; $4028: $f3
	add  b                                           ; $4029: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $402a: $cf
	add  b                                           ; $402b: $80
	ccf                                              ; $402c: $3f
	add  b                                           ; $402d: $80
	rst  $38                                         ; $402e: $ff
	add  b                                           ; $402f: $80
	cp   $80                                         ; $4030: $fe $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4032: $cf
	add  b                                           ; $4033: $80
	ccf                                              ; $4034: $3f
	add  b                                           ; $4035: $80
	rst  $38                                         ; $4036: $ff
	add  b                                           ; $4037: $80
	db   $fc                                         ; $4038: $fc
	add  b                                           ; $4039: $80
	di                                               ; $403a: $f3
	add  b                                           ; $403b: $80
	rst  $28                                         ; $403c: $ef
	add  b                                           ; $403d: $80
	sbc  a                                           ; $403e: $9f
	add  b                                           ; $403f: $80
	ld   a, a                                        ; $4040: $7f
	add  b                                           ; $4041: $80
	di                                               ; $4042: $f3
	add  b                                           ; $4043: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4044: $cf
	add  b                                           ; $4045: $80
	ccf                                              ; $4046: $3f
	add  b                                           ; $4047: $80
	rst  $38                                         ; $4048: $ff
	add  b                                           ; $4049: $80
	db   $fc                                         ; $404a: $fc
	add  b                                           ; $404b: $80
	ei                                               ; $404c: $fb
	add  b                                           ; $404d: $80
	rst  $20                                         ; $404e: $e7
	inc  bc                                          ; $404f: $03
	sbc  [hl]                                        ; $4050: $9e
	sbc  a                                           ; $4051: $9f
	ldh  a, [c]                                      ; $4052: $f2
	di                                               ; $4053: $f3
	add  b                                           ; $4054: $80
	rst  $28                                         ; $4055: $ef
	dec  c                                           ; $4056: $0d
	sbc  b                                           ; $4057: $98
	sbc  a                                           ; $4058: $9f
	ld   h, a                                        ; $4059: $67
	ld   a, a                                        ; $405a: $7f
	ld   e, h                                        ; $405b: $5c
	rst  $38                                         ; $405c: $ff
	jr   c, @+$01                                    ; $405d: $38 $ff

	inc  hl                                          ; $405f: $23
	rst  $38                                         ; $4060: $ff
	ld   d, l                                        ; $4061: $55
	rst  $38                                         ; $4062: $ff
	dec  c                                           ; $4063: $0d
	nop                                              ; $4064: $00
	add  b                                           ; $4065: $80
	rst  $38                                         ; $4066: $ff
	dec  c                                           ; $4067: $0d
	pop  af                                          ; $4068: $f1
	rst  $38                                         ; $4069: $ff
	adc  h                                           ; $406a: $8c
	rst  $38                                         ; $406b: $ff
	ld   a, c                                        ; $406c: $79
	rst  $38                                         ; $406d: $ff
	di                                               ; $406e: $f3
	rst  $38                                         ; $406f: $ff
	rst  $20                                         ; $4070: $e7
	rst  $38                                         ; $4071: $ff
	ld   c, a                                        ; $4072: $4f
	rst  $38                                         ; $4073: $ff
	ld   e, a                                        ; $4074: $5f
	nop                                              ; $4075: $00
	add  b                                           ; $4076: $80
	rst  $38                                         ; $4077: $ff
	dec  c                                           ; $4078: $0d
	inc  b                                           ; $4079: $04
	rst  $38                                         ; $407a: $ff
	di                                               ; $407b: $f3
	rst  $38                                         ; $407c: $ff
	rst  $20                                         ; $407d: $e7
	rst  $38                                         ; $407e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $407f: $cf
	rst  $38                                         ; $4080: $ff
	sbc  [hl]                                        ; $4081: $9e
	rst  $38                                         ; $4082: $ff
	ccf                                              ; $4083: $3f
	rst  $38                                         ; $4084: $ff
	ld   a, [hl]                                     ; $4085: $7e
	nop                                              ; $4086: $00
	add  b                                           ; $4087: $80
	rst  $38                                         ; $4088: $ff
	dec  c                                           ; $4089: $0d
	ld   de, $ccff                                   ; $408a: $11 $ff $cc
	rst  $38                                         ; $408d: $ff
	sbc  a                                           ; $408e: $9f
	rst  $38                                         ; $408f: $ff
	add  hl, sp                                      ; $4090: $39
	rst  $38                                         ; $4091: $ff
	ld   a, a                                        ; $4092: $7f
	rst  $38                                         ; $4093: $ff
	di                                               ; $4094: $f3
	rst  $38                                         ; $4095: $ff
	rst  $30                                         ; $4096: $f7
	nop                                              ; $4097: $00
	add  b                                           ; $4098: $80
	rst  $38                                         ; $4099: $ff
	inc  b                                           ; $409a: $04
	inc  de                                          ; $409b: $13
	rst  $38                                         ; $409c: $ff
	db   $fd                                         ; $409d: $fd
	rst  $38                                         ; $409e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $409f: $cf
	add  e                                           ; $40a0: $83
	rst  $38                                         ; $40a1: $ff
	inc  bc                                          ; $40a2: $03
	sbc  a                                           ; $40a3: $9f
	rst  $38                                         ; $40a4: $ff
	cp   a                                           ; $40a5: $bf
	ld   bc, $ff80                                   ; $40a6: $01 $80 $ff
	inc  b                                           ; $40a9: $04
	cp   e                                           ; $40aa: $bb
	rst  $38                                         ; $40ab: $ff
	ld   d, b                                        ; $40ac: $50
	rst  $38                                         ; $40ad: $ff
	ei                                               ; $40ae: $fb
	add  l                                           ; $40af: $85
	rst  $38                                         ; $40b0: $ff
	ld   de, $fc11                                   ; $40b1: $11 $11 $fc
	cp   $fc                                         ; $40b4: $fe $fc
	rst  JumpTable                                         ; $40b6: $df
	rst  $38                                         ; $40b7: $ff
	adc  l                                           ; $40b8: $8d
	rst  $38                                         ; $40b9: $ff
	call nz, $eaff                                   ; $40ba: $c4 $ff $ea
	rst  $38                                         ; $40bd: $ff
	ld   a, $ff                                      ; $40be: $3e $ff
	db   $fc                                         ; $40c0: $fc
	rst  $38                                         ; $40c1: $ff
	ld   a, $80                                      ; $40c2: $3e $80
	add  b                                           ; $40c4: $80
	rrca                                             ; $40c5: $0f
	add  b                                           ; $40c6: $80
	rst  $38                                         ; $40c7: $ff
	dec  bc                                          ; $40c8: $0b
	ld   [hl], a                                     ; $40c9: $77
	rst  $38                                         ; $40ca: $ff
	ld   [hl-], a                                    ; $40cb: $32
	rst  $38                                         ; $40cc: $ff
	db   $10                                         ; $40cd: $10
	rst  $38                                         ; $40ce: $ff
	and  b                                           ; $40cf: $a0
	rst  $38                                         ; $40d0: $ff
	pop  af                                          ; $40d1: $f1
	rst  $38                                         ; $40d2: $ff
	inc  a                                           ; $40d3: $3c
	rst  ToBoot                                         ; $40d4: $c7
	add  b                                           ; $40d5: $80
	rst  $20                                         ; $40d6: $e7
	add  b                                           ; $40d7: $80
	ld   hl, sp-$80                                  ; $40d8: $f8 $80
	db   $fc                                         ; $40da: $fc
	add  b                                           ; $40db: $80
	cp   $07                                         ; $40dc: $fe $07
	ld   e, a                                        ; $40de: $5f
	rst  $38                                         ; $40df: $ff
	dec  bc                                          ; $40e0: $0b
	rst  $38                                         ; $40e1: $ff
	ld   b, c                                        ; $40e2: $41
	rst  $38                                         ; $40e3: $ff
	dec  bc                                          ; $40e4: $0b
	pop  hl                                          ; $40e5: $e1
	add  b                                           ; $40e6: $80
	ldh  [c], a                                      ; $40e7: $e2
	add  b                                           ; $40e8: $80
	rst  ToBoot                                         ; $40e9: $c7
	add  b                                           ; $40ea: $80
	rlca                                             ; $40eb: $07
	add  b                                           ; $40ec: $80
	ld   sp, hl                                      ; $40ed: $f9
	add  b                                           ; $40ee: $80
	ld   a, [hl]                                     ; $40ef: $7e
	add  b                                           ; $40f0: $80
	cp   a                                           ; $40f1: $bf
	add  b                                           ; $40f2: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40f3: $cf
	add  b                                           ; $40f4: $80
	rst  $20                                         ; $40f5: $e7
	add  b                                           ; $40f6: $80
	ld   sp, hl                                      ; $40f7: $f9
	add  b                                           ; $40f8: $80
	ld   a, $80                                      ; $40f9: $3e $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40fb: $cf
	add  b                                           ; $40fc: $80
	rst  $30                                         ; $40fd: $f7
	add  b                                           ; $40fe: $80
	ld   sp, hl                                      ; $40ff: $f9
	add  b                                           ; $4100: $80
	ld   a, [hl]                                     ; $4101: $7e
	add  b                                           ; $4102: $80
	sbc  a                                           ; $4103: $9f
	nop                                              ; $4104: $00
	rst  $38                                         ; $4105: $ff
	add  c                                           ; $4106: $81
	rrca                                             ; $4107: $0f
	add  b                                           ; $4108: $80
	inc  c                                           ; $4109: $0c
	add  b                                           ; $410a: $80
	inc  bc                                          ; $410b: $03
	add  [hl]                                        ; $410c: $86
	rrca                                             ; $410d: $0f
	ld   bc, $cf3f                                   ; $410e: $01 $3f $cf
	add  b                                           ; $4111: $80
	ccf                                              ; $4112: $3f
	add  b                                           ; $4113: $80
	rst  $38                                         ; $4114: $ff
	add  b                                           ; $4115: $80
	cp   $80                                         ; $4116: $fe $80
	ld   sp, hl                                      ; $4118: $f9
	add  b                                           ; $4119: $80
	rst  $20                                         ; $411a: $e7
	add  b                                           ; $411b: $80
	sbc  a                                           ; $411c: $9f
	add  b                                           ; $411d: $80
	ld   a, a                                        ; $411e: $7f
	add  b                                           ; $411f: $80
	ld   sp, hl                                      ; $4120: $f9
	add  b                                           ; $4121: $80
	rst  $20                                         ; $4122: $e7
	add  b                                           ; $4123: $80
	sbc  a                                           ; $4124: $9f
	add  b                                           ; $4125: $80
	ld   a, a                                        ; $4126: $7f
	add  d                                           ; $4127: $82
	rst  $38                                         ; $4128: $ff
	add  b                                           ; $4129: $80
	db   $fc                                         ; $412a: $fc
	add  b                                           ; $412b: $80
	ei                                               ; $412c: $fb
	add  b                                           ; $412d: $80
	rst  $38                                         ; $412e: $ff
	add  b                                           ; $412f: $80
	db   $fc                                         ; $4130: $fc
	add  b                                           ; $4131: $80
	ei                                               ; $4132: $fb
	add  b                                           ; $4133: $80
	rst  $20                                         ; $4134: $e7
	add  b                                           ; $4135: $80
	rst  JumpTable                                         ; $4136: $df
	add  b                                           ; $4137: $80
	ccf                                              ; $4138: $3f
	add  d                                           ; $4139: $82
	rst  $38                                         ; $413a: $ff
	add  b                                           ; $413b: $80
	ld   a, a                                        ; $413c: $7f
	add  b                                           ; $413d: $80
	rst  $38                                         ; $413e: $ff
	add  b                                           ; $413f: $80
	db   $fc                                         ; $4140: $fc
	add  b                                           ; $4141: $80
	ei                                               ; $4142: $fb
	add  b                                           ; $4143: $80
	rst  $30                                         ; $4144: $f7
	add  b                                           ; $4145: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4146: $cf
	add  b                                           ; $4147: $80
	cp   a                                           ; $4148: $bf
	add  b                                           ; $4149: $80
	ld   a, a                                        ; $414a: $7f
	ld   b, $25                                      ; $414b: $06 $25
	ccf                                              ; $414d: $3f
	ld   b, h                                        ; $414e: $44
	ld   a, a                                        ; $414f: $7f
	sbc  h                                           ; $4150: $9c
	rst  $38                                         ; $4151: $ff
	cp   l                                           ; $4152: $bd
	add  a                                           ; $4153: $87
	rst  $38                                         ; $4154: $ff
	ld   [hl+], a                                    ; $4155: $22
	ld   b, c                                        ; $4156: $41
	rst  $38                                         ; $4157: $ff
	dec  d                                           ; $4158: $15
	rst  $38                                         ; $4159: $ff
	ld   [bc], a                                     ; $415a: $02
	rst  $38                                         ; $415b: $ff
	dec  b                                           ; $415c: $05
	rst  $38                                         ; $415d: $ff
	add  hl, hl                                      ; $415e: $29
	rst  $38                                         ; $415f: $ff
	ld   [hl], b                                     ; $4160: $70
	rst  $38                                         ; $4161: $ff
	db   $e4                                         ; $4162: $e4
	rst  $38                                         ; $4163: $ff
	xor  $ff                                         ; $4164: $ee $ff
	ld   [bc], a                                     ; $4166: $02
	rst  $38                                         ; $4167: $ff
	ld   sp, hl                                      ; $4168: $f9
	rst  $38                                         ; $4169: $ff
	di                                               ; $416a: $f3
	rst  $38                                         ; $416b: $ff
	cp   a                                           ; $416c: $bf
	rst  $38                                         ; $416d: $ff
	rlca                                             ; $416e: $07
	rst  $38                                         ; $416f: $ff
	dec  de                                          ; $4170: $1b
	rst  $38                                         ; $4171: $ff
	ld   bc, $00ff                                   ; $4172: $01 $ff $00
	rst  $38                                         ; $4175: $ff
	and  d                                           ; $4176: $a2
	rst  $38                                         ; $4177: $ff
	rst  $20                                         ; $4178: $e7
	add  c                                           ; $4179: $81
	rst  $38                                         ; $417a: $ff
	nop                                              ; $417b: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $417c: $cf
	add  c                                           ; $417d: $81
	rst  $38                                         ; $417e: $ff
	ld   [$ff9f], sp                                 ; $417f: $08 $9f $ff
	ld   a, $ff                                      ; $4182: $3e $ff
	dec  hl                                          ; $4184: $2b
	rst  $38                                         ; $4185: $ff
	db   $eb                                         ; $4186: $eb
	rst  $38                                         ; $4187: $ff
	db   $fc                                         ; $4188: $fc
	add  c                                           ; $4189: $81
	rst  $38                                         ; $418a: $ff
	nop                                              ; $418b: $00
	ccf                                              ; $418c: $3f
	add  e                                           ; $418d: $83
	rst  $38                                         ; $418e: $ff
	nop                                              ; $418f: $00
	ld   a, c                                        ; $4190: $79
	add  c                                           ; $4191: $81
	rst  $38                                         ; $4192: $ff
	ld   [bc], a                                     ; $4193: $02
	db   $eb                                         ; $4194: $eb
	rst  $38                                         ; $4195: $ff
	rst  $20                                         ; $4196: $e7
	adc  e                                           ; $4197: $8b
	rst  $38                                         ; $4198: $ff
	nop                                              ; $4199: $00
	or   [hl]                                        ; $419a: $b6
	add  c                                           ; $419b: $81
	rst  $38                                         ; $419c: $ff
	nop                                              ; $419d: $00
	sbc  [hl]                                        ; $419e: $9e
	add  e                                           ; $419f: $83
	rst  $38                                         ; $41a0: $ff
	nop                                              ; $41a1: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41a2: $cf
	add  e                                           ; $41a3: $83
	rst  $38                                         ; $41a4: $ff
	nop                                              ; $41a5: $00
	db   $ed                                         ; $41a6: $ed
	add  c                                           ; $41a7: $81
	rst  $38                                         ; $41a8: $ff
	nop                                              ; $41a9: $00
	ld   a, h                                        ; $41aa: $7c
	add  c                                           ; $41ab: $81
	rst  $38                                         ; $41ac: $ff
	nop                                              ; $41ad: $00
	ld   a, $81                                      ; $41ae: $3e $81
	rst  $38                                         ; $41b0: $ff
	nop                                              ; $41b1: $00
	sbc  a                                           ; $41b2: $9f
	add  c                                           ; $41b3: $81
	rst  $38                                         ; $41b4: $ff
	ld   a, [bc]                                     ; $41b5: $0a
	push de                                          ; $41b6: $d5
	rst  $38                                         ; $41b7: $ff
	ldh  a, [rIE]                                    ; $41b8: $f0 $ff
	ld   hl, sp-$01                                  ; $41ba: $f8 $ff
	db   $fc                                         ; $41bc: $fc
	rst  $38                                         ; $41bd: $ff
	ld   a, [hl]                                     ; $41be: $7e
	rst  $38                                         ; $41bf: $ff
	ccf                                              ; $41c0: $3f
	add  c                                           ; $41c1: $81
	rst  $38                                         ; $41c2: $ff
	inc  de                                          ; $41c3: $13
	adc  a                                           ; $41c4: $8f
	rst  $38                                         ; $41c5: $ff
	ld   a, b                                        ; $41c6: $78
	rst  $30                                         ; $41c7: $f7
	dec  de                                          ; $41c8: $1b
	ei                                               ; $41c9: $fb
	dec  c                                           ; $41ca: $0d
	db   $fd                                         ; $41cb: $fd
	ld   b, $fe                                      ; $41cc: $06 $fe
	inc  bc                                          ; $41ce: $03
	rst  $38                                         ; $41cf: $ff
	inc  bc                                          ; $41d0: $03
	rst  $38                                         ; $41d1: $ff
	add  e                                           ; $41d2: $83

jr_080_41d3:
	rst  $38                                         ; $41d3: $ff
	add  e                                           ; $41d4: $83
	rst  $38                                         ; $41d5: $ff
	ld   b, a                                        ; $41d6: $47
	rst  $28                                         ; $41d7: $ef
	add  b                                           ; $41d8: $80
	di                                               ; $41d9: $f3
	add  b                                           ; $41da: $80
	db   $fd                                         ; $41db: $fd
	add  b                                           ; $41dc: $80
	cp   $80                                         ; $41dd: $fe $80
	ccf                                              ; $41df: $3f
	add  b                                           ; $41e0: $80
	rst  JumpTable                                         ; $41e1: $df
	add  b                                           ; $41e2: $80
	rst  $28                                         ; $41e3: $ef
	add  b                                           ; $41e4: $80
	rst  $30                                         ; $41e5: $f7
	nop                                              ; $41e6: $00
	rst  $38                                         ; $41e7: $ff

jr_080_41e8:
	add  l                                           ; $41e8: $85
	nop                                              ; $41e9: $00
	nop                                              ; $41ea: $00

jr_080_41eb:
	ld   b, h                                        ; $41eb: $44
	add  c                                           ; $41ec: $81
	cp   e                                           ; $41ed: $bb
	add  d                                           ; $41ee: $82
	ld   a, e                                        ; $41ef: $7b
	nop                                              ; $41f0: $00
	rst  $38                                         ; $41f1: $ff
	add  l                                           ; $41f2: $85
	nop                                              ; $41f3: $00
	nop                                              ; $41f4: $00
	adc  b                                           ; $41f5: $88
	add  c                                           ; $41f6: $81
	ld   [hl], a                                     ; $41f7: $77
	add  d                                           ; $41f8: $82
	ld   h, a                                        ; $41f9: $67
	nop                                              ; $41fa: $00
	rst  $38                                         ; $41fb: $ff
	add  l                                           ; $41fc: $85
	nop                                              ; $41fd: $00
	nop                                              ; $41fe: $00
	add  b                                           ; $41ff: $80
	add  l                                           ; $4200: $85
	ld   a, a                                        ; $4201: $7f
	nop                                              ; $4202: $00
	rst  $38                                         ; $4203: $ff
	add  [hl]                                        ; $4204: $86
	nop                                              ; $4205: $00
	add  l                                           ; $4206: $85
	ldh  a, [rSB]                                    ; $4207: $f0 $01
	db   $fd                                         ; $4209: $fd
	ldh  a, [c]                                      ; $420a: $f2
	add  d                                           ; $420b: $82
	di                                               ; $420c: $f3
	add  d                                           ; $420d: $82
	db   $e3                                         ; $420e: $e3
	rlca                                             ; $420f: $07
	ld   d, e                                        ; $4210: $53
	db   $d3                                         ; $4211: $d3
	inc  de                                          ; $4212: $13
	db   $d3                                         ; $4213: $d3
	inc  de                                          ; $4214: $13
	db   $d3                                         ; $4215: $d3
	ld   e, a                                        ; $4216: $5f
	rst  JumpTable                                         ; $4217: $df
	add  b                                           ; $4218: $80
	ccf                                              ; $4219: $3f
	add  b                                           ; $421a: $80
	rst  $38                                         ; $421b: $ff
	add  hl, bc                                      ; $421c: $09
	cp   $ff                                         ; $421d: $fe $ff
	ldh  a, [rIE]                                    ; $421f: $f0 $ff
	add  $f8                                         ; $4221: $c6 $f8
	scf                                              ; $4223: $37
	rst  ToBoot                                         ; $4224: $c7
	rst  $38                                         ; $4225: $ff
	ccf                                              ; $4226: $3f
	add  d                                           ; $4227: $82
	rst  $38                                         ; $4228: $ff
	dec  b                                           ; $4229: $05
	rst  ToBoot                                         ; $422a: $c7
	rst  $30                                         ; $422b: $f7
	rla                                              ; $422c: $17
	rst  $30                                         ; $422d: $f7
	rst  $10                                         ; $422e: $d7
	rla                                              ; $422f: $17
	add  b                                           ; $4230: $80
	rst  $30                                         ; $4231: $f7
	ld   bc, $f7f0                                   ; $4232: $01 $f0 $f7
	add  b                                           ; $4235: $80
	rla                                              ; $4236: $17
	nop                                              ; $4237: $00
	add  sp, -$75                                    ; $4238: $e8 $8b
	ldh  a, [rSC]                                    ; $423a: $f0 $02
	db   $10                                         ; $423c: $10
	ldh  a, [$29]                                    ; $423d: $f0 $29
	add  c                                           ; $423f: $81
	rst  ToBoot                                         ; $4240: $c7
	adc  d                                           ; $4241: $8a
	add  a                                           ; $4242: $87
	ld   bc, $dfde                                   ; $4243: $01 $de $df
	add  b                                           ; $4246: $80
	ccf                                              ; $4247: $3f
	add  b                                           ; $4248: $80
	rst  $38                                         ; $4249: $ff
	ld   b, $fe                                      ; $424a: $06 $fe
	rst  $38                                         ; $424c: $ff
	ldh  a, [rIE]                                    ; $424d: $f0 $ff
	add  $f8                                         ; $424f: $c6 $f8
	jr   nc, jr_080_41d3                             ; $4251: $30 $80

	ret  nz                                          ; $4253: $c0

	nop                                              ; $4254: $00
	nop                                              ; $4255: $00
	add  d                                           ; $4256: $82
	rst  $38                                         ; $4257: $ff
	inc  b                                           ; $4258: $04
	rst  ToBoot                                         ; $4259: $c7
	rst  $30                                         ; $425a: $f7
	rla                                              ; $425b: $17
	rst  $30                                         ; $425c: $f7
	rst  $10                                         ; $425d: $d7
	add  c                                           ; $425e: $81
	rla                                              ; $425f: $17
	nop                                              ; $4260: $00
	db   $10                                         ; $4261: $10
	add  c                                           ; $4262: $81
	rla                                              ; $4263: $17
	nop                                              ; $4264: $00
	jr   z, jr_080_41e8                              ; $4265: $28 $81

	ccf                                              ; $4267: $3f
	add  d                                           ; $4268: $82
	jr   nc, jr_080_41eb                             ; $4269: $30 $80

	scf                                              ; $426b: $37
	add  b                                           ; $426c: $80
	ld   [hl], $80                                   ; $426d: $36 $80
	scf                                              ; $426f: $37
	add  b                                           ; $4270: $80
	ld   [hl], $01                                   ; $4271: $36 $01
	and  b                                           ; $4273: $a0
	or   a                                           ; $4274: $b7
	add  b                                           ; $4275: $80
	ld   d, a                                        ; $4276: $57
	add  d                                           ; $4277: $82
	rla                                              ; $4278: $17
	add  b                                           ; $4279: $80
	ld   d, a                                        ; $427a: $57

jr_080_427b:
	add  b                                           ; $427b: $80
	sub  a                                           ; $427c: $97
	add  b                                           ; $427d: $80
	ld   d, a                                        ; $427e: $57
	add  b                                           ; $427f: $80
	sub  a                                           ; $4280: $97
	ld   bc, $3720                                   ; $4281: $01 $20 $37
	add  b                                           ; $4284: $80
	ld   [hl], $80                                   ; $4285: $36 $80
	scf                                              ; $4287: $37
	add  b                                           ; $4288: $80
	ld   [hl], $80                                   ; $4289: $36 $80
	scf                                              ; $428b: $37
	add  b                                           ; $428c: $80
	ld   [hl], $80                                   ; $428d: $36 $80
	scf                                              ; $428f: $37

jr_080_4290:
	add  b                                           ; $4290: $80
	ld   [hl], $01                                   ; $4291: $36 $01
	ld   b, b                                        ; $4293: $40
	ld   d, a                                        ; $4294: $57
	add  b                                           ; $4295: $80
	sub  a                                           ; $4296: $97
	add  b                                           ; $4297: $80
	ld   d, a                                        ; $4298: $57
	add  b                                           ; $4299: $80
	sub  a                                           ; $429a: $97
	add  b                                           ; $429b: $80
	ld   d, a                                        ; $429c: $57
	add  b                                           ; $429d: $80
	sub  a                                           ; $429e: $97
	add  b                                           ; $429f: $80
	ld   d, a                                        ; $42a0: $57
	add  b                                           ; $42a1: $80
	sub  a                                           ; $42a2: $97
	add  b                                           ; $42a3: $80
	ld   d, a                                        ; $42a4: $57
	add  b                                           ; $42a5: $80
	sub  a                                           ; $42a6: $97
	add  b                                           ; $42a7: $80
	ld   d, a                                        ; $42a8: $57
	add  b                                           ; $42a9: $80
	sub  a                                           ; $42aa: $97
	add  b                                           ; $42ab: $80
	ld   d, a                                        ; $42ac: $57
	add  b                                           ; $42ad: $80
	sub  a                                           ; $42ae: $97
	add  b                                           ; $42af: $80
	ld   d, a                                        ; $42b0: $57
	inc  bc                                          ; $42b1: $03
	sub  b                                           ; $42b2: $90
	sub  a                                           ; $42b3: $97
	ld   l, e                                        ; $42b4: $6b
	ld   a, e                                        ; $42b5: $7b
	add  d                                           ; $42b6: $82
	ei                                               ; $42b7: $fb
	add  b                                           ; $42b8: $80
	ld   a, b                                        ; $42b9: $78
	add  b                                           ; $42ba: $80
	add  e                                           ; $42bb: $83
	add  b                                           ; $42bc: $80
	ei                                               ; $42bd: $fb
	add  d                                           ; $42be: $82
	ld   sp, hl                                      ; $42bf: $f9
	add  b                                           ; $42c0: $80
	ld   d, a                                        ; $42c1: $57
	add  b                                           ; $42c2: $80
	scf                                              ; $42c3: $37
	add  b                                           ; $42c4: $80
	ld   [hl], $80                                   ; $42c5: $36 $80
	or   [hl]                                        ; $42c7: $b6
	add  b                                           ; $42c8: $80
	sub  l                                           ; $42c9: $95
	add  b                                           ; $42ca: $80
	push de                                          ; $42cb: $d5

jr_080_42cc:
	add  b                                           ; $42cc: $80
	db   $e3                                         ; $42cd: $e3
	add  b                                           ; $42ce: $80
	rst  $28                                         ; $42cf: $ef
	add  d                                           ; $42d0: $82

jr_080_42d1:
	ld   a, a                                        ; $42d1: $7f
	adc  e                                           ; $42d2: $8b
	rst  $38                                         ; $42d3: $ff
	adc  l                                           ; $42d4: $8d
	ldh  a, [rP1]                                    ; $42d5: $f0 $00
	xor  a                                           ; $42d7: $af
	add  e                                           ; $42d8: $83
	and  c                                           ; $42d9: $a1
	add  d                                           ; $42da: $82
	ld   h, e                                        ; $42db: $63
	add  b                                           ; $42dc: $80
	ld   b, e                                        ; $42dd: $43
	add  d                                           ; $42de: $82
	jp   Jump_080_7901                               ; $42df: $c3 $01 $79


	ld   a, b                                        ; $42e2: $78
	add  b                                           ; $42e3: $80
	ld   b, a                                        ; $42e4: $47
	adc  d                                           ; $42e5: $8a
	ld   e, a                                        ; $42e6: $5f
	nop                                              ; $42e7: $00
	ldh  [$8d], a                                    ; $42e8: $e0 $8d
	rst  $30                                         ; $42ea: $f7
	nop                                              ; $42eb: $00
	jr   jr_080_427b                                 ; $42ec: $18 $8d

	ldh  a, [rSB]                                    ; $42ee: $f0 $01
	cp   a                                           ; $42f0: $bf
	ld   d, b                                        ; $42f1: $50
	add  b                                           ; $42f2: $80
	sub  l                                           ; $42f3: $95
	add  b                                           ; $42f4: $80
	ld   d, l                                        ; $42f5: $55
	add  b                                           ; $42f6: $80
	sub  l                                           ; $42f7: $95
	add  b                                           ; $42f8: $80
	ld   d, l                                        ; $42f9: $55
	add  b                                           ; $42fa: $80

jr_080_42fb:
	sub  l                                           ; $42fb: $95
	add  b                                           ; $42fc: $80
	ld   d, l                                        ; $42fd: $55
	add  b                                           ; $42fe: $80
	sub  l                                           ; $42ff: $95
	ld   bc, $3727                                   ; $4300: $01 $27 $37
	add  b                                           ; $4303: $80
	ld   [hl], $80                                   ; $4304: $36 $80
	scf                                              ; $4306: $37
	add  b                                           ; $4307: $80
	ld   [hl], $80                                   ; $4308: $36 $80
	scf                                              ; $430a: $37
	add  b                                           ; $430b: $80
	ld   [hl], $80                                   ; $430c: $36 $80
	jr   nc, jr_080_4290                             ; $430e: $30 $80

	ccf                                              ; $4310: $3f
	ld   bc, $5545                                   ; $4311: $01 $45 $55
	add  b                                           ; $4314: $80
	sub  l                                           ; $4315: $95
	add  b                                           ; $4316: $80
	ld   d, l                                        ; $4317: $55
	add  b                                           ; $4318: $80
	sub  l                                           ; $4319: $95
	add  b                                           ; $431a: $80
	ld   d, l                                        ; $431b: $55
	add  b                                           ; $431c: $80
	sub  l                                           ; $431d: $95
	add  b                                           ; $431e: $80
	dec  d                                           ; $431f: $15
	add  b                                           ; $4320: $80
	or   l                                           ; $4321: $b5
	nop                                              ; $4322: $00
	rst  $28                                         ; $4323: $ef
	rst  $38                                         ; $4324: $ff
	nop                                              ; $4325: $00
	rst  $38                                         ; $4326: $ff
	nop                                              ; $4327: $00
	rst  $38                                         ; $4328: $ff
	nop                                              ; $4329: $00
	rst  $38                                         ; $432a: $ff
	nop                                              ; $432b: $00
	rst  $38                                         ; $432c: $ff
	nop                                              ; $432d: $00
	rst  $38                                         ; $432e: $ff
	nop                                              ; $432f: $00
	rst  $38                                         ; $4330: $ff
	nop                                              ; $4331: $00
	rst  $38                                         ; $4332: $ff
	nop                                              ; $4333: $00
	push bc                                          ; $4334: $c5
	nop                                              ; $4335: $00
	jr   z, jr_080_4339                              ; $4336: $28 $01

	ld   [bc], a                                     ; $4338: $02

jr_080_4339:
	nop                                              ; $4339: $00
	rrca                                             ; $433a: $0f
	nop                                              ; $433b: $00

jr_080_433c:
	add  e                                           ; $433c: $83
	rrca                                             ; $433d: $0f
	ld   [bc], a                                     ; $433e: $02
	nop                                              ; $433f: $00
	rrca                                             ; $4340: $0f
	nop                                              ; $4341: $00
	add  e                                           ; $4342: $83
	rrca                                             ; $4343: $0f
	ld   [bc], a                                     ; $4344: $02
	db   $10                                         ; $4345: $10
	rst  $28                                         ; $4346: $ef
	jr   nz, jr_080_42cc                             ; $4347: $20 $83

	rst  $28                                         ; $4349: $ef
	ld   [bc], a                                     ; $434a: $02
	jr   nz, jr_080_433c                             ; $434b: $20 $ef

	jr   nz, jr_080_42d1                             ; $434d: $20 $82

	rst  $28                                         ; $434f: $ef
	inc  bc                                          ; $4350: $03
	xor  $31                                         ; $4351: $ee $31
	rst  $38                                         ; $4353: $ff
	nop                                              ; $4354: $00
	add  e                                           ; $4355: $83
	rst  $38                                         ; $4356: $ff
	rlca                                             ; $4357: $07
	nop                                              ; $4358: $00
	rst  $38                                         ; $4359: $ff
	nop                                              ; $435a: $00
	ld   hl, sp-$01                                  ; $435b: $f8 $ff
	rst  ToBoot                                         ; $435d: $c7
	rst  $38                                         ; $435e: $ff
	ccf                                              ; $435f: $3f
	add  b                                           ; $4360: $80
	rst  $38                                         ; $4361: $ff
	nop                                              ; $4362: $00
	nop                                              ; $4363: $00
	add  b                                           ; $4364: $80
	rst  $38                                         ; $4365: $ff
	inc  b                                           ; $4366: $04
	ld   hl, sp-$01                                  ; $4367: $f8 $ff
	rst  ToBoot                                         ; $4369: $c7
	ret  nz                                          ; $436a: $c0

	nop                                              ; $436b: $00
	add  h                                           ; $436c: $84
	rst  $38                                         ; $436d: $ff
	add  b                                           ; $436e: $80
	nop                                              ; $436f: $00
	add  b                                           ; $4370: $80
	rrca                                             ; $4371: $0f
	add  d                                           ; $4372: $82
	xor  a                                           ; $4373: $af
	add  b                                           ; $4374: $80
	jr   nz, jr_080_42fb                             ; $4375: $20 $84

	xor  a                                           ; $4377: $af
	add  b                                           ; $4378: $80
	ld   a, $02                                      ; $4379: $3e $02
	add  b                                           ; $437b: $80
	cp   $80                                         ; $437c: $fe $80
	add  c                                           ; $437e: $81
	cp   $80                                         ; $437f: $fe $80
	nop                                              ; $4381: $00
	dec  b                                           ; $4382: $05
	db   $fc                                         ; $4383: $fc
	db   $fd                                         ; $4384: $fd
	ld   sp, hl                                      ; $4385: $f9
	ei                                               ; $4386: $fb
	ldh  a, [$f3]                                    ; $4387: $f0 $f3
	add  b                                           ; $4389: $80
	nop                                              ; $438a: $00
	add  h                                           ; $438b: $84
	rst  $38                                         ; $438c: $ff
	add  b                                           ; $438d: $80
	nop                                              ; $438e: $00
	nop                                              ; $438f: $00
	ld   a, a                                        ; $4390: $7f
	add  c                                           ; $4391: $81
	rst  $38                                         ; $4392: $ff
	ld   bc, $ff7f                                   ; $4393: $01 $7f $ff
	add  b                                           ; $4396: $80
	ld   [bc], a                                     ; $4397: $02
	add  d                                           ; $4398: $82
	ldh  [$80], a                                    ; $4399: $e0 $80
	ldh  [c], a                                      ; $439b: $e2
	add  b                                           ; $439c: $80
	nop                                              ; $439d: $00
	add  b                                           ; $439e: $80
	ldh  [$80], a                                    ; $439f: $e0 $80
	ldh  [c], a                                      ; $43a1: $e2
	add  b                                           ; $43a2: $80
	jp   nz, $0684                                   ; $43a3: $c2 $84 $06

	add  d                                           ; $43a6: $82
	rlca                                             ; $43a7: $07
	add  b                                           ; $43a8: $80
	ld   b, $80                                      ; $43a9: $06 $80
	inc  b                                           ; $43ab: $04
	add  b                                           ; $43ac: $80
	ld   bc, $b005                                   ; $43ad: $01 $05 $b0
	or   e                                           ; $43b0: $b3
	ld   h, h                                        ; $43b1: $64
	ld   h, a                                        ; $43b2: $67
	ret  nz                                          ; $43b3: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43b4: $cf
	add  b                                           ; $43b5: $80
	sbc  a                                           ; $43b6: $9f
	inc  bc                                          ; $43b7: $03
	nop                                              ; $43b8: $00
	rrca                                             ; $43b9: $0f
	ld   [hl], b                                     ; $43ba: $70
	ld   a, a                                        ; $43bb: $7f
	add  d                                           ; $43bc: $82
	rst  $38                                         ; $43bd: $ff
	ld   bc, $fff0                                   ; $43be: $01 $f0 $ff

jr_080_43c1:
	add  b                                           ; $43c1: $80
	nop                                              ; $43c2: $00
	add  b                                           ; $43c3: $80
	rst  $38                                         ; $43c4: $ff
	inc  b                                           ; $43c5: $04
	cp   $ff                                         ; $43c6: $fe $ff
	nop                                              ; $43c8: $00
	ld   bc, $8300                                   ; $43c9: $01 $00 $83
	rst  $38                                         ; $43cc: $ff
	add  b                                           ; $43cd: $80
	db   $fc                                         ; $43ce: $fc
	ld   [bc], a                                     ; $43cf: $02
	inc  bc                                          ; $43d0: $03
	rst  $38                                         ; $43d1: $ff
	nop                                              ; $43d2: $00
	add  c                                           ; $43d3: $81
	db   $fc                                         ; $43d4: $fc
	ld   [bc], a                                     ; $43d5: $02
	inc  bc                                          ; $43d6: $03
	rst  $38                                         ; $43d7: $ff
	ld   [bc], a                                     ; $43d8: $02
	add  c                                           ; $43d9: $81
	cp   $81                                         ; $43da: $fe $81
	rst  $38                                         ; $43dc: $ff
	add  hl, bc                                      ; $43dd: $09
	ccf                                              ; $43de: $3f
	nop                                              ; $43df: $00
	ccf                                              ; $43e0: $3f
	nop                                              ; $43e1: $00
	ccf                                              ; $43e2: $3f
	cp   a                                           ; $43e3: $bf
	rra                                              ; $43e4: $1f
	sbc  a                                           ; $43e5: $9f
	add  b                                           ; $43e6: $80
	nop                                              ; $43e7: $00
	add  b                                           ; $43e8: $80
	rrca                                             ; $43e9: $0f
	inc  bc                                          ; $43ea: $03
	ld   b, b                                        ; $43eb: $40
	ret  nz                                          ; $43ec: $c0

	rst  ToBoot                                         ; $43ed: $c7
	ld   c, d                                        ; $43ee: $4a
	add  b                                           ; $43ef: $80
	dec  e                                           ; $43f0: $1d
	ld   bc, $1d9d                                   ; $43f1: $01 $9d $1d
	add  c                                           ; $43f4: $81
	sbc  l                                           ; $43f5: $9d
	nop                                              ; $43f6: $00
	sub  l                                           ; $43f7: $95
	add  b                                           ; $43f8: $80
	dec  c                                           ; $43f9: $0d
	ld   bc, $cbcd                                   ; $43fa: $01 $cd $cb
	add  b                                           ; $43fd: $80
	rrca                                             ; $43fe: $0f
	ld   bc, $e4e7                                   ; $43ff: $01 $e7 $e4
	adc  l                                           ; $4402: $8d
	nop                                              ; $4403: $00
	add  b                                           ; $4404: $80
	ld   bc, $0080                                   ; $4405: $01 $80 $00
	add  d                                           ; $4408: $82
	ld   bc, $0080                                   ; $4409: $01 $80 $00
	add  b                                           ; $440c: $80
	ld   bc, $0006                                   ; $440d: $01 $06 $00
	ld   bc, $0100                                   ; $4410: $01 $00 $01
	rst  $38                                         ; $4413: $ff
	rrca                                             ; $4414: $0f
	nop                                              ; $4415: $00
	add  b                                           ; $4416: $80
	rrca                                             ; $4417: $0f
	ld   [bc], a                                     ; $4418: $02
	inc  c                                           ; $4419: $0c
	rrca                                             ; $441a: $0f
	inc  bc                                          ; $441b: $03
	add  b                                           ; $441c: $80
	nop                                              ; $441d: $00
	add  h                                           ; $441e: $84
	rrca                                             ; $441f: $0f
	ld   [bc], a                                     ; $4420: $02
	db   $10                                         ; $4421: $10
	ldh  [$2f], a                                    ; $4422: $e0 $2f
	add  b                                           ; $4424: $80
	xor  a                                           ; $4425: $af
	nop                                              ; $4426: $00
	cpl                                              ; $4427: $2f
	add  b                                           ; $4428: $80
	adc  a                                           ; $4429: $8f
	add  b                                           ; $442a: $80
	nop                                              ; $442b: $00
	add  h                                           ; $442c: $84
	rst  $38                                         ; $442d: $ff
	add  b                                           ; $442e: $80
	nop                                              ; $442f: $00
	add  h                                           ; $4430: $84
	rst  $38                                         ; $4431: $ff
	add  b                                           ; $4432: $80
	nop                                              ; $4433: $00
	add  h                                           ; $4434: $84
	rst  $38                                         ; $4435: $ff
	add  b                                           ; $4436: $80
	nop                                              ; $4437: $00
	add  h                                           ; $4438: $84
	rst  $38                                         ; $4439: $ff
	add  b                                           ; $443a: $80
	nop                                              ; $443b: $00
	add  h                                           ; $443c: $84
	rst  $38                                         ; $443d: $ff
	add  b                                           ; $443e: $80
	jr   nz, jr_080_43c1                             ; $443f: $20 $80

	xor  a                                           ; $4441: $af
	add  b                                           ; $4442: $80
	xor  [hl]                                        ; $4443: $ae
	inc  b                                           ; $4444: $04
	xor  b                                           ; $4445: $a8
	xor  c                                           ; $4446: $a9
	ld   [hl+], a                                    ; $4447: $22
	inc  hl                                          ; $4448: $23
	add  b                                           ; $4449: $80
	add  b                                           ; $444a: $80
	adc  a                                           ; $444b: $8f
	dec  b                                           ; $444c: $05
	sbc  a                                           ; $444d: $9f
	sbc  [hl]                                        ; $444e: $9e
	rst  $38                                         ; $444f: $ff
	ld   a, [hl]                                     ; $4450: $7e
	nop                                              ; $4451: $00
	ld   bc, $3d80                                   ; $4452: $01 $80 $3d
	add  b                                           ; $4455: $80
	ld   a, l                                        ; $4456: $7d
	ld   [$0dfd], sp                                 ; $4457: $08 $fd $0d
	pop  af                                          ; $445a: $f1
	inc  e                                           ; $445b: $1c
	db   $fc                                         ; $445c: $fc
	sbc  a                                           ; $445d: $9f
	rst  $38                                         ; $445e: $ff
	ld   a, a                                        ; $445f: $7f
	rst  $38                                         ; $4460: $ff
	add  b                                           ; $4461: $80
	nop                                              ; $4462: $00
	add  [hl]                                        ; $4463: $86
	rst  $38                                         ; $4464: $ff
	add  b                                           ; $4465: $80
	nop                                              ; $4466: $00
	add  d                                           ; $4467: $82
	rst  $38                                         ; $4468: $ff
	add  b                                           ; $4469: $80
	ld   [bc], a                                     ; $446a: $02
	add  d                                           ; $446b: $82
	ldh  [$80], a                                    ; $446c: $e0 $80
	pop  hl                                          ; $446e: $e1
	add  b                                           ; $446f: $80
	ldh  [$80], a                                    ; $4470: $e0 $80
	rlca                                             ; $4472: $07
	add  d                                           ; $4473: $82
	rst  $38                                         ; $4474: $ff
	add  b                                           ; $4475: $80
	nop                                              ; $4476: $00
	add  b                                           ; $4477: $80
	ld   a, a                                        ; $4478: $7f
	add  d                                           ; $4479: $82
	rst  $38                                         ; $447a: $ff
	add  b                                           ; $447b: $80
	nop                                              ; $447c: $00
	add  h                                           ; $447d: $84
	rst  $38                                         ; $447e: $ff
	add  b                                           ; $447f: $80

Call_080_4480:
	rrca                                             ; $4480: $0f
	nop                                              ; $4481: $00

Call_080_4482:
	ldh  a, [$83]                                    ; $4482: $f0 $83
	rst  $38                                         ; $4484: $ff
	ld   [bc], a                                     ; $4485: $02
	nop                                              ; $4486: $00
	rrca                                             ; $4487: $0f
	ldh  a, [$83]                                    ; $4488: $f0 $83
	rst  $38                                         ; $448a: $ff
	ld   [bc], a                                     ; $448b: $02
	ldh  a, [rIE]                                    ; $448c: $f0 $ff
	nop                                              ; $448e: $00
	add  e                                           ; $448f: $83
	rst  $38                                         ; $4490: $ff
	ld   [bc], a                                     ; $4491: $02
	nop                                              ; $4492: $00
	rst  $38                                         ; $4493: $ff
	nop                                              ; $4494: $00
	add  e                                           ; $4495: $83
	rst  $38                                         ; $4496: $ff
	ld   [bc], a                                     ; $4497: $02
	nop                                              ; $4498: $00
	rst  $38                                         ; $4499: $ff
	nop                                              ; $449a: $00
	add  e                                           ; $449b: $83
	rst  $38                                         ; $449c: $ff
	ld   [bc], a                                     ; $449d: $02
	nop                                              ; $449e: $00
	rst  $38                                         ; $449f: $ff
	nop                                              ; $44a0: $00
	add  e                                           ; $44a1: $83
	rst  $38                                         ; $44a2: $ff
	ld   [bc], a                                     ; $44a3: $02
	jr   @-$17                                       ; $44a4: $18 $e7

	nop                                              ; $44a6: $00
	add  b                                           ; $44a7: $80
	ldh  [$80], a                                    ; $44a8: $e0 $80
	di                                               ; $44aa: $f3
	inc  bc                                          ; $44ab: $03
	ldh  a, [rSB]                                    ; $44ac: $f0 $01
	pop  af                                          ; $44ae: $f1
	nop                                              ; $44af: $00
	add  b                                           ; $44b0: $80
	ld   sp, hl                                      ; $44b1: $f9
	add  b                                           ; $44b2: $80
	ld   hl, sp+$05                                  ; $44b3: $f8 $05
	db   $fc                                         ; $44b5: $fc
	dec  de                                          ; $44b6: $1b
	rst  $20                                         ; $44b7: $e7
	ld   bc, $0203                                   ; $44b8: $01 $03 $02
	add  b                                           ; $44bb: $80
	di                                               ; $44bc: $f3
	inc  bc                                          ; $44bd: $03
	ld   bc, $f9f8                                   ; $44be: $01 $f8 $f9
	nop                                              ; $44c1: $00
	add  b                                           ; $44c2: $80
	ld   hl, sp-$80                                  ; $44c3: $f8 $80
	nop                                              ; $44c5: $00
	ld   [bc], a                                     ; $44c6: $02
	db   $fc                                         ; $44c7: $fc
	inc  bc                                          ; $44c8: $03
	rst  $38                                         ; $44c9: $ff
	add  d                                           ; $44ca: $82
	nop                                              ; $44cb: $00
	add  b                                           ; $44cc: $80
	rst  $38                                         ; $44cd: $ff
	add  b                                           ; $44ce: $80
	add  b                                           ; $44cf: $80
	ld   [bc], a                                     ; $44d0: $02
	ld   a, a                                        ; $44d1: $7f
	rst  $38                                         ; $44d2: $ff
	cp   a                                           ; $44d3: $bf
	add  b                                           ; $44d4: $80
	rst  $38                                         ; $44d5: $ff
	ld   [bc], a                                     ; $44d6: $02
	ld   a, a                                        ; $44d7: $7f
	cp   h                                           ; $44d8: $bc
	db   $fc                                         ; $44d9: $fc
	add  d                                           ; $44da: $82
	ld   bc, $ff80                                   ; $44db: $01 $80 $ff
	add  b                                           ; $44de: $80
	nop                                              ; $44df: $00
	add  l                                           ; $44e0: $85
	rst  $38                                         ; $44e1: $ff

jr_080_44e2:
	add  l                                           ; $44e2: $85
	nop                                              ; $44e3: $00
	ld   bc, $00ff                                   ; $44e4: $01 $ff $00
	add  b                                           ; $44e7: $80
	rst  $38                                         ; $44e8: $ff
	add  b                                           ; $44e9: $80
	nop                                              ; $44ea: $00
	add  c                                           ; $44eb: $81
	rst  $38                                         ; $44ec: $ff
	add  l                                           ; $44ed: $85
	nop                                              ; $44ee: $00
	ld   bc, $00ff                                   ; $44ef: $01 $ff $00
	add  b                                           ; $44f2: $80
	rst  $38                                         ; $44f3: $ff
	add  b                                           ; $44f4: $80
	nop                                              ; $44f5: $00
	add  c                                           ; $44f6: $81
	rst  $38                                         ; $44f7: $ff
	add  l                                           ; $44f8: $85
	nop                                              ; $44f9: $00
	ld   bc, $00ff                                   ; $44fa: $01 $ff $00
	add  b                                           ; $44fd: $80
	rst  $38                                         ; $44fe: $ff
	add  b                                           ; $44ff: $80

jr_080_4500:
	nop                                              ; $4500: $00
	add  c                                           ; $4501: $81
	rst  $38                                         ; $4502: $ff
	add  l                                           ; $4503: $85
	nop                                              ; $4504: $00
	ld   bc, $00f0                                   ; $4505: $01 $f0 $00
	add  b                                           ; $4508: $80
	ldh  a, [$80]                                    ; $4509: $f0 $80
	nop                                              ; $450b: $00
	add  b                                           ; $450c: $80
	jr   nc, jr_080_450f                             ; $450d: $30 $00

jr_080_450f:
	rrca                                             ; $450f: $0f
	sbc  l                                           ; $4510: $9d
	rst  $38                                         ; $4511: $ff
	nop                                              ; $4512: $00
	ld   h, a                                        ; $4513: $67
	adc  e                                           ; $4514: $8b
	sbc  d                                           ; $4515: $9a
	ld   [bc], a                                     ; $4516: $02
	sbc  c                                           ; $4517: $99
	sbc  e                                           ; $4518: $9b
	rrca                                             ; $4519: $0f
	adc  c                                           ; $451a: $89
	and  b                                           ; $451b: $a0
	inc  b                                           ; $451c: $04
	sub  b                                           ; $451d: $90
	or   b                                           ; $451e: $b0
	ld   h, b                                        ; $451f: $60
	ldh  [rIF], a                                    ; $4520: $e0 $0f
	sbc  l                                           ; $4522: $9d
	rst  $38                                         ; $4523: $ff
	nop                                              ; $4524: $00
	ld   l, d                                        ; $4525: $6a
	add  a                                           ; $4526: $87
	sub  b                                           ; $4527: $90
	ld   bc, $9f9a                                   ; $4528: $01 $9a $9f
	add  b                                           ; $452b: $80
	add  b                                           ; $452c: $80
	add  b                                           ; $452d: $80
	sub  l                                           ; $452e: $95
	nop                                              ; $452f: $00
	ld   c, a                                        ; $4530: $4f
	add  a                                           ; $4531: $87
	ld   d, b                                        ; $4532: $50
	ld   bc, $f0e0                                   ; $4533: $01 $e0 $f0
	add  d                                           ; $4536: $82
	nop                                              ; $4537: $00
	ld   bc, $eae5                                   ; $4538: $01 $e5 $ea
	add  [hl]                                        ; $453b: $86
	ld   a, [$aa80]                                  ; $453c: $fa $80 $aa
	add  d                                           ; $453f: $82
	nop                                              ; $4540: $00
	adc  d                                           ; $4541: $8a
	xor  d                                           ; $4542: $aa
	add  d                                           ; $4543: $82
	nop                                              ; $4544: $00
	inc  b                                           ; $4545: $04
	add  a                                           ; $4546: $87
	add  d                                           ; $4547: $82
	add  h                                           ; $4548: $84
	add  c                                           ; $4549: $81
	sub  b                                           ; $454a: $90
	add  b                                           ; $454b: $80
	add  b                                           ; $454c: $80
	add  b                                           ; $454d: $80
	add  h                                           ; $454e: $84
	add  l                                           ; $454f: $85
	add  l                                           ; $4550: $85
	nop                                              ; $4551: $00
	sbc  d                                           ; $4552: $9a
	add  c                                           ; $4553: $81
	and  b                                           ; $4554: $a0
	add  b                                           ; $4555: $80
	ld   h, b                                        ; $4556: $60
	ld   bc, $1030                                   ; $4557: $01 $30 $10
	add  b                                           ; $455a: $80
	nop                                              ; $455b: $00
	nop                                              ; $455c: $00
	jr   nz, jr_080_44e2                             ; $455d: $20 $83

	ld   h, b                                        ; $455f: $60
	nop                                              ; $4560: $00
	ld   c, a                                        ; $4561: $4f
	sbc  l                                           ; $4562: $9d
	rst  $38                                         ; $4563: $ff
	add  hl, bc                                      ; $4564: $09

jr_080_4565:
	db   $fc                                         ; $4565: $fc
	rst  $38                                         ; $4566: $ff
	di                                               ; $4567: $f3
	rst  $38                                         ; $4568: $ff
	adc  $fe                                         ; $4569: $ce $fe
	jr   c, jr_080_4565                              ; $456b: $38 $f8

	ldh  [$e2], a                                    ; $456d: $e0 $e2
	add  h                                           ; $456f: $84
	sbc  d                                           ; $4570: $9a
	ld   bc, $f0fd                                   ; $4571: $01 $fd $f0
	add  b                                           ; $4574: $80
	ret  nz                                          ; $4575: $c0

	add  c                                           ; $4576: $81
	nop                                              ; $4577: $00
	add  b                                           ; $4578: $80
	jr   nz, jr_080_4500                             ; $4579: $20 $85

	and  b                                           ; $457b: $a0
	nop                                              ; $457c: $00
	xor  a                                           ; $457d: $af
	sbc  l                                           ; $457e: $9d
	rst  $38                                         ; $457f: $ff
	ld   bc, $9c63                                   ; $4580: $01 $63 $9c
	add  b                                           ; $4583: $80
	add  b                                           ; $4584: $80
	ld   [bc], a                                     ; $4585: $02
	add  c                                           ; $4586: $81
	add  b                                           ; $4587: $80
	sub  h                                           ; $4588: $94
	add  a                                           ; $4589: $87
	sub  b                                           ; $458a: $90
	nop                                              ; $458b: $00
	ld   a, [bc]                                     ; $458c: $0a
	add  c                                           ; $458d: $81
	nop                                              ; $458e: $00
	nop                                              ; $458f: $00
	ld   b, b                                        ; $4590: $40
	adc  c                                           ; $4591: $89
	ld   d, b                                        ; $4592: $50
	nop                                              ; $4593: $00
	rra                                              ; $4594: $1f
	add  l                                           ; $4595: $85
	rst  $38                                         ; $4596: $ff
	ld   bc, $ff00                                   ; $4597: $01 $00 $ff
	add  b                                           ; $459a: $80
	nop                                              ; $459b: $00
	add  b                                           ; $459c: $80
	xor  d                                           ; $459d: $aa
	add  b                                           ; $459e: $80
	ld   [rRAMG], a                                  ; $459f: $ea $00 $00
	add  l                                           ; $45a2: $85
	rst  $38                                         ; $45a3: $ff
	ld   bc, $ff00                                   ; $45a4: $01 $00 $ff
	add  b                                           ; $45a7: $80
	nop                                              ; $45a8: $00
	add  d                                           ; $45a9: $82
	xor  d                                           ; $45aa: $aa
	nop                                              ; $45ab: $00
	sub  l                                           ; $45ac: $95
	adc  e                                           ; $45ad: $8b
	sub  b                                           ; $45ae: $90
	add  b                                           ; $45af: $80
	sbc  b                                           ; $45b0: $98
	nop                                              ; $45b1: $00
	adc  d                                           ; $45b2: $8a
	adc  l                                           ; $45b3: $8d
	and  b                                           ; $45b4: $a0
	ld   bc, $ffd0                                   ; $45b5: $01 $d0 $ff
	add  b                                           ; $45b8: $80
	nop                                              ; $45b9: $00
	add  b                                           ; $45ba: $80
	rst  $38                                         ; $45bb: $ff
	add  b                                           ; $45bc: $80
	nop                                              ; $45bd: $00
	add  b                                           ; $45be: $80
	rst  $38                                         ; $45bf: $ff
	rlca                                             ; $45c0: $07
	cp   $ff                                         ; $45c1: $fe $ff
	ld   [bc], a                                     ; $45c3: $02
	inc  bc                                          ; $45c4: $03
	ld   hl, sp-$01                                  ; $45c5: $f8 $ff
	ld   sp, hl                                      ; $45c7: $f9
	cp   $80                                         ; $45c8: $fe $80
	nop                                              ; $45ca: $00
	inc  c                                           ; $45cb: $0c
	ldh  [$fe], a                                    ; $45cc: $e0 $fe
	jr   nz, jr_080_460e                             ; $45ce: $20 $3e

	add  b                                           ; $45d0: $80
	cp   $7e                                         ; $45d1: $fe $7e
	cp   $01                                         ; $45d3: $fe $01
	rst  $38                                         ; $45d5: $ff
	nop                                              ; $45d6: $00
	rst  $38                                         ; $45d7: $ff
	ld   l, a                                        ; $45d8: $6f
	add  e                                           ; $45d9: $83
	add  l                                           ; $45da: $85
	add  b                                           ; $45db: $80
	dec  b                                           ; $45dc: $05
	ld   bc, $8595                                   ; $45dd: $01 $95 $85
	add  b                                           ; $45e0: $80
	push hl                                          ; $45e1: $e5
	inc  b                                           ; $45e2: $04
	dec  [hl]                                        ; $45e3: $35
	ld   sp, $1899                                   ; $45e4: $31 $99 $18
	xor  a                                           ; $45e7: $af
	adc  l                                           ; $45e8: $8d
	ld   h, b                                        ; $45e9: $60
	inc  b                                           ; $45ea: $04
	or   a                                           ; $45eb: $b7
	rst  $38                                         ; $45ec: $ff
	nop                                              ; $45ed: $00
	rlca                                             ; $45ee: $07
	ld   hl, sp-$7f                                  ; $45ef: $f8 $81
	rst  $38                                         ; $45f1: $ff
	inc  b                                           ; $45f2: $04
	ld   [$e00f], sp                                 ; $45f3: $08 $0f $e0
	rst  $38                                         ; $45f6: $ff
	rra                                              ; $45f7: $1f
	add  e                                           ; $45f8: $83
	rst  $38                                         ; $45f9: $ff
	ld   [bc], a                                     ; $45fa: $02
	nop                                              ; $45fb: $00
	rst  $38                                         ; $45fc: $ff
	nop                                              ; $45fd: $00
	add  c                                           ; $45fe: $81
	rst  $38                                         ; $45ff: $ff
	ld   [bc], a                                     ; $4600: $02
	nop                                              ; $4601: $00
	rst  $38                                         ; $4602: $ff
	nop                                              ; $4603: $00
	add  e                                           ; $4604: $83
	rst  $38                                         ; $4605: $ff
	ld   a, [bc]                                     ; $4606: $0a
	sub  c                                           ; $4607: $91
	adc  [hl]                                        ; $4608: $8e
	inc  bc                                          ; $4609: $03
	di                                               ; $460a: $f3
	ld   de, $fcfd                                   ; $460b: $11 $fd $fc

jr_080_460e:
	cp   $00                                         ; $460e: $fe $00
	cp   $00                                         ; $4610: $fe $00
	add  e                                           ; $4612: $83
	rst  $38                                         ; $4613: $ff
	nop                                              ; $4614: $00
	ret  nc                                          ; $4615: $d0

	add  c                                           ; $4616: $81
	jr   nz, @-$7e                                   ; $4617: $20 $80

	ret  nz                                          ; $4619: $c0

	add  b                                           ; $461a: $80
	ld   h, b                                        ; $461b: $60
	add  b                                           ; $461c: $80
	jr   nc, jr_080_4621                             ; $461d: $30 $02

	nop                                              ; $461f: $00
	ret  nz                                          ; $4620: $c0

jr_080_4621:
	ret  nc                                          ; $4621: $d0

	add  c                                           ; $4622: $81
	ldh  a, [$0e]                                    ; $4623: $f0 $0e
	sub  b                                           ; $4625: $90
	ld   a, a                                        ; $4626: $7f
	ret  nz                                          ; $4627: $c0

	rst  $38                                         ; $4628: $ff
	rst  JumpTable                                         ; $4629: $df
	rst  $38                                         ; $462a: $ff
	rst  $28                                         ; $462b: $ef
	rst  $38                                         ; $462c: $ff
	ld   [$fc07], sp                                 ; $462d: $08 $07 $fc
	rst  $38                                         ; $4630: $ff
	db   $fd                                         ; $4631: $fd
	rst  $38                                         ; $4632: $ff
	cp   $81                                         ; $4633: $fe $81
	rst  $38                                         ; $4635: $ff
	ld   bc, $ff00                                   ; $4636: $01 $00 $ff
	add  d                                           ; $4639: $82
	ldh  a, [$03]                                    ; $463a: $f0 $03
	rrca                                             ; $463c: $0f
	rst  $38                                         ; $463d: $ff
	db   $10                                         ; $463e: $10
	ldh  [$82], a                                    ; $463f: $e0 $82
	ret  nz                                          ; $4641: $c0

	inc  bc                                          ; $4642: $03
	nop                                              ; $4643: $00
	rst  $38                                         ; $4644: $ff
	nop                                              ; $4645: $00
	rst  $38                                         ; $4646: $ff
	add  d                                           ; $4647: $82
	ld   a, a                                        ; $4648: $7f
	ld   [bc], a                                     ; $4649: $02
	add  b                                           ; $464a: $80
	rst  $38                                         ; $464b: $ff
	nop                                              ; $464c: $00
	add  e                                           ; $464d: $83
	ld   a, a                                        ; $464e: $7f
	ld   [bc], a                                     ; $464f: $02
	db   $10                                         ; $4650: $10
	ldh  [rAUD1SWEEP], a                             ; $4651: $e0 $10
	add  e                                           ; $4653: $83
	ldh  a, [rSC]                                    ; $4654: $f0 $02
	nop                                              ; $4656: $00
	ldh  [rAUD1SWEEP], a                             ; $4657: $e0 $10
	add  e                                           ; $4659: $83
	ldh  a, [rP1]                                    ; $465a: $f0 $00
	db   $10                                         ; $465c: $10
	rst  $38                                         ; $465d: $ff
	nop                                              ; $465e: $00
	rst  $38                                         ; $465f: $ff
	nop                                              ; $4660: $00
	rst  $38                                         ; $4661: $ff
	nop                                              ; $4662: $00
	rst  $38                                         ; $4663: $ff
	nop                                              ; $4664: $00
	rst  $38                                         ; $4665: $ff
	nop                                              ; $4666: $00
	rst  $38                                         ; $4667: $ff
	nop                                              ; $4668: $00
	rst  $30                                         ; $4669: $f7
	nop                                              ; $466a: $00
	ld   [$0100], a                                  ; $466b: $ea $00 $01
	rrca                                             ; $466e: $0f
	nop                                              ; $466f: $00
	add  b                                           ; $4670: $80
	inc  bc                                          ; $4671: $03
	add  b                                           ; $4672: $80
	ld   [bc], a                                     ; $4673: $02
	add  b                                           ; $4674: $80
	ld   bc, $0082                                   ; $4675: $01 $82 $00
	add  b                                           ; $4678: $80
	inc  bc                                          ; $4679: $03
	add  b                                           ; $467a: $80
	ld   bc, $f001                                   ; $467b: $01 $01 $f0
	nop                                              ; $467e: $00
	add  b                                           ; $467f: $80
	rst  $38                                         ; $4680: $ff
	add  b                                           ; $4681: $80

Call_080_4682:
	xor  d                                           ; $4682: $aa
	add  b                                           ; $4683: $80
	ld   d, l                                        ; $4684: $55
	add  d                                           ; $4685: $82
	nop                                              ; $4686: $00
	add  b                                           ; $4687: $80
	rst  $38                                         ; $4688: $ff
	add  b                                           ; $4689: $80
	ld   d, l                                        ; $468a: $55
	add  b                                           ; $468b: $80
	nop                                              ; $468c: $00
	add  b                                           ; $468d: $80
	rst  $38                                         ; $468e: $ff
	add  b                                           ; $468f: $80
	xor  d                                           ; $4690: $aa
	add  b                                           ; $4691: $80
	ld   d, l                                        ; $4692: $55
	add  d                                           ; $4693: $82
	nop                                              ; $4694: $00
	add  b                                           ; $4695: $80
	rst  $38                                         ; $4696: $ff
	add  b                                           ; $4697: $80
	ld   d, l                                        ; $4698: $55
	add  b                                           ; $4699: $80
	nop                                              ; $469a: $00
	add  b                                           ; $469b: $80
	rst  $38                                         ; $469c: $ff
	add  b                                           ; $469d: $80
	xor  d                                           ; $469e: $aa
	add  b                                           ; $469f: $80
	ld   d, l                                        ; $46a0: $55
	add  d                                           ; $46a1: $82
	nop                                              ; $46a2: $00
	add  b                                           ; $46a3: $80
	rst  $38                                         ; $46a4: $ff
	add  b                                           ; $46a5: $80
	ld   d, l                                        ; $46a6: $55
	add  b                                           ; $46a7: $80
	ld   [bc], a                                     ; $46a8: $02
	add  b                                           ; $46a9: $80
	ld   sp, hl                                      ; $46aa: $f9
	add  b                                           ; $46ab: $80
	xor  d                                           ; $46ac: $aa
	add  b                                           ; $46ad: $80
	ld   d, c                                        ; $46ae: $51
	add  b                                           ; $46af: $80
	ld   [bc], a                                     ; $46b0: $02
	add  b                                           ; $46b1: $80
	ld   bc, $fa80                                   ; $46b2: $01 $80 $fa
	add  b                                           ; $46b5: $80
	ld   d, c                                        ; $46b6: $51
	ld   e, $10                                      ; $46b7: $1e $10
	ld   a, a                                        ; $46b9: $7f
	ld   a, h                                        ; $46ba: $7c
	ld   a, a                                        ; $46bb: $7f
	ld   a, b                                        ; $46bc: $78
	ld   a, a                                        ; $46bd: $7f
	ld   [hl], e                                     ; $46be: $73
	ld   a, a                                        ; $46bf: $7f
	halt                                             ; $46c0: $76
	ld   a, a                                        ; $46c1: $7f
	ld   a, h                                        ; $46c2: $7c
	ld   a, a                                        ; $46c3: $7f
	ld   a, c                                        ; $46c4: $79
	ld   a, a                                        ; $46c5: $7f
	ld   [hl], d                                     ; $46c6: $72
	ld   a, a                                        ; $46c7: $7f
	ld   hl, sp-$01                                  ; $46c8: $f8 $ff
	ld   e, h                                        ; $46ca: $5c
	rst  $38                                         ; $46cb: $ff
	adc  b                                           ; $46cc: $88
	rst  $38                                         ; $46cd: $ff
	ld   [hl+], a                                    ; $46ce: $22
	rst  $38                                         ; $46cf: $ff
	ld   b, b                                        ; $46d0: $40
	rst  $38                                         ; $46d1: $ff
	adc  b                                           ; $46d2: $88
	rst  $38                                         ; $46d3: $ff
	jr   nz, @+$01                                   ; $46d4: $20 $ff

	ld   a, a                                        ; $46d6: $7f
	add  c                                           ; $46d7: $81
	rst  $38                                         ; $46d8: $ff
	ld   a, [bc]                                     ; $46d9: $0a
	nop                                              ; $46da: $00
	rst  $38                                         ; $46db: $ff
	xor  d                                           ; $46dc: $aa
	rst  $38                                         ; $46dd: $ff
	xor  d                                           ; $46de: $aa
	rst  $38                                         ; $46df: $ff
	nop                                              ; $46e0: $00
	rst  $38                                         ; $46e1: $ff
	nop                                              ; $46e2: $00
	rst  $38                                         ; $46e3: $ff
	nop                                              ; $46e4: $00
	add  e                                           ; $46e5: $83
	rst  $38                                         ; $46e6: $ff
	ld   a, [bc]                                     ; $46e7: $0a
	nop                                              ; $46e8: $00
	rst  $38                                         ; $46e9: $ff
	xor  d                                           ; $46ea: $aa
	rst  $38                                         ; $46eb: $ff
	xor  d                                           ; $46ec: $aa
	rst  $38                                         ; $46ed: $ff
	nop                                              ; $46ee: $00
	rst  $38                                         ; $46ef: $ff
	nop                                              ; $46f0: $00
	rst  $38                                         ; $46f1: $ff
	nop                                              ; $46f2: $00
	add  e                                           ; $46f3: $83
	rst  $38                                         ; $46f4: $ff
	ld   a, [bc]                                     ; $46f5: $0a
	nop                                              ; $46f6: $00
	rst  $38                                         ; $46f7: $ff
	xor  d                                           ; $46f8: $aa
	rst  $38                                         ; $46f9: $ff
	xor  d                                           ; $46fa: $aa
	rst  $38                                         ; $46fb: $ff
	nop                                              ; $46fc: $00
	rst  $38                                         ; $46fd: $ff
	nop                                              ; $46fe: $00
	rst  $38                                         ; $46ff: $ff
	nop                                              ; $4700: $00
	add  e                                           ; $4701: $83
	rst  $38                                         ; $4702: $ff
	ld   a, [bc]                                     ; $4703: $0a
	nop                                              ; $4704: $00
	rst  $38                                         ; $4705: $ff
	xor  d                                           ; $4706: $aa
	rst  $38                                         ; $4707: $ff
	xor  d                                           ; $4708: $aa
	rst  $38                                         ; $4709: $ff
	nop                                              ; $470a: $00
	rst  $38                                         ; $470b: $ff
	nop                                              ; $470c: $00
	rst  $38                                         ; $470d: $ff
	nop                                              ; $470e: $00
	add  c                                           ; $470f: $81
	rst  $38                                         ; $4710: $ff
	inc  c                                           ; $4711: $0c
	ld   a, [$0efd]                                  ; $4712: $fa $fd $0e
	cp   $a1                                         ; $4715: $fe $a1
	db   $fd                                         ; $4717: $fd
	xor  [hl]                                        ; $4718: $ae
	cp   $01                                         ; $4719: $fe $01
	rst  $38                                         ; $471b: $ff
	rlca                                             ; $471c: $07
	rst  $38                                         ; $471d: $ff
	ld   [bc], a                                     ; $471e: $02
	add  c                                           ; $471f: $81
	rst  $38                                         ; $4720: $ff
	ld   bc, $55aa                                   ; $4721: $01 $aa $55
	add  b                                           ; $4724: $80
	xor  d                                           ; $4725: $aa
	add  b                                           ; $4726: $80
	ld   d, l                                        ; $4727: $55
	add  b                                           ; $4728: $80
	xor  d                                           ; $4729: $aa
	add  b                                           ; $472a: $80
	nop                                              ; $472b: $00
	rlca                                             ; $472c: $07
	ld   d, l                                        ; $472d: $55
	rst  $38                                         ; $472e: $ff
	nop                                              ; $472f: $00
	rst  $38                                         ; $4730: $ff
	push de                                          ; $4731: $d5
	rst  $38                                         ; $4732: $ff
	ld   a, [hl+]                                    ; $4733: $2a
	ld   d, l                                        ; $4734: $55
	add  b                                           ; $4735: $80
	xor  d                                           ; $4736: $aa
	add  b                                           ; $4737: $80
	ld   d, l                                        ; $4738: $55
	add  b                                           ; $4739: $80
	xor  d                                           ; $473a: $aa
	add  b                                           ; $473b: $80
	nop                                              ; $473c: $00
	ld   de, $ff55                                   ; $473d: $11 $55 $ff
	nop                                              ; $4740: $00
	rst  $38                                         ; $4741: $ff
	ld   d, l                                        ; $4742: $55
	rst  $38                                         ; $4743: $ff
	ld   [$6a75], a                                  ; $4744: $ea $75 $6a
	xor  d                                           ; $4747: $aa
	or   l                                           ; $4748: $b5
	ld   [hl], l                                     ; $4749: $75
	ld   l, d                                        ; $474a: $6a
	xor  d                                           ; $474b: $aa
	and  b                                           ; $474c: $a0
	rrca                                             ; $474d: $0f
	and  h                                           ; $474e: $a4
	ld   d, h                                        ; $474f: $54
	add  b                                           ; $4750: $80
	xor  d                                           ; $4751: $aa
	add  b                                           ; $4752: $80
	nop                                              ; $4753: $00
	nop                                              ; $4754: $00
	ld   a, a                                        ; $4755: $7f
	adc  l                                           ; $4756: $8d
	rst  $38                                         ; $4757: $ff
	ld   bc, $028d                                   ; $4758: $01 $8d $02
	add  d                                           ; $475b: $82
	nop                                              ; $475c: $00
	add  b                                           ; $475d: $80
	inc  bc                                          ; $475e: $03
	add  b                                           ; $475f: $80
	ld   [bc], a                                     ; $4760: $02
	add  b                                           ; $4761: $80
	ld   bc, $0082                                   ; $4762: $01 $82 $00
	ld   bc, $aa5a                                   ; $4765: $01 $5a $aa
	add  d                                           ; $4768: $82
	nop                                              ; $4769: $00
	add  b                                           ; $476a: $80
	rst  $38                                         ; $476b: $ff
	add  b                                           ; $476c: $80
	xor  d                                           ; $476d: $aa
	add  b                                           ; $476e: $80
	ld   d, l                                        ; $476f: $55
	add  d                                           ; $4770: $82
	nop                                              ; $4771: $00
	add  b                                           ; $4772: $80
	xor  d                                           ; $4773: $aa
	add  d                                           ; $4774: $82
	nop                                              ; $4775: $00
	add  b                                           ; $4776: $80
	rst  $38                                         ; $4777: $ff
	add  b                                           ; $4778: $80
	xor  d                                           ; $4779: $aa
	add  b                                           ; $477a: $80
	ld   d, l                                        ; $477b: $55
	add  d                                           ; $477c: $82
	nop                                              ; $477d: $00
	add  b                                           ; $477e: $80
	xor  d                                           ; $477f: $aa
	add  d                                           ; $4780: $82
	nop                                              ; $4781: $00
	add  b                                           ; $4782: $80
	rst  $38                                         ; $4783: $ff
	add  b                                           ; $4784: $80
	xor  d                                           ; $4785: $aa
	add  b                                           ; $4786: $80
	ld   d, l                                        ; $4787: $55
	add  d                                           ; $4788: $82
	nop                                              ; $4789: $00
	add  b                                           ; $478a: $80
	xor  d                                           ; $478b: $aa
	add  b                                           ; $478c: $80
	ld   bc, $0280                                   ; $478d: $01 $80 $02
	add  b                                           ; $4790: $80
	ld   sp, hl                                      ; $4791: $f9
	add  b                                           ; $4792: $80
	xor  d                                           ; $4793: $aa
	add  b                                           ; $4794: $80
	ld   d, c                                        ; $4795: $51
	add  b                                           ; $4796: $80
	ld   [bc], a                                     ; $4797: $02
	add  b                                           ; $4798: $80
	ld   bc, $1000                                   ; $4799: $01 $00 $10
	add  c                                           ; $479c: $81
	ld   a, [hl]                                     ; $479d: $7e
	ld   [$7e7c], sp                                 ; $479e: $08 $7c $7e
	ld   a, b                                        ; $47a1: $78
	ld   a, [hl]                                     ; $47a2: $7e
	ld   [hl], d                                     ; $47a3: $72
	ld   a, h                                        ; $47a4: $7c
	ld   [hl], b                                     ; $47a5: $70
	ld   a, h                                        ; $47a6: $7c
	ld   [hl], h                                     ; $47a7: $74
	add  c                                           ; $47a8: $81
	ld   a, h                                        ; $47a9: $7c
	nop                                              ; $47aa: $00
	ld   h, b                                        ; $47ab: $60
	sbc  $00                                         ; $47ac: $de $00
	add  b                                           ; $47ae: $80
	ld   a, a                                        ; $47af: $7f
	adc  h                                           ; $47b0: $8c
	nop                                              ; $47b1: $00
	add  b                                           ; $47b2: $80
	rst  $38                                         ; $47b3: $ff
	adc  h                                           ; $47b4: $8c
	nop                                              ; $47b5: $00
	add  b                                           ; $47b6: $80
	rst  $38                                         ; $47b7: $ff
	adc  e                                           ; $47b8: $8b
	nop                                              ; $47b9: $00
	nop                                              ; $47ba: $00
	add  b                                           ; $47bb: $80
	add  c                                           ; $47bc: $81
	rst  $38                                         ; $47bd: $ff
	nop                                              ; $47be: $00
	cp   a                                           ; $47bf: $bf
	add  c                                           ; $47c0: $81
	rst  $38                                         ; $47c1: $ff
	nop                                              ; $47c2: $00
	rst  JumpTable                                         ; $47c3: $df
	add  c                                           ; $47c4: $81
	rst  $38                                         ; $47c5: $ff
	nop                                              ; $47c6: $00
	rst  $28                                         ; $47c7: $ef
	add  c                                           ; $47c8: $81
	rst  $38                                         ; $47c9: $ff
	nop                                              ; $47ca: $00
	ldh  a, [$85]                                    ; $47cb: $f0 $85
	nop                                              ; $47cd: $00
	inc  bc                                          ; $47ce: $03
	xor  d                                           ; $47cf: $aa
	ld   a, a                                        ; $47d0: $7f
	dec  d                                           ; $47d1: $15
	ccf                                              ; $47d2: $3f
	add  b                                           ; $47d3: $80
	rra                                              ; $47d4: $1f
	add  b                                           ; $47d5: $80
	rrca                                             ; $47d6: $0f
	nop                                              ; $47d7: $00
	rst  $38                                         ; $47d8: $ff
	add  l                                           ; $47d9: $85
	nop                                              ; $47da: $00
	ld   [$fc03], sp                                 ; $47db: $08 $03 $fc
	ldh  a, [c]                                      ; $47de: $f2
	di                                               ; $47df: $f3
	ret                                              ; $47e0: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47e1: $cf
	daa                                              ; $47e2: $27
	ccf                                              ; $47e3: $3f
	ldh  [$85], a                                    ; $47e4: $e0 $85
	nop                                              ; $47e6: $00
	ld   [bc], a                                     ; $47e7: $02
	ld   a, a                                        ; $47e8: $7f
	adc  a                                           ; $47e9: $8f
	rrca                                             ; $47ea: $0f
	add  e                                           ; $47eb: $83
	adc  a                                           ; $47ec: $8f
	nop                                              ; $47ed: $00
	ld   [hl], b                                     ; $47ee: $70
	add  l                                           ; $47ef: $85
	nop                                              ; $47f0: $00
	add  e                                           ; $47f1: $83
	ldh  a, [rTIMA]                                  ; $47f2: $f0 $05
	ldh  [$f0], a                                    ; $47f4: $e0 $f0
	sub  b                                           ; $47f6: $90
	ld   e, d                                        ; $47f7: $5a
	push de                                          ; $47f8: $d5
	xor  d                                           ; $47f9: $aa
	add  e                                           ; $47fa: $83
	rst  $38                                         ; $47fb: $ff
	rlca                                             ; $47fc: $07
	cp   $ff                                         ; $47fd: $fe $ff
	ei                                               ; $47ff: $fb
	rst  $38                                         ; $4800: $ff
	db   $ed                                         ; $4801: $ed
	db   $fd                                         ; $4802: $fd
	or   b                                           ; $4803: $b0
	ldh  a, [$80]                                    ; $4804: $f0 $80
	ld   d, c                                        ; $4806: $51
	dec  b                                           ; $4807: $05
	xor  h                                           ; $4808: $ac
	db   $fc                                         ; $4809: $fc
	db   $ec                                         ; $480a: $ec
	db   $fc                                         ; $480b: $fc
	or   h                                           ; $480c: $b4
	db   $f4                                         ; $480d: $f4
	add  b                                           ; $480e: $80
	call nc, Call_080_5482                           ; $480f: $d4 $82 $54
	add  c                                           ; $4812: $81
	nop                                              ; $4813: $00
	ld   [bc], a                                     ; $4814: $02
	ldh  [rIE], a                                    ; $4815: $e0 $ff
	rra                                              ; $4817: $1f
	add  b                                           ; $4818: $80
	pop  af                                          ; $4819: $f1
	add  b                                           ; $481a: $80
	adc  l                                           ; $481b: $8d
	add  b                                           ; $481c: $80
	sbc  l                                           ; $481d: $9d
	add  b                                           ; $481e: $80
	sbc  e                                           ; $481f: $9b
	add  d                                           ; $4820: $82
	xor  e                                           ; $4821: $ab
	nop                                              ; $4822: $00
	rrca                                             ; $4823: $0f
	add  c                                           ; $4824: $81
	nop                                              ; $4825: $00
	add  b                                           ; $4826: $80
	ret  nz                                          ; $4827: $c0

	inc  b                                           ; $4828: $04
	and  b                                           ; $4829: $a0
	ldh  [$c0], a                                    ; $482a: $e0 $c0
	ldh  [$c0], a                                    ; $482c: $e0 $c0
	add  e                                           ; $482e: $83
	ldh  a, [rSB]                                    ; $482f: $f0 $01
	cp   a                                           ; $4831: $bf
	rst  $28                                         ; $4832: $ef
	add  b                                           ; $4833: $80
	adc  a                                           ; $4834: $8f
	add  d                                           ; $4835: $82
	rst  $28                                         ; $4836: $ef
	inc  bc                                          ; $4837: $03
	ldh  [$ef], a                                    ; $4838: $e0 $ef
	add  b                                           ; $483a: $80
	adc  a                                           ; $483b: $8f
	add  d                                           ; $483c: $82
	rst  $28                                         ; $483d: $ef
	ld   [de], a                                     ; $483e: $12
	ld   d, b                                        ; $483f: $50
	rst  $38                                         ; $4840: $ff
	adc  a                                           ; $4841: $8f
	rst  $38                                         ; $4842: $ff
	adc  a                                           ; $4843: $8f
	rst  $38                                         ; $4844: $ff

jr_080_4845:
	adc  a                                           ; $4845: $8f
	rst  $38                                         ; $4846: $ff
	inc  l                                           ; $4847: $2c
	db   $fc                                         ; $4848: $fc
	ld   e, a                                        ; $4849: $5f
	rst  $38                                         ; $484a: $ff
	adc  a                                           ; $484b: $8f
	rst  $38                                         ; $484c: $ff
	adc  a                                           ; $484d: $8f
	rst  $38                                         ; $484e: $ff
	rst  $28                                         ; $484f: $ef
	ld   a, a                                        ; $4850: $7f
	ld   a, b                                        ; $4851: $78
	add  e                                           ; $4852: $83
	ld   a, a                                        ; $4853: $7f
	jr   nz, jr_080_48ce                             ; $4854: $20 $78

	ld   a, a                                        ; $4856: $7f
	ld   c, b                                        ; $4857: $48
	ld   a, a                                        ; $4858: $7f
	ld   c, a                                        ; $4859: $4f
	ld   a, a                                        ; $485a: $7f
	ld   a, b                                        ; $485b: $78
	ld   a, a                                        ; $485c: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $485d: $cf
	ldh  a, [$50]                                    ; $485e: $f0 $50
	ldh  a, [rAUD1SWEEP]                             ; $4860: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $4862: $f0 $10
	ldh  a, [$50]                                    ; $4864: $f0 $50
	ldh  a, [$50]                                    ; $4866: $f0 $50
	ldh  a, [rAUD1SWEEP]                             ; $4868: $f0 $10
	ldh  a, [$90]                                    ; $486a: $f0 $90
	ldh  a, [$6f]                                    ; $486c: $f0 $6f
	rst  $38                                         ; $486e: $ff
	adc  a                                           ; $486f: $8f
	rst  $38                                         ; $4870: $ff
	rst  $10                                         ; $4871: $d7
	rst  $38                                         ; $4872: $ff
	rst  $28                                         ; $4873: $ef
	ld   hl, sp-$10                                  ; $4874: $f8 $f0
	add  [hl]                                        ; $4876: $86
	ld   hl, sp-$7c                                  ; $4877: $f8 $84
	rst  $38                                         ; $4879: $ff
	adc  b                                           ; $487a: $88
	nop                                              ; $487b: $00
	add  h                                           ; $487c: $84
	rst  $38                                         ; $487d: $ff
	add  a                                           ; $487e: $87
	nop                                              ; $487f: $00
	nop                                              ; $4880: $00
	rrca                                             ; $4881: $0f
	add  h                                           ; $4882: $84
	ldh  a, [$87]                                    ; $4883: $f0 $87
	nop                                              ; $4885: $00
	ld   [de], a                                     ; $4886: $12
	dec  bc                                          ; $4887: $0b
	add  h                                           ; $4888: $84
	ld   [bc], a                                     ; $4889: $02
	jp   $e181                                       ; $488a: $c3 $81 $e1


	ld   b, c                                        ; $488d: $41
	ld   [hl], b                                     ; $488e: $70
	ld   b, b                                        ; $488f: $40
	ld   a, b                                        ; $4890: $78
	ld   c, b                                        ; $4891: $48
	ld   a, h                                        ; $4892: $7c
	ld   c, h                                        ; $4893: $4c
	ld   a, [hl]                                     ; $4894: $7e
	ld   c, a                                        ; $4895: $4f
	ld   [hl], c                                     ; $4896: $71
	sub  b                                           ; $4897: $90
	rst  $38                                         ; $4898: $ff
	ld   a, a                                        ; $4899: $7f
	add  d                                           ; $489a: $82
	rst  $38                                         ; $489b: $ff
	inc  b                                           ; $489c: $04
	db   $fc                                         ; $489d: $fc
	rst  $38                                         ; $489e: $ff
	ld   h, e                                        ; $489f: $63
	ld   [hl], c                                     ; $48a0: $71
	rra                                              ; $48a1: $1f
	add  c                                           ; $48a2: $81
	rrca                                             ; $48a3: $0f
	add  hl, bc                                      ; $48a4: $09
	inc  bc                                          ; $48a5: $03
	ld   [bc], a                                     ; $48a6: $02
	add  $c4                                         ; $48a7: $c6 $c4
	jp   $87c1                                       ; $48a9: $c3 $c1 $87


	rst  ToBoot                                         ; $48ac: $c7
	ld   b, e                                        ; $48ad: $43
	inc  bc                                          ; $48ae: $03
	add  b                                           ; $48af: $80
	db   $e3                                         ; $48b0: $e3
	add  b                                           ; $48b1: $80
	pop  hl                                          ; $48b2: $e1
	add  c                                           ; $48b3: $81
	pop  af                                          ; $48b4: $f1
	ld   [bc], a                                     ; $48b5: $02
	cp   [hl]                                        ; $48b6: $be
	ld   [hl], b                                     ; $48b7: $70
	jr   nc, jr_080_4845                             ; $48b8: $30 $8b

	ldh  a, [rP1]                                    ; $48ba: $f0 $00
	ld   bc, $fe95                                   ; $48bc: $01 $95 $fe
	add  b                                           ; $48bf: $80
	db   $fc                                         ; $48c0: $fc
	add  b                                           ; $48c1: $80
	ld   a, [$f480]                                  ; $48c2: $fa $80 $f4
	add  b                                           ; $48c5: $80
	ld   [$4800], a                                  ; $48c6: $ea $00 $48
	add  c                                           ; $48c9: $81
	rst  $38                                         ; $48ca: $ff
	ld   [bc], a                                     ; $48cb: $02
	ei                                               ; $48cc: $fb
	rst  $38                                         ; $48cd: $ff

jr_080_48ce:
	pop  hl                                          ; $48ce: $e1
	add  c                                           ; $48cf: $81
	rst  $38                                         ; $48d0: $ff
	ld   b, $fc                                      ; $48d1: $06 $fc
	rst  $38                                         ; $48d3: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48d4: $cf
	rst  $38                                         ; $48d5: $ff
	and  b                                           ; $48d6: $a0
	pop  bc                                          ; $48d7: $c1
	ld   d, b                                        ; $48d8: $50
	adc  e                                           ; $48d9: $8b
	ldh  a, [rSC]                                    ; $48da: $f0 $02
	ldh  [$c0], a                                    ; $48dc: $e0 $c0
	ld   a, a                                        ; $48de: $7f
	add  l                                           ; $48df: $85
	rst  $38                                         ; $48e0: $ff
	ld   [$ff55], sp                                 ; $48e1: $08 $55 $ff
	xor  d                                           ; $48e4: $aa
	rst  $38                                         ; $48e5: $ff
	nop                                              ; $48e6: $00
	rst  $38                                         ; $48e7: $ff
	ld   a, a                                        ; $48e8: $7f
	rst  $38                                         ; $48e9: $ff
	ld   a, a                                        ; $48ea: $7f
	add  l                                           ; $48eb: $85
	rst  $38                                         ; $48ec: $ff
	inc  b                                           ; $48ed: $04
	ld   d, l                                        ; $48ee: $55
	rst  $38                                         ; $48ef: $ff
	xor  d                                           ; $48f0: $aa
	rst  $38                                         ; $48f1: $ff
	nop                                              ; $48f2: $00
	adc  c                                           ; $48f3: $89
	rst  $38                                         ; $48f4: $ff
	inc  b                                           ; $48f5: $04
	ld   d, l                                        ; $48f6: $55
	rst  $38                                         ; $48f7: $ff
	xor  d                                           ; $48f8: $aa
	rst  $38                                         ; $48f9: $ff
	nop                                              ; $48fa: $00
	add  c                                           ; $48fb: $81
	rst  $38                                         ; $48fc: $ff
	add  [hl]                                        ; $48fd: $86
	ldh  a, [rDIV]                                   ; $48fe: $f0 $04
	ld   b, b                                        ; $4900: $40
	ldh  a, [$b0]                                    ; $4901: $f0 $b0
	ldh  a, [rP1]                                    ; $4903: $f0 $00
	add  c                                           ; $4905: $81
	ldh  a, [rP1]                                    ; $4906: $f0 $00
	rst  $38                                         ; $4908: $ff
	adc  [hl]                                        ; $4909: $8e
	ld   hl, sp-$63                                  ; $490a: $f8 $9d
	nop                                              ; $490c: $00
	nop                                              ; $490d: $00
	rrca                                             ; $490e: $0f
	adc  l                                           ; $490f: $8d
	nop                                              ; $4910: $00
	jr   nz, @+$45                                   ; $4911: $20 $43

	ld   c, l                                        ; $4913: $4d
	ld   a, b                                        ; $4914: $78
	ld   a, l                                        ; $4915: $7d
	ld   [hl], b                                     ; $4916: $70
	ld   a, l                                        ; $4917: $7d
	ld   [hl], h                                     ; $4918: $74
	ld   a, l                                        ; $4919: $7d
	ld   [hl], h                                     ; $491a: $74
	ld   a, l                                        ; $491b: $7d
	ld   h, d                                        ; $491c: $62
	ld   a, a                                        ; $491d: $7f
	ld   h, d                                        ; $491e: $62
	ld   a, a                                        ; $491f: $7f
	ldh  [c], a                                      ; $4920: $e2
	rst  $38                                         ; $4921: $ff
	sub  h                                           ; $4922: $94
	ret  nz                                          ; $4923: $c0

	nop                                              ; $4924: $00
	ldh  a, [rAUD2LOW]                               ; $4925: $f0 $18
	db   $fc                                         ; $4927: $fc
	dec  b                                           ; $4928: $05
	rst  $38                                         ; $4929: $ff
	rlca                                             ; $492a: $07
	rst  $38                                         ; $492b: $ff
	rlca                                             ; $492c: $07
	rst  $38                                         ; $492d: $ff
	rlca                                             ; $492e: $07
	rst  $38                                         ; $492f: $ff
	rlca                                             ; $4930: $07
	rst  $38                                         ; $4931: $ff
	xor  [hl]                                        ; $4932: $ae
	add  b                                           ; $4933: $80
	ld   hl, sp+$05                                  ; $4934: $f8 $05
	jr   c, jr_080_4974                              ; $4936: $38 $3c

	inc  c                                           ; $4938: $0c
	rrca                                             ; $4939: $0f
	rlca                                             ; $493a: $07
	nop                                              ; $493b: $00
	add  b                                           ; $493c: $80
	ret  nz                                          ; $493d: $c0

	add  b                                           ; $493e: $80
	ldh  a, [$80]                                    ; $493f: $f0 $80
	db   $fc                                         ; $4941: $fc
	nop                                              ; $4942: $00
	rst  $38                                         ; $4943: $ff
	add  e                                           ; $4944: $83
	ldh  a, [rP1]                                    ; $4945: $f0 $00
	ld   [hl], b                                     ; $4947: $70
	add  b                                           ; $4948: $80
	ldh  a, [rP1]                                    ; $4949: $f0 $00
	ld   [hl], b                                     ; $494b: $70
	add  b                                           ; $494c: $80
	db   $10                                         ; $494d: $10
	add  c                                           ; $494e: $81
	nop                                              ; $494f: $00
	add  b                                           ; $4950: $80
	stop                                             ; $4951: $10 $00
	pop  af                                          ; $4953: $f1
	add  l                                           ; $4954: $85
	cp   $80                                         ; $4955: $fe $80
	add  b                                           ; $4957: $80
	rlca                                             ; $4958: $07
	db   $fc                                         ; $4959: $fc
	rst  $38                                         ; $495a: $ff
	db   $f4                                         ; $495b: $f4
	rst  $38                                         ; $495c: $ff
	add  sp, -$11                                    ; $495d: $e8 $ef
	ei                                               ; $495f: $fb
	db   $f4                                         ; $4960: $f4
	add  b                                           ; $4961: $80
	ld   [$d480], a                                  ; $4962: $ea $80 $d4
	add  b                                           ; $4965: $80
	xor  d                                           ; $4966: $aa
	add  c                                           ; $4967: $81
	nop                                              ; $4968: $00
	dec  e                                           ; $4969: $1d
	cp   $01                                         ; $496a: $fe $01
	rst  $38                                         ; $496c: $ff
	rrca                                             ; $496d: $0f
	rst  $38                                         ; $496e: $ff
	nop                                              ; $496f: $00
	rst  $38                                         ; $4970: $ff
	nop                                              ; $4971: $00
	rst  $38                                         ; $4972: $ff
	add  b                                           ; $4973: $80

jr_080_4974:
	rst  $38                                         ; $4974: $ff
	pop  bc                                          ; $4975: $c1
	rst  $38                                         ; $4976: $ff
	ldh  a, [$fe]                                    ; $4977: $f0 $fe
	ld   a, [hl]                                     ; $4979: $7e
	cp   $70                                         ; $497a: $fe $70
	rst  $38                                         ; $497c: $ff
	ld   a, b                                        ; $497d: $78
	rst  $38                                         ; $497e: $ff
	cp   b                                           ; $497f: $b8
	ldh  a, [$80]                                    ; $4980: $f0 $80
	ldh  a, [$80]                                    ; $4982: $f0 $80
	ldh  a, [$e0]                                    ; $4984: $f0 $e0
	ldh  a, [$e0]                                    ; $4986: $f0 $e0
	add  c                                           ; $4988: $81
	ldh  a, [$03]                                    ; $4989: $f0 $03
	add  b                                           ; $498b: $80
	ldh  a, [rP1]                                    ; $498c: $f0 $00
	ldh  a, [rIE]                                    ; $498e: $f0 $ff
	nop                                              ; $4990: $00
	rst  $38                                         ; $4991: $ff
	nop                                              ; $4992: $00
	rst  $38                                         ; $4993: $ff
	nop                                              ; $4994: $00
	rst  $38                                         ; $4995: $ff
	nop                                              ; $4996: $00
	rst  $38                                         ; $4997: $ff
	nop                                              ; $4998: $00
	rst  $38                                         ; $4999: $ff
	nop                                              ; $499a: $00
	ld   hl, sp+$00                                  ; $499b: $f8 $00
	rlca                                             ; $499d: $07
	ld   bc, $0086                                   ; $499e: $01 $86 $00
	inc  bc                                          ; $49a1: $03
	ld   a, [hl]                                     ; $49a2: $7e
	add  d                                           ; $49a3: $82
	nop                                              ; $49a4: $00
	inc  b                                           ; $49a5: $04
	add  b                                           ; $49a6: $80
	ld   [$1802], sp                                 ; $49a7: $08 $02 $18
	db   $10                                         ; $49aa: $10
	ldh  a, [$86]                                    ; $49ab: $f0 $86
	nop                                              ; $49ad: $00
	rlca                                             ; $49ae: $07
	rrca                                             ; $49af: $0f
	ld   c, $1f                                      ; $49b0: $0e $1f
	ld   e, c                                        ; $49b2: $59
	ld   a, a                                        ; $49b3: $7f
	scf                                              ; $49b4: $37
	rst  $38                                         ; $49b5: $ff
	ldh  a, [$85]                                    ; $49b6: $f0 $85
	nop                                              ; $49b8: $00
	add  [hl]                                        ; $49b9: $86
	rst  $20                                         ; $49ba: $e7
	add  [hl]                                        ; $49bb: $86
	nop                                              ; $49bc: $00
	nop                                              ; $49bd: $00
	ret  nz                                          ; $49be: $c0

	add  l                                           ; $49bf: $85
	or   b                                           ; $49c0: $b0
	nop                                              ; $49c1: $00
	ld   [hl], b                                     ; $49c2: $70
	add  b                                           ; $49c3: $80
	rrca                                             ; $49c4: $0f
	nop                                              ; $49c5: $00
	ld   c, $80                                      ; $49c6: $0e $80
	rrca                                             ; $49c8: $0f
	inc  b                                           ; $49c9: $04
	ld   c, $0d                                      ; $49ca: $0e $0d
	ld   bc, $0c0f                                   ; $49cc: $01 $0f $0c
	add  e                                           ; $49cf: $83
	rrca                                             ; $49d0: $0f
	ld   bc, $ff00                                   ; $49d1: $01 $00 $ff
	add  b                                           ; $49d4: $80
	ldh  [$82], a                                    ; $49d5: $e0 $82
	ldh  a, [$80]                                    ; $49d7: $f0 $80
	cp   $81                                         ; $49d9: $fe $81
	ld   bc, $c180                                   ; $49db: $01 $80 $c1
	inc  bc                                          ; $49de: $03
	pop  hl                                          ; $49df: $e1
	db   $fc                                         ; $49e0: $fc
	rra                                              ; $49e1: $1f
	and  e                                           ; $49e2: $a3
	add  b                                           ; $49e3: $80
	and  a                                           ; $49e4: $a7
	ld   [bc], a                                     ; $49e5: $02
	xor  a                                           ; $49e6: $af
	nop                                              ; $49e7: $00
	rrca                                             ; $49e8: $0f
	add  b                                           ; $49e9: $80
	ccf                                              ; $49ea: $3f

jr_080_49eb:
	add  h                                           ; $49eb: $84
	ld   b, b                                        ; $49ec: $40
	nop                                              ; $49ed: $00
	rra                                              ; $49ee: $1f
	add  e                                           ; $49ef: $83
	rst  $38                                         ; $49f0: $ff
	nop                                              ; $49f1: $00
	rra                                              ; $49f2: $1f

jr_080_49f3:
	add  b                                           ; $49f3: $80
	rst  $38                                         ; $49f4: $ff
	inc  b                                           ; $49f5: $04
	di                                               ; $49f6: $f3
	inc  sp                                          ; $49f7: $33
	ld   a, $7e                                      ; $49f8: $3e $7e
	ld   a, a                                        ; $49fa: $7f
	add  d                                           ; $49fb: $82
	rst  $38                                         ; $49fc: $ff
	add  b                                           ; $49fd: $80
	pop  hl                                          ; $49fe: $e1
	add  c                                           ; $49ff: $81
	db   $e3                                         ; $4a00: $e3
	inc  bc                                          ; $4a01: $03
	and  e                                           ; $4a02: $a3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a03: $cf
	ld   c, a                                        ; $4a04: $4f
	ret  nc                                          ; $4a05: $d0

	add  b                                           ; $4a06: $80
	sub  b                                           ; $4a07: $90
	nop                                              ; $4a08: $00
	db   $10                                         ; $4a09: $10
	add  b                                           ; $4a0a: $80
	sub  b                                           ; $4a0b: $90
	adc  b                                           ; $4a0c: $88
	rst  $38                                         ; $4a0d: $ff
	add  c                                           ; $4a0e: $81
	nop                                              ; $4a0f: $00
	add  b                                           ; $4a10: $80
	ld   bc, $0302                                   ; $4a11: $01 $02 $03
	add  e                                           ; $4a14: $83
	ldh  [$80], a                                    ; $4a15: $e0 $80
	ldh  a, [$03]                                    ; $4a17: $f0 $03
	and  b                                           ; $4a19: $a0
	rst  $38                                         ; $4a1a: $ff
	ret  nz                                          ; $4a1b: $c0

	ldh  [$80], a                                    ; $4a1c: $e0 $80
	cp   $02                                         ; $4a1e: $fe $02
	sbc  a                                           ; $4a20: $9f
	rst  $38                                         ; $4a21: $ff
	ld   a, a                                        ; $4a22: $7f
	add  c                                           ; $4a23: $81
	rst  $38                                         ; $4a24: $ff
	inc  bc                                          ; $4a25: $03
	ldh  [rSVBK], a                                  ; $4a26: $e0 $70
	ld   h, b                                        ; $4a28: $60
	ldh  a, [$80]                                    ; $4a29: $f0 $80
	ret  nz                                          ; $4a2b: $c0

	inc  bc                                          ; $4a2c: $03
	add  b                                           ; $4a2d: $80
	rst  $38                                         ; $4a2e: $ff
	ld   a, a                                        ; $4a2f: $7f
	rst  $38                                         ; $4a30: $ff
	add  b                                           ; $4a31: $80
	add  b                                           ; $4a32: $80
	ld   b, $20                                      ; $4a33: $06 $20
	ldh  [$c0], a                                    ; $4a35: $e0 $c0
	ldh  a, [rIF]                                    ; $4a37: $f0 $0f
	rst  $38                                         ; $4a39: $ff
	ldh  [$80], a                                    ; $4a3a: $e0 $80
	jr   nz, jr_080_4a40                             ; $4a3c: $20 $02

	nop                                              ; $4a3e: $00
	inc  e                                           ; $4a3f: $1c

jr_080_4a40:
	db   $fc                                         ; $4a40: $fc
	add  b                                           ; $4a41: $80
	ld   a, [$0680]                                  ; $4a42: $fa $80 $06
	ld   bc, $0302                                   ; $4a45: $01 $02 $03
	add  b                                           ; $4a48: $80
	ld   [bc], a                                     ; $4a49: $02
	ld   bc, $fffe                                   ; $4a4a: $01 $fe $ff
	add  b                                           ; $4a4d: $80
	ccf                                              ; $4a4e: $3f
	ld   bc, $1e1f                                   ; $4a4f: $01 $1f $1e
	add  b                                           ; $4a52: $80
	ld   c, $04                                      ; $4a53: $0e $04
	ld   e, $01                                      ; $4a55: $1e $01
	sbc  [hl]                                        ; $4a57: $9e
	rst  $38                                         ; $4a58: $ff
	add  b                                           ; $4a59: $80
	add  c                                           ; $4a5a: $81
	nop                                              ; $4a5b: $00
	ld   b, $78                                      ; $4a5c: $06 $78
	add  a                                           ; $4a5e: $87
	adc  b                                           ; $4a5f: $88
	add  b                                           ; $4a60: $80
	jr   c, jr_080_4a63                              ; $4a61: $38 $00

jr_080_4a63:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a63: $cf
	add  c                                           ; $4a64: $81
	rst  $38                                         ; $4a65: $ff

jr_080_4a66:
	ld   [bc], a                                     ; $4a66: $02
	ldh  [rAUD4LEN], a                               ; $4a67: $e0 $20
	jr   c, jr_080_49eb                              ; $4a69: $38 $80

	ld   [$0002], sp                                 ; $4a6b: $08 $02 $00
	ccf                                              ; $4a6e: $3f
	rst  ToBoot                                         ; $4a6f: $c7
	add  d                                           ; $4a70: $82
	jr   z, jr_080_49f3                              ; $4a71: $28 $80

	ld   bc, $c780                                   ; $4a73: $01 $80 $c7
	add  h                                           ; $4a76: $84
	jr   z, jr_080_4a8d                              ; $4a77: $28 $14

	ccf                                              ; $4a79: $3f
	ld   hl, $4361                                   ; $4a7a: $21 $61 $43
	dec  bc                                          ; $4a7d: $0b
	ld   c, a                                        ; $4a7e: $4f
	ld   b, $9f                                      ; $4a7f: $06 $9f
	add  hl, de                                      ; $4a81: $19
	ccf                                              ; $4a82: $3f
	scf                                              ; $4a83: $37
	ld   a, a                                        ; $4a84: $7f
	ld   l, [hl]                                     ; $4a85: $6e
	cp   $18                                         ; $4a86: $fe $18
	ld   a, b                                        ; $4a88: $78
	sbc  a                                           ; $4a89: $9f
	rst  $38                                         ; $4a8a: $ff

jr_080_4a8b:
	sbc  a                                           ; $4a8b: $9f
	rst  $38                                         ; $4a8c: $ff

jr_080_4a8d:
	ld   a, a                                        ; $4a8d: $7f
	add  c                                           ; $4a8e: $81
	rst  $38                                         ; $4a8f: $ff
	add  b                                           ; $4a90: $80
	db   $e3                                         ; $4a91: $e3
	add  b                                           ; $4a92: $80
	add  c                                           ; $4a93: $81
	add  d                                           ; $4a94: $82
	nop                                              ; $4a95: $00
	adc  h                                           ; $4a96: $8c
	rst  $20                                         ; $4a97: $e7
	add  b                                           ; $4a98: $80
	ld   h, a                                        ; $4a99: $67
	nop                                              ; $4a9a: $00
	ret  nz                                          ; $4a9b: $c0

	adc  l                                           ; $4a9c: $8d
	or   b                                           ; $4a9d: $b0
	nop                                              ; $4a9e: $00
	ld   a, a                                        ; $4a9f: $7f
	add  c                                           ; $4aa0: $81
	rrca                                             ; $4aa1: $0f
	nop                                              ; $4aa2: $00
	nop                                              ; $4aa3: $00

jr_080_4aa4:
	add  c                                           ; $4aa4: $81
	rrca                                             ; $4aa5: $0f
	add  [hl]                                        ; $4aa6: $86
	nop                                              ; $4aa7: $00
	rlca                                             ; $4aa8: $07
	cp   c                                           ; $4aa9: $b9
	ld   sp, hl                                      ; $4aaa: $f9
	db   $f4                                         ; $4aab: $f4
	db   $fc                                         ; $4aac: $fc
	ld   b, d                                        ; $4aad: $42
	cp   $f8                                         ; $4aae: $fe $f8
	cp   $80                                         ; $4ab0: $fe $80
	ld   c, $81                                      ; $4ab2: $0e $81
	ld   b, $00                                      ; $4ab4: $06 $00
	inc  b                                           ; $4ab6: $04
	add  b                                           ; $4ab7: $80
	ld   b, $80                                      ; $4ab8: $06 $80
	ld   bc, $0380                                   ; $4aba: $01 $80 $03
	add  b                                           ; $4abd: $80
	rra                                              ; $4abe: $1f
	add  b                                           ; $4abf: $80
	ccf                                              ; $4ac0: $3f
	add  d                                           ; $4ac1: $82
	jr   nz, @-$7c                                   ; $4ac2: $20 $82

	nop                                              ; $4ac4: $00
	add  [hl]                                        ; $4ac5: $86
	rst  $38                                         ; $4ac6: $ff
	add  [hl]                                        ; $4ac7: $86
	nop                                              ; $4ac8: $00
	add  b                                           ; $4ac9: $80
	ldh  [$80], a                                    ; $4aca: $e0 $80
	ldh  a, [$80]                                    ; $4acc: $f0 $80
	ld   hl, sp-$80                                  ; $4ace: $f8 $80
	db   $f4                                         ; $4ad0: $f4
	add  b                                           ; $4ad1: $80
	inc  c                                           ; $4ad2: $0c
	add  b                                           ; $4ad3: $80
	inc  b                                           ; $4ad4: $04
	add  d                                           ; $4ad5: $82
	ld   b, $05                                      ; $4ad6: $06 $05
	inc  b                                           ; $4ad8: $04
	rlca                                             ; $4ad9: $07
	inc  bc                                          ; $4ada: $03
	rlca                                             ; $4adb: $07
	jr   jr_080_4afd                                 ; $4adc: $18 $1f

	add  b                                           ; $4ade: $80
	ccf                                              ; $4adf: $3f
	add  d                                           ; $4ae0: $82
	jr   nz, jr_080_4a66                             ; $4ae1: $20 $83

	nop                                              ; $4ae3: $00
	add  c                                           ; $4ae4: $81
	rst  $38                                         ; $4ae5: $ff
	nop                                              ; $4ae6: $00
	nop                                              ; $4ae7: $00
	add  c                                           ; $4ae8: $81
	rst  $38                                         ; $4ae9: $ff
	add  a                                           ; $4aea: $87
	nop                                              ; $4aeb: $00
	add  b                                           ; $4aec: $80
	ld   hl, sp+$04                                  ; $4aed: $f8 $04
	db   $fc                                         ; $4aef: $fc
	ld   b, $fe                                      ; $4af0: $06 $fe
	ldh  a, [$f6]                                    ; $4af2: $f0 $f6

jr_080_4af4:
	add  b                                           ; $4af4: $80
	ld   c, $80                                      ; $4af5: $0e $80
	ld   b, $00                                      ; $4af7: $06 $00
	inc  b                                           ; $4af9: $04
	add  c                                           ; $4afa: $81
	ld   b, $01                                      ; $4afb: $06 $01

jr_080_4afd:
	inc  bc                                          ; $4afd: $03
	nop                                              ; $4afe: $00
	add  b                                           ; $4aff: $80
	inc  b                                           ; $4b00: $04
	ld   bc, $1f1c                                   ; $4b01: $01 $1c $1f
	add  b                                           ; $4b04: $80
	ccf                                              ; $4b05: $3f
	add  d                                           ; $4b06: $82
	jr   nz, jr_080_4a8b                             ; $4b07: $20 $82

	nop                                              ; $4b09: $00
	nop                                              ; $4b0a: $00
	rst  $38                                         ; $4b0b: $ff
	add  d                                           ; $4b0c: $82
	nop                                              ; $4b0d: $00
	add  c                                           ; $4b0e: $81
	rst  $38                                         ; $4b0f: $ff
	add  [hl]                                        ; $4b10: $86
	nop                                              ; $4b11: $00
	rlca                                             ; $4b12: $07
	db   $fc                                         ; $4b13: $fc
	nop                                              ; $4b14: $00
	ld   [bc], a                                     ; $4b15: $02
	nop                                              ; $4b16: $00
	ld   bc, $f1f9                                   ; $4b17: $01 $f9 $f1
	db   $f4                                         ; $4b1a: $f4
	add  b                                           ; $4b1b: $80
	inc  c                                           ; $4b1c: $0c
	add  c                                           ; $4b1d: $81
	dec  b                                           ; $4b1e: $05
	add  c                                           ; $4b1f: $81
	ld   b, $80                                      ; $4b20: $06 $80
	jr   z, jr_080_4aa4                              ; $4b22: $28 $80

	ld   hl, $2780                                   ; $4b24: $21 $80 $27
	add  b                                           ; $4b27: $80
	dec  bc                                          ; $4b28: $0b
	add  b                                           ; $4b29: $80
	inc  c                                           ; $4b2a: $0c
	add  b                                           ; $4b2b: $80
	ld   [$1882], sp                                 ; $4b2c: $08 $82 $18
	ld   bc, $f00f                                   ; $4b2f: $01 $0f $f0
	add  b                                           ; $4b32: $80
	ldh  [$80], a                                    ; $4b33: $e0 $80
	add  b                                           ; $4b35: $80
	sub  l                                           ; $4b36: $95
	nop                                              ; $4b37: $00
	add  b                                           ; $4b38: $80
	inc  bc                                          ; $4b39: $03
	ld   bc, $6b0c                                   ; $4b3a: $01 $0c $6b
	add  l                                           ; $4b3d: $85
	ld   h, a                                        ; $4b3e: $67
	ld   [bc], a                                     ; $4b3f: $02
	ld   b, a                                        ; $4b40: $47
	ld   h, a                                        ; $4b41: $67
	rlca                                             ; $4b42: $07
	add  b                                           ; $4b43: $80
	rst  $20                                         ; $4b44: $e7
	add  c                                           ; $4b45: $81
	daa                                              ; $4b46: $27
	nop                                              ; $4b47: $00
	ret  nc                                          ; $4b48: $d0

	adc  d                                           ; $4b49: $8a
	or   b                                           ; $4b4a: $b0
	add  b                                           ; $4b4b: $80
	and  b                                           ; $4b4c: $a0
	ld   [bc], a                                     ; $4b4d: $02
	or   b                                           ; $4b4e: $b0
	nop                                              ; $4b4f: $00
	sbc  a                                           ; $4b50: $9f
	add  d                                           ; $4b51: $82
	rra                                              ; $4b52: $1f
	add  d                                           ; $4b53: $82
	rst  $38                                         ; $4b54: $ff
	rlca                                             ; $4b55: $07
	ld   bc, $0e0f                                   ; $4b56: $01 $0f $0e
	rrca                                             ; $4b59: $0f
	inc  c                                           ; $4b5a: $0c
	rrca                                             ; $4b5b: $0f
	db   $fd                                         ; $4b5c: $fd
	pop  af                                          ; $4b5d: $f1
	add  d                                           ; $4b5e: $82
	ld   [$fe80], a                                  ; $4b5f: $ea $80 $fe
	add  b                                           ; $4b62: $80
	rst  $38                                         ; $4b63: $ff
	nop                                              ; $4b64: $00
	ld   bc, $c181                                   ; $4b65: $01 $81 $c1
	ld   [$c040], sp                                 ; $4b68: $08 $40 $c0

jr_080_4b6b:
	cp   a                                           ; $4b6b: $bf
	rst  $38                                         ; $4b6c: $ff
	ld   [bc], a                                     ; $4b6d: $02
	inc  bc                                          ; $4b6e: $03
	add  hl, bc                                      ; $4b6f: $09
	rrca                                             ; $4b70: $0f
	jr   c, jr_080_4af4                              ; $4b71: $38 $81

	ccf                                              ; $4b73: $3f
	add  b                                           ; $4b74: $80
	ld   h, b                                        ; $4b75: $60
	add  d                                           ; $4b76: $82
	ld   b, b                                        ; $4b77: $40
	inc  bc                                          ; $4b78: $03
	ld   hl, sp-$19                                  ; $4b79: $f8 $e7
	rlca                                             ; $4b7b: $07
	rst  $20                                         ; $4b7c: $e7
	add  b                                           ; $4b7d: $80
	rst  $30                                         ; $4b7e: $f7
	dec  c                                           ; $4b7f: $0d
	ld   bc, $f9ff                                   ; $4b80: $01 $ff $f9
	rst  $38                                         ; $4b83: $ff
	jr   jr_080_4ba5                                 ; $4b84: $18 $1f

	jr   nz, @+$41                                   ; $4b86: $20 $3f

	sbc  a                                           ; $4b88: $9f
	rst  $38                                         ; $4b89: $ff
	ld   b, b                                        ; $4b8a: $40
	rst  $38                                         ; $4b8b: $ff
	ret  nz                                          ; $4b8c: $c0

	add  b                                           ; $4b8d: $80
	add  b                                           ; $4b8e: $80
	add  c                                           ; $4b8f: $81
	dec  bc                                          ; $4b90: $0b
	ld   b, e                                        ; $4b91: $43
	jp   $e727                                       ; $4b92: $c3 $27 $e7


	ld   d, $f6                                      ; $4b95: $16 $f6
	and  h                                           ; $4b97: $a4
	db   $fc                                         ; $4b98: $fc
	ld   hl, sp-$04                                  ; $4b99: $f8 $fc
	add  e                                           ; $4b9b: $83
	rst  $38                                         ; $4b9c: $ff
	add  b                                           ; $4b9d: $80
	ld   a, a                                        ; $4b9e: $7f
	add  h                                           ; $4b9f: $84
	rst  $38                                         ; $4ba0: $ff
	add  h                                           ; $4ba1: $84
	nop                                              ; $4ba2: $00
	add  b                                           ; $4ba3: $80
	db   $fc                                         ; $4ba4: $fc

jr_080_4ba5:
	add  b                                           ; $4ba5: $80
	ldh  [$80], a                                    ; $4ba6: $e0 $80
	ld   hl, sp+$01                                  ; $4ba8: $f8 $01
	ld   a, [$80f8]                                  ; $4baa: $fa $f8 $80
	db   $fc                                         ; $4bad: $fc
	ld   b, $00                                      ; $4bae: $06 $00
	inc  bc                                          ; $4bb0: $03
	ld   bc, $0400                                   ; $4bb1: $01 $00 $04
	rlca                                             ; $4bb4: $07
	db   $fc                                         ; $4bb5: $fc
	jp   nc, $8000                                   ; $4bb6: $d2 $00 $80

	inc  bc                                          ; $4bb9: $03
	add  b                                           ; $4bba: $80
	inc  c                                           ; $4bbb: $0c
	add  b                                           ; $4bbc: $80
	jr   nc, jr_080_4bc4                             ; $4bbd: $30 $05

	jp   $1ed3                                       ; $4bbf: $c3 $d3 $1e


	ld   b, $78                                      ; $4bc2: $06 $78

jr_080_4bc4:
	ld   [hl], b                                     ; $4bc4: $70
	add  b                                           ; $4bc5: $80
	jr   nc, jr_080_4bd9                             ; $4bc6: $30 $11

	ret  nz                                          ; $4bc8: $c0

	call nz, $0107                                   ; $4bc9: $c4 $07 $01
	ld   e, $9c                                      ; $4bcc: $1e $9c
	ldh  a, [$30]                                    ; $4bce: $f0 $30
	ret  nz                                          ; $4bd0: $c0

	add  b                                           ; $4bd1: $80
	nop                                              ; $4bd2: $00
	rlca                                             ; $4bd3: $07
	nop                                              ; $4bd4: $00
	jr   nz, jr_080_4bfe                             ; $4bd5: $20 $27

	rlca                                             ; $4bd7: $07
	rst  $20                                         ; $4bd8: $e7

jr_080_4bd9:
	rst  ToBoot                                         ; $4bd9: $c7
	add  b                                           ; $4bda: $80
	and  a                                           ; $4bdb: $a7
	add  e                                           ; $4bdc: $83
	daa                                              ; $4bdd: $27
	ld   bc, $07e7                                   ; $4bde: $01 $e7 $07
	add  b                                           ; $4be1: $80
	ld   h, a                                        ; $4be2: $67
	nop                                              ; $4be3: $00
	jr   nc, jr_080_4b6b                             ; $4be4: $30 $85

	or   b                                           ; $4be6: $b0
	nop                                              ; $4be7: $00
	and  b                                           ; $4be8: $a0
	add  l                                           ; $4be9: $85
	or   b                                           ; $4bea: $b0
	nop                                              ; $4beb: $00
	ld   [hl], b                                     ; $4bec: $70
	rst  $38                                         ; $4bed: $ff
	nop                                              ; $4bee: $00
	cp   l                                           ; $4bef: $bd
	nop                                              ; $4bf0: $00
	inc  c                                           ; $4bf1: $0c
	ret  nz                                          ; $4bf2: $c0

	pop  bc                                          ; $4bf3: $c1
	nop                                              ; $4bf4: $00
	ld   c, $00                                      ; $4bf5: $0e $00
	ld   [hl], a                                     ; $4bf7: $77
	rlca                                             ; $4bf8: $07
	cp   b                                           ; $4bf9: $b8
	ccf                                              ; $4bfa: $3f
	call nz, $00fc                                   ; $4bfb: $c4 $fc $00

jr_080_4bfe:
	ret  nz                                          ; $4bfe: $c0

	add  b                                           ; $4bff: $80
	nop                                              ; $4c00: $00
	ld   b, $3c                                      ; $4c01: $06 $3c
	inc  bc                                          ; $4c03: $03
	call c, $e31f                                    ; $4c04: $dc $1f $e3
	rst  $38                                         ; $4c07: $ff
	rra                                              ; $4c08: $1f
	add  c                                           ; $4c09: $81
	rst  $38                                         ; $4c0a: $ff
	add  b                                           ; $4c0b: $80
	rlca                                             ; $4c0c: $07
	add  b                                           ; $4c0d: $80
	ld   bc, $0080                                   ; $4c0e: $01 $80 $00
	ld   [bc], a                                     ; $4c11: $02
	ld   h, a                                        ; $4c12: $67
	rst  $20                                         ; $4c13: $e7
	ld   h, a                                        ; $4c14: $67
	adc  e                                           ; $4c15: $8b
	rst  $20                                         ; $4c16: $e7
	nop                                              ; $4c17: $00
	rst  $38                                         ; $4c18: $ff
	add  c                                           ; $4c19: $81
	nop                                              ; $4c1a: $00
	add  b                                           ; $4c1b: $80
	add  c                                           ; $4c1c: $81

jr_080_4c1d:
	add  b                                           ; $4c1d: $80
	jp   $2380                                       ; $4c1e: $c3 $80 $23


	add  d                                           ; $4c21: $82
	ld   [hl+], a                                    ; $4c22: $22
	add  b                                           ; $4c23: $80
	ld   b, $00                                      ; $4c24: $06 $00
	rst  $38                                         ; $4c26: $ff
	rst  $38                                         ; $4c27: $ff
	nop                                              ; $4c28: $00
	cp   h                                           ; $4c29: $bc
	nop                                              ; $4c2a: $00
	inc  bc                                          ; $4c2b: $03
	ret  c                                           ; $4c2c: $d8

	ldh  [rLCDC], a                                  ; $4c2d: $e0 $40
	add  b                                           ; $4c2f: $80
	add  [hl]                                        ; $4c30: $86
	cp   b                                           ; $4c31: $b8
	inc  b                                           ; $4c32: $04
	cp   d                                           ; $4c33: $ba
	cp   [hl]                                        ; $4c34: $be
	inc  e                                           ; $4c35: $1c
	ld   e, $fe                                      ; $4c36: $1e $fe
	adc  e                                           ; $4c38: $8b
	nop                                              ; $4c39: $00
	ld   [bc], a                                     ; $4c3a: $02
	jr   nz, jr_080_4c1d                             ; $4c3b: $20 $e0

	and  a                                           ; $4c3d: $a7
	adc  l                                           ; $4c3e: $8d
	ld   h, a                                        ; $4c3f: $67
	inc  b                                           ; $4c40: $04
	rst  $28                                         ; $4c41: $ef
	rra                                              ; $4c42: $1f
	rrca                                             ; $4c43: $0f
	rra                                              ; $4c44: $1f
	ldh  [$81], a                                    ; $4c45: $e0 $81
	rst  $38                                         ; $4c47: $ff
	add  [hl]                                        ; $4c48: $86
	nop                                              ; $4c49: $00
	nop                                              ; $4c4a: $00
	rst  $38                                         ; $4c4b: $ff
	rst  $38                                         ; $4c4c: $ff
	nop                                              ; $4c4d: $00
	cp   h                                           ; $4c4e: $bc
	nop                                              ; $4c4f: $00
	dec  b                                           ; $4c50: $05
	ld   h, b                                        ; $4c51: $60
	sbc  a                                           ; $4c52: $9f
	rst  $38                                         ; $4c53: $ff
	rst  $28                                         ; $4c54: $ef
	db   $ec                                         ; $4c55: $ec
	db   $fc                                         ; $4c56: $fc
	add  b                                           ; $4c57: $80
	rst  $38                                         ; $4c58: $ff
	add  b                                           ; $4c59: $80
	ld   e, e                                        ; $4c5a: $5b
	add  b                                           ; $4c5b: $80
	ld   a, $80                                      ; $4c5c: $3e $80
	ld   a, h                                        ; $4c5e: $7c
	add  b                                           ; $4c5f: $80
	ld   a, a                                        ; $4c60: $7f
	ld   de, $f0ef                                   ; $4c61: $11 $ef $f0
	cp   a                                           ; $4c64: $bf
	rst  $38                                         ; $4c65: $ff
	cp   a                                           ; $4c66: $bf
	rst  $38                                         ; $4c67: $ff
	rst  $20                                         ; $4c68: $e7
	rst  $38                                         ; $4c69: $ff
	db   $fc                                         ; $4c6a: $fc
	rst  $38                                         ; $4c6b: $ff
	ld   l, e                                        ; $4c6c: $6b
	rst  $38                                         ; $4c6d: $ff
	ld   a, a                                        ; $4c6e: $7f
	rst  $38                                         ; $4c6f: $ff
	rst  ToBoot                                         ; $4c70: $c7
	rst  $28                                         ; $4c71: $ef
	and  b                                           ; $4c72: $a0
	ld   h, a                                        ; $4c73: $67
	add  [hl]                                        ; $4c74: $86
	rst  $20                                         ; $4c75: $e7
	ld   b, $67                                      ; $4c76: $06 $67
	rst  $20                                         ; $4c78: $e7
	jp   $fdff                                       ; $4c79: $c3 $ff $fd


	rst  $38                                         ; $4c7c: $ff
	ld   c, [hl]                                     ; $4c7d: $4e
	add  c                                           ; $4c7e: $81
	add  b                                           ; $4c7f: $80
	nop                                              ; $4c80: $00
	ld   [hl], b                                     ; $4c81: $70
	add  c                                           ; $4c82: $81
	ldh  a, [$86]                                    ; $4c83: $f0 $86
	nop                                              ; $4c85: $00
	nop                                              ; $4c86: $00
	ldh  a, [rIE]                                    ; $4c87: $f0 $ff
	nop                                              ; $4c89: $00
	cp   h                                           ; $4c8a: $bc
	nop                                              ; $4c8b: $00
	inc  bc                                          ; $4c8c: $03
	ld   bc, $3fff                                   ; $4c8d: $01 $ff $3f
	ld   e, $80                                      ; $4c90: $1e $80
	ld   a, $04                                      ; $4c92: $3e $04
	rra                                              ; $4c94: $1f
	ccf                                              ; $4c95: $3f
	ld   a, a                                        ; $4c96: $7f
	rst  $38                                         ; $4c97: $ff
	cp   a                                           ; $4c98: $bf
	add  e                                           ; $4c99: $83
	rst  $38                                         ; $4c9a: $ff
	dec  b                                           ; $4c9b: $05
	sbc  [hl]                                        ; $4c9c: $9e
	cp   $a2                                         ; $4c9d: $fe $a2
	inc  bc                                          ; $4c9f: $03
	nop                                              ; $4ca0: $00
	ld   bc, $8082                                   ; $4ca1: $01 $82 $80
	add  b                                           ; $4ca4: $80
	ret  nz                                          ; $4ca5: $c0

	ld   a, [bc]                                     ; $4ca6: $0a
	ldh  [$c0], a                                    ; $4ca7: $e0 $c0
	ret  nc                                          ; $4ca9: $d0

	add  sp, -$1a                                    ; $4caa: $e8 $e6
	rst  $38                                         ; $4cac: $ff
	rst  JumpTable                                         ; $4cad: $df

jr_080_4cae:
	rst  $38                                         ; $4cae: $ff
	ld   a, a                                        ; $4caf: $7f
	rst  $28                                         ; $4cb0: $ef
	cp   a                                           ; $4cb1: $bf
	add  b                                           ; $4cb2: $80
	rst  $38                                         ; $4cb3: $ff
	rlca                                             ; $4cb4: $07
	pop  af                                          ; $4cb5: $f1
	nop                                              ; $4cb6: $00
	ret  nz                                          ; $4cb7: $c0

	ld   b, c                                        ; $4cb8: $41
	nop                                              ; $4cb9: $00
	ld   [bc], a                                     ; $4cba: $02
	nop                                              ; $4cbb: $00
	ld   b, e                                        ; $4cbc: $43
	add  a                                           ; $4cbd: $87
	or   b                                           ; $4cbe: $b0
	inc  b                                           ; $4cbf: $04
	ld   [hl], b                                     ; $4cc0: $70
	jr   nc, @-$2e                                   ; $4cc1: $30 $d0

	db   $10                                         ; $4cc3: $10
	ldh  a, [rIE]                                    ; $4cc4: $f0 $ff
	nop                                              ; $4cc6: $00
	cp   [hl]                                        ; $4cc7: $be
	nop                                              ; $4cc8: $00
	ld   d, $01                                      ; $4cc9: $16 $01
	ld   bc, $0003                                   ; $4ccb: $01 $03 $00
	add  c                                           ; $4cce: $81
	inc  b                                           ; $4ccf: $04
	nop                                              ; $4cd0: $00
	rlca                                             ; $4cd1: $07
	add  b                                           ; $4cd2: $80
	rrca                                             ; $4cd3: $0f
	inc  b                                           ; $4cd4: $04
	dec  c                                           ; $4cd5: $0d
	ld   c, $02                                      ; $4cd6: $0e $02
	ld   c, $0a                                      ; $4cd8: $0e $0a
	add  c                                           ; $4cda: $81
	ld   c, $07                                      ; $4cdb: $0e $07
	cp   $8f                                         ; $4cdd: $fe $8f
	adc  e                                           ; $4cdf: $8b
	adc  a                                           ; $4ce0: $8f
	add  h                                           ; $4ce1: $84
	add  l                                           ; $4ce2: $85
	inc  bc                                          ; $4ce3: $03
	add  e                                           ; $4ce4: $83
	add  b                                           ; $4ce5: $80
	adc  a                                           ; $4ce6: $8f
	add  b                                           ; $4ce7: $80
	sbc  a                                           ; $4ce8: $9f
	add  b                                           ; $4ce9: $80
	rst  $38                                         ; $4cea: $ff
	ld   [bc], a                                     ; $4ceb: $02
	ld   a, a                                        ; $4cec: $7f
	rst  $38                                         ; $4ced: $ff
	add  b                                           ; $4cee: $80
	add  c                                           ; $4cef: $81
	ld   hl, sp+$03                                  ; $4cf0: $f8 $03
	ld   b, $fe                                      ; $4cf2: $06 $fe
	ld   a, $fe                                      ; $4cf4: $3e $fe
	add  b                                           ; $4cf6: $80
	db   $fc                                         ; $4cf7: $fc
	add  b                                           ; $4cf8: $80
	ldh  a, [$81]                                    ; $4cf9: $f0 $81
	ret  nz                                          ; $4cfb: $c0

	nop                                              ; $4cfc: $00
	nop                                              ; $4cfd: $00
	add  h                                           ; $4cfe: $84
	ret  c                                           ; $4cff: $d8

	add  b                                           ; $4d00: $80
	pop  de                                          ; $4d01: $d1
	add  b                                           ; $4d02: $80
	db   $d3                                         ; $4d03: $d3
	add  b                                           ; $4d04: $80
	adc  $80                                         ; $4d05: $ce $80
	sbc  a                                           ; $4d07: $9f
	inc  bc                                          ; $4d08: $03
	ld   a, c                                        ; $4d09: $79
	ld   a, a                                        ; $4d0a: $7f
	nop                                              ; $4d0b: $00
	ld   b, $80                                      ; $4d0c: $06 $80
	nop                                              ; $4d0e: $00
	add  d                                           ; $4d0f: $82
	rlca                                             ; $4d10: $07
	add  b                                           ; $4d11: $80
	nop                                              ; $4d12: $00
	add  b                                           ; $4d13: $80
	rra                                              ; $4d14: $1f
	dec  b                                           ; $4d15: $05
	cp   $ff                                         ; $4d16: $fe $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d18: $cf
	rst  $38                                         ; $4d19: $ff
	ld   d, c                                        ; $4d1a: $51
	ld   h, b                                        ; $4d1b: $60
	add  b                                           ; $4d1c: $80
	rrca                                             ; $4d1d: $0f
	add  b                                           ; $4d1e: $80
	ld   h, b                                        ; $4d1f: $60
	add  b                                           ; $4d20: $80
	sbc  a                                           ; $4d21: $9f
	add  hl, bc                                      ; $4d22: $09
	ld   l, d                                        ; $4d23: $6a
	ld   a, a                                        ; $4d24: $7f
	sub  l                                           ; $4d25: $95
	rst  $38                                         ; $4d26: $ff
	call c, $2fff                                    ; $4d27: $dc $ff $2f
	rst  $38                                         ; $4d2a: $ff
	xor  h                                           ; $4d2b: $ac
	jr   nz, jr_080_4cae                             ; $4d2c: $20 $80

	rst  $38                                         ; $4d2e: $ff
	add  b                                           ; $4d2f: $80
	nop                                              ; $4d30: $00
	add  b                                           ; $4d31: $80
	rst  $38                                         ; $4d32: $ff
	ld   [$ffaa], sp                                 ; $4d33: $08 $aa $ff
	ld   d, l                                        ; $4d36: $55
	rst  $38                                         ; $4d37: $ff
	and  b                                           ; $4d38: $a0
	rst  $38                                         ; $4d39: $ff
	dec  de                                          ; $4d3a: $1b
	rst  $38                                         ; $4d3b: $ff
	xor  l                                           ; $4d3c: $ad
	add  e                                           ; $4d3d: $83
	jp   hl                                          ; $4d3e: $e9


	add  b                                           ; $4d3f: $80
	db   $eb                                         ; $4d40: $eb
	add  b                                           ; $4d41: $80
	rst  $28                                         ; $4d42: $ef
	add  b                                           ; $4d43: $80
	ldh  [$80], a                                    ; $4d44: $e0 $80
	nop                                              ; $4d46: $00
	adc  d                                           ; $4d47: $8a
	rst  $38                                         ; $4d48: $ff
	add  d                                           ; $4d49: $82
	nop                                              ; $4d4a: $00
	add  b                                           ; $4d4b: $80
	rst  $38                                         ; $4d4c: $ff
	add  h                                           ; $4d4d: $84
	di                                               ; $4d4e: $f3
	add  b                                           ; $4d4f: $80
	rst  $30                                         ; $4d50: $f7
	add  b                                           ; $4d51: $80
	rst  $38                                         ; $4d52: $ff
	add  d                                           ; $4d53: $82
	nop                                              ; $4d54: $00
	add  b                                           ; $4d55: $80
	rst  $38                                         ; $4d56: $ff
	add  h                                           ; $4d57: $84
	ld   sp, hl                                      ; $4d58: $f9
	add  b                                           ; $4d59: $80
	ei                                               ; $4d5a: $fb
	add  b                                           ; $4d5b: $80
	rst  $38                                         ; $4d5c: $ff
	add  d                                           ; $4d5d: $82
	nop                                              ; $4d5e: $00
	add  b                                           ; $4d5f: $80
	rst  $38                                         ; $4d60: $ff
	inc  bc                                          ; $4d61: $03
	sub  b                                           ; $4d62: $90
	pop  de                                          ; $4d63: $d1
	db   $dd                                         ; $4d64: $dd
	sbc  l                                           ; $4d65: $9d
	add  b                                           ; $4d66: $80
	rst  JumpTable                                         ; $4d67: $df
	add  b                                           ; $4d68: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d69: $cf
	add  e                                           ; $4d6a: $83
	ld   bc, $0081                                   ; $4d6b: $01 $81 $00
	adc  b                                           ; $4d6e: $88
	rst  $30                                         ; $4d6f: $f7
	add  b                                           ; $4d70: $80
	rlca                                             ; $4d71: $07
	add  b                                           ; $4d72: $80
	nop                                              ; $4d73: $00
	add  b                                           ; $4d74: $80
	rst  $38                                         ; $4d75: $ff
	add  b                                           ; $4d76: $80
	ld   [$ff80], sp                                 ; $4d77: $08 $80 $ff
	add  b                                           ; $4d7a: $80
	nop                                              ; $4d7b: $00
	add  b                                           ; $4d7c: $80
	rst  $38                                         ; $4d7d: $ff
	dec  bc                                          ; $4d7e: $0b
	ld   d, l                                        ; $4d7f: $55
	rst  $38                                         ; $4d80: $ff
	xor  d                                           ; $4d81: $aa
	rst  $38                                         ; $4d82: $ff
	ld   bc, $ceff                                   ; $4d83: $01 $ff $ce
	rst  $38                                         ; $4d86: $ff
	jr   nz, jr_080_4d9a                             ; $4d87: $20 $11

	db   $fd                                         ; $4d89: $fd
	cp   $80                                         ; $4d8a: $fe $80
	ld   [bc], a                                     ; $4d8c: $02
	add  b                                           ; $4d8d: $80
	cp   $08                                         ; $4d8e: $fe $08
	ld   d, [hl]                                     ; $4d90: $56
	cp   $aa                                         ; $4d91: $fe $aa
	cp   $06                                         ; $4d93: $fe $06
	cp   $ba                                         ; $4d95: $fe $ba
	cp   $40                                         ; $4d97: $fe $40
	add  b                                           ; $4d99: $80

jr_080_4d9a:
	ld   [bc], a                                     ; $4d9a: $02
	ld   b, $3f                                      ; $4d9b: $06 $3f
	rst  JumpTable                                         ; $4d9d: $df
	rst  $38                                         ; $4d9e: $ff
	rlca                                             ; $4d9f: $07
	ld   e, $02                                      ; $4da0: $1e $02

jr_080_4da2:
	ld   b, $80                                      ; $4da2: $06 $80
	db   $e4                                         ; $4da4: $e4
	add  b                                           ; $4da5: $80
	db   $f4                                         ; $4da6: $f4
	add  b                                           ; $4da7: $80
	db   $fc                                         ; $4da8: $fc
	nop                                              ; $4da9: $00
	ld   sp, hl                                      ; $4daa: $f9
	add  l                                           ; $4dab: $85
	rrca                                             ; $4dac: $0f
	ld   [bc], a                                     ; $4dad: $02
	ld   c, $0c                                      ; $4dae: $0e $0c
	inc  b                                           ; $4db0: $04
	add  e                                           ; $4db1: $83
	nop                                              ; $4db2: $00
	ld   bc, $fc8c                                   ; $4db3: $01 $8c $fc
	add  b                                           ; $4db6: $80
	ldh  a, [$80]                                    ; $4db7: $f0 $80
	ret  nz                                          ; $4db9: $c0

	nop                                              ; $4dba: $00
	add  b                                           ; $4dbb: $80
	add  e                                           ; $4dbc: $83
	nop                                              ; $4dbd: $00
	add  b                                           ; $4dbe: $80
	ld   bc, $0780                                   ; $4dbf: $01 $80 $07
	add  b                                           ; $4dc2: $80
	nop                                              ; $4dc3: $00
	add  b                                           ; $4dc4: $80
	ld   bc, $0780                                   ; $4dc5: $01 $80 $07
	ld   [de], a                                     ; $4dc8: $12
	ld   c, $0f                                      ; $4dc9: $0e $0f
	dec  a                                           ; $4dcb: $3d
	ccf                                              ; $4dcc: $3f
	ld   a, [$e5ff]                                  ; $4dcd: $fa $ff $e5
	rst  $38                                         ; $4dd0: $ff
	jp   nc, $d2ff                                   ; $4dd1: $d2 $ff $d2

	rst  $38                                         ; $4dd4: $ff
	db   $d3                                         ; $4dd5: $d3
	rst  $38                                         ; $4dd6: $ff
	xor  a                                           ; $4dd7: $af
	rst  $38                                         ; $4dd8: $ff
	ld   e, a                                        ; $4dd9: $5f
	rst  $38                                         ; $4dda: $ff
	inc  sp                                          ; $4ddb: $33
	add  c                                           ; $4ddc: $81
	rst  $38                                         ; $4ddd: $ff
	inc  b                                           ; $4dde: $04
	call z, $ddff                                    ; $4ddf: $cc $ff $dd
	rst  $38                                         ; $4de2: $ff
	and  $81                                         ; $4de3: $e6 $81
	rst  $38                                         ; $4de5: $ff
	ld   hl, $ff86                                   ; $4de6: $21 $86 $ff
	db   $ec                                         ; $4de9: $ec
	rst  $38                                         ; $4dea: $ff
	rst  $10                                         ; $4deb: $d7
	rst  $38                                         ; $4dec: $ff
	or   d                                           ; $4ded: $b2
	rst  $38                                         ; $4dee: $ff
	db   $f4                                         ; $4def: $f4
	rst  $38                                         ; $4df0: $ff
	rrca                                             ; $4df1: $0f
	rst  $38                                         ; $4df2: $ff
	ld   c, b                                        ; $4df3: $48
	rst  $38                                         ; $4df4: $ff
	cp   b                                           ; $4df5: $b8
	rst  $38                                         ; $4df6: $ff
	cp   l                                           ; $4df7: $bd
	rst  $38                                         ; $4df8: $ff
	cp   c                                           ; $4df9: $b9
	rst  $38                                         ; $4dfa: $ff
	sbc  [hl]                                        ; $4dfb: $9e
	rst  $38                                         ; $4dfc: $ff
	sub  l                                           ; $4dfd: $95
	rst  $38                                         ; $4dfe: $ff
	adc  a                                           ; $4dff: $8f
	rst  $38                                         ; $4e00: $ff

jr_080_4e01:
	cp   a                                           ; $4e01: $bf
	rst  $38                                         ; $4e02: $ff
	rst  JumpTable                                         ; $4e03: $df
	db   $fc                                         ; $4e04: $fc
	ld   hl, sp-$04                                  ; $4e05: $f8 $fc
	db   $e4                                         ; $4e07: $e4
	db   $fc                                         ; $4e08: $fc
	add  b                                           ; $4e09: $80
	ld   hl, sp+$01                                  ; $4e0a: $f8 $01
	ld   [hl], b                                     ; $4e0c: $70
	ldh  a, [$80]                                    ; $4e0d: $f0 $80
	ldh  [$80], a                                    ; $4e0f: $e0 $80
	ret  nz                                          ; $4e11: $c0

	ld   [bc], a                                     ; $4e12: $02
	nop                                              ; $4e13: $00
	add  b                                           ; $4e14: $80
	nop                                              ; $4e15: $00
	add  h                                           ; $4e16: $84
	jp   $0085                                       ; $4e17: $c3 $85 $00


	inc  bc                                          ; $4e1a: $03
	add  b                                           ; $4e1b: $80
	ret  nz                                          ; $4e1c: $c0

	jr   nz, jr_080_4da2                             ; $4e1d: $20 $83

	add  b                                           ; $4e1f: $80
	ld   [hl+], a                                    ; $4e20: $22
	add  b                                           ; $4e21: $80
	ldh  [$03], a                                    ; $4e22: $e0 $03
	db   $e3                                         ; $4e24: $e3
	inc  bc                                          ; $4e25: $03
	add  hl, bc                                      ; $4e26: $09
	ld   a, [bc]                                     ; $4e27: $0a
	add  b                                           ; $4e28: $80
	ld   bc, $0080                                   ; $4e29: $01 $80 $00
	add  b                                           ; $4e2c: $80
	ld   bc, $c701                                   ; $4e2d: $01 $01 $c7
	ccf                                              ; $4e30: $3f
	add  b                                           ; $4e31: $80
	ld   a, a                                        ; $4e32: $7f
	add  d                                           ; $4e33: $82
	rst  $38                                         ; $4e34: $ff
	ld   bc, $af57                                   ; $4e35: $01 $57 $af
	add  b                                           ; $4e38: $80
	ld   d, a                                        ; $4e39: $57
	add  b                                           ; $4e3a: $80
	xor  a                                           ; $4e3b: $af
	add  b                                           ; $4e3c: $80
	ld   d, a                                        ; $4e3d: $57
	nop                                              ; $4e3e: $00
	nop                                              ; $4e3f: $00
	add  b                                           ; $4e40: $80
	ld   a, l                                        ; $4e41: $7d
	ld   de, $7879                                   ; $4e42: $11 $79 $78
	ld   [hl], b                                     ; $4e45: $70
	ld   [hl], d                                     ; $4e46: $72
	ld   h, c                                        ; $4e47: $61
	ld   l, [hl]                                     ; $4e48: $6e
	ld   h, l                                        ; $4e49: $65
	ld   e, c                                        ; $4e4a: $59
	ld   d, d                                        ; $4e4b: $52
	and  d                                           ; $4e4c: $a2
	ld   c, h                                        ; $4e4d: $4c
	adc  h                                           ; $4e4e: $8c
	jr   nc, jr_080_4e01                             ; $4e4f: $30 $b0

	nop                                              ; $4e51: $00
	add  b                                           ; $4e52: $80
	add  e                                           ; $4e53: $83
	inc  bc                                          ; $4e54: $03
	add  e                                           ; $4e55: $83
	add  b                                           ; $4e56: $80
	add  b                                           ; $4e57: $80
	add  c                                           ; $4e58: $81

jr_080_4e59:
	add  b                                           ; $4e59: $80
	add  h                                           ; $4e5a: $84
	add  b                                           ; $4e5b: $80
	add  e                                           ; $4e5c: $83
	nop                                              ; $4e5d: $00
	rlca                                             ; $4e5e: $07
	add  b                                           ; $4e5f: $80
	cpl                                              ; $4e60: $2f
	add  b                                           ; $4e61: $80
	rst  ToBoot                                         ; $4e62: $c7

jr_080_4e63:
	add  b                                           ; $4e63: $80
	cpl                                              ; $4e64: $2f
	nop                                              ; $4e65: $00
	rlca                                             ; $4e66: $07

jr_080_4e67:
	add  b                                           ; $4e67: $80
	rst  $38                                         ; $4e68: $ff
	add  b                                           ; $4e69: $80
	ld   l, a                                        ; $4e6a: $6f
	add  b                                           ; $4e6b: $80
	rra                                              ; $4e6c: $1f
	add  b                                           ; $4e6d: $80
	rst  ToBoot                                         ; $4e6e: $c7

jr_080_4e6f:
	ld   [bc], a                                     ; $4e6f: $02
	ld   a, $3f                                      ; $4e70: $3e $3f
	ld   a, $81                                      ; $4e72: $3e $81
	ccf                                              ; $4e74: $3f
	add  b                                           ; $4e75: $80
	rra                                              ; $4e76: $1f
	inc  bc                                          ; $4e77: $03
	dec  bc                                          ; $4e78: $0b
	rrca                                             ; $4e79: $0f
	inc  bc                                          ; $4e7a: $03
	rlca                                             ; $4e7b: $07
	add  b                                           ; $4e7c: $80
	inc  bc                                          ; $4e7d: $03
	add  b                                           ; $4e7e: $80
	ld   bc, $f020                                   ; $4e7f: $01 $20 $f0
	cp   $8e                                         ; $4e82: $fe $8e
	db   $fc                                         ; $4e84: $fc
	cp   a                                           ; $4e85: $bf
	rst  $38                                         ; $4e86: $ff
	adc  a                                           ; $4e87: $8f
	rst  $38                                         ; $4e88: $ff
	dec  sp                                          ; $4e89: $3b
	rst  $38                                         ; $4e8a: $ff
	dec  bc                                          ; $4e8b: $0b
	rst  $38                                         ; $4e8c: $ff
	sbc  h                                           ; $4e8d: $9c
	rst  $38                                         ; $4e8e: $ff
	cp   e                                           ; $4e8f: $bb
	rst  $38                                         ; $4e90: $ff
	sbc  d                                           ; $4e91: $9a
	db   $fd                                         ; $4e92: $fd
	dec  a                                           ; $4e93: $3d
	ld   a, l                                        ; $4e94: $7d
	db   $fd                                         ; $4e95: $fd
	sbc  l                                           ; $4e96: $9d
	db   $dd                                         ; $4e97: $dd
	push bc                                          ; $4e98: $c5
	or   h                                           ; $4e99: $b4
	db   $f4                                         ; $4e9a: $f4
	inc  c                                           ; $4e9b: $0c
	db   $fc                                         ; $4e9c: $fc
	ld   c, h                                        ; $4e9d: $4c
	ld   hl, sp+$6e                                  ; $4e9e: $f8 $6e
	rst  $38                                         ; $4ea0: $ff
	ld   l, [hl]                                     ; $4ea1: $6e
	add  l                                           ; $4ea2: $85
	nop                                              ; $4ea3: $00
	ld   bc, $44bb                                   ; $4ea4: $01 $bb $44
	add  b                                           ; $4ea7: $80
	add  d                                           ; $4ea8: $82
	add  b                                           ; $4ea9: $80
	ld   [bc], a                                     ; $4eaa: $02
	add  b                                           ; $4eab: $80
	nop                                              ; $4eac: $00
	nop                                              ; $4ead: $00
	rst  $38                                         ; $4eae: $ff
	add  l                                           ; $4eaf: $85
	nop                                              ; $4eb0: $00
	ld   bc, $807f                                   ; $4eb1: $01 $7f $80
	add  b                                           ; $4eb4: $80
	add  [hl]                                        ; $4eb5: $86
	add  b                                           ; $4eb6: $80
	ld   c, $80                                      ; $4eb7: $0e $80
	rra                                              ; $4eb9: $1f
	nop                                              ; $4eba: $00
	rst  $38                                         ; $4ebb: $ff
	add  l                                           ; $4ebc: $85
	nop                                              ; $4ebd: $00
	ld   bc, $cc33                                   ; $4ebe: $01 $33 $cc
	add  b                                           ; $4ec1: $80
	call nz, Call_080_4682                           ; $4ec2: $c4 $82 $46
	nop                                              ; $4ec5: $00
	rst  $38                                         ; $4ec6: $ff
	add  [hl]                                        ; $4ec7: $86
	nop                                              ; $4ec8: $00
	add  e                                           ; $4ec9: $83
	ldh  a, [$80]                                    ; $4eca: $f0 $80
	ld   [hl], b                                     ; $4ecc: $70
	ld   bc, $faf5                                   ; $4ecd: $01 $f5 $fa
	add  d                                           ; $4ed0: $82
	db   $fc                                         ; $4ed1: $fc
	add  b                                           ; $4ed2: $80
	ldh  a, [$80]                                    ; $4ed3: $f0 $80
	rst  ToBoot                                         ; $4ed5: $c7
	add  b                                           ; $4ed6: $80
	jr   jr_080_4e59                                 ; $4ed7: $18 $80

	rst  $20                                         ; $4ed9: $e7
	add  b                                           ; $4eda: $80
	inc  e                                           ; $4edb: $1c
	add  b                                           ; $4edc: $80
	ld   bc, $0680                                   ; $4edd: $01 $80 $06
	add  b                                           ; $4ee0: $80
	jr   c, jr_080_4e63                              ; $4ee1: $38 $80

	rst  ToBoot                                         ; $4ee3: $c7
	add  b                                           ; $4ee4: $80
	jr   jr_080_4e67                                 ; $4ee5: $18 $80

	ldh  [$82], a                                    ; $4ee7: $e0 $82
	inc  bc                                          ; $4ee9: $03
	add  b                                           ; $4eea: $80
	rst  ToBoot                                         ; $4eeb: $c7
	add  b                                           ; $4eec: $80
	jr   jr_080_4e6f                                 ; $4eed: $18 $80

	rst  $20                                         ; $4eef: $e7
	add  b                                           ; $4ef0: $80
	rlca                                             ; $4ef1: $07
	add  b                                           ; $4ef2: $80
	rrca                                             ; $4ef3: $0f
	add  b                                           ; $4ef4: $80
	cpl                                              ; $4ef5: $2f
	add  b                                           ; $4ef6: $80
	xor  a                                           ; $4ef7: $af
	add  b                                           ; $4ef8: $80
	and  a                                           ; $4ef9: $a7
	ld   bc, $808f                                   ; $4efa: $01 $8f $80
	adc  h                                           ; $4efd: $8c
	nop                                              ; $4efe: $00
	nop                                              ; $4eff: $00
	ld   c, l                                        ; $4f00: $4d
	add  e                                           ; $4f01: $83
	ld   b, d                                        ; $4f02: $42
	add  b                                           ; $4f03: $80
	ld   b, b                                        ; $4f04: $40
	ld   de, $0300                                   ; $4f05: $11 $00 $03
	add  e                                           ; $4f08: $83
	jp   $c303                                       ; $4f09: $c3 $03 $c3


	inc  bc                                          ; $4f0c: $03
	jp   $e383                                       ; $4f0d: $c3 $83 $e3


	add  e                                           ; $4f10: $83
	db   $e3                                         ; $4f11: $e3
	inc  bc                                          ; $4f12: $03
	db   $e3                                         ; $4f13: $e3

jr_080_4f14:
	inc  hl                                          ; $4f14: $23
	db   $e3                                         ; $4f15: $e3
	ld   h, e                                        ; $4f16: $63
	db   $e3                                         ; $4f17: $e3
	add  b                                           ; $4f18: $80
	ldh  [c], a                                      ; $4f19: $e2
	add  b                                           ; $4f1a: $80
	db   $e3                                         ; $4f1b: $e3

jr_080_4f1c:
	add  b                                           ; $4f1c: $80
	jp   $e400                                       ; $4f1d: $c3 $00 $e4


	add  b                                           ; $4f20: $80
	rst  ToBoot                                         ; $4f21: $c7
	nop                                              ; $4f22: $00
	rst  $38                                         ; $4f23: $ff
	add  b                                           ; $4f24: $80
	rst  ToBoot                                         ; $4f25: $c7
	add  b                                           ; $4f26: $80
	adc  a                                           ; $4f27: $8f
	add  b                                           ; $4f28: $80
	rra                                              ; $4f29: $1f
	add  b                                           ; $4f2a: $80
	ld   a, a                                        ; $4f2b: $7f
	add  b                                           ; $4f2c: $80
	rst  $28                                         ; $4f2d: $ef
	add  b                                           ; $4f2e: $80
	rst  JumpTable                                         ; $4f2f: $df
	inc  b                                           ; $4f30: $04
	ld   hl, sp+$03                                  ; $4f31: $f8 $03
	add  e                                           ; $4f33: $83
	pop  bc                                          ; $4f34: $c1
	ld   b, c                                        ; $4f35: $41
	add  d                                           ; $4f36: $82
	jp   $0300                                       ; $4f37: $c3 $00 $03


	add  b                                           ; $4f3a: $80
	ld   b, e                                        ; $4f3b: $43
	inc  b                                           ; $4f3c: $04
	inc  bc                                          ; $4f3d: $03
	ld   a, [hl]                                     ; $4f3e: $7e
	ld   a, a                                        ; $4f3f: $7f
	add  d                                           ; $4f40: $82
	add  e                                           ; $4f41: $83
	add  b                                           ; $4f42: $80
	ldh  [$80], a                                    ; $4f43: $e0 $80
	inc  bc                                          ; $4f45: $03
	ld   [bc], a                                     ; $4f46: $02
	ldh  [$c0], a                                    ; $4f47: $e0 $c0
	jp   $a380                                       ; $4f49: $c3 $80 $a3


	add  b                                           ; $4f4c: $80
	ld   h, e                                        ; $4f4d: $63
	nop                                              ; $4f4e: $00
	db   $e3                                         ; $4f4f: $e3
	add  b                                           ; $4f50: $80
	inc  bc                                          ; $4f51: $03
	inc  bc                                          ; $4f52: $03
	ld   h, e                                        ; $4f53: $63
	ld   c, h                                        ; $4f54: $4c
	cpl                                              ; $4f55: $2f
	rlca                                             ; $4f56: $07
	add  b                                           ; $4f57: $80
	rst  ToBoot                                         ; $4f58: $c7
	add  b                                           ; $4f59: $80
	ld   l, a                                        ; $4f5a: $6f
	add  b                                           ; $4f5b: $80
	add  a                                           ; $4f5c: $87
	add  l                                           ; $4f5d: $85
	rst  $28                                         ; $4f5e: $ef
	nop                                              ; $4f5f: $00
	add  sp, -$80                                    ; $4f60: $e8 $80
	ret  nz                                          ; $4f62: $c0

	add  a                                           ; $4f63: $87
	nop                                              ; $4f64: $00
	add  b                                           ; $4f65: $80
	ld   bc, $0380                                   ; $4f66: $01 $80 $03
	add  b                                           ; $4f69: $80
	add  d                                           ; $4f6a: $82
	add  b                                           ; $4f6b: $80
	add  c                                           ; $4f6c: $81
	add  b                                           ; $4f6d: $80
	add  h                                           ; $4f6e: $84
	add  b                                           ; $4f6f: $80
	add  c                                           ; $4f70: $81
	add  b                                           ; $4f71: $80
	add  d                                           ; $4f72: $82
	add  b                                           ; $4f73: $80
	add  c                                           ; $4f74: $81
	add  b                                           ; $4f75: $80
	adc  b                                           ; $4f76: $88
	add  b                                           ; $4f77: $80
	dec  b                                           ; $4f78: $05
	add  b                                           ; $4f79: $80
	nop                                              ; $4f7a: $00
	add  b                                           ; $4f7b: $80
	inc  bc                                          ; $4f7c: $03
	add  b                                           ; $4f7d: $80
	rlca                                             ; $4f7e: $07
	add  b                                           ; $4f7f: $80
	inc  d                                           ; $4f80: $14
	add  b                                           ; $4f81: $80
	ld   [hl], h                                     ; $4f82: $74
	add  b                                           ; $4f83: $80
	db   $f4                                         ; $4f84: $f4
	add  d                                           ; $4f85: $82
	ld   a, [$9f82]                                  ; $4f86: $fa $82 $9f
	add  d                                           ; $4f89: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f8a: $cf
	add  b                                           ; $4f8b: $80
	ld   l, a                                        ; $4f8c: $6f
	add  b                                           ; $4f8d: $80
	ld   h, a                                        ; $4f8e: $67
	add  b                                           ; $4f8f: $80
	ld   h, $80                                      ; $4f90: $26 $80
	jr   nz, jr_080_4f14                             ; $4f92: $20 $80

	ld   h, d                                        ; $4f94: $62
	add  b                                           ; $4f95: $80
	ld   h, e                                        ; $4f96: $63
	add  b                                           ; $4f97: $80
	jr   nz, jr_080_4f1c                             ; $4f98: $20 $82

	and  b                                           ; $4f9a: $a0
	add  b                                           ; $4f9b: $80
	add  e                                           ; $4f9c: $83
	add  b                                           ; $4f9d: $80
	rrca                                             ; $4f9e: $0f
	add  b                                           ; $4f9f: $80
	jr   nc, jr_080_4fa3                             ; $4fa0: $30 $01

	ld   a, a                                        ; $4fa2: $7f

jr_080_4fa3:
	ld   [hl], b                                     ; $4fa3: $70
	add  [hl]                                        ; $4fa4: $86
	nop                                              ; $4fa5: $00
	add  b                                           ; $4fa6: $80
	ldh  a, [$80]                                    ; $4fa7: $f0 $80
	add  b                                           ; $4fa9: $80
	add  b                                           ; $4faa: $80
	nop                                              ; $4fab: $00
	ld   bc, $e0ef                                   ; $4fac: $01 $ef $e0
	add  d                                           ; $4faf: $82
	ld   [bc], a                                     ; $4fb0: $02
	add  b                                           ; $4fb1: $80
	ld   b, d                                        ; $4fb2: $42
	add  b                                           ; $4fb3: $80
	ld   b, b                                        ; $4fb4: $40
	add  b                                           ; $4fb5: $80
	ld   b, d                                        ; $4fb6: $42
	add  b                                           ; $4fb7: $80
	ld   [bc], a                                     ; $4fb8: $02
	add  b                                           ; $4fb9: $80
	ld   b, d                                        ; $4fba: $42
	add  b                                           ; $4fbb: $80
	ld   h, e                                        ; $4fbc: $63
	add  b                                           ; $4fbd: $80
	ld   h, b                                        ; $4fbe: $60
	add  b                                           ; $4fbf: $80
	ld   b, e                                        ; $4fc0: $43
	inc  d                                           ; $4fc1: $14
	ld   bc, $6003                                   ; $4fc2: $01 $03 $60
	ld   h, e                                        ; $4fc5: $63
	ld   h, b                                        ; $4fc6: $60
	ld   h, e                                        ; $4fc7: $63
	ret  nz                                          ; $4fc8: $c0

	db   $e3                                         ; $4fc9: $e3
	add  c                                           ; $4fca: $81
	db   $e3                                         ; $4fcb: $e3
	call z, $c78f                                    ; $4fcc: $cc $8f $c7
	rst  $28                                         ; $4fcf: $ef
	rrca                                             ; $4fd0: $0f
	ld   l, a                                        ; $4fd1: $6f
	ld   c, a                                        ; $4fd2: $4f
	xor  a                                           ; $4fd3: $af
	cpl                                              ; $4fd4: $2f
	xor  a                                           ; $4fd5: $af
	cpl                                              ; $4fd6: $2f
	add  e                                           ; $4fd7: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fd8: $cf
	nop                                              ; $4fd9: $00
	rst  ToBoot                                         ; $4fda: $c7
	adc  l                                           ; $4fdb: $8d
	nop                                              ; $4fdc: $00
	nop                                              ; $4fdd: $00
	ldh  a, [rIE]                                    ; $4fde: $f0 $ff
	nop                                              ; $4fe0: $00
	rst  $38                                         ; $4fe1: $ff
	nop                                              ; $4fe2: $00
	rst  $38                                         ; $4fe3: $ff
	nop                                              ; $4fe4: $00
	rst  $38                                         ; $4fe5: $ff
	nop                                              ; $4fe6: $00
	rst  $38                                         ; $4fe7: $ff
	nop                                              ; $4fe8: $00
	rst  $38                                         ; $4fe9: $ff
	nop                                              ; $4fea: $00
	rst  $38                                         ; $4feb: $ff
	nop                                              ; $4fec: $00
	rst  $38                                         ; $4fed: $ff
	nop                                              ; $4fee: $00
	push af                                          ; $4fef: $f5
	nop                                              ; $4ff0: $00
	inc  e                                           ; $4ff1: $1c
	ld   bc, $0f00                                   ; $4ff2: $01 $00 $0f
	add  d                                           ; $4ff5: $82
	ld   b, $84                                      ; $4ff6: $06 $84
	ld   [bc], a                                     ; $4ff8: $02
	add  e                                           ; $4ff9: $83
	nop                                              ; $4ffa: $00
	ld   bc, $ed1c                                   ; $4ffb: $01 $1c $ed
	add  b                                           ; $4ffe: $80
	rst  $28                                         ; $4fff: $ef
	add  b                                           ; $5000: $80
	ld   sp, hl                                      ; $5001: $f9
	add  b                                           ; $5002: $80
	pop  bc                                          ; $5003: $c1
	add  b                                           ; $5004: $80
	rrca                                             ; $5005: $0f
	nop                                              ; $5006: $00
	ld   bc, $008f                                   ; $5007: $01 $8f $00
	db   $10                                         ; $500a: $10
	inc  bc                                          ; $500b: $03
	nop                                              ; $500c: $00
	jr   jr_080_500f                                 ; $500d: $18 $00

jr_080_500f:
	db   $db                                         ; $500f: $db
	ldh  [rAUD4LEN], a                               ; $5010: $e0 $20
	nop                                              ; $5012: $00
	ld   b, $00                                      ; $5013: $06 $00
	add  hl, de                                      ; $5015: $19
	nop                                              ; $5016: $00
	ld   b, b                                        ; $5017: $40
	nop                                              ; $5018: $00
	ld   e, a                                        ; $5019: $5f
	nop                                              ; $501a: $00
	rst  $38                                         ; $501b: $ff
	add  c                                           ; $501c: $81
	nop                                              ; $501d: $00
	ld   [bc], a                                     ; $501e: $02
	ret  nz                                          ; $501f: $c0

	nop                                              ; $5020: $00
	ret  nz                                          ; $5021: $c0

	add  e                                           ; $5022: $83
	nop                                              ; $5023: $00
	inc  d                                           ; $5024: $14
	ld   bc, $fe00                                   ; $5025: $01 $00 $fe
	nop                                              ; $5028: $00
	rst  $30                                         ; $5029: $f7
	nop                                              ; $502a: $00
	jr   c, jr_080_502d                              ; $502b: $38 $00

jr_080_502d:
	scf                                              ; $502d: $37
	nop                                              ; $502e: $00
	ld   c, $00                                      ; $502f: $0e $00
	jr   c, jr_080_5033                              ; $5031: $38 $00

jr_080_5033:
	pop  af                                          ; $5033: $f1
	nop                                              ; $5034: $00
	ret  nz                                          ; $5035: $c0

	nop                                              ; $5036: $00
	rst  $38                                         ; $5037: $ff
	nop                                              ; $5038: $00
	rst  $38                                         ; $5039: $ff
	add  c                                           ; $503a: $81
	nop                                              ; $503b: $00
	nop                                              ; $503c: $00
	ld   hl, $0081                                   ; $503d: $21 $81 $00
	ld   [$0080], sp                                 ; $5040: $08 $80 $00
	sbc  $00                                         ; $5043: $de $00
	ld   a, a                                        ; $5045: $7f
	ld   bc, $03fd                                   ; $5046: $01 $fd $03
	rst  $38                                         ; $5049: $ff
	add  c                                           ; $504a: $81
	inc  bc                                          ; $504b: $03
	dec  b                                           ; $504c: $05
	ld   a, a                                        ; $504d: $7f
	rst  $38                                         ; $504e: $ff
	ld   a, h                                        ; $504f: $7c
	rst  $38                                         ; $5050: $ff
	nop                                              ; $5051: $00
	rst  $38                                         ; $5052: $ff
	add  b                                           ; $5053: $80
	ei                                               ; $5054: $fb
	add  d                                           ; $5055: $82
	db   $db                                         ; $5056: $db
	add  d                                           ; $5057: $82
	sbc  e                                           ; $5058: $9b
	dec  b                                           ; $5059: $05
	ld   hl, sp-$01                                  ; $505a: $f8 $ff
	rlca                                             ; $505c: $07
	rst  $38                                         ; $505d: $ff
	ret  nz                                          ; $505e: $c0

	ccf                                              ; $505f: $3f
	add  d                                           ; $5060: $82
	scf                                              ; $5061: $37
	add  b                                           ; $5062: $80
	ld   [hl], a                                     ; $5063: $77
	add  d                                           ; $5064: $82
	ld   [hl], e                                     ; $5065: $73
	nop                                              ; $5066: $00
	nop                                              ; $5067: $00
	add  c                                           ; $5068: $81
	rst  $38                                         ; $5069: $ff
	ld   bc, $fe01                                   ; $506a: $01 $01 $fe
	add  d                                           ; $506d: $82
	xor  $80                                         ; $506e: $ee $80
	rst  $28                                         ; $5070: $ef
	add  d                                           ; $5071: $82
	xor  l                                           ; $5072: $ad
	ld   bc, $ff04                                   ; $5073: $01 $04 $ff
	add  b                                           ; $5076: $80
	ei                                               ; $5077: $fb
	ld   bc, $f10a                                   ; $5078: $01 $0a $f1
	add  b                                           ; $507b: $80
	ei                                               ; $507c: $fb
	add  [hl]                                        ; $507d: $86
	db   $db                                         ; $507e: $db
	nop                                              ; $507f: $00
	nop                                              ; $5080: $00
	add  c                                           ; $5081: $81
	rst  $38                                         ; $5082: $ff
	ld   bc, $2fd0                                   ; $5083: $01 $d0 $2f
	add  b                                           ; $5086: $80
	dec  l                                           ; $5087: $2d
	add  b                                           ; $5088: $80
	ld   l, l                                        ; $5089: $6d
	add  b                                           ; $508a: $80
	ld   c, h                                        ; $508b: $4c
	add  d                                           ; $508c: $82
	call z, $0000                                   ; $508d: $cc $00 $00
	add  c                                           ; $5090: $81
	rst  $38                                         ; $5091: $ff
	ld   bc, $8f70                                   ; $5092: $01 $70 $8f
	add  d                                           ; $5095: $82
	rst  JumpTable                                         ; $5096: $df
	add  b                                           ; $5097: $80
	ei                                               ; $5098: $fb
	add  d                                           ; $5099: $82
	ld   sp, hl                                      ; $509a: $f9
	nop                                              ; $509b: $00
	nop                                              ; $509c: $00
	add  c                                           ; $509d: $81
	rst  $38                                         ; $509e: $ff
	ld   bc, $ff00                                   ; $509f: $01 $00 $ff
	add  h                                           ; $50a2: $84
	rst  JumpTable                                         ; $50a3: $df
	add  b                                           ; $50a4: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50a5: $cf
	add  b                                           ; $50a6: $80
	call $3105                                       ; $50a7: $cd $05 $31
	adc  a                                           ; $50aa: $8f
	and  c                                           ; $50ab: $a1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50ac: $cf
	ld   e, a                                        ; $50ad: $5f
	adc  a                                           ; $50ae: $8f
	add  d                                           ; $50af: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50b0: $cf
	add  b                                           ; $50b1: $80
	rst  $20                                         ; $50b2: $e7
	add  b                                           ; $50b3: $80
	db   $e3                                         ; $50b4: $e3
	add  b                                           ; $50b5: $80
	and  c                                           ; $50b6: $a1
	inc  c                                           ; $50b7: $0c
	dec  sp                                          ; $50b8: $3b
	nop                                              ; $50b9: $00
	stop                                             ; $50ba: $10 $00
	ld   [$2c00], sp                                 ; $50bc: $08 $00 $2c
	nop                                              ; $50bf: $00
	ld   [hl], b                                     ; $50c0: $70
	nop                                              ; $50c1: $00
	ld   a, a                                        ; $50c2: $7f
	nop                                              ; $50c3: $00
	ld   a, a                                        ; $50c4: $7f
	add  c                                           ; $50c5: $81
	nop                                              ; $50c6: $00
	nop                                              ; $50c7: $00
	adc  a                                           ; $50c8: $8f
	add  a                                           ; $50c9: $87
	nop                                              ; $50ca: $00
	add  b                                           ; $50cb: $80
	inc  bc                                          ; $50cc: $03
	add  b                                           ; $50cd: $80
	nop                                              ; $50ce: $00
	add  b                                           ; $50cf: $80
	rrca                                             ; $50d0: $0f
	ld   [$00f0], sp                                 ; $50d1: $08 $f0 $00
	ld   [bc], a                                     ; $50d4: $02
	nop                                              ; $50d5: $00
	inc  c                                           ; $50d6: $0c
	nop                                              ; $50d7: $00
	ld   sp, $c000                                   ; $50d8: $31 $00 $c0
	add  c                                           ; $50db: $81
	nop                                              ; $50dc: $00
	ld   b, $ff                                      ; $50dd: $06 $ff
	nop                                              ; $50df: $00
	rst  $38                                         ; $50e0: $ff
	nop                                              ; $50e1: $00
	add  b                                           ; $50e2: $80
	nop                                              ; $50e3: $00
	add  b                                           ; $50e4: $80
	add  a                                           ; $50e5: $87
	nop                                              ; $50e6: $00
	ld   d, $ff                                      ; $50e7: $16 $ff
	nop                                              ; $50e9: $00
	ei                                               ; $50ea: $fb
	nop                                              ; $50eb: $00
	inc  b                                           ; $50ec: $04
	nop                                              ; $50ed: $00
	ld   bc, $0700                                   ; $50ee: $01 $00 $07
	nop                                              ; $50f1: $00
	ld   e, $00                                      ; $50f2: $1e $00
	jr   c, jr_080_50f6                              ; $50f4: $38 $00

jr_080_50f6:
	ldh  [rP1], a                                    ; $50f6: $e0 $00
	ccf                                              ; $50f8: $3f
	nop                                              ; $50f9: $00
	rst  $38                                         ; $50fa: $ff
	nop                                              ; $50fb: $00
	ret  nz                                          ; $50fc: $c0

	nop                                              ; $50fd: $00
	ret  nz                                          ; $50fe: $c0

	add  a                                           ; $50ff: $87
	nop                                              ; $5100: $00
	ld   [bc], a                                     ; $5101: $02
	rst  $38                                         ; $5102: $ff
	nop                                              ; $5103: $00
	rst  $38                                         ; $5104: $ff
	adc  e                                           ; $5105: $8b
	nop                                              ; $5106: $00
	ld   [bc], a                                     ; $5107: $02
	rst  $38                                         ; $5108: $ff
	nop                                              ; $5109: $00
	rst  $38                                         ; $510a: $ff
	add  b                                           ; $510b: $80
	nop                                              ; $510c: $00
	add  b                                           ; $510d: $80
	inc  bc                                          ; $510e: $03
	add  c                                           ; $510f: $81
	rlca                                             ; $5110: $07
	add  b                                           ; $5111: $80
	ld   b, $08                                      ; $5112: $06 $08
	rrca                                             ; $5114: $0f
	inc  b                                           ; $5115: $04
	inc  e                                           ; $5116: $1c
	nop                                              ; $5117: $00
	rst  $28                                         ; $5118: $ef
	nop                                              ; $5119: $00
	cp   a                                           ; $511a: $bf
	nop                                              ; $511b: $00
	and  h                                           ; $511c: $a4
	add  e                                           ; $511d: $83
	dec  de                                          ; $511e: $1b
	add  d                                           ; $511f: $82
	jr   jr_080_5128                                 ; $5120: $18 $06

	inc  a                                           ; $5122: $3c
	nop                                              ; $5123: $00
	inc  a                                           ; $5124: $3c
	nop                                              ; $5125: $00
	jr   c, jr_080_5128                              ; $5126: $38 $00

jr_080_5128:
	res  0, e                                        ; $5128: $cb $83
	di                                               ; $512a: $f3
	add  b                                           ; $512b: $80
	inc  sp                                          ; $512c: $33
	add  [hl]                                        ; $512d: $86
	nop                                              ; $512e: $00
	add  b                                           ; $512f: $80
	xor  l                                           ; $5130: $ad
	add  b                                           ; $5131: $80
	dec  l                                           ; $5132: $2d
	add  b                                           ; $5133: $80
	add  hl, hl                                      ; $5134: $29
	add  b                                           ; $5135: $80
	add  hl, bc                                      ; $5136: $09
	add  [hl]                                        ; $5137: $86
	nop                                              ; $5138: $00
	add  h                                           ; $5139: $84
	sbc  e                                           ; $513a: $9b
	add  b                                           ; $513b: $80
	adc  d                                           ; $513c: $8a
	add  [hl]                                        ; $513d: $86
	nop                                              ; $513e: $00
	add  d                                           ; $513f: $82
	call z, $8c80                                    ; $5140: $cc $80 $8c
	adc  b                                           ; $5143: $88
	nop                                              ; $5144: $00
	add  b                                           ; $5145: $80
	db   $fd                                         ; $5146: $fd
	add  d                                           ; $5147: $82
	ld   a, h                                        ; $5148: $7c
	adc  b                                           ; $5149: $88
	nop                                              ; $514a: $00
	add  b                                           ; $514b: $80
	call $cc82                                       ; $514c: $cd $82 $cc
	adc  b                                           ; $514f: $88
	nop                                              ; $5150: $00
	add  b                                           ; $5151: $80
	xor  a                                           ; $5152: $af
	add  d                                           ; $5153: $82
	or   b                                           ; $5154: $b0
	ld   bc, $303f                                   ; $5155: $01 $3f $30
	add  b                                           ; $5158: $80
	db   $10                                         ; $5159: $10
	add  b                                           ; $515a: $80
	nop                                              ; $515b: $00
	inc  b                                           ; $515c: $04
	rrca                                             ; $515d: $0f
	nop                                              ; $515e: $00
	rlca                                             ; $515f: $07
	nop                                              ; $5160: $00
	ld   a, b                                        ; $5161: $78
	adc  c                                           ; $5162: $89
	nop                                              ; $5163: $00
	ld   [bc], a                                     ; $5164: $02
	ld   a, a                                        ; $5165: $7f
	nop                                              ; $5166: $00
	rst  $38                                         ; $5167: $ff
	adc  b                                           ; $5168: $88
	nop                                              ; $5169: $00
	add  c                                           ; $516a: $81
	rst  $38                                         ; $516b: $ff
	add  b                                           ; $516c: $80
	rst  JumpTable                                         ; $516d: $df
	add  b                                           ; $516e: $80
	rst  $28                                         ; $516f: $ef
	nop                                              ; $5170: $00
	rst  $38                                         ; $5171: $ff
	add  [hl]                                        ; $5172: $86
	nop                                              ; $5173: $00
	nop                                              ; $5174: $00
	rst  $38                                         ; $5175: $ff
	add  b                                           ; $5176: $80
	ld   a, [$fd80]                                  ; $5177: $fa $80 $fd
	add  b                                           ; $517a: $80
	xor  d                                           ; $517b: $aa
	nop                                              ; $517c: $00
	rst  $38                                         ; $517d: $ff
	add  l                                           ; $517e: $85
	nop                                              ; $517f: $00
	ld   bc, $55aa                                   ; $5180: $01 $aa $55
	add  b                                           ; $5183: $80
	xor  d                                           ; $5184: $aa
	add  b                                           ; $5185: $80
	ld   d, l                                        ; $5186: $55
	add  b                                           ; $5187: $80
	xor  d                                           ; $5188: $aa
	nop                                              ; $5189: $00
	rst  $38                                         ; $518a: $ff
	add  l                                           ; $518b: $85
	nop                                              ; $518c: $00
	ld   bc, $50a0                                   ; $518d: $01 $a0 $50
	add  b                                           ; $5190: $80
	and  b                                           ; $5191: $a0
	add  b                                           ; $5192: $80
	ld   d, b                                        ; $5193: $50
	add  b                                           ; $5194: $80
	and  b                                           ; $5195: $a0
	ld   bc, $555a                                   ; $5196: $01 $5a $55
	add  b                                           ; $5199: $80
	xor  d                                           ; $519a: $aa
	add  b                                           ; $519b: $80
	ld   d, l                                        ; $519c: $55
	add  b                                           ; $519d: $80
	xor  d                                           ; $519e: $aa
	add  b                                           ; $519f: $80
	ld   d, l                                        ; $51a0: $55
	add  b                                           ; $51a1: $80
	xor  d                                           ; $51a2: $aa
	add  b                                           ; $51a3: $80
	ld   d, l                                        ; $51a4: $55
	inc  bc                                          ; $51a5: $03
	ld   bc, $5400                                   ; $51a6: $01 $00 $54
	ld   d, l                                        ; $51a9: $55
	add  b                                           ; $51aa: $80
	xor  d                                           ; $51ab: $aa
	add  b                                           ; $51ac: $80
	ld   d, l                                        ; $51ad: $55
	add  b                                           ; $51ae: $80
	xor  d                                           ; $51af: $aa
	add  b                                           ; $51b0: $80
	ld   d, l                                        ; $51b1: $55
	rlca                                             ; $51b2: $07
	xor  a                                           ; $51b3: $af
	xor  b                                           ; $51b4: $a8
	ld   a, e                                        ; $51b5: $7b
	ld   b, b                                        ; $51b6: $40
	rst  JumpTable                                         ; $51b7: $df
	nop                                              ; $51b8: $00
	or   [hl]                                        ; $51b9: $b6
	ld   d, l                                        ; $51ba: $55
	add  b                                           ; $51bb: $80
	xor  d                                           ; $51bc: $aa
	inc  d                                           ; $51bd: $14
	ld   d, a                                        ; $51be: $57
	ld   d, h                                        ; $51bf: $54
	cp   h                                           ; $51c0: $bc
	and  b                                           ; $51c1: $a0
	rst  $20                                         ; $51c2: $e7
	nop                                              ; $51c3: $00
	ccf                                              ; $51c4: $3f
	nop                                              ; $51c5: $00
	ld   hl, sp+$00                                  ; $51c6: $f8 $00
	ret  nz                                          ; $51c8: $c0

	nop                                              ; $51c9: $00
	and  b                                           ; $51ca: $a0
	ld   d, b                                        ; $51cb: $50
	ldh  a, [$80]                                    ; $51cc: $f0 $80
	sub  b                                           ; $51ce: $90
	nop                                              ; $51cf: $00
	ldh  a, [rP1]                                    ; $51d0: $f0 $00
	ldh  [$84], a                                    ; $51d2: $e0 $84
	nop                                              ; $51d4: $00
	ld   [bc], a                                     ; $51d5: $02
	ld   [hl], b                                     ; $51d6: $70
	adc  h                                           ; $51d7: $8c
	ld   bc, $6d81                                   ; $51d8: $01 $81 $6d
	inc  bc                                          ; $51db: $03
	ld   h, l                                        ; $51dc: $65
	dec  [hl]                                        ; $51dd: $35
	ccf                                              ; $51de: $3f
	cp   a                                           ; $51df: $bf
	add  c                                           ; $51e0: $81
	or   h                                           ; $51e1: $b4
	inc  b                                           ; $51e2: $04
	add  h                                           ; $51e3: $84
	adc  a                                           ; $51e4: $8f
	rst  $28                                         ; $51e5: $ef
	pop  hl                                          ; $51e6: $e1
	pop  af                                          ; $51e7: $f1
	add  d                                           ; $51e8: $82
	db   $10                                         ; $51e9: $10
	add  b                                           ; $51ea: $80
	ld   a, a                                        ; $51eb: $7f
	add  b                                           ; $51ec: $80
	call nz, Call_080_4482                           ; $51ed: $c4 $82 $44
	add  b                                           ; $51f0: $80
	rst  $38                                         ; $51f1: $ff
	add  b                                           ; $51f2: $80

jr_080_51f3:
	db   $10                                         ; $51f3: $10
	add  b                                           ; $51f4: $80
	add  d                                           ; $51f5: $82
	add  b                                           ; $51f6: $80
	sbc  a                                           ; $51f7: $9f
	add  b                                           ; $51f8: $80
	ret  nc                                          ; $51f9: $d0

	add  d                                           ; $51fa: $82
	db   $10                                         ; $51fb: $10
	add  b                                           ; $51fc: $80
	rra                                              ; $51fd: $1f
	add  b                                           ; $51fe: $80
	ldh  [c], a                                      ; $51ff: $e2
	add  b                                           ; $5200: $80
	add  d                                           ; $5201: $82
	add  b                                           ; $5202: $80
	db   $10                                         ; $5203: $10
	add  [hl]                                        ; $5204: $86
	ld   b, b                                        ; $5205: $40
	add  b                                           ; $5206: $80
	ldh  a, [$81]                                    ; $5207: $f0 $81
	nop                                              ; $5209: $00
	add  l                                           ; $520a: $85
	rst  $38                                         ; $520b: $ff
	inc  b                                           ; $520c: $04
	ld   a, a                                        ; $520d: $7f
	scf                                              ; $520e: $37
	ld   c, a                                        ; $520f: $4f
	ld   c, b                                        ; $5210: $48
	ld   c, a                                        ; $5211: $4f
	add  d                                           ; $5212: $82
	sbc  $03                                         ; $5213: $de $03
	inc  e                                           ; $5215: $1c
	call c, $fec1                                    ; $5216: $dc $c1 $fe
	add  h                                           ; $5219: $84
	rst  $38                                         ; $521a: $ff
	ld   bc, $ff00                                   ; $521b: $01 $00 $ff
	add  b                                           ; $521e: $80
	and  $80                                         ; $521f: $e6 $80
	or   $06                                         ; $5221: $f6 $06
	sbc  a                                           ; $5223: $9f
	ld   [hl], b                                     ; $5224: $70
	sbc  h                                           ; $5225: $9c
	ld   [hl], b                                     ; $5226: $70
	rlca                                             ; $5227: $07
	ld   hl, sp-$04                                  ; $5228: $f8 $fc
	add  c                                           ; $522a: $81
	rst  $38                                         ; $522b: $ff
	ld   bc, $ff00                                   ; $522c: $01 $00 $ff
	add  b                                           ; $522f: $80
	db   $eb                                         ; $5230: $eb
	add  b                                           ; $5231: $80
	ld   l, e                                        ; $5232: $6b
	nop                                              ; $5233: $00
	rst  $38                                         ; $5234: $ff
	add  c                                           ; $5235: $81
	nop                                              ; $5236: $00
	inc  b                                           ; $5237: $04
	ldh  [rP1], a                                    ; $5238: $e0 $00
	ld   [hl], b                                     ; $523a: $70
	add  b                                           ; $523b: $80
	ldh  a, [$80]                                    ; $523c: $f0 $80
	ldh  [$80], a                                    ; $523e: $e0 $80
	ld   h, b                                        ; $5240: $60
	add  c                                           ; $5241: $81
	ld   b, b                                        ; $5242: $40
	ld   bc, $550a                                   ; $5243: $01 $0a $55
	add  b                                           ; $5246: $80
	xor  d                                           ; $5247: $aa
	add  b                                           ; $5248: $80
	ld   d, l                                        ; $5249: $55
	add  b                                           ; $524a: $80
	xor  d                                           ; $524b: $aa
	add  b                                           ; $524c: $80
	ld   d, l                                        ; $524d: $55
	add  b                                           ; $524e: $80
	xor  d                                           ; $524f: $aa
	add  b                                           ; $5250: $80
	ld   d, l                                        ; $5251: $55
	add  b                                           ; $5252: $80
	xor  d                                           ; $5253: $aa
	add  b                                           ; $5254: $80
	push de                                          ; $5255: $d5
	add  b                                           ; $5256: $80
	xor  d                                           ; $5257: $aa
	add  b                                           ; $5258: $80
	ld   d, l                                        ; $5259: $55
	add  b                                           ; $525a: $80
	xor  d                                           ; $525b: $aa
	add  b                                           ; $525c: $80
	ld   d, l                                        ; $525d: $55
	add  b                                           ; $525e: $80
	xor  d                                           ; $525f: $aa
	add  b                                           ; $5260: $80
	ld   d, l                                        ; $5261: $55
	add  b                                           ; $5262: $80
	xor  d                                           ; $5263: $aa
	nop                                              ; $5264: $00
	rra                                              ; $5265: $1f
	add  d                                           ; $5266: $82
	ld   d, b                                        ; $5267: $50
	nop                                              ; $5268: $00
	db   $10                                         ; $5269: $10
	add  b                                           ; $526a: $80
	jr   nc, jr_080_51f3                             ; $526b: $30 $86

	nop                                              ; $526d: $00
	add  b                                           ; $526e: $80
	ld   d, b                                        ; $526f: $50
	add  b                                           ; $5270: $80
	and  b                                           ; $5271: $a0
	add  b                                           ; $5272: $80
	ld   d, b                                        ; $5273: $50
	add  b                                           ; $5274: $80
	and  b                                           ; $5275: $a0
	add  b                                           ; $5276: $80
	ld   d, b                                        ; $5277: $50
	add  b                                           ; $5278: $80
	and  b                                           ; $5279: $a0
	add  b                                           ; $527a: $80
	ld   d, b                                        ; $527b: $50
	add  b                                           ; $527c: $80
	and  b                                           ; $527d: $a0
	add  b                                           ; $527e: $80
	nop                                              ; $527f: $00
	dec  b                                           ; $5280: $05
	ccf                                              ; $5281: $3f
	nop                                              ; $5282: $00
	scf                                              ; $5283: $37
	rlca                                             ; $5284: $07
	rst  $38                                         ; $5285: $ff
	ccf                                              ; $5286: $3f
	add  b                                           ; $5287: $80
	jr   c, jr_080_5291                              ; $5288: $38 $07

	ld   b, e                                        ; $528a: $43
	inc  bc                                          ; $528b: $03
	cp   e                                           ; $528c: $bb
	ld   a, [hl-]                                    ; $528d: $3a
	cp   b                                           ; $528e: $b8
	cp   c                                           ; $528f: $b9
	rra                                              ; $5290: $1f

jr_080_5291:
	nop                                              ; $5291: $00
	add  c                                           ; $5292: $81
	ldh  [$80], a                                    ; $5293: $e0 $80
	add  a                                           ; $5295: $87
	add  b                                           ; $5296: $80
	ld   a, h                                        ; $5297: $7c
	add  b                                           ; $5298: $80
	call nz, Call_080_4480                           ; $5299: $c4 $80 $44
	add  b                                           ; $529c: $80
	ld   c, a                                        ; $529d: $4f
	add  b                                           ; $529e: $80
	ld   [hl], b                                     ; $529f: $70
	add  b                                           ; $52a0: $80
	rlca                                             ; $52a1: $07
	add  b                                           ; $52a2: $80
	ld   a, b                                        ; $52a3: $78
	add  b                                           ; $52a4: $80
	sub  b                                           ; $52a5: $90
	add  b                                           ; $52a6: $80
	db   $10                                         ; $52a7: $10
	add  b                                           ; $52a8: $80
	ld   de, $7a80                                   ; $52a9: $11 $80 $7a
	add  d                                           ; $52ac: $82
	add  d                                           ; $52ad: $82
	add  b                                           ; $52ae: $80

jr_080_52af:
	ret  nz                                          ; $52af: $c0

	add  h                                           ; $52b0: $84
	ld   b, b                                        ; $52b1: $40
	add  b                                           ; $52b2: $80
	ldh  [$84], a                                    ; $52b3: $e0 $84
	nop                                              ; $52b5: $00
	inc  bc                                          ; $52b6: $03
	pop  af                                          ; $52b7: $f1
	ld   de, $bf1f                                   ; $52b8: $11 $1f $bf
	add  c                                           ; $52bb: $81
	and  h                                           ; $52bc: $a4
	ld   [bc], a                                     ; $52bd: $02
	inc  b                                           ; $52be: $04
	inc  e                                           ; $52bf: $1c
	db   $fc                                         ; $52c0: $fc
	add  b                                           ; $52c1: $80
	rst  $20                                         ; $52c2: $e7
	add  b                                           ; $52c3: $80
	ldh  [$80], a                                    ; $52c4: $e0 $80
	rst  $38                                         ; $52c6: $ff
	add  b                                           ; $52c7: $80
	sub  b                                           ; $52c8: $90
	add  b                                           ; $52c9: $80
	ldh  a, [$80]                                    ; $52ca: $f0 $80
	ld   b, a                                        ; $52cc: $47
	add  b                                           ; $52cd: $80
	ld   b, h                                        ; $52ce: $44
	add  b                                           ; $52cf: $80
	inc  b                                           ; $52d0: $04
	dec  b                                           ; $52d1: $05
	rst  $38                                         ; $52d2: $ff
	rst  $20                                         ; $52d3: $e7

jr_080_52d4:
	jr   jr_080_52f2                                 ; $52d4: $18 $1c

	db   $fc                                         ; $52d6: $fc
	ldh  [$82], a                                    ; $52d7: $e0 $82
	add  d                                           ; $52d9: $82
	add  b                                           ; $52da: $80
	ei                                               ; $52db: $fb
	add  h                                           ; $52dc: $84
	db   $10                                         ; $52dd: $10
	ld   [bc], a                                     ; $52de: $02
	ccf                                              ; $52df: $3f
	ld   c, a                                        ; $52e0: $4f
	ld   [hl], b                                     ; $52e1: $70
	add  e                                           ; $52e2: $83
	nop                                              ; $52e3: $00
	add  b                                           ; $52e4: $80
	ret  nz                                          ; $52e5: $c0

	add  h                                           ; $52e6: $84
	ld   b, b                                        ; $52e7: $40
	add  b                                           ; $52e8: $80
	ldh  [rSC], a                                    ; $52e9: $e0 $02
	jr   nc, @+$33                                   ; $52eb: $30 $31

	cp   $80                                         ; $52ed: $fe $80
	ld   a, $82                                      ; $52ef: $3e $82
	nop                                              ; $52f1: $00

jr_080_52f2:
	ld   [$00c0], sp                                 ; $52f2: $08 $c0 $00
	ret  nz                                          ; $52f5: $c0

	nop                                              ; $52f6: $00
	sbc  h                                           ; $52f7: $9c
	nop                                              ; $52f8: $00
	ld   a, e                                        ; $52f9: $7b
	nop                                              ; $52fa: $00
	ld   d, c                                        ; $52fb: $51
	add  c                                           ; $52fc: $81
	or   [hl]                                        ; $52fd: $b6
	adc  d                                           ; $52fe: $8a
	nop                                              ; $52ff: $00
	add  d                                           ; $5300: $82
	ld   l, d                                        ; $5301: $6a
	adc  d                                           ; $5302: $8a
	nop                                              ; $5303: $00
	nop                                              ; $5304: $00
	rst  $38                                         ; $5305: $ff
	rst  $38                                         ; $5306: $ff

jr_080_5307:
	nop                                              ; $5307: $00
	rst  $38                                         ; $5308: $ff
	nop                                              ; $5309: $00
	rst  $38                                         ; $530a: $ff
	nop                                              ; $530b: $00
	rst  $38                                         ; $530c: $ff
	nop                                              ; $530d: $00
	rst  $38                                         ; $530e: $ff
	nop                                              ; $530f: $00
	rst  $38                                         ; $5310: $ff
	nop                                              ; $5311: $00
	rst  $38                                         ; $5312: $ff
	nop                                              ; $5313: $00
	rst  $38                                         ; $5314: $ff
	nop                                              ; $5315: $00
	add  l                                           ; $5316: $85
	nop                                              ; $5317: $00
	ld   sp, hl                                      ; $5318: $f9
	nop                                              ; $5319: $00
	add  b                                           ; $531a: $80
	nop                                              ; $531b: $00
	add  b                                           ; $531c: $80
	ld   [$0480], sp                                 ; $531d: $08 $80 $04
	add  b                                           ; $5320: $80
	ld   a, [bc]                                     ; $5321: $0a
	add  b                                           ; $5322: $80
	dec  b                                           ; $5323: $05
	add  b                                           ; $5324: $80
	ld   a, [bc]                                     ; $5325: $0a
	add  b                                           ; $5326: $80
	inc  b                                           ; $5327: $04
	add  b                                           ; $5328: $80
	ld   a, [bc]                                     ; $5329: $0a
	add  b                                           ; $532a: $80
	nop                                              ; $532b: $00
	add  b                                           ; $532c: $80
	jr   z, jr_080_52af                              ; $532d: $28 $80

	ld   d, h                                        ; $532f: $54
	add  b                                           ; $5330: $80
	xor  b                                           ; $5331: $a8
	add  b                                           ; $5332: $80
	ld   d, b                                        ; $5333: $50
	add  b                                           ; $5334: $80
	adc  b                                           ; $5335: $88
	add  b                                           ; $5336: $80
	nop                                              ; $5337: $00
	add  b                                           ; $5338: $80
	ld   a, [bc]                                     ; $5339: $0a
	ld   bc, $0502                                   ; $533a: $01 $02 $05
	add  b                                           ; $533d: $80
	ld   b, $02                                      ; $533e: $06 $02
	inc  bc                                          ; $5340: $03
	rlca                                             ; $5341: $07
	inc  bc                                          ; $5342: $03
	add  a                                           ; $5343: $87
	nop                                              ; $5344: $00
	ld   b, $01                                      ; $5345: $06 $01
	rst  $38                                         ; $5347: $ff
	ld   bc, $fe00                                   ; $5348: $01 $00 $fe
	rst  $38                                         ; $534b: $ff
	cp   $87                                         ; $534c: $fe $87
	nop                                              ; $534e: $00
	ld   [bc], a                                     ; $534f: $02
	ret  nz                                          ; $5350: $c0

	ld   h, b                                        ; $5351: $60
	jr   nz, jr_080_52d4                             ; $5352: $20 $80

	ld   b, b                                        ; $5354: $40
	nop                                              ; $5355: $00
	add  b                                           ; $5356: $80
	adc  h                                           ; $5357: $8c
	nop                                              ; $5358: $00
	add  b                                           ; $5359: $80
	ld   bc, $0003                                   ; $535a: $01 $03 $00
	ld   bc, $0100                                   ; $535d: $01 $00 $01
	add  b                                           ; $5360: $80
	dec  b                                           ; $5361: $05
	add  b                                           ; $5362: $80
	ld   [$100b], sp                                 ; $5363: $08 $0b $10
	jr   jr_080_53b1                                 ; $5366: $18 $49

	ld   h, e                                        ; $5368: $63
	and  c                                           ; $5369: $a1
	jp   $8948                                       ; $536a: $c3 $48 $89


	sbc  c                                           ; $536d: $99
	add  hl, de                                      ; $536e: $19

jr_080_536f:
	sbc  h                                           ; $536f: $9c
	db   $dd                                         ; $5370: $dd
	add  b                                           ; $5371: $80
	call c, $cc80                                    ; $5372: $dc $80 $cc
	add  b                                           ; $5375: $80
	adc  $03                                         ; $5376: $ce $03
	ld   e, b                                        ; $5378: $58
	jr   jr_080_5307                                 ; $5379: $18 $8c

	sbc  h                                           ; $537b: $9c
	add  b                                           ; $537c: $80
	sbc  [hl]                                        ; $537d: $9e
	rlca                                             ; $537e: $07
	ld   b, $9f                                      ; $537f: $06 $9f
	ret  z                                           ; $5381: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5382: $cf
	ret  z                                           ; $5383: $c8

	ret                                              ; $5384: $c9


	jr   nz, jr_080_536f                             ; $5385: $20 $e8

	add  b                                           ; $5387: $80
	db   $e3                                         ; $5388: $e3
	ld   [de], a                                     ; $5389: $12
	ld   h, a                                        ; $538a: $67
	rst  JumpTable                                         ; $538b: $df
	ld   a, $bf                                      ; $538c: $3e $bf
	dec  a                                           ; $538e: $3d
	cp   a                                           ; $538f: $bf
	ld   a, h                                        ; $5390: $7c
	ld   a, a                                        ; $5391: $7f

jr_080_5392:
	ld   hl, sp-$01                                  ; $5392: $f8 $ff
	ei                                               ; $5394: $fb
	cp   $e2                                         ; $5395: $fe $e2
	db   $fc                                         ; $5397: $fc
	sbc  h                                           ; $5398: $9c
	ld   hl, sp-$64                                  ; $5399: $f8 $9c
	push af                                          ; $539b: $f5
	ld   de, $f583                                   ; $539c: $11 $83 $f5
	jr   jr_080_5392                                 ; $539f: $18 $f1

	add  h                                           ; $53a1: $84
	add  b                                           ; $53a2: $80
	stop                                             ; $53a3: $10 $00
	jr   nc, jr_080_53a7                             ; $53a5: $30 $00

jr_080_53a7:
	ld   h, b                                        ; $53a7: $60
	ld   a, a                                        ; $53a8: $7f
	rst  $38                                         ; $53a9: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53aa: $cf
	rst  $38                                         ; $53ab: $ff
	rst  $28                                         ; $53ac: $ef
	rst  $38                                         ; $53ad: $ff
	rra                                              ; $53ae: $1f
	rst  $38                                         ; $53af: $ff
	rrca                                             ; $53b0: $0f

jr_080_53b1:
	ccf                                              ; $53b1: $3f
	jr   nc, @-$3e                                   ; $53b2: $30 $c0

	add  e                                           ; $53b4: $83
	ld   h, e                                        ; $53b5: $63
	rlca                                             ; $53b6: $07
	scf                                              ; $53b7: $37
	rst  $28                                         ; $53b8: $ef
	add  c                                           ; $53b9: $81
	rst  $38                                         ; $53ba: $ff
	ld   [bc], a                                     ; $53bb: $02
	sub  d                                           ; $53bc: $92
	sub  [hl]                                        ; $53bd: $96
	ei                                               ; $53be: $fb
	add  c                                           ; $53bf: $81
	rst  $38                                         ; $53c0: $ff
	ld   [bc], a                                     ; $53c1: $02
	ld   h, h                                        ; $53c2: $64
	ld   h, l                                        ; $53c3: $65
	cp   $81                                         ; $53c4: $fe $81
	rst  $38                                         ; $53c6: $ff
	nop                                              ; $53c7: $00
	ldh  a, [$81]                                    ; $53c8: $f0 $81
	rst  $38                                         ; $53ca: $ff
	dec  b                                           ; $53cb: $05
	sbc  c                                           ; $53cc: $99
	sbc  a                                           ; $53cd: $9f
	push af                                          ; $53ce: $f5
	rst  $38                                         ; $53cf: $ff
	db   $fc                                         ; $53d0: $fc
	rst  $38                                         ; $53d1: $ff
	add  b                                           ; $53d2: $80
	rst  ToBoot                                         ; $53d3: $c7
	ld   a, [bc]                                     ; $53d4: $0a
	db   $fd                                         ; $53d5: $fd
	rst  $38                                         ; $53d6: $ff
	cp   $ff                                         ; $53d7: $fe $ff
	db   $fc                                         ; $53d9: $fc
	rst  $38                                         ; $53da: $ff

jr_080_53db:
	ld   a, a                                        ; $53db: $7f
	rst  $38                                         ; $53dc: $ff
	ld   h, b                                        ; $53dd: $60
	ldh  [$7f], a                                    ; $53de: $e0 $7f
	add  c                                           ; $53e0: $81
	rst  $38                                         ; $53e1: $ff
	add  b                                           ; $53e2: $80
	ldh  a, [c]                                      ; $53e3: $f2
	dec  b                                           ; $53e4: $05
	ld   a, a                                        ; $53e5: $7f
	rst  $38                                         ; $53e6: $ff
	ccf                                              ; $53e7: $3f
	rst  $38                                         ; $53e8: $ff
	jr   nc, jr_080_53db                             ; $53e9: $30 $f0

	add  b                                           ; $53eb: $80
	rst  $38                                         ; $53ec: $ff
	add  b                                           ; $53ed: $80
	nop                                              ; $53ee: $00
	add  d                                           ; $53ef: $82
	rst  $38                                         ; $53f0: $ff
	ld   [bc], a                                     ; $53f1: $02
	jr   nc, jr_080_5432                             ; $53f2: $30 $3e

	pop  af                                          ; $53f4: $f1
	add  c                                           ; $53f5: $81
	rst  $38                                         ; $53f6: $ff
	add  b                                           ; $53f7: $80
	nop                                              ; $53f8: $00
	ld   bc, $8682                                   ; $53f9: $01 $82 $86
	add  b                                           ; $53fc: $80
	ld   b, $80                                      ; $53fd: $06 $80
	or   $01                                         ; $53ff: $f6 $01
	db   $fc                                         ; $5401: $fc
	ld   hl, sp-$80                                  ; $5402: $f8 $80
	inc  b                                           ; $5404: $04
	add  d                                           ; $5405: $82
	rst  $38                                         ; $5406: $ff
	ld   bc, $05fa                                   ; $5407: $01 $fa $05
	add  b                                           ; $540a: $80
	ld   a, [bc]                                     ; $540b: $0a
	add  b                                           ; $540c: $80
	dec  b                                           ; $540d: $05
	add  b                                           ; $540e: $80
	ld   a, [bc]                                     ; $540f: $0a
	add  b                                           ; $5410: $80
	dec  b                                           ; $5411: $05
	add  b                                           ; $5412: $80
	ld   a, [bc]                                     ; $5413: $0a
	add  b                                           ; $5414: $80
	dec  b                                           ; $5415: $05
	add  b                                           ; $5416: $80
	ld   a, [bc]                                     ; $5417: $0a
	add  b                                           ; $5418: $80
	dec  b                                           ; $5419: $05
	add  b                                           ; $541a: $80
	adc  d                                           ; $541b: $8a
	add  b                                           ; $541c: $80
	dec  b                                           ; $541d: $05
	add  b                                           ; $541e: $80
	and  d                                           ; $541f: $a2
	add  b                                           ; $5420: $80
	ld   d, l                                        ; $5421: $55
	add  b                                           ; $5422: $80
	xor  d                                           ; $5423: $aa
	add  b                                           ; $5424: $80
	ld   d, l                                        ; $5425: $55
	add  b                                           ; $5426: $80
	xor  d                                           ; $5427: $aa
	add  b                                           ; $5428: $80
	dec  b                                           ; $5429: $05
	add  b                                           ; $542a: $80
	adc  d                                           ; $542b: $8a
	add  b                                           ; $542c: $80
	ld   d, h                                        ; $542d: $54
	add  b                                           ; $542e: $80
	xor  d                                           ; $542f: $aa
	add  b                                           ; $5430: $80
	ld   d, l                                        ; $5431: $55

jr_080_5432:
	add  b                                           ; $5432: $80
	xor  d                                           ; $5433: $aa
	add  b                                           ; $5434: $80
	ld   d, l                                        ; $5435: $55
	add  b                                           ; $5436: $80
	xor  d                                           ; $5437: $aa
	add  b                                           ; $5438: $80
	nop                                              ; $5439: $00
	add  b                                           ; $543a: $80
	ld   [bc], a                                     ; $543b: $02
	add  b                                           ; $543c: $80
	inc  d                                           ; $543d: $14
	add  b                                           ; $543e: $80
	ld   a, [hl+]                                    ; $543f: $2a
	add  b                                           ; $5440: $80
	ld   d, l                                        ; $5441: $55
	add  b                                           ; $5442: $80
	xor  d                                           ; $5443: $aa
	add  b                                           ; $5444: $80
	ld   d, l                                        ; $5445: $55
	add  b                                           ; $5446: $80
	xor  d                                           ; $5447: $aa
	add  h                                           ; $5448: $84
	nop                                              ; $5449: $00
	add  b                                           ; $544a: $80
	inc  bc                                          ; $544b: $03
	add  b                                           ; $544c: $80
	ld   b, $11                                      ; $544d: $06 $11
	jr   jr_080_546d                                 ; $544f: $18 $1c

	inc  [hl]                                        ; $5451: $34
	jr   c, jr_080_54bc                              ; $5452: $38 $68

	ld   [hl], b                                     ; $5454: $70
	jr   nc, jr_080_548b                             ; $5455: $30 $34

	sub  $e6                                         ; $5457: $d6 $e6
	ld   h, a                                        ; $5459: $67
	rst  $10                                         ; $545a: $d7
	sub  a                                           ; $545b: $97
	ld   d, e                                        ; $545c: $53
	ld   d, c                                        ; $545d: $51
	ld   sp, $1838                                   ; $545e: $31 $38 $18
	add  b                                           ; $5461: $80
	inc  e                                           ; $5462: $1c
	inc  bc                                          ; $5463: $03
	rla                                              ; $5464: $17
	rrca                                             ; $5465: $0f
	ld   b, [hl]                                     ; $5466: $46
	ld   c, [hl]                                     ; $5467: $4e
	add  b                                           ; $5468: $80
	ld   c, $80                                      ; $5469: $0e $80
	rlca                                             ; $546b: $07
	add  b                                           ; $546c: $80

jr_080_546d:
	add  a                                           ; $546d: $87
	add  d                                           ; $546e: $82
	rst  $20                                         ; $546f: $e7
	add  b                                           ; $5470: $80
	ld   h, e                                        ; $5471: $63
	rlca                                             ; $5472: $07
	inc  bc                                          ; $5473: $03
	ld   [bc], a                                     ; $5474: $02
	dec  [hl]                                        ; $5475: $35
	ld   [hl], e                                     ; $5476: $73
	ld   c, a                                        ; $5477: $4f
	ld   [hl], a                                     ; $5478: $77
	daa                                              ; $5479: $27
	ld   h, a                                        ; $547a: $67
	add  b                                           ; $547b: $80
	ld   l, a                                        ; $547c: $6f
	add  b                                           ; $547d: $80
	sbc  a                                           ; $547e: $9f
	ld   bc, $9fdf                                   ; $547f: $01 $df $9f

Call_080_5482:
	add  c                                           ; $5482: $81
	rst  $38                                         ; $5483: $ff
	nop                                              ; $5484: $00
	ld   a, a                                        ; $5485: $7f
	add  b                                           ; $5486: $80
	ld   hl, sp-$80                                  ; $5487: $f8 $80
	pop  af                                          ; $5489: $f1
	add  hl, bc                                      ; $548a: $09

jr_080_548b:
	cp   $ff                                         ; $548b: $fe $ff
	cp   $ff                                         ; $548d: $fe $ff
	db   $fd                                         ; $548f: $fd
	rst  $38                                         ; $5490: $ff
	ld   a, [$f4fc]                                  ; $5491: $fa $fc $f4
	ldh  a, [$80]                                    ; $5494: $f0 $80
	ld   hl, sp+$05                                  ; $5496: $f8 $05
	add  b                                           ; $5498: $80
	ret  nz                                          ; $5499: $c0

	nop                                              ; $549a: $00
	ret  nz                                          ; $549b: $c0

	ld   a, [bc]                                     ; $549c: $0a
	adc  d                                           ; $549d: $8a
	add  b                                           ; $549e: $80
	nop                                              ; $549f: $00
	add  b                                           ; $54a0: $80
	dec  d                                           ; $54a1: $15
	add  b                                           ; $54a2: $80
	dec  hl                                          ; $54a3: $2b
	add  b                                           ; $54a4: $80
	ld   a, a                                        ; $54a5: $7f
	add  b                                           ; $54a6: $80
	rst  $38                                         ; $54a7: $ff
	ld   bc, $1911                                   ; $54a8: $01 $11 $19
	add  b                                           ; $54ab: $80
	rra                                              ; $54ac: $1f
	dec  b                                           ; $54ad: $05
	inc  bc                                          ; $54ae: $03
	rrca                                             ; $54af: $0f
	nop                                              ; $54b0: $00
	rlca                                             ; $54b1: $07
	ld   b, c                                        ; $54b2: $41
	ld   b, d                                        ; $54b3: $42
	add  b                                           ; $54b4: $80
	ldh  [$80], a                                    ; $54b5: $e0 $80
	ld   hl, sp-$80                                  ; $54b7: $f8 $80
	rst  $38                                         ; $54b9: $ff
	add  b                                           ; $54ba: $80
	ld   [hl], h                                     ; $54bb: $74

jr_080_54bc:
	add  d                                           ; $54bc: $82
	rst  $38                                         ; $54bd: $ff
	ld   [bc], a                                     ; $54be: $02
	dec  d                                           ; $54bf: $15
	rla                                              ; $54c0: $17
	ld   a, l                                        ; $54c1: $7d
	add  c                                           ; $54c2: $81
	ld   a, a                                        ; $54c3: $7f
	add  d                                           ; $54c4: $82
	rst  $38                                         ; $54c5: $ff
	ld   [hl+], a                                    ; $54c6: $22

jr_080_54c7:
	adc  a                                           ; $54c7: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54c8: $cf
	cp   h                                           ; $54c9: $bc
	rst  $38                                         ; $54ca: $ff
	ei                                               ; $54cb: $fb
	rst  $38                                         ; $54cc: $ff
	ret  z                                           ; $54cd: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54ce: $cf
	db   $fd                                         ; $54cf: $fd
	rst  $38                                         ; $54d0: $ff
	db   $fc                                         ; $54d1: $fc
	rst  $38                                         ; $54d2: $ff
	db   $fd                                         ; $54d3: $fd
	rst  $38                                         ; $54d4: $ff
	ei                                               ; $54d5: $fb
	rst  $38                                         ; $54d6: $ff
	ld   [hl], d                                     ; $54d7: $72
	push af                                          ; $54d8: $f5
	sbc  a                                           ; $54d9: $9f
	rst  $38                                         ; $54da: $ff
	rst  JumpTable                                         ; $54db: $df
	rst  $38                                         ; $54dc: $ff
	cp   b                                           ; $54dd: $b8
	ld   hl, sp+$7f                                  ; $54de: $f8 $7f
	rst  $38                                         ; $54e0: $ff
	ccf                                              ; $54e1: $3f
	rst  $38                                         ; $54e2: $ff

jr_080_54e3:
	rst  JumpTable                                         ; $54e3: $df
	rst  $38                                         ; $54e4: $ff
	rst  $28                                         ; $54e5: $ef
	rst  $38                                         ; $54e6: $ff
	jp   hl                                          ; $54e7: $e9


	rra                                              ; $54e8: $1f
	ld   sp, hl                                      ; $54e9: $f9
	add  c                                           ; $54ea: $81
	rst  $38                                         ; $54eb: $ff
	ld   [bc], a                                     ; $54ec: $02
	ld   c, h                                        ; $54ed: $4c
	ld   c, a                                        ; $54ee: $4f
	db   $fc                                         ; $54ef: $fc
	add  l                                           ; $54f0: $85
	rst  $38                                         ; $54f1: $ff
	ld   [bc], a                                     ; $54f2: $02
	ld   b, c                                        ; $54f3: $41
	pop  bc                                          ; $54f4: $c1

jr_080_54f5:
	ld   a, a                                        ; $54f5: $7f
	add  c                                           ; $54f6: $81
	rst  $38                                         ; $54f7: $ff
	add  b                                           ; $54f8: $80
	ldh  [$87], a                                    ; $54f9: $e0 $87
	rst  $38                                         ; $54fb: $ff
	add  l                                           ; $54fc: $85
	nop                                              ; $54fd: $00
	ld   [$3bfd], sp                                 ; $54fe: $08 $fd $3b
	ld   [hl-], a                                    ; $5501: $32
	db   $ec                                         ; $5502: $ec
	ret  z                                           ; $5503: $c8

	or   b                                           ; $5504: $b0
	jr   nz, jr_080_54c7                             ; $5505: $20 $c0

	add  b                                           ; $5507: $80
	cp   c                                           ; $5508: $b9
	nop                                              ; $5509: $00
	add  b                                           ; $550a: $80
	rlca                                             ; $550b: $07
	ld   [bc], a                                     ; $550c: $02
	add  hl, sp                                      ; $550d: $39
	ccf                                              ; $550e: $3f
	ld   b, $ad                                      ; $550f: $06 $ad
	nop                                              ; $5511: $00
	nop                                              ; $5512: $00
	rst  $38                                         ; $5513: $ff
	add  b                                           ; $5514: $80
	ld   bc, $c104                                   ; $5515: $01 $04 $c1
	rlca                                             ; $5518: $07
	ccf                                              ; $5519: $3f
	ld   bc, $8407                                   ; $551a: $01 $07 $84
	nop                                              ; $551d: $00
	ld   [bc], a                                     ; $551e: $02
	rlca                                             ; $551f: $07
	nop                                              ; $5520: $00
	rlca                                             ; $5521: $07
	adc  c                                           ; $5522: $89
	nop                                              ; $5523: $00
	inc  b                                           ; $5524: $04
	db   $fc                                         ; $5525: $fc
	nop                                              ; $5526: $00
	ld   [bc], a                                     ; $5527: $02
	ld   hl, sp+$06                                  ; $5528: $f8 $06
	sbc  l                                           ; $552a: $9d
	nop                                              ; $552b: $00
	rla                                              ; $552c: $17
	ld   d, e                                        ; $552d: $53
	db   $fc                                         ; $552e: $fc
	ld   a, [bc]                                     ; $552f: $0a
	ld   a, [$f414]                                  ; $5530: $fa $14 $f4
	db   $10                                         ; $5533: $10
	di                                               ; $5534: $f3
	ld   hl, $158e                                   ; $5535: $21 $8e $15
	ld   a, c                                        ; $5538: $79
	daa                                              ; $5539: $27
	rst  ToBoot                                         ; $553a: $c7
	cp   a                                           ; $553b: $bf
	ccf                                              ; $553c: $3f
	db   $10                                         ; $553d: $10
	jr   nc, jr_080_5540                             ; $553e: $30 $00

jr_080_5540:
	ld   h, b                                        ; $5540: $60
	db   $10                                         ; $5541: $10
	ret  nc                                          ; $5542: $d0

	jr   nc, jr_080_54f5                             ; $5543: $30 $b0

	add  b                                           ; $5545: $80
	ld   [hl], b                                     ; $5546: $70
	add  h                                           ; $5547: $84
	ldh  [$80], a                                    ; $5548: $e0 $80
	ld   a, b                                        ; $554a: $78
	add  b                                           ; $554b: $80
	ccf                                              ; $554c: $3f
	add  b                                           ; $554d: $80
	rrca                                             ; $554e: $0f
	add  d                                           ; $554f: $82
	inc  bc                                          ; $5550: $03
	add  b                                           ; $5551: $80
	ld   h, e                                        ; $5552: $63
	add  d                                           ; $5553: $82
	ld   a, e                                        ; $5554: $7b
	ld   bc, $707f                                   ; $5555: $01 $7f $70
	add  b                                           ; $5558: $80
	add  b                                           ; $5559: $80
	add  d                                           ; $555a: $82
	ldh  a, [$80]                                    ; $555b: $f0 $80
	jr   nc, jr_080_54e3                             ; $555d: $30 $84

	nop                                              ; $555f: $00
	nop                                              ; $5560: $00
	ldh  a, [$bd]                                    ; $5561: $f0 $bd
	nop                                              ; $5563: $00
	nop                                              ; $5564: $00
	rst  $38                                         ; $5565: $ff
	add  b                                           ; $5566: $80
	pop  bc                                          ; $5567: $c1
	dec  c                                           ; $5568: $0d
	ld   bc, $0119                                   ; $5569: $01 $19 $01
	ld   h, c                                        ; $556c: $61
	ld   bc, $3121                                   ; $556d: $01 $21 $31
	ld   bc, $2131                                   ; $5570: $01 $31 $21
	ld   bc, $0161                                   ; $5573: $01 $61 $01
	and  $ad                                         ; $5576: $e6 $ad
	nop                                              ; $5578: $00
	inc  d                                           ; $5579: $14
	ei                                               ; $557a: $fb
	rlca                                             ; $557b: $07
	inc  bc                                          ; $557c: $03
	inc  c                                           ; $557d: $0c

jr_080_557e:
	adc  c                                           ; $557e: $89
	sub  l                                           ; $557f: $95
	sbc  [hl]                                        ; $5580: $9e
	xor  [hl]                                        ; $5581: $ae
	dec  a                                           ; $5582: $3d
	ld   e, l                                        ; $5583: $5d
	ld   a, d                                        ; $5584: $7a
	cp   d                                           ; $5585: $ba
	db   $fd                                         ; $5586: $fd
	ld   a, l                                        ; $5587: $7d
	jp   c, $d2fa                                    ; $5588: $da $fa $d2

	cp   $04                                         ; $558b: $fe $04
	ld   c, $02                                      ; $558d: $0e $02
	add  c                                           ; $558f: $81
	ld   b, $08                                      ; $5590: $06 $08
	ld   [bc], a                                     ; $5592: $02
	ld   b, $0c                                      ; $5593: $06 $0c
	ld   c, $00                                      ; $5595: $0e $00
	inc  c                                           ; $5597: $0c
	nop                                              ; $5598: $00
	jr   @-$0f                                       ; $5599: $18 $ef

	add  l                                           ; $559b: $85
	nop                                              ; $559c: $00
	dec  b                                           ; $559d: $05
	ldh  [rAUD4LEN], a                               ; $559e: $e0 $20
	ld   [hl], h                                     ; $55a0: $74
	ld   c, h                                        ; $55a1: $4c
	ld   a, $39                                      ; $55a2: $3e $39
	add  b                                           ; $55a4: $80
	ld   b, a                                        ; $55a5: $47
	nop                                              ; $55a6: $00
	rst  $38                                         ; $55a7: $ff
	adc  c                                           ; $55a8: $89
	nop                                              ; $55a9: $00
	add  b                                           ; $55aa: $80
	ret  nz                                          ; $55ab: $c0

	ld   [bc], a                                     ; $55ac: $02
	ld   d, b                                        ; $55ad: $50
	or   b                                           ; $55ae: $b0
	ldh  [$85], a                                    ; $55af: $e0 $85
	rst  $38                                         ; $55b1: $ff
	dec  b                                           ; $55b2: $05
	ld   d, l                                        ; $55b3: $55
	rst  $38                                         ; $55b4: $ff
	nop                                              ; $55b5: $00
	rst  $38                                         ; $55b6: $ff
	xor  d                                           ; $55b7: $aa
	rst  $38                                         ; $55b8: $ff
	add  b                                           ; $55b9: $80
	nop                                              ; $55ba: $00
	add  [hl]                                        ; $55bb: $86
	ldh  [rTIMA], a                                  ; $55bc: $e0 $05
	ld   h, b                                        ; $55be: $60
	ldh  [rP1], a                                    ; $55bf: $e0 $00
	ret  nz                                          ; $55c1: $c0

	pop  bc                                          ; $55c2: $c1
	add  c                                           ; $55c3: $81
	add  b                                           ; $55c4: $80
	ld   bc, $7b8a                                   ; $55c5: $01 $8a $7b
	add  b                                           ; $55c8: $80
	sbc  e                                           ; $55c9: $9b
	add  b                                           ; $55ca: $80
	db   $eb                                         ; $55cb: $eb
	ld   bc, $202f                                   ; $55cc: $01 $2f $20
	adc  h                                           ; $55cf: $8c
	jr   nc, jr_080_55d2                             ; $55d0: $30 $00

jr_080_55d2:
	rrca                                             ; $55d2: $0f
	add  l                                           ; $55d3: $85
	nop                                              ; $55d4: $00
	add  b                                           ; $55d5: $80
	rst  $38                                         ; $55d6: $ff
	add  b                                           ; $55d7: $80
	nop                                              ; $55d8: $00
	add  d                                           ; $55d9: $82
	rst  $38                                         ; $55da: $ff
	add  b                                           ; $55db: $80
	ld   bc, $2001                                   ; $55dc: $01 $01 $20
	ld   h, b                                        ; $55df: $60
	add  d                                           ; $55e0: $82
	ld   h, c                                        ; $55e1: $61
	ld   bc, $80c0                                   ; $55e2: $01 $c0 $80
	add  b                                           ; $55e5: $80
	ld   b, b                                        ; $55e6: $40
	add  d                                           ; $55e7: $82
	rst  $38                                         ; $55e8: $ff
	add  b                                           ; $55e9: $80
	di                                               ; $55ea: $f3
	add  b                                           ; $55eb: $80
	ei                                               ; $55ec: $fb
	add  b                                           ; $55ed: $80
	ld   a, a                                        ; $55ee: $7f
	add  b                                           ; $55ef: $80
	sbc  a                                           ; $55f0: $9f
	add  b                                           ; $55f1: $80
	rst  $28                                         ; $55f2: $ef
	add  b                                           ; $55f3: $80
	inc  sp                                          ; $55f4: $33
	add  b                                           ; $55f5: $80
	sbc  h                                           ; $55f6: $9c
	add  b                                           ; $55f7: $80
	and  a                                           ; $55f8: $a7
	nop                                              ; $55f9: $00
	ccf                                              ; $55fa: $3f
	add  l                                           ; $55fb: $85
	jr   nc, jr_080_557e                             ; $55fc: $30 $80

	sub  b                                           ; $55fe: $90
	add  b                                           ; $55ff: $80
	ldh  [$80], a                                    ; $5600: $e0 $80
	ldh  a, [$80]                                    ; $5602: $f0 $80
	jr   nc, jr_080_5607                             ; $5604: $30 $01

	and  l                                           ; $5606: $a5

jr_080_5607:
	xor  d                                           ; $5607: $aa
	add  d                                           ; $5608: $82
	rst  $38                                         ; $5609: $ff
	ld   [bc], a                                     ; $560a: $02
	call c, $dffc                                    ; $560b: $dc $fc $df
	add  l                                           ; $560e: $85
	rst  $38                                         ; $560f: $ff
	add  b                                           ; $5610: $80
	ld   c, $82                                      ; $5611: $0e $82
	rst  $38                                         ; $5613: $ff
	ld   [bc], a                                     ; $5614: $02
	halt                                             ; $5615: $76
	ld   a, [hl]                                     ; $5616: $7e
	rst  $30                                         ; $5617: $f7
	add  l                                           ; $5618: $85
	rst  $38                                         ; $5619: $ff
	add  b                                           ; $561a: $80
	ld   bc, $fc80                                   ; $561b: $01 $80 $fc
	add  b                                           ; $561e: $80
	db   $fd                                         ; $561f: $fd
	add  b                                           ; $5620: $80
	inc  h                                           ; $5621: $24
	add  [hl]                                        ; $5622: $86
	rst  $38                                         ; $5623: $ff
	ld   bc, $d0df                                   ; $5624: $01 $df $d0
	add  b                                           ; $5627: $80
	ld   h, b                                        ; $5628: $60
	add  b                                           ; $5629: $80
	or   b                                           ; $562a: $b0
	add  b                                           ; $562b: $80
	nop                                              ; $562c: $00
	add  a                                           ; $562d: $87
	ldh  a, [rIE]                                    ; $562e: $f0 $ff
	nop                                              ; $5630: $00
	rst  $38                                         ; $5631: $ff
	nop                                              ; $5632: $00
	rst  $38                                         ; $5633: $ff
	nop                                              ; $5634: $00
	rst  $38                                         ; $5635: $ff
	nop                                              ; $5636: $00
	rst  $38                                         ; $5637: $ff
	nop                                              ; $5638: $00
	rst  $38                                         ; $5639: $ff
	nop                                              ; $563a: $00
	rst  $30                                         ; $563b: $f7
	nop                                              ; $563c: $00
	inc  sp                                          ; $563d: $33
	ld   bc, $0085                                   ; $563e: $01 $85 $00
	add  a                                           ; $5641: $87
	rrca                                             ; $5642: $0f
	nop                                              ; $5643: $00
	rst  ToBoot                                         ; $5644: $c7
	add  c                                           ; $5645: $81
	ccf                                              ; $5646: $3f
	ld   bc, $2028                                   ; $5647: $01 $28 $20
	add  b                                           ; $564a: $80
	rra                                              ; $564b: $1f
	adc  b                                           ; $564c: $88
	rst  $38                                         ; $564d: $ff
	add  b                                           ; $564e: $80
	ldh  [$80], a                                    ; $564f: $e0 $80
	rra                                              ; $5651: $1f
	adc  b                                           ; $5652: $88
	rst  $38                                         ; $5653: $ff
	add  b                                           ; $5654: $80
	ldh  [$80], a                                    ; $5655: $e0 $80
	rra                                              ; $5657: $1f
	adc  b                                           ; $5658: $88
	rst  $38                                         ; $5659: $ff
	add  b                                           ; $565a: $80
	ret  nz                                          ; $565b: $c0

	add  b                                           ; $565c: $80
	rra                                              ; $565d: $1f
	add  [hl]                                        ; $565e: $86
	rst  $38                                         ; $565f: $ff
	add  b                                           ; $5660: $80
	cp   $80                                         ; $5661: $fe $80
	ld   bc, $0502                                   ; $5663: $01 $02 $05
	push af                                          ; $5666: $f5
	rrca                                             ; $5667: $0f
	add  l                                           ; $5668: $85
	rst  $38                                         ; $5669: $ff
	add  b                                           ; $566a: $80
	ld   hl, sp+$01                                  ; $566b: $f8 $01
	inc  b                                           ; $566d: $04
	rlca                                             ; $566e: $07
	add  d                                           ; $566f: $82
	rst  $38                                         ; $5670: $ff
	nop                                              ; $5671: $00
	db   $fc                                         ; $5672: $fc
	add  e                                           ; $5673: $83
	rst  $38                                         ; $5674: $ff
	add  b                                           ; $5675: $80
	ldh  [rP1], a                                    ; $5676: $e0 $00
	rlca                                             ; $5678: $07
	add  b                                           ; $5679: $80
	rra                                              ; $567a: $1f
	add  c                                           ; $567b: $81
	rst  $38                                         ; $567c: $ff
	inc  bc                                          ; $567d: $03
	ld   a, [$0ff2]                                  ; $567e: $fa $f2 $0f
	rst  $38                                         ; $5681: $ff
	add  b                                           ; $5682: $80
	cp   $03                                         ; $5683: $fe $03
	add  b                                           ; $5685: $80
	add  c                                           ; $5686: $81
	ld   a, l                                        ; $5687: $7d
	ld   a, a                                        ; $5688: $7f
	add  h                                           ; $5689: $84
	rst  $38                                         ; $568a: $ff
	ld   bc, $6360                                   ; $568b: $01 $60 $63
	add  b                                           ; $568e: $80
	ld   hl, sp-$80                                  ; $568f: $f8 $80
	rlca                                             ; $5691: $07
	nop                                              ; $5692: $00
	rrca                                             ; $5693: $0f
	add  c                                           ; $5694: $81
	rst  $38                                         ; $5695: $ff
	add  b                                           ; $5696: $80
	rst  $30                                         ; $5697: $f7
	add  b                                           ; $5698: $80
	ldh  a, [rTAC]                                   ; $5699: $f0 $07
	add  hl, bc                                      ; $569b: $09
	rst  $38                                         ; $569c: $ff
	rst  ToBoot                                         ; $569d: $c7
	rst  $38                                         ; $569e: $ff
	ccf                                              ; $569f: $3f
	rlca                                             ; $56a0: $07
	rst  $20                                         ; $56a1: $e7
	rst  $38                                         ; $56a2: $ff
	add  d                                           ; $56a3: $82
	cp   $03                                         ; $56a4: $fe $03
	ret  nz                                          ; $56a6: $c0

	rst  JumpTable                                         ; $56a7: $df
	dec  a                                           ; $56a8: $3d
	ccf                                              ; $56a9: $3f
	add  d                                           ; $56aa: $82
	rst  $38                                         ; $56ab: $ff
	nop                                              ; $56ac: $00

jr_080_56ad:
	push af                                          ; $56ad: $f5
	add  e                                           ; $56ae: $83
	or   $80                                         ; $56af: $f6 $80
	ld   b, $00                                      ; $56b1: $06 $00
	ld   d, $83                                      ; $56b3: $16 $83
	or   $02                                         ; $56b5: $f6 $02
	sub  $f6                                         ; $56b7: $d6 $f6
	ret  nz                                          ; $56b9: $c0

	add  c                                           ; $56ba: $81
	ld   l, d                                        ; $56bb: $6a
	rlca                                             ; $56bc: $07

jr_080_56bd:
	ld   l, e                                        ; $56bd: $6b
	ld   l, b                                        ; $56be: $68
	ld   l, e                                        ; $56bf: $6b
	ld   h, l                                        ; $56c0: $65
	ld   [hl], b                                     ; $56c1: $70
	ld   [$2242], sp                                 ; $56c2: $08 $42 $22
	add  b                                           ; $56c5: $80
	ld   c, b                                        ; $56c6: $48
	ld   [bc], a                                     ; $56c7: $02
	add  b                                           ; $56c8: $80
	nop                                              ; $56c9: $00
	ld   hl, sp-$7d                                  ; $56ca: $f8 $83
	rst  ToBoot                                         ; $56cc: $c7
	nop                                              ; $56cd: $00
	add  $87                                         ; $56ce: $c6 $87
	rst  ToBoot                                         ; $56d0: $c7
	nop                                              ; $56d1: $00
	ld   bc, $fb80                                   ; $56d2: $01 $80 $fb
	ld   bc, $03c3                                   ; $56d5: $01 $c3 $03
	add  b                                           ; $56d8: $80
	db   $e4                                         ; $56d9: $e4
	add  b                                           ; $56da: $80
	sub  a                                           ; $56db: $97
	add  b                                           ; $56dc: $80
	dec  bc                                          ; $56dd: $0b
	add  b                                           ; $56de: $80
	nop                                              ; $56df: $00
	add  b                                           ; $56e0: $80
	add  e                                           ; $56e1: $83
	inc  bc                                          ; $56e2: $03
	nop                                              ; $56e3: $00
	ld   bc, $feff                                   ; $56e4: $01 $ff $fe
	add  b                                           ; $56e7: $80
	push af                                          ; $56e8: $f5
	add  b                                           ; $56e9: $80
	and  l                                           ; $56ea: $a5
	add  b                                           ; $56eb: $80
	ret  c                                           ; $56ec: $d8

	add  b                                           ; $56ed: $80
	ld   h, c                                        ; $56ee: $61
	add  b                                           ; $56ef: $80
	ld   a, b                                        ; $56f0: $78
	add  b                                           ; $56f1: $80
	xor  h                                           ; $56f2: $ac
	inc  bc                                          ; $56f3: $03
	ldh  a, [rAUD1LEN]                               ; $56f4: $f0 $11
	ei                                               ; $56f6: $fb
	ld   a, [de]                                     ; $56f7: $1a
	add  b                                           ; $56f8: $80
	ret                                              ; $56f9: $c9


	add  b                                           ; $56fa: $80
	ldh  a, [$80]                                    ; $56fb: $f0 $80
	db   $ed                                         ; $56fd: $ed
	add  b                                           ; $56fe: $80
	sub  h                                           ; $56ff: $94
	add  b                                           ; $5700: $80
	sbc  b                                           ; $5701: $98
	add  b                                           ; $5702: $80
	jr   nz, jr_080_5706                             ; $5703: $20 $01

	nop                                              ; $5705: $00

jr_080_5706:
	rst  $38                                         ; $5706: $ff
	add  e                                           ; $5707: $83
	rrca                                             ; $5708: $0f
	add  b                                           ; $5709: $80
	nop                                              ; $570a: $00
	add  a                                           ; $570b: $87
	rrca                                             ; $570c: $0f
	nop                                              ; $570d: $00
	rst  $38                                         ; $570e: $ff
	add  b                                           ; $570f: $80
	db   $fc                                         ; $5710: $fc
	ld   [bc], a                                     ; $5711: $02
	nop                                              ; $5712: $00
	inc  bc                                          ; $5713: $03
	add  e                                           ; $5714: $83
	add  c                                           ; $5715: $81
	cp   a                                           ; $5716: $bf
	inc  bc                                          ; $5717: $03
	cp   l                                           ; $5718: $bd
	cp   [hl]                                        ; $5719: $be
	or   h                                           ; $571a: $b4
	cp   b                                           ; $571b: $b8
	add  b                                           ; $571c: $80
	cp   h                                           ; $571d: $bc
	ld   [bc], a                                     ; $571e: $02
	ret  nz                                          ; $571f: $c0

	ldh  a, [rP1]                                    ; $5720: $f0 $00
	add  b                                           ; $5722: $80
	rrca                                             ; $5723: $0f
	add  b                                           ; $5724: $80
	add  $80                                         ; $5725: $c6 $80
	ldh  [$80], a                                    ; $5727: $e0 $80
	db   $ec                                         ; $5729: $ec
	add  b                                           ; $572a: $80
	jr   nc, jr_080_56ad                             ; $572b: $30 $80

	ld   [bc], a                                     ; $572d: $02
	add  b                                           ; $572e: $80
	nop                                              ; $572f: $00
	add  b                                           ; $5730: $80
	ccf                                              ; $5731: $3f
	add  b                                           ; $5732: $80
	add  sp, -$80                                    ; $5733: $e8 $80
	ret  nz                                          ; $5735: $c0

	add  b                                           ; $5736: $80

jr_080_5737:
	ret  nc                                          ; $5737: $d0

	add  b                                           ; $5738: $80
	ld   [hl+], a                                    ; $5739: $22
	add  b                                           ; $573a: $80
	jr   nc, jr_080_56bd                             ; $573b: $30 $80

	add  hl, de                                      ; $573d: $19
	add  b                                           ; $573e: $80
	nop                                              ; $573f: $00
	add  d                                           ; $5740: $82
	rst  $28                                         ; $5741: $ef
	add  b                                           ; $5742: $80
	ld   h, $80                                      ; $5743: $26 $80
	ldh  [$80], a                                    ; $5745: $e0 $80
	ld   a, [de]                                     ; $5747: $1a
	add  b                                           ; $5748: $80
	ld   bc, $0680                                   ; $5749: $01 $80 $06
	dec  b                                           ; $574c: $05
	ld   b, b                                        ; $574d: $40
	ld   e, h                                        ; $574e: $5c
	sbc  a                                           ; $574f: $9f
	sbc  e                                           ; $5750: $9b
	rst  $38                                         ; $5751: $ff
	rst  $20                                         ; $5752: $e7
	add  b                                           ; $5753: $80
	ei                                               ; $5754: $fb
	add  b                                           ; $5755: $80
	add  a                                           ; $5756: $87
	add  b                                           ; $5757: $80
	sbc  [hl]                                        ; $5758: $9e
	add  b                                           ; $5759: $80
	ld   e, d                                        ; $575a: $5a
	add  b                                           ; $575b: $80
	inc  b                                           ; $575c: $04
	add  b                                           ; $575d: $80
	nop                                              ; $575e: $00
	add  b                                           ; $575f: $80
	or   b                                           ; $5760: $b0
	add  b                                           ; $5761: $80
	daa                                              ; $5762: $27
	add  b                                           ; $5763: $80
	call z, $8580                                    ; $5764: $cc $80 $85
	add  b                                           ; $5767: $80
	pop  bc                                          ; $5768: $c1
	add  b                                           ; $5769: $80
	nop                                              ; $576a: $00
	add  b                                           ; $576b: $80
	inc  bc                                          ; $576c: $03
	dec  b                                           ; $576d: $05
	nop                                              ; $576e: $00
	rlca                                             ; $576f: $07
	rst  JumpTable                                         ; $5770: $df
	reti                                             ; $5771: $d9


	rst  $28                                         ; $5772: $ef
	xor  $80                                         ; $5773: $ee $80
	push hl                                          ; $5775: $e5
	add  b                                           ; $5776: $80
	rst  $38                                         ; $5777: $ff
	inc  bc                                          ; $5778: $03
	dec  hl                                          ; $5779: $2b
	ld   a, [hl+]                                    ; $577a: $2a
	rlca                                             ; $577b: $07
	ld   b, $80                                      ; $577c: $06 $80
	nop                                              ; $577e: $00
	ld   [bc], a                                     ; $577f: $02

jr_080_5780:
	ld   bc, $ffc0                                   ; $5780: $01 $c0 $ff
	add  b                                           ; $5783: $80
	cp   $09                                         ; $5784: $fe $09
	ld   a, h                                        ; $5786: $7c
	cp   $80                                         ; $5787: $fe $80
	cp   a                                           ; $5789: $bf
	dec  de                                          ; $578a: $1b
	sbc  a                                           ; $578b: $9f
	or   a                                           ; $578c: $b7
	rst  $30                                         ; $578d: $f7
	ld   c, a                                        ; $578e: $4f
	rrca                                             ; $578f: $0f
	add  b                                           ; $5790: $80
	adc  a                                           ; $5791: $8f
	ld   bc, $fbfc                                   ; $5792: $01 $fc $fb
	add  b                                           ; $5795: $80
	rst  ToBoot                                         ; $5796: $c7
	add  b                                           ; $5797: $80

jr_080_5798:
	rra                                              ; $5798: $1f
	nop                                              ; $5799: $00
	ccf                                              ; $579a: $3f
	add  e                                           ; $579b: $83
	rst  $38                                         ; $579c: $ff
	add  b                                           ; $579d: $80
	ret  nc                                          ; $579e: $d0

	inc  b                                           ; $579f: $04
	add  b                                           ; $57a0: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57a1: $cf
	ld   c, c                                        ; $57a2: $49
	or   $36                                         ; $57a3: $f6 $36
	add  e                                           ; $57a5: $83
	or   $04                                         ; $57a6: $f6 $04
	and  $f6                                         ; $57a8: $e6 $f6
	sub  [hl]                                        ; $57aa: $96
	halt                                             ; $57ab: $76
	ld   d, $81                                      ; $57ac: $16 $81
	or   $00                                         ; $57ae: $f6 $00
	jr   nz, jr_080_5737                             ; $57b0: $20 $85

	rst  $38                                         ; $57b2: $ff
	ld   [bc], a                                     ; $57b3: $02
	sub  e                                           ; $57b4: $93
	xor  a                                           ; $57b5: $af
	xor  [hl]                                        ; $57b6: $ae
	add  e                                           ; $57b7: $83
	xor  l                                           ; $57b8: $ad
	ld   bc, $c707                                   ; $57b9: $01 $07 $c7
	add  l                                           ; $57bc: $85
	add  $03                                         ; $57bd: $c6 $03
	rst  ToBoot                                         ; $57bf: $c7
	ld   b, a                                        ; $57c0: $47
	add  a                                           ; $57c1: $87
	add  [hl]                                        ; $57c2: $86
	add  c                                           ; $57c3: $81
	add  a                                           ; $57c4: $87
	add  [hl]                                        ; $57c5: $86
	nop                                              ; $57c6: $00
	ld   b, $80                                      ; $57c7: $06 $80
	nop                                              ; $57c9: $00
	ld   a, [hl]                                     ; $57ca: $7e
	ld   bc, $02fe                                   ; $57cb: $01 $fe $02
	inc  bc                                          ; $57ce: $03
	add  b                                           ; $57cf: $80
	ld   h, b                                        ; $57d0: $60
	add  b                                           ; $57d1: $80
	cp   b                                           ; $57d2: $b8
	add  b                                           ; $57d3: $80
	inc  b                                           ; $57d4: $04
	add  c                                           ; $57d5: $81
	nop                                              ; $57d6: $00
	rrca                                             ; $57d7: $0f
	inc  bc                                          ; $57d8: $03
	nop                                              ; $57d9: $00
	dec  c                                           ; $57da: $0d
	ld   bc, $0fff                                   ; $57db: $01 $ff $0f
	ld   sp, hl                                      ; $57de: $f9
	sbc  c                                           ; $57df: $99
	sbc  a                                           ; $57e0: $9f
	nop                                              ; $57e1: $00
	rlca                                             ; $57e2: $07
	nop                                              ; $57e3: $00
	rra                                              ; $57e4: $1f
	rlca                                             ; $57e5: $07
	db   $fc                                         ; $57e6: $fc
	inc  e                                           ; $57e7: $1c
	add  b                                           ; $57e8: $80
	ld   [hl], a                                     ; $57e9: $77
	add  b                                           ; $57ea: $80
	call c, $7080                                    ; $57eb: $dc $80 $70
	add  b                                           ; $57ee: $80
	ret  nz                                          ; $57ef: $c0

	add  a                                           ; $57f0: $87
	nop                                              ; $57f1: $00
	add  b                                           ; $57f2: $80
	ldh  [$80], a                                    ; $57f3: $e0 $80
	ld   a, b                                        ; $57f5: $78
	add  b                                           ; $57f6: $80
	inc  a                                           ; $57f7: $3c
	add  b                                           ; $57f8: $80
	rrca                                             ; $57f9: $0f
	add  l                                           ; $57fa: $85
	nop                                              ; $57fb: $00
	nop                                              ; $57fc: $00
	jr   jr_080_5780                                 ; $57fd: $18 $81

	ld   hl, sp-$7e                                  ; $57ff: $f8 $82
	ld   sp, hl                                      ; $5801: $f9
	nop                                              ; $5802: $00
	ldh  [$85], a                                    ; $5803: $e0 $85
	nop                                              ; $5805: $00
	add  b                                           ; $5806: $80
	ld   [bc], a                                     ; $5807: $02
	ld   b, $c1                                      ; $5808: $06 $c1
	ld   bc, $8000                                   ; $580a: $01 $00 $80
	and  b                                           ; $580d: $a0
	add  b                                           ; $580e: $80
	ld   h, b                                        ; $580f: $60
	add  l                                           ; $5810: $85
	nop                                              ; $5811: $00
	add  b                                           ; $5812: $80
	jr   nz, jr_080_5816                             ; $5813: $20 $01

	ld   h, b                                        ; $5815: $60

jr_080_5816:
	jr   nz, jr_080_5798                             ; $5816: $20 $80

	and  b                                           ; $5818: $a0
	add  b                                           ; $5819: $80
	jr   nz, jr_080_581c                             ; $581a: $20 $00

jr_080_581c:
	ld   b, b                                        ; $581c: $40
	add  b                                           ; $581d: $80
	rlca                                             ; $581e: $07
	add  d                                           ; $581f: $82
	ld   bc, $0380                                   ; $5820: $01 $80 $03
	add  b                                           ; $5823: $80
	rlca                                             ; $5824: $07
	add  b                                           ; $5825: $80
	ld   c, $80                                      ; $5826: $0e $80
	inc  e                                           ; $5828: $1c
	ld   bc, $2138                                   ; $5829: $01 $38 $21
	add  b                                           ; $582c: $80
	ld   hl, sp-$7c                                  ; $582d: $f8 $84
	ld   sp, hl                                      ; $582f: $f9
	add  b                                           ; $5830: $80
	ld   hl, sp-$7d                                  ; $5831: $f8 $83
	ld   sp, hl                                      ; $5833: $f9
	inc  b                                           ; $5834: $04
	inc  b                                           ; $5835: $04
	add  b                                           ; $5836: $80
	adc  b                                           ; $5837: $88
	add  b                                           ; $5838: $80
	add  d                                           ; $5839: $82
	add  b                                           ; $583a: $80
	nop                                              ; $583b: $00
	add  b                                           ; $583c: $80
	add  b                                           ; $583d: $80
	add  d                                           ; $583e: $82
	and  b                                           ; $583f: $a0
	add  b                                           ; $5840: $80
	ld   [hl+], a                                    ; $5841: $22
	ld   bc, $2ca2                                   ; $5842: $01 $a2 $2c
	adc  l                                           ; $5845: $8d
	jr   nz, jr_080_5848                             ; $5846: $20 $00

jr_080_5848:
	ld   b, b                                        ; $5848: $40
	add  b                                           ; $5849: $80
	ld   [hl], b                                     ; $584a: $70
	add  b                                           ; $584b: $80
	ldh  [$80], a                                    ; $584c: $e0 $80
	ret  nz                                          ; $584e: $c0

	add  b                                           ; $584f: $80
	add  b                                           ; $5850: $80
	add  b                                           ; $5851: $80
	nop                                              ; $5852: $00
	add  b                                           ; $5853: $80
	add  b                                           ; $5854: $80
	add  b                                           ; $5855: $80
	ldh  a, [rSB]                                    ; $5856: $f0 $01
	db   $fc                                         ; $5858: $fc
	ld   [de], a                                     ; $5859: $12
	add  b                                           ; $585a: $80
	and  [hl]                                        ; $585b: $a6
	add  b                                           ; $585c: $80
	xor  [hl]                                        ; $585d: $ae
	add  b                                           ; $585e: $80
	ld   l, $84                                      ; $585f: $2e $84
	xor  [hl]                                        ; $5861: $ae
	add  b                                           ; $5862: $80
	ld   l, $02                                      ; $5863: $2e $02
	xor  [hl]                                        ; $5865: $ae
	and  b                                           ; $5866: $a0
	rra                                              ; $5867: $1f
	add  b                                           ; $5868: $80
	rlca                                             ; $5869: $07
	add  d                                           ; $586a: $82
	nop                                              ; $586b: $00
	ld   [bc], a                                     ; $586c: $02
	rrca                                             ; $586d: $0f
	nop                                              ; $586e: $00
	ldh  a, [$83]                                    ; $586f: $f0 $83
	nop                                              ; $5871: $00
	nop                                              ; $5872: $00
	add  hl, de                                      ; $5873: $19
	add  b                                           ; $5874: $80
	ld   hl, sp-$7d                                  ; $5875: $f8 $83
	ld   sp, hl                                      ; $5877: $f9
	nop                                              ; $5878: $00
	sbc  c                                           ; $5879: $99
	add  b                                           ; $587a: $80
	ld   a, b                                        ; $587b: $78
	add  e                                           ; $587c: $83
	ld   a, c                                        ; $587d: $79
	nop                                              ; $587e: $00
	xor  $82                                         ; $587f: $ee $82
	xor  [hl]                                        ; $5881: $ae
	add  b                                           ; $5882: $80
	ld   l, $84                                      ; $5883: $2e $84
	xor  [hl]                                        ; $5885: $ae
	add  b                                           ; $5886: $80
	ld   l, $02                                      ; $5887: $2e $02
	xor  [hl]                                        ; $5889: $ae
	ld   b, h                                        ; $588a: $44
	inc  b                                           ; $588b: $04
	add  b                                           ; $588c: $80
	inc  c                                           ; $588d: $0c
	inc  b                                           ; $588e: $04
	ld   e, $0e                                      ; $588f: $1e $0e
	rrca                                             ; $5891: $0f
	dec  de                                          ; $5892: $1b
	ld   a, e                                        ; $5893: $7b
	add  b                                           ; $5894: $80
	add  hl, hl                                      ; $5895: $29
	add  b                                           ; $5896: $80
	ld   e, $80                                      ; $5897: $1e $80
	inc  de                                          ; $5899: $13
	ld   bc, $0d0b                                   ; $589a: $01 $0b $0d
	add  b                                           ; $589d: $80
	ld   a, b                                        ; $589e: $78
	add  h                                           ; $589f: $84
	ld   a, c                                        ; $58a0: $79
	ld   bc, $f878                                   ; $58a1: $01 $78 $f8
	add  b                                           ; $58a4: $80
	ld   a, c                                        ; $58a5: $79
	add  b                                           ; $58a6: $80
	ld   sp, hl                                      ; $58a7: $f9
	ld   bc, $3f39                                   ; $58a8: $01 $39 $3f
	add  b                                           ; $58ab: $80
	add  a                                           ; $58ac: $87
	add  b                                           ; $58ad: $80
	ld   c, d                                        ; $58ae: $4a
	add  b                                           ; $58af: $80
	ld   d, b                                        ; $58b0: $50
	add  b                                           ; $58b1: $80
	cp   h                                           ; $58b2: $bc
	add  b                                           ; $58b3: $80
	rra                                              ; $58b4: $1f
	add  b                                           ; $58b5: $80
	ld   b, l                                        ; $58b6: $45
	add  b                                           ; $58b7: $80
	dec  c                                           ; $58b8: $0d
	ld   bc, $8385                                   ; $58b9: $01 $85 $83
	add  b                                           ; $58bc: $80
	ld   a, b                                        ; $58bd: $78
	add  b                                           ; $58be: $80
	add  hl, de                                      ; $58bf: $19
	add  b                                           ; $58c0: $80
	add  hl, sp                                      ; $58c1: $39
	add  b                                           ; $58c2: $80
	ld   e, c                                        ; $58c3: $59
	add  b                                           ; $58c4: $80
	jr   c, @-$7e                                    ; $58c5: $38 $80

	add  hl, sp                                      ; $58c7: $39
	add  b                                           ; $58c8: $80
	add  hl, de                                      ; $58c9: $19
	ld   bc, $0f09                                   ; $58ca: $01 $09 $0f
	add  b                                           ; $58cd: $80
	adc  h                                           ; $58ce: $8c
	add  b                                           ; $58cf: $80
	sub  h                                           ; $58d0: $94
	add  b                                           ; $58d1: $80
	rrca                                             ; $58d2: $0f
	add  b                                           ; $58d3: $80
	ld   d, a                                        ; $58d4: $57
	add  b                                           ; $58d5: $80
	ld   [$0180], sp                                 ; $58d6: $08 $80 $01
	add  b                                           ; $58d9: $80
	dec  de                                          ; $58da: $1b
	ld   bc, $2620                                   ; $58db: $01 $20 $26
	add  b                                           ; $58de: $80
	sbc  b                                           ; $58df: $98
	add  b                                           ; $58e0: $80
	sbc  c                                           ; $58e1: $99
	add  b                                           ; $58e2: $80
	add  hl, sp                                      ; $58e3: $39
	add  b                                           ; $58e4: $80
	adc  c                                           ; $58e5: $89
	add  b                                           ; $58e6: $80
	xor  c                                           ; $58e7: $a9
	add  b                                           ; $58e8: $80
	adc  b                                           ; $58e9: $88
	inc  bc                                          ; $58ea: $03
	ld   bc, $8004                                   ; $58eb: $01 $04 $80
	sub  d                                           ; $58ee: $92
	add  d                                           ; $58ef: $82
	xor  [hl]                                        ; $58f0: $ae
	add  b                                           ; $58f1: $80
	ld   l, $84                                      ; $58f2: $2e $84
	xor  [hl]                                        ; $58f4: $ae
	inc  bc                                          ; $58f5: $03
	ld   l, $ce                                      ; $58f6: $2e $ce
	ld   c, $ff                                      ; $58f8: $0e $ff
	add  e                                           ; $58fa: $83
	nop                                              ; $58fb: $00
	ld   [bc], a                                     ; $58fc: $02
	call nz, $3f04                                   ; $58fd: $c4 $04 $3f
	add  h                                           ; $5900: $84
	inc  c                                           ; $5901: $0c
	rlca                                             ; $5902: $07
	ccf                                              ; $5903: $3f
	rst  ToBoot                                         ; $5904: $c7
	nop                                              ; $5905: $00
	ld   [rROMB1], sp                                 ; $5906: $08 $00 $30
	nop                                              ; $5909: $00
	ret  nz                                          ; $590a: $c0

	add  c                                           ; $590b: $81
	nop                                              ; $590c: $00
	add  b                                           ; $590d: $80
	ld   bc, $0f80                                   ; $590e: $01 $80 $0f
	add  b                                           ; $5911: $80
	push af                                          ; $5912: $f5
	add  d                                           ; $5913: $82
	ld   c, $00                                      ; $5914: $0e $00
	rrca                                             ; $5916: $0f
	add  b                                           ; $5917: $80
	nop                                              ; $5918: $00
	inc  bc                                          ; $5919: $03
	ld   bc, $0131                                   ; $591a: $01 $31 $01
	pop  bc                                          ; $591d: $c1

jr_080_591e:
	add  b                                           ; $591e: $80
	ld   sp, $b002                                   ; $591f: $31 $02 $b0
	cp   d                                           ; $5922: $ba
	or   l                                           ; $5923: $b5
	add  d                                           ; $5924: $82
	jr   nz, jr_080_5927                             ; $5925: $20 $00

jr_080_5927:
	and  b                                           ; $5927: $a0
	add  b                                           ; $5928: $80
	jr   nz, jr_080_5936                             ; $5929: $20 $0b

	and  b                                           ; $592b: $a0
	or   b                                           ; $592c: $b0
	add  b                                           ; $592d: $80
	and  b                                           ; $592e: $a0
	sub  b                                           ; $592f: $90
	ldh  [rAUD4LEN], a                               ; $5930: $e0 $20
	ret  nc                                          ; $5932: $d0

	ld   d, b                                        ; $5933: $50
	rra                                              ; $5934: $1f
	ccf                                              ; $5935: $3f

jr_080_5936:
	ld   hl, $3f84                                   ; $5936: $21 $84 $3f
	rlca                                             ; $5939: $07
	rst  $38                                         ; $593a: $ff
	ld   l, a                                        ; $593b: $6f
	rra                                              ; $593c: $1f
	ld   a, [hl]                                     ; $593d: $7e
	inc  bc                                          ; $593e: $03
	inc  sp                                          ; $593f: $33
	dec  c                                           ; $5940: $0d
	call $00ff                                       ; $5941: $cd $ff $00
	rst  $38                                         ; $5944: $ff
	nop                                              ; $5945: $00
	rst  $38                                         ; $5946: $ff
	nop                                              ; $5947: $00
	rst  $38                                         ; $5948: $ff
	nop                                              ; $5949: $00
	rst  $38                                         ; $594a: $ff
	nop                                              ; $594b: $00
	rst  $38                                         ; $594c: $ff
	nop                                              ; $594d: $00
	rst  $38                                         ; $594e: $ff
	nop                                              ; $594f: $00
	rst  $38                                         ; $5950: $ff
	nop                                              ; $5951: $00
	push hl                                          ; $5952: $e5
	nop                                              ; $5953: $00
	ld   [hl], $01                                   ; $5954: $36 $01
	ld   [bc], a                                     ; $5956: $02
	nop                                              ; $5957: $00
	rrca                                             ; $5958: $0f
	nop                                              ; $5959: $00
	add  e                                           ; $595a: $83
	rrca                                             ; $595b: $0f
	ld   [bc], a                                     ; $595c: $02
	nop                                              ; $595d: $00
	rrca                                             ; $595e: $0f
	rlca                                             ; $595f: $07
	add  e                                           ; $5960: $83
	ld   [$6002], sp                                 ; $5961: $08 $02 $60
	sbc  a                                           ; $5964: $9f
	nop                                              ; $5965: $00
	add  e                                           ; $5966: $83
	sbc  a                                           ; $5967: $9f
	ld   [bc], a                                     ; $5968: $02
	nop                                              ; $5969: $00
	sbc  a                                           ; $596a: $9f
	nop                                              ; $596b: $00
	add  e                                           ; $596c: $83
	sbc  a                                           ; $596d: $9f
	ld   [bc], a                                     ; $596e: $02
	ld   h, b                                        ; $596f: $60
	rst  $38                                         ; $5970: $ff
	rlca                                             ; $5971: $07
	add  e                                           ; $5972: $83
	ld   hl, sp+$04                                  ; $5973: $f8 $04
	nop                                              ; $5975: $00
	rst  $38                                         ; $5976: $ff
	inc  b                                           ; $5977: $04
	ld   hl, sp-$04                                  ; $5978: $f8 $fc
	add  b                                           ; $597a: $80
	ldh  [rP1], a                                    ; $597b: $e0 $00
	nop                                              ; $597d: $00
	add  b                                           ; $597e: $80
	rst  $38                                         ; $597f: $ff
	nop                                              ; $5980: $00
	ret  nz                                          ; $5981: $c0

	add  b                                           ; $5982: $80
	ccf                                              ; $5983: $3f
	inc  b                                           ; $5984: $04
	ld   a, $fe                                      ; $5985: $3e $fe
	ldh  a, [rSVBK]                                  ; $5987: $f0 $70
	add  b                                           ; $5989: $80
	add  h                                           ; $598a: $84
	nop                                              ; $598b: $00
	inc  b                                           ; $598c: $04
	ret  nz                                          ; $598d: $c0

	ret  z                                           ; $598e: $c8

	ld   [$e0c0], sp                                 ; $598f: $08 $c0 $e0
	adc  c                                           ; $5992: $89
	jr   nz, jr_080_591e                             ; $5993: $20 $89

	nop                                              ; $5995: $00
	add  b                                           ; $5996: $80
	ld   bc, $0302                                   ; $5997: $01 $02 $03
	nop                                              ; $599a: $00
	inc  bc                                          ; $599b: $03
	add  b                                           ; $599c: $80
	nop                                              ; $599d: $00
	add  h                                           ; $599e: $84
	rst  $38                                         ; $599f: $ff
	nop                                              ; $59a0: $00
	nop                                              ; $59a1: $00
	add  e                                           ; $59a2: $83
	rst  $38                                         ; $59a3: $ff
	ld   bc, $ff00                                   ; $59a4: $01 $00 $ff
	add  b                                           ; $59a7: $80
	ld   c, $82                                      ; $59a8: $0e $82
	xor  $80                                         ; $59aa: $ee $80
	cp   $00                                         ; $59ac: $fe $00
	ld   e, $81                                      ; $59ae: $1e $81
	cp   $03                                         ; $59b0: $fe $03
	sbc  $fe                                         ; $59b2: $de $fe
	ld   e, $de                                      ; $59b4: $1e $de
	add  h                                           ; $59b6: $84
	ld   b, $82                                      ; $59b7: $06 $82
	rlca                                             ; $59b9: $07
	add  b                                           ; $59ba: $80
	ld   b, $80                                      ; $59bb: $06 $80
	inc  b                                           ; $59bd: $04
	inc  bc                                          ; $59be: $03
	nop                                              ; $59bf: $00
	ld   bc, $b3b2                                   ; $59c0: $01 $b2 $b3
	add  b                                           ; $59c3: $80
	ld   h, b                                        ; $59c4: $60

jr_080_59c5:
	add  b                                           ; $59c5: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59c6: $cf
	add  b                                           ; $59c7: $80
	sbc  a                                           ; $59c8: $9f
	add  b                                           ; $59c9: $80
	nop                                              ; $59ca: $00
	nop                                              ; $59cb: $00
	ccf                                              ; $59cc: $3f
	add  b                                           ; $59cd: $80
	ld   a, a                                        ; $59ce: $7f
	add  c                                           ; $59cf: $81
	rst  $38                                         ; $59d0: $ff
	inc  b                                           ; $59d1: $04
	ld   h, b                                        ; $59d2: $60
	rst  JumpTable                                         ; $59d3: $df
	jr   nz, jr_080_5a55                             ; $59d4: $20 $7f

	add  b                                           ; $59d6: $80
	add  c                                           ; $59d7: $81
	rst  JumpTable                                         ; $59d8: $df
	ld   [bc], a                                     ; $59d9: $02
	jr   nz, jr_080_5a5b                             ; $59da: $20 $7f

	add  b                                           ; $59dc: $80
	add  e                                           ; $59dd: $83
	rst  JumpTable                                         ; $59de: $df
	inc  b                                           ; $59df: $04
	ld   a, a                                        ; $59e0: $7f
	rst  $38                                         ; $59e1: $ff
	nop                                              ; $59e2: $00
	rst  $38                                         ; $59e3: $ff
	nop                                              ; $59e4: $00
	add  c                                           ; $59e5: $81
	rst  $38                                         ; $59e6: $ff
	ld   [bc], a                                     ; $59e7: $02
	nop                                              ; $59e8: $00
	rst  $38                                         ; $59e9: $ff
	nop                                              ; $59ea: $00
	add  h                                           ; $59eb: $84
	rst  $38                                         ; $59ec: $ff
	ld   [bc], a                                     ; $59ed: $02
	ccf                                              ; $59ee: $3f
	ld   b, b                                        ; $59ef: $40
	ld   a, a                                        ; $59f0: $7f
	add  d                                           ; $59f1: $82
	rst  $38                                         ; $59f2: $ff
	add  b                                           ; $59f3: $80
	nop                                              ; $59f4: $00
	add  h                                           ; $59f5: $84
	rst  $38                                         ; $59f6: $ff
	inc  bc                                          ; $59f7: $03
	dec  c                                           ; $59f8: $0d
	sbc  l                                           ; $59f9: $9d
	ld   e, l                                        ; $59fa: $5d
	db   $dd                                         ; $59fb: $dd
	add  d                                           ; $59fc: $82
	db   $fd                                         ; $59fd: $fd
	ld   bc, $0d15                                   ; $59fe: $01 $15 $0d
	add  b                                           ; $5a01: $80
	db   $fd                                         ; $5a02: $fd
	inc  b                                           ; $5a03: $04
	ei                                               ; $5a04: $fb
	rst  $38                                         ; $5a05: $ff
	rst  $30                                         ; $5a06: $f7
	rst  $38                                         ; $5a07: $ff
	inc  b                                           ; $5a08: $04
	adc  l                                           ; $5a09: $8d
	nop                                              ; $5a0a: $00
	add  b                                           ; $5a0b: $80
	ld   bc, $0080                                   ; $5a0c: $01 $80 $00
	add  d                                           ; $5a0f: $82
	ld   bc, $0080                                   ; $5a10: $01 $80 $00
	add  h                                           ; $5a13: $84
	ld   bc, $ff03                                   ; $5a14: $01 $03 $ff
	rrca                                             ; $5a17: $0f
	nop                                              ; $5a18: $00
	rrca                                             ; $5a19: $0f
	add  d                                           ; $5a1a: $82
	ld   [$0102], sp                                 ; $5a1b: $08 $02 $01
	ld   c, $07                                      ; $5a1e: $0e $07
	add  b                                           ; $5a20: $80
	dec  bc                                          ; $5a21: $0b
	inc  b                                           ; $5a22: $04
	rrca                                             ; $5a23: $0f
	rlca                                             ; $5a24: $07
	rrca                                             ; $5a25: $0f
	ld   l, b                                        ; $5a26: $68
	sbc  b                                           ; $5a27: $98
	add  b                                           ; $5a28: $80
	add  b                                           ; $5a29: $80
	add  b                                           ; $5a2a: $80
	ld   [bc], a                                     ; $5a2b: $02
	add  b                                           ; $5a2c: $80
	rlca                                             ; $5a2d: $07
	add  b                                           ; $5a2e: $80
	nop                                              ; $5a2f: $00
	add  h                                           ; $5a30: $84
	rst  $38                                         ; $5a31: $ff
	add  h                                           ; $5a32: $84
	nop                                              ; $5a33: $00
	add  b                                           ; $5a34: $80
	rst  $38                                         ; $5a35: $ff
	add  b                                           ; $5a36: $80
	nop                                              ; $5a37: $00
	add  h                                           ; $5a38: $84
	rst  $38                                         ; $5a39: $ff
	add  h                                           ; $5a3a: $84
	nop                                              ; $5a3b: $00
	add  b                                           ; $5a3c: $80
	ldh  a, [$80]                                    ; $5a3d: $f0 $80
	nop                                              ; $5a3f: $00
	add  h                                           ; $5a40: $84
	rst  $38                                         ; $5a41: $ff
	adc  b                                           ; $5a42: $88
	jr   nz, jr_080_59c5                             ; $5a43: $20 $80

	adc  a                                           ; $5a45: $8f
	add  d                                           ; $5a46: $82
	rst  $38                                         ; $5a47: $ff
	add  b                                           ; $5a48: $80
	nop                                              ; $5a49: $00
	add  b                                           ; $5a4a: $80
	dec  b                                           ; $5a4b: $05
	add  b                                           ; $5a4c: $80
	dec  a                                           ; $5a4d: $3d
	add  b                                           ; $5a4e: $80
	rst  $38                                         ; $5a4f: $ff
	add  b                                           ; $5a50: $80
	inc  bc                                          ; $5a51: $03
	add  d                                           ; $5a52: $82
	db   $fc                                         ; $5a53: $fc
	add  b                                           ; $5a54: $80

jr_080_5a55:
	cp   $80                                         ; $5a55: $fe $80
	nop                                              ; $5a57: $00
	add  [hl]                                        ; $5a58: $86
	rst  $38                                         ; $5a59: $ff
	add  h                                           ; $5a5a: $84

jr_080_5a5b:
	nop                                              ; $5a5b: $00
	add  b                                           ; $5a5c: $80
	ld   e, $80                                      ; $5a5d: $1e $80
	sbc  $80                                         ; $5a5f: $de $80
	db   $fc                                         ; $5a61: $fc
	add  b                                           ; $5a62: $80
	ld   sp, hl                                      ; $5a63: $f9
	add  b                                           ; $5a64: $80
	ldh  [$80], a                                    ; $5a65: $e0 $80
	rlca                                             ; $5a67: $07
	add  b                                           ; $5a68: $80
	rrca                                             ; $5a69: $0f
	add  b                                           ; $5a6a: $80
	rra                                              ; $5a6b: $1f
	add  b                                           ; $5a6c: $80
	inc  bc                                          ; $5a6d: $03
	ld   bc, $7f78                                   ; $5a6e: $01 $78 $7f
	add  d                                           ; $5a71: $82
	rst  $38                                         ; $5a72: $ff
	ld   [bc], a                                     ; $5a73: $02
	nop                                              ; $5a74: $00
	rlca                                             ; $5a75: $07
	ld   hl, sp-$7d                                  ; $5a76: $f8 $83
	rst  $38                                         ; $5a78: $ff
	ld   [bc], a                                     ; $5a79: $02
	rst  ToBoot                                         ; $5a7a: $c7
	ret  nz                                          ; $5a7b: $c0

	ccf                                              ; $5a7c: $3f
	add  e                                           ; $5a7d: $83
	rst  $38                                         ; $5a7e: $ff
	ld   [bc], a                                     ; $5a7f: $02
	nop                                              ; $5a80: $00
	ret  nz                                          ; $5a81: $c0

	ccf                                              ; $5a82: $3f
	add  e                                           ; $5a83: $83
	rst  $38                                         ; $5a84: $ff
	ld   [bc], a                                     ; $5a85: $02
	sbc  a                                           ; $5a86: $9f
	ld   a, a                                        ; $5a87: $7f
	add  b                                           ; $5a88: $80
	add  e                                           ; $5a89: $83
	rst  JumpTable                                         ; $5a8a: $df
	ld   [bc], a                                     ; $5a8b: $02
	jr   nz, jr_080_5b0d                             ; $5a8c: $20 $7f

	add  b                                           ; $5a8e: $80
	add  e                                           ; $5a8f: $83
	rst  JumpTable                                         ; $5a90: $df
	ld   [bc], a                                     ; $5a91: $02
	add  b                                           ; $5a92: $80
	rst  $38                                         ; $5a93: $ff
	nop                                              ; $5a94: $00
	add  e                                           ; $5a95: $83
	rst  $38                                         ; $5a96: $ff
	ld   [bc], a                                     ; $5a97: $02
	nop                                              ; $5a98: $00
	rst  $38                                         ; $5a99: $ff
	nop                                              ; $5a9a: $00
	add  h                                           ; $5a9b: $84
	rst  $38                                         ; $5a9c: $ff
	nop                                              ; $5a9d: $00
	nop                                              ; $5a9e: $00
	add  h                                           ; $5a9f: $84
	rst  $38                                         ; $5aa0: $ff
	add  b                                           ; $5aa1: $80
	nop                                              ; $5aa2: $00
	add  h                                           ; $5aa3: $84
	rst  $38                                         ; $5aa4: $ff
	add  b                                           ; $5aa5: $80
	rlca                                             ; $5aa6: $07
	ld   [bc], a                                     ; $5aa7: $02
	ld   sp, hl                                      ; $5aa8: $f9
	rst  $38                                         ; $5aa9: $ff
	ld   a, [$ff81]                                  ; $5aaa: $fa $81 $ff
	ld   [bc], a                                     ; $5aad: $02
	nop                                              ; $5aae: $00
	inc  bc                                          ; $5aaf: $03
	cp   $83                                         ; $5ab0: $fe $83
	rst  $38                                         ; $5ab2: $ff
	ld   bc, $fffe                                   ; $5ab3: $01 $fe $ff
	add  d                                           ; $5ab6: $82
	nop                                              ; $5ab7: $00
	add  b                                           ; $5ab8: $80
	rst  $38                                         ; $5ab9: $ff
	add  b                                           ; $5aba: $80
	add  b                                           ; $5abb: $80
	ld   [bc], a                                     ; $5abc: $02
	ld   a, a                                        ; $5abd: $7f
	rst  $38                                         ; $5abe: $ff
	cp   a                                           ; $5abf: $bf
	add  c                                           ; $5ac0: $81
	rst  $38                                         ; $5ac1: $ff
	ld   bc, $fc3c                                   ; $5ac2: $01 $3c $fc
	add  d                                           ; $5ac5: $82
	ld   bc, $ff80                                   ; $5ac6: $01 $80 $ff
	add  b                                           ; $5ac9: $80
	nop                                              ; $5aca: $00
	add  l                                           ; $5acb: $85
	rst  $38                                         ; $5acc: $ff
	add  l                                           ; $5acd: $85
	nop                                              ; $5ace: $00
	ld   bc, $00ff                                   ; $5acf: $01 $ff $00
	add  b                                           ; $5ad2: $80
	rst  $38                                         ; $5ad3: $ff
	add  b                                           ; $5ad4: $80
	nop                                              ; $5ad5: $00
	add  c                                           ; $5ad6: $81
	rst  $38                                         ; $5ad7: $ff
	add  l                                           ; $5ad8: $85

jr_080_5ad9:
	nop                                              ; $5ad9: $00
	ld   bc, $00ff                                   ; $5ada: $01 $ff $00
	add  b                                           ; $5add: $80
	rst  $38                                         ; $5ade: $ff
	add  b                                           ; $5adf: $80
	nop                                              ; $5ae0: $00
	add  c                                           ; $5ae1: $81
	rst  $38                                         ; $5ae2: $ff
	add  l                                           ; $5ae3: $85
	nop                                              ; $5ae4: $00
	ld   bc, $00ff                                   ; $5ae5: $01 $ff $00
	add  b                                           ; $5ae8: $80
	rst  $38                                         ; $5ae9: $ff
	add  b                                           ; $5aea: $80
	nop                                              ; $5aeb: $00
	add  c                                           ; $5aec: $81
	rst  $38                                         ; $5aed: $ff
	add  l                                           ; $5aee: $85
	nop                                              ; $5aef: $00
	ld   bc, $00f0                                   ; $5af0: $01 $f0 $00
	add  b                                           ; $5af3: $80
	ldh  a, [$80]                                    ; $5af4: $f0 $80
	nop                                              ; $5af6: $00
	add  b                                           ; $5af7: $80
	jr   nc, jr_080_5afa                             ; $5af8: $30 $00

jr_080_5afa:
	ldh  a, [$8d]                                    ; $5afa: $f0 $8d
	nop                                              ; $5afc: $00
	add  b                                           ; $5afd: $80
	dec  b                                           ; $5afe: $05
	add  b                                           ; $5aff: $80
	inc  bc                                          ; $5b00: $03
	add  b                                           ; $5b01: $80
	ld   bc, $0280                                   ; $5b02: $01 $80 $02
	add  h                                           ; $5b05: $84
	ld   bc, $0080                                   ; $5b06: $01 $80 $00
	nop                                              ; $5b09: $00

jr_080_5b0a:
	ld   h, a                                        ; $5b0a: $67
	adc  e                                           ; $5b0b: $8b
	sbc  d                                           ; $5b0c: $9a

jr_080_5b0d:
	ld   [bc], a                                     ; $5b0d: $02
	sbc  c                                           ; $5b0e: $99
	sbc  e                                           ; $5b0f: $9b
	rrca                                             ; $5b10: $0f
	adc  c                                           ; $5b11: $89
	and  b                                           ; $5b12: $a0
	inc  b                                           ; $5b13: $04
	sub  b                                           ; $5b14: $90
	or   b                                           ; $5b15: $b0
	ld   h, b                                        ; $5b16: $60
	ldh  [$f0], a                                    ; $5b17: $e0 $f0
	sbc  l                                           ; $5b19: $9d
	nop                                              ; $5b1a: $00
	nop                                              ; $5b1b: $00
	ld   l, d                                        ; $5b1c: $6a
	add  a                                           ; $5b1d: $87
	sub  b                                           ; $5b1e: $90
	ld   bc, $9f9a                                   ; $5b1f: $01 $9a $9f
	add  b                                           ; $5b22: $80
	add  b                                           ; $5b23: $80
	add  b                                           ; $5b24: $80
	sub  l                                           ; $5b25: $95
	nop                                              ; $5b26: $00
	ld   c, a                                        ; $5b27: $4f
	add  a                                           ; $5b28: $87
	ld   d, b                                        ; $5b29: $50
	ld   bc, $f0e0                                   ; $5b2a: $01 $e0 $f0
	add  d                                           ; $5b2d: $82
	nop                                              ; $5b2e: $00
	ld   bc, $eae5                                   ; $5b2f: $01 $e5 $ea
	add  [hl]                                        ; $5b32: $86
	ld   a, [$aa80]                                  ; $5b33: $fa $80 $aa
	add  d                                           ; $5b36: $82
	nop                                              ; $5b37: $00
	adc  d                                           ; $5b38: $8a
	xor  d                                           ; $5b39: $aa
	add  d                                           ; $5b3a: $82
	nop                                              ; $5b3b: $00
	inc  b                                           ; $5b3c: $04
	add  a                                           ; $5b3d: $87
	add  d                                           ; $5b3e: $82
	add  h                                           ; $5b3f: $84
	add  c                                           ; $5b40: $81
	sub  b                                           ; $5b41: $90
	add  b                                           ; $5b42: $80
	add  b                                           ; $5b43: $80
	add  b                                           ; $5b44: $80
	add  h                                           ; $5b45: $84
	add  l                                           ; $5b46: $85
	add  l                                           ; $5b47: $85
	nop                                              ; $5b48: $00
	sbc  d                                           ; $5b49: $9a
	add  c                                           ; $5b4a: $81
	and  b                                           ; $5b4b: $a0
	add  b                                           ; $5b4c: $80
	ld   h, b                                        ; $5b4d: $60
	ld   bc, $1030                                   ; $5b4e: $01 $30 $10
	add  b                                           ; $5b51: $80
	nop                                              ; $5b52: $00
	nop                                              ; $5b53: $00
	jr   nz, jr_080_5ad9                             ; $5b54: $20 $83

	ld   h, b                                        ; $5b56: $60
	ld   bc, $3787                                   ; $5b57: $01 $87 $37
	add  b                                           ; $5b5a: $80
	ld   a, [bc]                                     ; $5b5b: $0a
	add  b                                           ; $5b5c: $80
	ld   bc, $0088                                   ; $5b5d: $01 $88 $00
	add  d                                           ; $5b60: $82
	rst  $38                                         ; $5b61: $ff
	add  b                                           ; $5b62: $80
	ld   e, a                                        ; $5b63: $5f
	add  b                                           ; $5b64: $80
	xor  a                                           ; $5b65: $af
	add  b                                           ; $5b66: $80
	rla                                              ; $5b67: $17
	add  b                                           ; $5b68: $80
	dec  bc                                          ; $5b69: $0b
	add  b                                           ; $5b6a: $80
	rlca                                             ; $5b6b: $07
	add  b                                           ; $5b6c: $80
	inc  bc                                          ; $5b6d: $03
	add  hl, bc                                      ; $5b6e: $09

jr_080_5b6f:
	db   $fc                                         ; $5b6f: $fc
	rst  $38                                         ; $5b70: $ff
	di                                               ; $5b71: $f3
	rst  $38                                         ; $5b72: $ff
	adc  $fe                                         ; $5b73: $ce $fe
	jr   c, jr_080_5b6f                              ; $5b75: $38 $f8

	ldh  [$e2], a                                    ; $5b77: $e0 $e2
	add  h                                           ; $5b79: $84
	sbc  d                                           ; $5b7a: $9a
	ld   bc, $f0fd                                   ; $5b7b: $01 $fd $f0
	add  b                                           ; $5b7e: $80
	ret  nz                                          ; $5b7f: $c0

	add  c                                           ; $5b80: $81
	nop                                              ; $5b81: $00
	add  b                                           ; $5b82: $80
	jr   nz, jr_080_5b0a                             ; $5b83: $20 $85

	and  b                                           ; $5b85: $a0
	nop                                              ; $5b86: $00
	ld   d, b                                        ; $5b87: $50
	sbc  l                                           ; $5b88: $9d
	nop                                              ; $5b89: $00
	ld   bc, $9c63                                   ; $5b8a: $01 $63 $9c
	add  b                                           ; $5b8d: $80
	add  b                                           ; $5b8e: $80
	ld   [bc], a                                     ; $5b8f: $02
	add  c                                           ; $5b90: $81
	add  b                                           ; $5b91: $80
	sub  h                                           ; $5b92: $94
	add  a                                           ; $5b93: $87
	sub  b                                           ; $5b94: $90
	nop                                              ; $5b95: $00
	ld   a, [bc]                                     ; $5b96: $0a
	add  c                                           ; $5b97: $81
	nop                                              ; $5b98: $00
	nop                                              ; $5b99: $00
	ld   b, b                                        ; $5b9a: $40

jr_080_5b9b:
	adc  c                                           ; $5b9b: $89
	ld   d, b                                        ; $5b9c: $50
	nop                                              ; $5b9d: $00
	ldh  [$86], a                                    ; $5b9e: $e0 $86
	nop                                              ; $5ba0: $00
	nop                                              ; $5ba1: $00
	rst  $38                                         ; $5ba2: $ff
	add  b                                           ; $5ba3: $80
	nop                                              ; $5ba4: $00
	add  b                                           ; $5ba5: $80
	xor  d                                           ; $5ba6: $aa
	add  b                                           ; $5ba7: $80
	ld   [$ff00], a                                  ; $5ba8: $ea $00 $ff
	add  [hl]                                        ; $5bab: $86
	nop                                              ; $5bac: $00
	nop                                              ; $5bad: $00
	rst  $38                                         ; $5bae: $ff
	add  b                                           ; $5baf: $80
	nop                                              ; $5bb0: $00
	add  d                                           ; $5bb1: $82
	xor  d                                           ; $5bb2: $aa
	nop                                              ; $5bb3: $00
	sub  l                                           ; $5bb4: $95
	adc  e                                           ; $5bb5: $8b
	sub  b                                           ; $5bb6: $90
	add  b                                           ; $5bb7: $80
	sbc  b                                           ; $5bb8: $98
	nop                                              ; $5bb9: $00
	adc  d                                           ; $5bba: $8a
	adc  l                                           ; $5bbb: $8d
	and  b                                           ; $5bbc: $a0
	ld   bc, $ffd0                                   ; $5bbd: $01 $d0 $ff
	add  b                                           ; $5bc0: $80
	nop                                              ; $5bc1: $00
	add  b                                           ; $5bc2: $80
	rst  $38                                         ; $5bc3: $ff
	add  b                                           ; $5bc4: $80
	nop                                              ; $5bc5: $00
	add  d                                           ; $5bc6: $82
	rst  $38                                         ; $5bc7: $ff
	add  b                                           ; $5bc8: $80
	nop                                              ; $5bc9: $00
	add  b                                           ; $5bca: $80
	rst  $38                                         ; $5bcb: $ff
	add  b                                           ; $5bcc: $80
	cp   $80                                         ; $5bcd: $fe $80
	nop                                              ; $5bcf: $00
	inc  b                                           ; $5bd0: $04
	add  b                                           ; $5bd1: $80
	cp   $00                                         ; $5bd2: $fe $00
	ld   a, [hl]                                     ; $5bd4: $7e
	add  b                                           ; $5bd5: $80
	add  c                                           ; $5bd6: $81
	cp   $04                                         ; $5bd7: $fe $04
	ld   bc, $807f                                   ; $5bd9: $01 $7f $80
	rst  $38                                         ; $5bdc: $ff
	rst  $28                                         ; $5bdd: $ef
	add  e                                           ; $5bde: $83
	add  l                                           ; $5bdf: $85
	add  b                                           ; $5be0: $80
	dec  b                                           ; $5be1: $05
	ld   bc, $8595                                   ; $5be2: $01 $95 $85
	add  b                                           ; $5be5: $80
	push hl                                          ; $5be6: $e5
	inc  b                                           ; $5be7: $04
	dec  [hl]                                        ; $5be8: $35
	ld   sp, $9899                                   ; $5be9: $31 $99 $98
	cpl                                              ; $5bec: $2f
	adc  l                                           ; $5bed: $8d
	ld   h, b                                        ; $5bee: $60
	ld   bc, $ffb0                                   ; $5bef: $01 $b0 $ff
	add  b                                           ; $5bf2: $80
	nop                                              ; $5bf3: $00
	add  d                                           ; $5bf4: $82
	rst  $38                                         ; $5bf5: $ff
	add  b                                           ; $5bf6: $80
	nop                                              ; $5bf7: $00
	add  h                                           ; $5bf8: $84
	rst  $38                                         ; $5bf9: $ff
	inc  b                                           ; $5bfa: $04
	add  b                                           ; $5bfb: $80
	rst  $38                                         ; $5bfc: $ff
	nop                                              ; $5bfd: $00
	ld   a, a                                        ; $5bfe: $7f
	add  b                                           ; $5bff: $80
	add  c                                           ; $5c00: $81
	rst  $38                                         ; $5c01: $ff
	ld   [bc], a                                     ; $5c02: $02
	nop                                              ; $5c03: $00
	ld   a, a                                        ; $5c04: $7f
	add  b                                           ; $5c05: $80
	add  e                                           ; $5c06: $83
	rst  $38                                         ; $5c07: $ff
	ld   a, [bc]                                     ; $5c08: $0a
	ld   sp, $53ae                                   ; $5c09: $31 $ae $53
	di                                               ; $5c0c: $f3
	add  hl, sp                                      ; $5c0d: $39
	add  l                                           ; $5c0e: $85
	add  h                                           ; $5c0f: $84

jr_080_5c10:
	add  [hl]                                        ; $5c10: $86
	ld   a, b                                        ; $5c11: $78
	cp   $00                                         ; $5c12: $fe $00
	add  e                                           ; $5c14: $83
	add  a                                           ; $5c15: $87
	nop                                              ; $5c16: $00
	ret  nc                                          ; $5c17: $d0

	add  c                                           ; $5c18: $81
	jr   nz, jr_080_5b9b                             ; $5c19: $20 $80

	ret  nz                                          ; $5c1b: $c0

	add  b                                           ; $5c1c: $80
	ld   h, b                                        ; $5c1d: $60
	add  b                                           ; $5c1e: $80
	jr   nc, jr_080_5c23                             ; $5c1f: $30 $02

	nop                                              ; $5c21: $00
	ret  nz                                          ; $5c22: $c0

jr_080_5c23:
	ret  nc                                          ; $5c23: $d0

	add  c                                           ; $5c24: $81
	ldh  a, [rSB]                                    ; $5c25: $f0 $01
	rst  $28                                         ; $5c27: $ef
	nop                                              ; $5c28: $00
	add  h                                           ; $5c29: $84
	rst  $38                                         ; $5c2a: $ff
	add  b                                           ; $5c2b: $80
	nop                                              ; $5c2c: $00
	add  h                                           ; $5c2d: $84
	rst  $38                                         ; $5c2e: $ff
	add  b                                           ; $5c2f: $80

jr_080_5c30:
	ld   a, a                                        ; $5c30: $7f
	nop                                              ; $5c31: $00
	add  b                                           ; $5c32: $80
	add  e                                           ; $5c33: $83
	rst  $38                                         ; $5c34: $ff
	ld   [bc], a                                     ; $5c35: $02
	nop                                              ; $5c36: $00
	ld   a, a                                        ; $5c37: $7f
	add  b                                           ; $5c38: $80
	add  e                                           ; $5c39: $83
	rst  $38                                         ; $5c3a: $ff
	ld   [bc], a                                     ; $5c3b: $02
	ld   hl, sp-$01                                  ; $5c3c: $f8 $ff
	nop                                              ; $5c3e: $00
	add  e                                           ; $5c3f: $83
	add  a                                           ; $5c40: $87
	ld   [bc], a                                     ; $5c41: $02
	ld   [hl], b                                     ; $5c42: $70
	rst  $38                                         ; $5c43: $ff
	ld   [$8783], sp                                 ; $5c44: $08 $83 $87
	ld   [bc], a                                     ; $5c47: $02
	db   $10                                         ; $5c48: $10
	ldh  [rAUD1SWEEP], a                             ; $5c49: $e0 $10
	add  e                                           ; $5c4b: $83
	ldh  a, [rSC]                                    ; $5c4c: $f0 $02
	nop                                              ; $5c4e: $00
	ldh  [rAUD1SWEEP], a                             ; $5c4f: $e0 $10
	add  e                                           ; $5c51: $83
	ldh  a, [rP1]                                    ; $5c52: $f0 $00
	db   $10                                         ; $5c54: $10
	rst  $38                                         ; $5c55: $ff
	nop                                              ; $5c56: $00
	rst  $38                                         ; $5c57: $ff
	nop                                              ; $5c58: $00
	rst  $38                                         ; $5c59: $ff
	nop                                              ; $5c5a: $00
	rst  $38                                         ; $5c5b: $ff
	nop                                              ; $5c5c: $00
	rst  $38                                         ; $5c5d: $ff
	nop                                              ; $5c5e: $00
	rst  $38                                         ; $5c5f: $ff
	nop                                              ; $5c60: $00
	rst  $30                                         ; $5c61: $f7
	nop                                              ; $5c62: $00
	scf                                              ; $5c63: $37
	ld   bc, $0f01                                   ; $5c64: $01 $01 $0f
	nop                                              ; $5c67: $00
	adc  h                                           ; $5c68: $8c
	rrca                                             ; $5c69: $0f
	ld   bc, $00f0                                   ; $5c6a: $01 $f0 $00
	add  b                                           ; $5c6d: $80
	db   $fc                                         ; $5c6e: $fc
	adc  d                                           ; $5c6f: $8a
	rst  $38                                         ; $5c70: $ff
	nop                                              ; $5c71: $00
	rra                                              ; $5c72: $1f
	add  c                                           ; $5c73: $81
	rst  $28                                         ; $5c74: $ef
	nop                                              ; $5c75: $00
	rrca                                             ; $5c76: $0f
	and  l                                           ; $5c77: $a5
	rst  $38                                         ; $5c78: $ff
	add  b                                           ; $5c79: $80
	ld   hl, sp-$80                                  ; $5c7a: $f8 $80
	rst  $20                                         ; $5c7c: $e7
	add  b                                           ; $5c7d: $80
	rst  $38                                         ; $5c7e: $ff
	add  b                                           ; $5c7f: $80
	db   $fc                                         ; $5c80: $fc
	add  b                                           ; $5c81: $80
	di                                               ; $5c82: $f3
	add  b                                           ; $5c83: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c84: $cf
	add  b                                           ; $5c85: $80
	nop                                              ; $5c86: $00
	add  b                                           ; $5c87: $80
	rst  $38                                         ; $5c88: $ff
	add  b                                           ; $5c89: $80
	nop                                              ; $5c8a: $00
	add  b                                           ; $5c8b: $80
	rst  $38                                         ; $5c8c: $ff
	add  b                                           ; $5c8d: $80
	jr   nc, jr_080_5c10                             ; $5c8e: $30 $80

	ldh  [$80], a                                    ; $5c90: $e0 $80
	add  b                                           ; $5c92: $80
	add  b                                           ; $5c93: $80
	rst  $38                                         ; $5c94: $ff
	add  b                                           ; $5c95: $80
	nop                                              ; $5c96: $00
	add  b                                           ; $5c97: $80
	rst  $38                                         ; $5c98: $ff
	add  b                                           ; $5c99: $80
	nop                                              ; $5c9a: $00
	add  b                                           ; $5c9b: $80
	rst  $38                                         ; $5c9c: $ff
	add  b                                           ; $5c9d: $80
	dec  [hl]                                        ; $5c9e: $35
	add  b                                           ; $5c9f: $80
	ld   [$0080], sp                                 ; $5ca0: $08 $80 $00
	add  b                                           ; $5ca3: $80
	rst  $38                                         ; $5ca4: $ff
	add  b                                           ; $5ca5: $80
	nop                                              ; $5ca6: $00
	add  b                                           ; $5ca7: $80
	rst  $38                                         ; $5ca8: $ff
	add  b                                           ; $5ca9: $80
	nop                                              ; $5caa: $00
	add  b                                           ; $5cab: $80
	rst  $38                                         ; $5cac: $ff
	add  b                                           ; $5cad: $80
	jr   z, jr_080_5c30                              ; $5cae: $28 $80

	ld   b, $80                                      ; $5cb0: $06 $80
	nop                                              ; $5cb2: $00
	add  b                                           ; $5cb3: $80
	rst  $38                                         ; $5cb4: $ff
	add  b                                           ; $5cb5: $80
	nop                                              ; $5cb6: $00
	add  b                                           ; $5cb7: $80
	rst  $38                                         ; $5cb8: $ff
	add  b                                           ; $5cb9: $80
	nop                                              ; $5cba: $00
	add  b                                           ; $5cbb: $80
	rst  $38                                         ; $5cbc: $ff
	add  b                                           ; $5cbd: $80
	ei                                               ; $5cbe: $fb
	add  b                                           ; $5cbf: $80
	ld   d, b                                        ; $5cc0: $50
	add  b                                           ; $5cc1: $80
	nop                                              ; $5cc2: $00
	add  b                                           ; $5cc3: $80
	rst  $38                                         ; $5cc4: $ff
	add  b                                           ; $5cc5: $80

jr_080_5cc6:
	nop                                              ; $5cc6: $00
	add  b                                           ; $5cc7: $80
	rst  $38                                         ; $5cc8: $ff
	add  b                                           ; $5cc9: $80
	nop                                              ; $5cca: $00
	add  b                                           ; $5ccb: $80
	rst  $38                                         ; $5ccc: $ff
	add  h                                           ; $5ccd: $84
	nop                                              ; $5cce: $00
	add  b                                           ; $5ccf: $80
	rst  $38                                         ; $5cd0: $ff
	add  b                                           ; $5cd1: $80
	nop                                              ; $5cd2: $00
	add  b                                           ; $5cd3: $80
	rst  $38                                         ; $5cd4: $ff
	add  b                                           ; $5cd5: $80
	nop                                              ; $5cd6: $00
	add  b                                           ; $5cd7: $80
	rst  $38                                         ; $5cd8: $ff
	add  b                                           ; $5cd9: $80
	dec  b                                           ; $5cda: $05
	add  d                                           ; $5cdb: $82
	nop                                              ; $5cdc: $00
	add  b                                           ; $5cdd: $80
	rst  $38                                         ; $5cde: $ff
	add  b                                           ; $5cdf: $80
	nop                                              ; $5ce0: $00
	add  b                                           ; $5ce1: $80
	rst  $38                                         ; $5ce2: $ff
	add  b                                           ; $5ce3: $80
	nop                                              ; $5ce4: $00
	add  b                                           ; $5ce5: $80
	rst  $38                                         ; $5ce6: $ff
	add  b                                           ; $5ce7: $80
	ld   a, [hl-]                                    ; $5ce8: $3a
	add  b                                           ; $5ce9: $80

jr_080_5cea:
	ld   b, $80                                      ; $5cea: $06 $80
	nop                                              ; $5cec: $00
	add  b                                           ; $5ced: $80
	rst  $38                                         ; $5cee: $ff
	add  b                                           ; $5cef: $80
	nop                                              ; $5cf0: $00
	add  b                                           ; $5cf1: $80
	rst  $38                                         ; $5cf2: $ff
	add  b                                           ; $5cf3: $80
	nop                                              ; $5cf4: $00
	add  b                                           ; $5cf5: $80
	rst  $38                                         ; $5cf6: $ff
	add  b                                           ; $5cf7: $80
	and  a                                           ; $5cf8: $a7
	add  b                                           ; $5cf9: $80
	add  b                                           ; $5cfa: $80
	add  b                                           ; $5cfb: $80
	nop                                              ; $5cfc: $00
	add  b                                           ; $5cfd: $80
	rst  $38                                         ; $5cfe: $ff
	add  b                                           ; $5cff: $80
	nop                                              ; $5d00: $00
	add  b                                           ; $5d01: $80
	rst  $38                                         ; $5d02: $ff
	add  b                                           ; $5d03: $80
	nop                                              ; $5d04: $00
	add  b                                           ; $5d05: $80

jr_080_5d06:
	rst  $38                                         ; $5d06: $ff
	add  d                                           ; $5d07: $82
	ld   b, b                                        ; $5d08: $40
	add  b                                           ; $5d09: $80
	nop                                              ; $5d0a: $00
	add  b                                           ; $5d0b: $80
	rst  $38                                         ; $5d0c: $ff
	add  b                                           ; $5d0d: $80
	nop                                              ; $5d0e: $00
	add  b                                           ; $5d0f: $80
	rst  $38                                         ; $5d10: $ff
	add  b                                           ; $5d11: $80
	nop                                              ; $5d12: $00
	add  b                                           ; $5d13: $80
	rst  $38                                         ; $5d14: $ff
	add  b                                           ; $5d15: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d16: $cf
	add  b                                           ; $5d17: $80
	ld   [hl], e                                     ; $5d18: $73
	add  b                                           ; $5d19: $80
	dec  c                                           ; $5d1a: $0d
	add  b                                           ; $5d1b: $80
	cp   $80                                         ; $5d1c: $fe $80
	nop                                              ; $5d1e: $00
	add  b                                           ; $5d1f: $80
	rst  $38                                         ; $5d20: $ff
	add  b                                           ; $5d21: $80
	nop                                              ; $5d22: $00
	add  c                                           ; $5d23: $81
	rst  $38                                         ; $5d24: $ff
	adc  [hl]                                        ; $5d25: $8e
	rrca                                             ; $5d26: $0f
	add  e                                           ; $5d27: $83
	rst  $38                                         ; $5d28: $ff
	add  b                                           ; $5d29: $80
	ld   a, a                                        ; $5d2a: $7f
	add  b                                           ; $5d2b: $80
	sbc  a                                           ; $5d2c: $9f
	add  b                                           ; $5d2d: $80
	rst  $38                                         ; $5d2e: $ff
	add  b                                           ; $5d2f: $80
	ld   bc, $fe80                                   ; $5d30: $01 $80 $fe
	adc  d                                           ; $5d33: $8a
	rst  $38                                         ; $5d34: $ff
	add  b                                           ; $5d35: $80
	db   $fc                                         ; $5d36: $fc
	add  b                                           ; $5d37: $80
	di                                               ; $5d38: $f3
	add  b                                           ; $5d39: $80
	rst  $38                                         ; $5d3a: $ff
	add  b                                           ; $5d3b: $80
	cp   $80                                         ; $5d3c: $fe $80
	db   $fd                                         ; $5d3e: $fd
	add  b                                           ; $5d3f: $80
	di                                               ; $5d40: $f3
	add  b                                           ; $5d41: $80
	adc  $80                                         ; $5d42: $ce $80
	jr   c, jr_080_5cc6                              ; $5d44: $38 $80

	ldh  [c], a                                      ; $5d46: $e2
	add  b                                           ; $5d47: $80
	adc  c                                           ; $5d48: $89
	add  b                                           ; $5d49: $80
	sbc  h                                           ; $5d4a: $9c
	add  b                                           ; $5d4b: $80
	ld   [hl], b                                     ; $5d4c: $70
	add  b                                           ; $5d4d: $80
	ret  nz                                          ; $5d4e: $c0

	add  b                                           ; $5d4f: $80
	add  b                                           ; $5d50: $80
	add  b                                           ; $5d51: $80
	ld   [$8080], sp                                 ; $5d52: $08 $80 $80
	add  b                                           ; $5d55: $80
	rrca                                             ; $5d56: $0f
	add  b                                           ; $5d57: $80
	ccf                                              ; $5d58: $3f
	add  d                                           ; $5d59: $82
	nop                                              ; $5d5a: $00
	add  b                                           ; $5d5b: $80
	ld   [bc], a                                     ; $5d5c: $02
	add  b                                           ; $5d5d: $80
	nop                                              ; $5d5e: $00
	add  b                                           ; $5d5f: $80
	adc  b                                           ; $5d60: $88
	add  b                                           ; $5d61: $80
	ld   a, [hl-]                                    ; $5d62: $3a
	add  d                                           ; $5d63: $82
	rst  $38                                         ; $5d64: $ff
	add  d                                           ; $5d65: $82
	nop                                              ; $5d66: $00
	add  b                                           ; $5d67: $80
	jr   nz, jr_080_5cea                             ; $5d68: $20 $80

	ld   h, b                                        ; $5d6a: $60
	add  b                                           ; $5d6b: $80
	db   $10                                         ; $5d6c: $10
	add  d                                           ; $5d6d: $82
	cp   a                                           ; $5d6e: $bf
	add  b                                           ; $5d6f: $80
	rst  $38                                         ; $5d70: $ff
	add  d                                           ; $5d71: $82
	nop                                              ; $5d72: $00
	add  b                                           ; $5d73: $80
	db   $fd                                         ; $5d74: $fd
	add  b                                           ; $5d75: $80
	ret  nz                                          ; $5d76: $c0

	add  [hl]                                        ; $5d77: $86
	rst  $38                                         ; $5d78: $ff
	add  d                                           ; $5d79: $82
	nop                                              ; $5d7a: $00
	add  b                                           ; $5d7b: $80
	add  b                                           ; $5d7c: $80
	add  b                                           ; $5d7d: $80
	jr   nz, jr_080_5d06                             ; $5d7e: $20 $86

	rst  $38                                         ; $5d80: $ff
	add  b                                           ; $5d81: $80
	nop                                              ; $5d82: $00
	add  b                                           ; $5d83: $80
	ld   b, $80                                      ; $5d84: $06 $80
	ld   [hl], l                                     ; $5d86: $75
	add  b                                           ; $5d87: $80
	or   c                                           ; $5d88: $b1
	add  b                                           ; $5d89: $80
	rst  $38                                         ; $5d8a: $ff
	add  b                                           ; $5d8b: $80
	cp   $82                                         ; $5d8c: $fe $82
	rst  $38                                         ; $5d8e: $ff
	add  b                                           ; $5d8f: $80
	nop                                              ; $5d90: $00
	add  b                                           ; $5d91: $80
	ld   d, b                                        ; $5d92: $50
	add  b                                           ; $5d93: $80
	ld   e, [hl]                                     ; $5d94: $5e
	add  b                                           ; $5d95: $80
	ldh  a, [c]                                      ; $5d96: $f2
	add  b                                           ; $5d97: $80
	inc  c                                           ; $5d98: $0c
	add  b                                           ; $5d99: $80
	ld   a, l                                        ; $5d9a: $7d
	add  d                                           ; $5d9b: $82
	rst  $38                                         ; $5d9c: $ff
	add  d                                           ; $5d9d: $82
	nop                                              ; $5d9e: $00
	add  b                                           ; $5d9f: $80
	jp   nz, $9f80                                   ; $5da0: $c2 $80 $9f

	add  b                                           ; $5da3: $80
	add  hl, de                                      ; $5da4: $19
	add  b                                           ; $5da5: $80
	cp   $82                                         ; $5da6: $fe $82
	rst  $38                                         ; $5da8: $ff
	add  d                                           ; $5da9: $82
	nop                                              ; $5daa: $00
	add  b                                           ; $5dab: $80
	daa                                              ; $5dac: $27
	add  b                                           ; $5dad: $80
	db   $fd                                         ; $5dae: $fd
	add  b                                           ; $5daf: $80
	rst  $38                                         ; $5db0: $ff
	add  b                                           ; $5db1: $80
	sbc  a                                           ; $5db2: $9f
	add  d                                           ; $5db3: $82
	rst  $38                                         ; $5db4: $ff
	add  b                                           ; $5db5: $80
	nop                                              ; $5db6: $00
	add  b                                           ; $5db7: $80
	dec  b                                           ; $5db8: $05
	add  b                                           ; $5db9: $80
	rrca                                             ; $5dba: $0f
	add  b                                           ; $5dbb: $80
	rla                                              ; $5dbc: $17
	add  [hl]                                        ; $5dbd: $86
	rst  $38                                         ; $5dbe: $ff
	add  b                                           ; $5dbf: $80
	nop                                              ; $5dc0: $00
	add  b                                           ; $5dc1: $80
	inc  bc                                          ; $5dc2: $03
	add  b                                           ; $5dc3: $80
	ld   b, h                                        ; $5dc4: $44
	add  b                                           ; $5dc5: $80
	ld   e, l                                        ; $5dc6: $5d
	add  [hl]                                        ; $5dc7: $86
	rst  $38                                         ; $5dc8: $ff
	add  b                                           ; $5dc9: $80
	nop                                              ; $5dca: $00
	add  b                                           ; $5dcb: $80
	add  b                                           ; $5dcc: $80
	add  b                                           ; $5dcd: $80
	ld   c, e                                        ; $5dce: $4b
	add  b                                           ; $5dcf: $80
	ld   l, c                                        ; $5dd0: $69
	add  b                                           ; $5dd1: $80
	ret  nz                                          ; $5dd2: $c0

	add  b                                           ; $5dd3: $80
	add  h                                           ; $5dd4: $84
	add  b                                           ; $5dd5: $80
	db   $fd                                         ; $5dd6: $fd
	add  c                                           ; $5dd7: $81
	rst  $38                                         ; $5dd8: $ff
	add  l                                           ; $5dd9: $85
	nop                                              ; $5dda: $00
	ld   [bc], a                                     ; $5ddb: $02
	adc  b                                           ; $5ddc: $88
	cp   a                                           ; $5ddd: $bf
	scf                                              ; $5dde: $37
	add  b                                           ; $5ddf: $80
	ld   a, a                                        ; $5de0: $7f
	add  d                                           ; $5de1: $82
	rst  $38                                         ; $5de2: $ff
	add  [hl]                                        ; $5de3: $86
	nop                                              ; $5de4: $00
	rlca                                             ; $5de5: $07
	rst  $38                                         ; $5de6: $ff
	db   $fc                                         ; $5de7: $fc
	rst  $38                                         ; $5de8: $ff
	ld   hl, sp-$01                                  ; $5de9: $f8 $ff
	ldh  [rIE], a                                    ; $5deb: $e0 $ff
	db   $e4                                         ; $5ded: $e4
	add  l                                           ; $5dee: $85

jr_080_5def:
	nop                                              ; $5def: $00
	inc  b                                           ; $5df0: $04
	rst  JumpTable                                         ; $5df1: $df
	cp   $1e                                         ; $5df2: $fe $1e
	db   $fc                                         ; $5df4: $fc
	inc  a                                           ; $5df5: $3c
	add  b                                           ; $5df6: $80
	pop  af                                          ; $5df7: $f1
	ld   bc, $3cc3                                   ; $5df8: $01 $c3 $3c
	add  l                                           ; $5dfb: $85
	nop                                              ; $5dfc: $00
	nop                                              ; $5dfd: $00
	ldh  a, [$80]                                    ; $5dfe: $f0 $80
	stop                                             ; $5e00: $10 $00
	ld   [hl], b                                     ; $5e02: $70
	add  d                                           ; $5e03: $82
	ldh  a, [$03]                                    ; $5e04: $f0 $03
	ld   a, [hl]                                     ; $5e06: $7e
	pop  hl                                          ; $5e07: $e1
	db   $e3                                         ; $5e08: $e3
	inc  bc                                          ; $5e09: $03
	add  b                                           ; $5e0a: $80
	rst  $38                                         ; $5e0b: $ff
	add  b                                           ; $5e0c: $80
	ei                                               ; $5e0d: $fb
	cpl                                              ; $5e0e: $2f
	ld   a, c                                        ; $5e0f: $79
	ld   sp, hl                                      ; $5e10: $f9
	inc  sp                                          ; $5e11: $33
	di                                               ; $5e12: $f3
	rrca                                             ; $5e13: $0f
	rst  $28                                         ; $5e14: $ef
	rra                                              ; $5e15: $1f
	rst  $38                                         ; $5e16: $ff
	xor  l                                           ; $5e17: $ad
	db   $ed                                         ; $5e18: $ed
	ld   [$ceeb], a                                  ; $5e19: $ea $eb $ce
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e1c: $cf
	jr   c, jr_080_5e5c                              ; $5e1d: $38 $3d

	ld   [hl], d                                     ; $5e1f: $72
	ld   a, a                                        ; $5e20: $7f
	ld   h, c                                        ; $5e21: $61
	ld   a, l                                        ; $5e22: $7d
	ld   b, a                                        ; $5e23: $47
	ld   a, e                                        ; $5e24: $7b
	ld   a, [bc]                                     ; $5e25: $0a
	ld   h, a                                        ; $5e26: $67
	ld   bc, $3eff                                   ; $5e27: $01 $ff $3e
	cp   $3c                                         ; $5e2a: $fe $3c
	cp   $35                                         ; $5e2c: $fe $35
	rst  $38                                         ; $5e2e: $ff
	ld   bc, $4efd                                   ; $5e2f: $01 $fd $4e
	rst  $38                                         ; $5e32: $ff
	ld   a, e                                        ; $5e33: $7b
	ei                                               ; $5e34: $fb
	ld   hl, sp-$06                                  ; $5e35: $f8 $fa
	inc  sp                                          ; $5e37: $33
	ld   [hl], b                                     ; $5e38: $70
	ret  nc                                          ; $5e39: $d0

	ldh  [$90], a                                    ; $5e3a: $e0 $90
	ret  nc                                          ; $5e3c: $d0

	jr   nc, jr_080_5def                             ; $5e3d: $30 $b0

	add  b                                           ; $5e3f: $80
	sub  b                                           ; $5e40: $90
	add  b                                           ; $5e41: $80
	ld   d, b                                        ; $5e42: $50
	add  b                                           ; $5e43: $80
	ld   [hl], b                                     ; $5e44: $70
	add  b                                           ; $5e45: $80
	ret  nc                                          ; $5e46: $d0

	ld   bc, $e708                                   ; $5e47: $01 $08 $e7
	add  [hl]                                        ; $5e4a: $86
	rst  $38                                         ; $5e4b: $ff
	add  b                                           ; $5e4c: $80
	db   $fd                                         ; $5e4d: $fd
	add  b                                           ; $5e4e: $80
	db   $e3                                         ; $5e4f: $e3
	add  b                                           ; $5e50: $80
	ei                                               ; $5e51: $fb
	nop                                              ; $5e52: $00
	ldh  [$8a], a                                    ; $5e53: $e0 $8a
	add  b                                           ; $5e55: $80
	add  b                                           ; $5e56: $80
	adc  a                                           ; $5e57: $8f
	add  b                                           ; $5e58: $80
	sbc  a                                           ; $5e59: $9f
	adc  d                                           ; $5e5a: $8a
	inc  c                                           ; $5e5b: $0c

jr_080_5e5c:
	add  c                                           ; $5e5c: $81
	db   $fc                                         ; $5e5d: $fc
	nop                                              ; $5e5e: $00
	di                                               ; $5e5f: $f3
	add  e                                           ; $5e60: $83
	nop                                              ; $5e61: $00
	add  b                                           ; $5e62: $80
	ld   [hl], b                                     ; $5e63: $70
	add  h                                           ; $5e64: $84
	nop                                              ; $5e65: $00
	add  b                                           ; $5e66: $80
	ld   [hl], b                                     ; $5e67: $70
	nop                                              ; $5e68: $00
	inc  de                                          ; $5e69: $13
	add  c                                           ; $5e6a: $81
	db   $fc                                         ; $5e6b: $fc
	add  b                                           ; $5e6c: $80
	db   $ec                                         ; $5e6d: $ec
	add  b                                           ; $5e6e: $80
	ld   h, b                                        ; $5e6f: $60
	ld   [$0018], sp                                 ; $5e70: $08 $18 $00
	ld   b, $00                                      ; $5e73: $06 $00
	adc  [hl]                                        ; $5e75: $8e
	nop                                              ; $5e76: $00
	adc  [hl]                                        ; $5e77: $8e
	nop                                              ; $5e78: $00
	cp   $80                                         ; $5e79: $fe $80
	and  a                                           ; $5e7b: $a7
	add  b                                           ; $5e7c: $80
	and  b                                           ; $5e7d: $a0
	adc  d                                           ; $5e7e: $8a
	add  b                                           ; $5e7f: $80
	add  b                                           ; $5e80: $80
	db   $fc                                         ; $5e81: $fc
	add  b                                           ; $5e82: $80
	nop                                              ; $5e83: $00
	add  d                                           ; $5e84: $82
	inc  b                                           ; $5e85: $04
	add  l                                           ; $5e86: $85
	inc  c                                           ; $5e87: $0c
	nop                                              ; $5e88: $00
	ld   [hl], e                                     ; $5e89: $73
	add  e                                           ; $5e8a: $83
	ld   [hl], b                                     ; $5e8b: $70
	add  b                                           ; $5e8c: $80
	nop                                              ; $5e8d: $00
	add  [hl]                                        ; $5e8e: $86
	ld   d, b                                        ; $5e8f: $50
	nop                                              ; $5e90: $00
	ldh  a, [$81]                                    ; $5e91: $f0 $81
	rst  $38                                         ; $5e93: $ff
	rla                                              ; $5e94: $17
	db   $fc                                         ; $5e95: $fc
	rst  $38                                         ; $5e96: $ff
	ld   hl, sp-$01                                  ; $5e97: $f8 $ff
	nop                                              ; $5e99: $00
	rst  $38                                         ; $5e9a: $ff
	inc  bc                                          ; $5e9b: $03
	rst  $38                                         ; $5e9c: $ff
	rlca                                             ; $5e9d: $07
	cp   $1e                                         ; $5e9e: $fe $1e
	ld   hl, sp-$80                                  ; $5ea0: $f8 $80
	rst  $38                                         ; $5ea2: $ff
	rlca                                             ; $5ea3: $07
	cp   $1e                                         ; $5ea4: $fe $1e
	ld   hl, sp+$79                                  ; $5ea6: $f8 $79
	pop  af                                          ; $5ea8: $f1
	rst  $30                                         ; $5ea9: $f7
	rst  ToBoot                                         ; $5eaa: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5eab: $cf
	rrca                                             ; $5eac: $0f
	add  b                                           ; $5ead: $80
	cpl                                              ; $5eae: $2f
	ld   [de], a                                     ; $5eaf: $12
	cp   $ff                                         ; $5eb0: $fe $ff
	ld   bc, $af8f                                   ; $5eb2: $01 $8f $af
	ccf                                              ; $5eb5: $3f
	dec  bc                                          ; $5eb6: $0b
	ccf                                              ; $5eb7: $3f
	add  d                                           ; $5eb8: $82
	cp   a                                           ; $5eb9: $bf
	add  b                                           ; $5eba: $80
	cp   a                                           ; $5ebb: $bf
	push de                                          ; $5ebc: $d5
	rst  $38                                         ; $5ebd: $ff
	daa                                              ; $5ebe: $27
	cp   a                                           ; $5ebf: $bf
	ccf                                              ; $5ec0: $3f
	rst  $38                                         ; $5ec1: $ff
	call nc, $f081                                   ; $5ec2: $d4 $81 $f0
	add  hl, de                                      ; $5ec5: $19
	sub  b                                           ; $5ec6: $90
	ldh  a, [$90]                                    ; $5ec7: $f0 $90
	ldh  a, [rSVBK]                                  ; $5ec9: $f0 $70
	ldh  a, [$e0]                                    ; $5ecb: $f0 $e0
	ldh  a, [$c0]                                    ; $5ecd: $f0 $c0
	ldh  a, [$d0]                                    ; $5ecf: $f0 $d0
	ldh  a, [hScriptOpcodeParams]                                    ; $5ed1: $f0 $a0
	rst  $38                                         ; $5ed3: $ff
	sbc  h                                           ; $5ed4: $9c
	db   $fc                                         ; $5ed5: $fc

jr_080_5ed6:
	pop  de                                          ; $5ed6: $d1
	di                                               ; $5ed7: $f3
	add  sp, -$15                                    ; $5ed8: $e8 $eb
	ld   hl, sp-$05                                  ; $5eda: $f8 $fb
	ld   hl, sp-$05                                  ; $5edc: $f8 $fb
	ld   a, [$80fb]                                  ; $5ede: $fa $fb $80
	ld   sp, hl                                      ; $5ee1: $f9
	nop                                              ; $5ee2: $00
	ldh  [$80], a                                    ; $5ee3: $e0 $80
	rrca                                             ; $5ee5: $0f
	add  b                                           ; $5ee6: $80
	rst  $28                                         ; $5ee7: $ef
	add  d                                           ; $5ee8: $82
	rst  $38                                         ; $5ee9: $ff
	add  [hl]                                        ; $5eea: $86
	nop                                              ; $5eeb: $00
	add  d                                           ; $5eec: $82
	cp   $80                                         ; $5eed: $fe $80
	db   $fc                                         ; $5eef: $fc
	add  b                                           ; $5ef0: $80
	cp   $85                                         ; $5ef1: $fe $85
	nop                                              ; $5ef3: $00
	ld   bc, $505f                                   ; $5ef4: $01 $5f $50
	add  b                                           ; $5ef7: $80
	ldh  a, [$80]                                    ; $5ef8: $f0 $80
	ld   d, b                                        ; $5efa: $50
	nop                                              ; $5efb: $00
	nop                                              ; $5efc: $00
	add  b                                           ; $5efd: $80
	ldh  a, [$83]                                    ; $5efe: $f0 $83
	nop                                              ; $5f00: $00
	add  b                                           ; $5f01: $80
	ld   [hl], b                                     ; $5f02: $70
	nop                                              ; $5f03: $00
	inc  d                                           ; $5f04: $14
	add  e                                           ; $5f05: $83
	ei                                               ; $5f06: $fb
	add  b                                           ; $5f07: $80
	ldh  [$82], a                                    ; $5f08: $e0 $82
	rst  $38                                         ; $5f0a: $ff
	inc  b                                           ; $5f0b: $04
	db   $e3                                         ; $5f0c: $e3
	ei                                               ; $5f0d: $fb
	ld   sp, hl                                      ; $5f0e: $f9
	pop  hl                                          ; $5f0f: $e1
	ldh  [$8a], a                                    ; $5f10: $e0 $8a
	add  b                                           ; $5f12: $80
	add  b                                           ; $5f13: $80
	and  b                                           ; $5f14: $a0
	add  b                                           ; $5f15: $80
	and  e                                           ; $5f16: $a3
	add  b                                           ; $5f17: $80
	nop                                              ; $5f18: $00
	add  b                                           ; $5f19: $80
	inc  b                                           ; $5f1a: $04
	adc  b                                           ; $5f1b: $88
	inc  c                                           ; $5f1c: $0c
	ld   bc, $f3fc                                   ; $5f1d: $01 $fc $f3
	add  e                                           ; $5f20: $83
	nop                                              ; $5f21: $00
	add  b                                           ; $5f22: $80
	ld   [hl], b                                     ; $5f23: $70
	add  b                                           ; $5f24: $80
	nop                                              ; $5f25: $00
	add  b                                           ; $5f26: $80
	ld   [hl], b                                     ; $5f27: $70
	add  b                                           ; $5f28: $80
	nop                                              ; $5f29: $00
	add  b                                           ; $5f2a: $80
	ld   [hl], b                                     ; $5f2b: $70
	nop                                              ; $5f2c: $00
	pop  de                                          ; $5f2d: $d1
	add  c                                           ; $5f2e: $81
	nop                                              ; $5f2f: $00
	nop                                              ; $5f30: $00
	db   $10                                         ; $5f31: $10
	add  l                                           ; $5f32: $85
	nop                                              ; $5f33: $00
	ld   bc, $00ce                                   ; $5f34: $01 $ce $00
	add  b                                           ; $5f37: $80
	rst  $38                                         ; $5f38: $ff
	nop                                              ; $5f39: $00
	nop                                              ; $5f3a: $00
	add  b                                           ; $5f3b: $80
	add  b                                           ; $5f3c: $80
	add  b                                           ; $5f3d: $80
	add  a                                           ; $5f3e: $87
	add  b                                           ; $5f3f: $80
	adc  a                                           ; $5f40: $8f
	add  h                                           ; $5f41: $84
	add  b                                           ; $5f42: $80
	add  d                                           ; $5f43: $82
	nop                                              ; $5f44: $00
	add  b                                           ; $5f45: $80
	inc  c                                           ; $5f46: $0c
	add  d                                           ; $5f47: $82
	db   $fc                                         ; $5f48: $fc
	add  a                                           ; $5f49: $87
	nop                                              ; $5f4a: $00
	nop                                              ; $5f4b: $00
	rrca                                             ; $5f4c: $0f
	add  c                                           ; $5f4d: $81
	nop                                              ; $5f4e: $00
	add  h                                           ; $5f4f: $84
	ld   [hl], b                                     ; $5f50: $70
	add  b                                           ; $5f51: $80
	jr   nc, jr_080_5ed6                             ; $5f52: $30 $82

	nop                                              ; $5f54: $00
	nop                                              ; $5f55: $00
	ldh  a, [rIE]                                    ; $5f56: $f0 $ff
	nop                                              ; $5f58: $00
	rst  $38                                         ; $5f59: $ff
	nop                                              ; $5f5a: $00
	rst  $38                                         ; $5f5b: $ff

jr_080_5f5c:
	nop                                              ; $5f5c: $00
	rst  $38                                         ; $5f5d: $ff
	nop                                              ; $5f5e: $00
	rst  $38                                         ; $5f5f: $ff
	nop                                              ; $5f60: $00
	rst  $38                                         ; $5f61: $ff
	nop                                              ; $5f62: $00
	rst  $38                                         ; $5f63: $ff
	nop                                              ; $5f64: $00
	or   $00                                         ; $5f65: $f6 $00
	ld   b, $01                                      ; $5f67: $06 $01
	ld   bc, $0f00                                   ; $5f69: $01 $00 $0f
	add  b                                           ; $5f6c: $80
	nop                                              ; $5f6d: $00
	add  b                                           ; $5f6e: $80
	inc  bc                                          ; $5f6f: $03
	adc  c                                           ; $5f70: $89
	rrca                                             ; $5f71: $0f
	add  c                                           ; $5f72: $81
	rst  $38                                         ; $5f73: $ff
	add  b                                           ; $5f74: $80
	rlca                                             ; $5f75: $07
	add  b                                           ; $5f76: $80
	ld   c, $82                                      ; $5f77: $0e $82
	ld   l, $82                                      ; $5f79: $2e $82
	xor  [hl]                                        ; $5f7b: $ae
	add  h                                           ; $5f7c: $84
	rst  $38                                         ; $5f7d: $ff
	add  b                                           ; $5f7e: $80
	ld   [hl-], a                                    ; $5f7f: $32
	add  d                                           ; $5f80: $82
	ldh  a, [c]                                      ; $5f81: $f2
	add  d                                           ; $5f82: $82
	or   $84                                         ; $5f83: $f6 $84
	rst  $38                                         ; $5f85: $ff
	add  b                                           ; $5f86: $80
	db   $e3                                         ; $5f87: $e3

jr_080_5f88:
	add  [hl]                                        ; $5f88: $86
	rst  $30                                         ; $5f89: $f7
	add  d                                           ; $5f8a: $82
	rst  $38                                         ; $5f8b: $ff
	add  b                                           ; $5f8c: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f8d: $cf
	add  h                                           ; $5f8e: $84
	db   $e4                                         ; $5f8f: $e4
	add  d                                           ; $5f90: $82
	db   $ec                                         ; $5f91: $ec
	add  d                                           ; $5f92: $82
	rst  $38                                         ; $5f93: $ff
	inc  b                                           ; $5f94: $04
	db   $fd                                         ; $5f95: $fd
	rst  $38                                         ; $5f96: $ff
	sub  e                                           ; $5f97: $93
	sbc  a                                           ; $5f98: $9f
	sub  e                                           ; $5f99: $93
	add  c                                           ; $5f9a: $81
	sbc  a                                           ; $5f9b: $9f
	nop                                              ; $5f9c: $00
	adc  [hl]                                        ; $5f9d: $8e
	add  c                                           ; $5f9e: $81
	adc  a                                           ; $5f9f: $8f
	db   $10                                         ; $5fa0: $10
	db   $e4                                         ; $5fa1: $e4
	ldh  a, [rSVBK]                                  ; $5fa2: $f0 $70
	ldh  a, [$f4]                                    ; $5fa4: $f0 $f4
	ld   hl, sp-$48                                  ; $5fa6: $f8 $b8
	ld   hl, sp+$4a                                  ; $5fa8: $f8 $4a
	db   $fc                                         ; $5faa: $fc
	rst  $28                                         ; $5fab: $ef
	cp   $b6                                         ; $5fac: $fe $b6
	cp   $fd                                         ; $5fae: $fe $fd
	rst  $38                                         ; $5fb0: $ff
	ret                                              ; $5fb1: $c9


	add  d                                           ; $5fb2: $82
	add  b                                           ; $5fb3: $80
	add  b                                           ; $5fb4: $80
	ld   b, b                                        ; $5fb5: $40
	add  b                                           ; $5fb6: $80
	nop                                              ; $5fb7: $00
	add  b                                           ; $5fb8: $80
	jr   nz, jr_080_5fd0                             ; $5fb9: $20 $15

	jr   jr_080_5f5c                                 ; $5fbb: $18 $9f

	nop                                              ; $5fbd: $00
	ld   b, c                                        ; $5fbe: $41
	nop                                              ; $5fbf: $00
	scf                                              ; $5fc0: $37
	ld   c, $b8                                      ; $5fc1: $0e $b8
	ccf                                              ; $5fc3: $3f
	ld   a, a                                        ; $5fc4: $7f
	rrca                                             ; $5fc5: $0f
	dec  bc                                          ; $5fc6: $0b
	rlca                                             ; $5fc7: $07
	add  hl, de                                      ; $5fc8: $19
	inc  bc                                          ; $5fc9: $03
	ld   a, l                                        ; $5fca: $7d
	nop                                              ; $5fcb: $00
	db   $e3                                         ; $5fcc: $e3
	nop                                              ; $5fcd: $00
	add  c                                           ; $5fce: $81
	inc  c                                           ; $5fcf: $0c

jr_080_5fd0:
	ldh  a, [c]                                      ; $5fd0: $f2
	add  b                                           ; $5fd1: $80
	inc  c                                           ; $5fd2: $0c
	inc  bc                                          ; $5fd3: $03
	rlca                                             ; $5fd4: $07
	rra                                              ; $5fd5: $1f
	ld   hl, sp-$20                                  ; $5fd6: $f8 $e0
	add  d                                           ; $5fd8: $82
	rst  $38                                         ; $5fd9: $ff
	dec  b                                           ; $5fda: $05
	ld   hl, sp-$28                                  ; $5fdb: $f8 $d8
	scf                                              ; $5fdd: $37
	rla                                              ; $5fde: $17
	ld   l, a                                        ; $5fdf: $6f
	ld   a, a                                        ; $5fe0: $7f
	add  b                                           ; $5fe1: $80
	jr   nc, jr_080_5fe7                             ; $5fe2: $30 $03

	rst  $38                                         ; $5fe4: $ff
	xor  a                                           ; $5fe5: $af
	ld   a, a                                        ; $5fe6: $7f

jr_080_5fe7:
	ccf                                              ; $5fe7: $3f
	add  d                                           ; $5fe8: $82
	rst  $38                                         ; $5fe9: $ff
	dec  b                                           ; $5fea: $05
	inc  e                                           ; $5feb: $1c
	rra                                              ; $5fec: $1f
	jp   $8fcf                                       ; $5fed: $c3 $cf $8f


	add  b                                           ; $5ff0: $80
	add  b                                           ; $5ff1: $80
	ld   bc, $ff83                                   ; $5ff2: $01 $83 $ff
	inc  c                                           ; $5ff5: $0c
	db   $e4                                         ; $5ff6: $e4
	db   $fc                                         ; $5ff7: $fc
	ld   hl, sp+$00                                  ; $5ff8: $f8 $00
	pop  de                                          ; $5ffa: $d1
	pop  bc                                          ; $5ffb: $c1
	ld   hl, sp-$10                                  ; $5ffc: $f8 $f0
	rlca                                             ; $5ffe: $07
	rst  $38                                         ; $5fff: $ff
	pop  af                                          ; $6000: $f1
	rst  $38                                         ; $6001: $ff
	jp   hl                                          ; $6002: $e9


	add  c                                           ; $6003: $81
	rst  $38                                         ; $6004: $ff
	nop                                              ; $6005: $00
	jr   jr_080_5f88                                 ; $6006: $18 $80

	rst  $38                                         ; $6008: $ff
	ld   [bc], a                                     ; $6009: $02
	rrca                                             ; $600a: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $600b: $cf
	ret  nz                                          ; $600c: $c0

	add  b                                           ; $600d: $80

jr_080_600e:
	ld   h, b                                        ; $600e: $60
	add  b                                           ; $600f: $80
	ldh  a, [$0b]                                    ; $6010: $f0 $0b
	inc  bc                                          ; $6012: $03
	db   $e3                                         ; $6013: $e3
	jr   c, jr_080_600e                              ; $6014: $38 $f8

	xor  h                                           ; $6016: $ac
	db   $ec                                         ; $6017: $ec
	ld   h, d                                        ; $6018: $62
	ldh  [c], a                                      ; $6019: $e2
	pop  hl                                          ; $601a: $e1
	pop  bc                                          ; $601b: $c1
	call z, $800c                                    ; $601c: $cc $0c $80
	ccf                                              ; $601f: $3f
	inc  bc                                          ; $6020: $03
	ld   a, l                                        ; $6021: $7d
	ld   a, e                                        ; $6022: $7b
	ld   a, [de]                                     ; $6023: $1a
	dec  de                                          ; $6024: $1b
	add  b                                           ; $6025: $80
	add  c                                           ; $6026: $81
	inc  bc                                          ; $6027: $03
	ld   h, [hl]                                     ; $6028: $66
	ld   h, b                                        ; $6029: $60
	dec  e                                           ; $602a: $1d
	inc  e                                           ; $602b: $1c
	add  b                                           ; $602c: $80
	add  b                                           ; $602d: $80
	rrca                                             ; $602e: $0f
	ld   [hl], d                                     ; $602f: $72
	ld   [hl], c                                     ; $6030: $71
	dec  b                                           ; $6031: $05
	ld   bc, $c3f9                                   ; $6032: $01 $f9 $c3
	inc  bc                                          ; $6035: $03
	jp   $f7e3                                       ; $6036: $c3 $e3 $f7


	ld   h, a                                        ; $6039: $67
	ld   a, a                                        ; $603a: $7f
	or   a                                           ; $603b: $b7
	ccf                                              ; $603c: $3f
	ld   c, c                                        ; $603d: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $603e: $cf
	add  b                                           ; $603f: $80
	rst  $30                                         ; $6040: $f7
	add  b                                           ; $6041: $80
	ei                                               ; $6042: $fb
	nop                                              ; $6043: $00
	rst  $38                                         ; $6044: $ff
	adc  l                                           ; $6045: $8d
	rrca                                             ; $6046: $0f
	ld   bc, $ae5e                                   ; $6047: $01 $5e $ae
	add  d                                           ; $604a: $82
	adc  $86                                         ; $604b: $ce $86
	xor  $80                                         ; $604d: $ee $80
	cp   $84                                         ; $604f: $fe $84
	or   $80                                         ; $6051: $f6 $80
	halt                                             ; $6053: $76
	add  b                                           ; $6054: $80
	ld   a, [hl]                                     ; $6055: $7e
	add  b                                           ; $6056: $80
	ld   a, a                                        ; $6057: $7f
	add  d                                           ; $6058: $82
	ccf                                              ; $6059: $3f
	add  b                                           ; $605a: $80
	rst  $30                                         ; $605b: $f7
	adc  h                                           ; $605c: $8c
	rst  $28                                         ; $605d: $ef
	add  h                                           ; $605e: $84
	jp   hl                                          ; $605f: $e9


	add  b                                           ; $6060: $80
	di                                               ; $6061: $f3
	add  d                                           ; $6062: $82
	rst  $30                                         ; $6063: $f7
	add  b                                           ; $6064: $80
	rst  $28                                         ; $6065: $ef
	add  b                                           ; $6066: $80
	rst  JumpTable                                         ; $6067: $df
	ld   [bc], a                                     ; $6068: $02
	adc  h                                           ; $6069: $8c
	adc  a                                           ; $606a: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $606b: $cf
	add  h                                           ; $606c: $84
	call $cc85                                       ; $606d: $cd $85 $cc
	ld   b, $65                                      ; $6070: $06 $65
	rst  $38                                         ; $6072: $ff
	db   $fc                                         ; $6073: $fc
	rst  $38                                         ; $6074: $ff
	ld   a, [$adef]                                  ; $6075: $fa $ef $ad
	add  b                                           ; $6078: $80
	rst  $28                                         ; $6079: $ef
	rrca                                             ; $607a: $0f
	rst  $20                                         ; $607b: $e7
	or   $f3                                         ; $607c: $f6 $f3
	db   $d3                                         ; $607e: $d3
	ld   [hl], c                                     ; $607f: $71
	ld   a, b                                        ; $6080: $78
	ld   a, c                                        ; $6081: $79
	ld   h, e                                        ; $6082: $63
	inc  bc                                          ; $6083: $03
	adc  a                                           ; $6084: $8f
	add  b                                           ; $6085: $80
	call z, $c3c0                                    ; $6086: $cc $c0 $c3
	ret  nz                                          ; $6089: $c0

	add  b                                           ; $608a: $80
	add  b                                           ; $608b: $80
	adc  a                                           ; $608c: $8f
	add  c                                           ; $608d: $81
	cp   a                                           ; $608e: $bf
	add  b                                           ; $608f: $80
	ccf                                              ; $6090: $3f
	ld   b, $c3                                      ; $6091: $06 $c3
	jr   c, jr_080_60d1                              ; $6093: $38 $3c

	ld   [hl], e                                     ; $6095: $73
	ld   a, e                                        ; $6096: $7b
	ld   b, $f6                                      ; $6097: $06 $f6
	add  b                                           ; $6099: $80
	ld   b, $80                                      ; $609a: $06 $80
	ld   hl, sp-$7c                                  ; $609c: $f8 $84
	rst  $38                                         ; $609e: $ff
	add  b                                           ; $609f: $80
	rst  JumpTable                                         ; $60a0: $df
	add  b                                           ; $60a1: $80
	nop                                              ; $60a2: $00
	add  b                                           ; $60a3: $80
	ret  nz                                          ; $60a4: $c0

	add  b                                           ; $60a5: $80
	nop                                              ; $60a6: $00
	add  b                                           ; $60a7: $80
	ld   h, b                                        ; $60a8: $60
	add  e                                           ; $60a9: $83
	rst  $38                                         ; $60aa: $ff
	ld   bc, $0ff0                                   ; $60ab: $01 $f0 $0f
	add  b                                           ; $60ae: $80
	ld   bc, $0e80                                   ; $60af: $01 $80 $0e
	add  b                                           ; $60b2: $80
	inc  sp                                          ; $60b3: $33

jr_080_60b4:
	ld   [bc], a                                     ; $60b4: $02
	ld   b, b                                        ; $60b5: $40
	ld   c, h                                        ; $60b6: $4c
	inc  c                                           ; $60b7: $0c
	add  e                                           ; $60b8: $83
	rst  $38                                         ; $60b9: $ff
	inc  bc                                          ; $60ba: $03
	inc  b                                           ; $60bb: $04
	ld   hl, sp-$09                                  ; $60bc: $f8 $f7
	db   $f4                                         ; $60be: $f4
	add  b                                           ; $60bf: $80
	rrca                                             ; $60c0: $0f
	add  b                                           ; $60c1: $80
	ldh  a, [rP1]                                    ; $60c2: $f0 $00
	nop                                              ; $60c4: $00
	add  b                                           ; $60c5: $80
	rlca                                             ; $60c6: $07
	add  e                                           ; $60c7: $83
	rst  $38                                         ; $60c8: $ff
	add  b                                           ; $60c9: $80
	ld   [hl-], a                                    ; $60ca: $32
	ld   [$01e1], sp                                 ; $60cb: $08 $e1 $01
	add  sp, -$78                                    ; $60ce: $e8 $88
	ld   h, h                                        ; $60d0: $64

jr_080_60d1:
	inc  b                                           ; $60d1: $04
	jr   jr_080_60b4                                 ; $60d2: $18 $e0

	rst  $20                                         ; $60d4: $e7
	add  b                                           ; $60d5: $80
	ld   hl, sp-$80                                  ; $60d6: $f8 $80
	ldh  [rSC], a                                    ; $60d8: $e0 $02
	rst  ToBoot                                         ; $60da: $c7
	ld   h, $1e                                      ; $60db: $26 $1e
	add  b                                           ; $60dd: $80
	jr   jr_080_60e4                                 ; $60de: $18 $04

	add  c                                           ; $60e0: $81
	add  b                                           ; $60e1: $80
	ld   c, $01                                      ; $60e2: $0e $01

jr_080_60e4:
	pop  af                                          ; $60e4: $f1
	add  b                                           ; $60e5: $80
	dec  c                                           ; $60e6: $0d
	add  b                                           ; $60e7: $80
	ld   a, $80                                      ; $60e8: $3e $80
	ld   a, a                                        ; $60ea: $7f
	rlca                                             ; $60eb: $07
	rst  $38                                         ; $60ec: $ff
	dec  e                                           ; $60ed: $1d
	ld   [bc], a                                     ; $60ee: $02
	ld   h, e                                        ; $60ef: $63
	inc  bc                                          ; $60f0: $03
	add  c                                           ; $60f1: $81
	ld   a, l                                        ; $60f2: $7d
	ld   a, h                                        ; $60f3: $7c
	add  b                                           ; $60f4: $80
	cp   $80                                         ; $60f5: $fe $80
	db   $e3                                         ; $60f7: $e3
	add  b                                           ; $60f8: $80
	ret  nz                                          ; $60f9: $c0

	add  b                                           ; $60fa: $80
	rra                                              ; $60fb: $1f
	ld   [bc], a                                     ; $60fc: $02
	rst  $38                                         ; $60fd: $ff
	inc  bc                                          ; $60fe: $03
	db   $fc                                         ; $60ff: $fc
	add  b                                           ; $6100: $80
	ld   a, $80                                      ; $6101: $3e $80
	cp   $81                                         ; $6103: $fe $81

jr_080_6105:
	nop                                              ; $6105: $00
	add  b                                           ; $6106: $80
	ret  nz                                          ; $6107: $c0

	add  b                                           ; $6108: $80
	ccf                                              ; $6109: $3f
	add  c                                           ; $610a: $81
	rst  $38                                         ; $610b: $ff
	add  [hl]                                        ; $610c: $86
	nop                                              ; $610d: $00
	ld   [$15ea], sp                                 ; $610e: $08 $ea $15
	jr   z, @+$31                                    ; $6111: $28 $2f

	ld   b, a                                        ; $6113: $47
	ld   e, a                                        ; $6114: $5f
	sbc  h                                           ; $6115: $9c
	cp   a                                           ; $6116: $bf
	jp   $0085                                       ; $6117: $c3 $85 $00


	ld   [$0ffc], sp                                 ; $611a: $08 $fc $0f
	ldh  a, [rIE]                                    ; $611d: $f0 $ff
	ldh  a, [rIE]                                    ; $611f: $f0 $ff
	ldh  a, [rIE]                                    ; $6121: $f0 $ff
	db   $fc                                         ; $6123: $fc
	add  l                                           ; $6124: $85
	nop                                              ; $6125: $00
	ld   b, $c0                                      ; $6126: $06 $c0
	rst  $38                                         ; $6128: $ff
	ccf                                              ; $6129: $3f
	rst  $38                                         ; $612a: $ff
	ccf                                              ; $612b: $3f
	rst  $38                                         ; $612c: $ff
	ccf                                              ; $612d: $3f
	add  b                                           ; $612e: $80
	rst  $38                                         ; $612f: $ff
	add  l                                           ; $6130: $85

jr_080_6131:
	nop                                              ; $6131: $00
	nop                                              ; $6132: $00
	ld   [hl], b                                     ; $6133: $70
	add  e                                           ; $6134: $83
	sub  b                                           ; $6135: $90
	inc  bc                                          ; $6136: $03
	stop                                             ; $6137: $10 $00
	ld   [hl-], a                                    ; $6139: $32
	ccf                                              ; $613a: $3f
	add  b                                           ; $613b: $80
	jp   $1380                                       ; $613c: $c3 $80 $13


	adc  b                                           ; $613f: $88
	ld   d, e                                        ; $6140: $53
	ld   bc, $0002                                   ; $6141: $01 $02 $00
	adc  b                                           ; $6144: $88
	ld   l, b                                        ; $6145: $68
	add  d                                           ; $6146: $82
	ld   [$008e], sp                                 ; $6147: $08 $8e $00
	nop                                              ; $614a: $00
	rrca                                             ; $614b: $0f
	adc  l                                           ; $614c: $8d
	nop                                              ; $614d: $00
	nop                                              ; $614e: $00
	ldh  a, [$81]                                    ; $614f: $f0 $81
	rst  $38                                         ; $6151: $ff
	nop                                              ; $6152: $00
	ld   bc, $0f80                                   ; $6153: $01 $80 $0f
	add  b                                           ; $6156: $80
	rlca                                             ; $6157: $07
	add  d                                           ; $6158: $82
	inc  bc                                          ; $6159: $03
	add  c                                           ; $615a: $81
	ld   bc, $e882                                   ; $615b: $01 $82 $e8
	add  b                                           ; $615e: $80
	ld   [$6886], sp                                 ; $615f: $08 $86 $68
	add  b                                           ; $6162: $80
	ld   [$008e], sp                                 ; $6163: $08 $8e $00
	nop                                              ; $6166: $00
	rrca                                             ; $6167: $0f
	adc  l                                           ; $6168: $8d
	nop                                              ; $6169: $00
	ld   b, $ee                                      ; $616a: $06 $ee
	pop  hl                                          ; $616c: $e1
	ld   e, $7e                                      ; $616d: $1e $7e
	rst  $20                                         ; $616f: $e7
	rst  $30                                         ; $6170: $f7
	ldh  a, [$80]                                    ; $6171: $f0 $80
	pop  bc                                          ; $6173: $c1
	add  d                                           ; $6174: $82
	ret  nz                                          ; $6175: $c0

	add  b                                           ; $6176: $80
	add  b                                           ; $6177: $80
	ld   [bc], a                                     ; $6178: $02
	add  h                                           ; $6179: $84
	db   $ec                                         ; $617a: $ec
	add  sp, -$80                                    ; $617b: $e8 $80
	ld   [$e880], sp                                 ; $617d: $08 $80 $e8
	add  b                                           ; $6180: $80
	ld   hl, sp+$00                                  ; $6181: $f8 $00
	jr   jr_080_6105                                 ; $6183: $18 $80

	ld   hl, sp-$7e                                  ; $6185: $f8 $82
	ld   a, b                                        ; $6187: $78
	ld   bc, $2038                                   ; $6188: $01 $38 $20
	adc  l                                           ; $618b: $8d
	nop                                              ; $618c: $00
	nop                                              ; $618d: $00
	rrca                                             ; $618e: $0f
	adc  l                                           ; $618f: $8d
	nop                                              ; $6190: $00

jr_080_6191:
	ld   a, [bc]                                     ; $6191: $0a
	inc  bc                                          ; $6192: $03
	ccf                                              ; $6193: $3f
	inc  bc                                          ; $6194: $03
	ccf                                              ; $6195: $3f
	inc  c                                           ; $6196: $0c
	ccf                                              ; $6197: $3f
	jr   nc, jr_080_61d9                             ; $6198: $30 $3f

jr_080_619a:
	ld   b, e                                        ; $619a: $43
	ld   a, a                                        ; $619b: $7f
	rrca                                             ; $619c: $0f
	add  b                                           ; $619d: $80
	ld   a, a                                        ; $619e: $7f
	dec  bc                                          ; $619f: $0b
	ld   a, b                                        ; $61a0: $78
	ld   a, e                                        ; $61a1: $7b
	inc  bc                                          ; $61a2: $03
	di                                               ; $61a3: $f3
	rst  $38                                         ; $61a4: $ff
	ldh  a, [rIE]                                    ; $61a5: $f0 $ff

jr_080_61a7:
	ldh  a, [c]                                      ; $61a7: $f2
	rst  $38                                         ; $61a8: $ff
	ld   sp, hl                                      ; $61a9: $f9
	rst  $38                                         ; $61aa: $ff
	adc  b                                           ; $61ab: $88
	add  c                                           ; $61ac: $81
	add  b                                           ; $61ad: $80
	add  b                                           ; $61ae: $80
	jr   c, jr_080_6131                              ; $61af: $38 $80

	ret  nz                                          ; $61b1: $c0

	nop                                              ; $61b2: $00
	ccf                                              ; $61b3: $3f
	add  c                                           ; $61b4: $81

jr_080_61b5:
	rst  $38                                         ; $61b5: $ff
	nop                                              ; $61b6: $00
	ccf                                              ; $61b7: $3f
	add  c                                           ; $61b8: $81
	rst  $38                                         ; $61b9: $ff
	add  [hl]                                        ; $61ba: $86
	nop                                              ; $61bb: $00
	nop                                              ; $61bc: $00
	adc  a                                           ; $61bd: $8f
	add  l                                           ; $61be: $85
	add  b                                           ; $61bf: $80
	add  [hl]                                        ; $61c0: $86
	nop                                              ; $61c1: $00
	nop                                              ; $61c2: $00
	ld   e, [hl]                                     ; $61c3: $5e
	add  l                                           ; $61c4: $85
	ld   d, e                                        ; $61c5: $53
	add  b                                           ; $61c6: $80
	db   $d3                                         ; $61c7: $d3
	inc  bc                                          ; $61c8: $03
	ei                                               ; $61c9: $fb
	rst  $38                                         ; $61ca: $ff
	add  hl, sp                                      ; $61cb: $39
	ccf                                              ; $61cc: $3f

jr_080_61cd:
	add  b                                           ; $61cd: $80
	ret  nz                                          ; $61ce: $c0

	adc  b                                           ; $61cf: $88
	ld   l, b                                        ; $61d0: $68
	add  d                                           ; $61d1: $82
	add  sp, -$80                                    ; $61d2: $e8 $80
	ld   [$008e], sp                                 ; $61d4: $08 $8e $00
	nop                                              ; $61d7: $00
	rrca                                             ; $61d8: $0f

jr_080_61d9:
	adc  l                                           ; $61d9: $8d
	nop                                              ; $61da: $00
	nop                                              ; $61db: $00
	ld   c, $84                                      ; $61dc: $0e $84
	ld   bc, $0303                                   ; $61de: $01 $03 $03
	db   $e3                                         ; $61e1: $e3
	rst  $20                                         ; $61e2: $e7
	ld   sp, hl                                      ; $61e3: $f9
	add  c                                           ; $61e4: $81
	rst  $38                                         ; $61e5: $ff
	add  b                                           ; $61e6: $80
	rra                                              ; $61e7: $1f
	add  b                                           ; $61e8: $80
	ld   [$6886], sp                                 ; $61e9: $08 $86 $68
	add  b                                           ; $61ec: $80
	ld   [$e882], sp                                 ; $61ed: $08 $82 $e8
	adc  [hl]                                        ; $61f0: $8e
	nop                                              ; $61f1: $00
	nop                                              ; $61f2: $00
	rrca                                             ; $61f3: $0f
	adc  l                                           ; $61f4: $8d
	nop                                              ; $61f5: $00
	nop                                              ; $61f6: $00
	adc  a                                           ; $61f7: $8f
	add  b                                           ; $61f8: $80
	adc  d                                           ; $61f9: $8a
	add  b                                           ; $61fa: $80
	sub  c                                           ; $61fb: $91
	ld   bc, $1595                                   ; $61fc: $01 $95 $15
	add  l                                           ; $61ff: $85
	sub  l                                           ; $6200: $95
	ld   [bc], a                                     ; $6201: $02
	dec  d                                           ; $6202: $15
	sub  l                                           ; $6203: $95
	dec  c                                           ; $6204: $0d
	add  e                                           ; $6205: $83
	jr   c, jr_080_6208                              ; $6206: $38 $00

jr_080_6208:
	jr   jr_080_6191                                 ; $6208: $18 $87

	jr   c, jr_080_619a                              ; $620a: $38 $8e

	nop                                              ; $620c: $00
	nop                                              ; $620d: $00
	rrca                                             ; $620e: $0f
	adc  l                                           ; $620f: $8d
	nop                                              ; $6210: $00
	nop                                              ; $6211: $00
	adc  a                                           ; $6212: $8f
	add  b                                           ; $6213: $80
	sub  l                                           ; $6214: $95
	add  b                                           ; $6215: $80
	adc  [hl]                                        ; $6216: $8e
	add  b                                           ; $6217: $80
	add  h                                           ; $6218: $84
	add  d                                           ; $6219: $82
	ret  nz                                          ; $621a: $c0

	add  e                                           ; $621b: $83
	ldh  [rP1], a                                    ; $621c: $e0 $00
	ld   e, b                                        ; $621e: $58
	add  a                                           ; $621f: $87
	jr   c, jr_080_6222                              ; $6220: $38 $00

jr_080_6222:
	jr   jr_080_61a7                                 ; $6222: $18 $83

	jr   c, jr_080_6226                              ; $6224: $38 $00

jr_080_6226:
	jr   nz, jr_080_61b5                             ; $6226: $20 $8d

	nop                                              ; $6228: $00
	nop                                              ; $6229: $00
	rrca                                             ; $622a: $0f
	adc  l                                           ; $622b: $8d
	nop                                              ; $622c: $00
	rlca                                             ; $622d: $07
	rst  $28                                         ; $622e: $ef
	ldh  a, [$e8]                                    ; $622f: $f0 $e8
	ld   hl, sp+$3c                                  ; $6231: $f8 $3c
	ccf                                              ; $6233: $3f
	inc  c                                           ; $6234: $0c
	rrca                                             ; $6235: $0f
	add  b                                           ; $6236: $80
	inc  bc                                          ; $6237: $03
	nop                                              ; $6238: $00
	nop                                              ; $6239: $00
	add  b                                           ; $623a: $80
	ret  nz                                          ; $623b: $c0

	add  b                                           ; $623c: $80
	ldh  a, [rSB]                                    ; $623d: $f0 $01
	db   $fc                                         ; $623f: $fc

jr_080_6240:
	db   $e4                                         ; $6240: $e4
	add  d                                           ; $6241: $82
	ld   a, b                                        ; $6242: $78
	add  c                                           ; $6243: $81
	ld   hl, sp+$03                                  ; $6244: $f8 $03
	jr   c, jr_080_6240                              ; $6246: $38 $f8

	ret  c                                           ; $6248: $d8

	ld   hl, sp-$80                                  ; $6249: $f8 $80
	jr   c, jr_080_61cd                              ; $624b: $38 $80

	ld   [$008e], sp                                 ; $624d: $08 $8e $00
	nop                                              ; $6250: $00
	rrca                                             ; $6251: $0f
	adc  l                                           ; $6252: $8d
	nop                                              ; $6253: $00
	nop                                              ; $6254: $00
	ldh  a, [rIE]                                    ; $6255: $f0 $ff
	nop                                              ; $6257: $00
	rst  $38                                         ; $6258: $ff
	nop                                              ; $6259: $00
	rst  $38                                         ; $625a: $ff
	nop                                              ; $625b: $00
	rst  $38                                         ; $625c: $ff
	nop                                              ; $625d: $00
	rst  $38                                         ; $625e: $ff
	nop                                              ; $625f: $00
	rst  $38                                         ; $6260: $ff
	nop                                              ; $6261: $00
	rst  $30                                         ; $6262: $f7
	nop                                              ; $6263: $00
	ei                                               ; $6264: $fb
	nop                                              ; $6265: $00
	ld   bc, $0b04                                   ; $6266: $01 $04 $0b
	add  h                                           ; $6269: $84
	rrca                                             ; $626a: $0f
	add  b                                           ; $626b: $80
	dec  c                                           ; $626c: $0d
	add  b                                           ; $626d: $80
	dec  bc                                          ; $626e: $0b
	add  b                                           ; $626f: $80
	ld   b, $80                                      ; $6270: $06 $80
	rrca                                             ; $6272: $0f
	ld   bc, $7d8d                                   ; $6273: $01 $8d $7d
	add  b                                           ; $6276: $80
	db   $db                                         ; $6277: $db
	add  b                                           ; $6278: $80
	ld   [hl], h                                     ; $6279: $74

jr_080_627a:
	add  b                                           ; $627a: $80
	jp   z, $b480                                    ; $627b: $ca $80 $b4

	add  b                                           ; $627e: $80
	jp   c, $a480                                    ; $627f: $da $80 $a4

	add  b                                           ; $6282: $80
	ld   d, b                                        ; $6283: $50
	inc  bc                                          ; $6284: $03
	ld   bc, $8200                                   ; $6285: $01 $00 $82
	add  b                                           ; $6288: $80
	add  b                                           ; $6289: $80
	nop                                              ; $628a: $00
	add  b                                           ; $628b: $80
	stop                                             ; $628c: $10 $00
	inc  b                                           ; $628e: $04
	add  l                                           ; $628f: $85
	nop                                              ; $6290: $00
	ld   [bc], a                                     ; $6291: $02
	db   $db                                         ; $6292: $db
	ld   bc, $8562                                   ; $6293: $01 $62 $85
	nop                                              ; $6296: $00
	nop                                              ; $6297: $00
	ret  nz                                          ; $6298: $c0

	add  e                                           ; $6299: $83
	nop                                              ; $629a: $00
	inc  b                                           ; $629b: $04
	add  b                                           ; $629c: $80
	ldh  [hScriptOpcodeParams], a                                    ; $629d: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $629f: $e0 $a0
	add  l                                           ; $62a1: $85
	nop                                              ; $62a2: $00
	ld   c, $01                                      ; $62a3: $0e $01
	nop                                              ; $62a5: $00
	ld   bc, $6100                                   ; $62a6: $01 $00 $61
	ld   b, b                                        ; $62a9: $40
	ld   h, l                                        ; $62aa: $65
	jr   c, jr_080_62af                              ; $62ab: $38 $02

	nop                                              ; $62ad: $00
	xor  b                                           ; $62ae: $a8

jr_080_62af:
	jr   z, jr_080_62b7                              ; $62af: $28 $06

	add  h                                           ; $62b1: $84

jr_080_62b2:
	add  d                                           ; $62b2: $82
	add  b                                           ; $62b3: $80
	and  b                                           ; $62b4: $a0
	inc  bc                                          ; $62b5: $03
	ld   c, d                                        ; $62b6: $4a

jr_080_62b7:
	jr   z, jr_080_62b9                              ; $62b7: $28 $00

jr_080_62b9:
	sbc  l                                           ; $62b9: $9d
	add  d                                           ; $62ba: $82
	nop                                              ; $62bb: $00
	nop                                              ; $62bc: $00
	ld   bc, $0080                                   ; $62bd: $01 $80 $00
	nop                                              ; $62c0: $00
	ld   bc, $0083                                   ; $62c1: $01 $83 $00
	inc  bc                                          ; $62c4: $03
	ld   bc, $cf03                                   ; $62c5: $01 $03 $cf
	inc  [hl]                                        ; $62c8: $34
	add  c                                           ; $62c9: $81
	ld   d, $06                                      ; $62ca: $16 $06
	or   d                                           ; $62cc: $b2
	and  [hl]                                        ; $62cd: $a6
	ld   c, $0a                                      ; $62ce: $0e $0a
	sbc  $d8                                         ; $62d0: $de $d8
	nop                                              ; $62d2: $00
	add  b                                           ; $62d3: $80
	sub  b                                           ; $62d4: $90
	ld   b, $08                                      ; $62d5: $06 $08
	nop                                              ; $62d7: $00
	ldh  a, [rSB]                                    ; $62d8: $f0 $01
	ld   [bc], a                                     ; $62da: $02
	nop                                              ; $62db: $00
	ld   [bc], a                                     ; $62dc: $02
	add  c                                           ; $62dd: $81
	nop                                              ; $62de: $00
	jr   @+$04                                       ; $62df: $18 $02

jr_080_62e1:
	nop                                              ; $62e1: $00
	ld   bc, $0003                                   ; $62e2: $01 $03 $00
	ld   bc, $0005                                   ; $62e5: $01 $05 $00
	cp   l                                           ; $62e8: $bd
	ld   b, h                                        ; $62e9: $44
	db   $10                                         ; $62ea: $10
	inc  d                                           ; $62eb: $14
	xor  b                                           ; $62ec: $a8
	xor  [hl]                                        ; $62ed: $ae
	ld   b, $00                                      ; $62ee: $06 $00
	and  b                                           ; $62f0: $a0
	ldh  [$28], a                                    ; $62f1: $e0 $28
	ld   h, b                                        ; $62f3: $60
	ld   c, h                                        ; $62f4: $4c
	add  b                                           ; $62f5: $80
	adc  h                                           ; $62f6: $8c
	jr   nc, jr_080_627a                             ; $62f7: $30 $81

	add  c                                           ; $62f9: $81
	ld   bc, $0003                                   ; $62fa: $01 $03 $00
	ld   bc, $0002                                   ; $62fd: $01 $02 $00
	add  b                                           ; $6300: $80
	ld   bc, $0603                                   ; $6301: $01 $03 $06
	ld   [bc], a                                     ; $6304: $02
	rlca                                             ; $6305: $07
	inc  bc                                          ; $6306: $03
	add  b                                           ; $6307: $80
	ld   bc, $0f09                                   ; $6308: $01 $09 $0f
	ld   [$cc0c], sp                                 ; $630b: $08 $0c $cc
	or   h                                           ; $630e: $b4
	add  b                                           ; $630f: $80
	ld   c, b                                        ; $6310: $48
	ld   e, b                                        ; $6311: $58
	sbc  b                                           ; $6312: $98
	add  b                                           ; $6313: $80
	add  b                                           ; $6314: $80
	ld   d, b                                        ; $6315: $50
	add  b                                           ; $6316: $80
	adc  b                                           ; $6317: $88
	dec  c                                           ; $6318: $0d
	ld   l, b                                        ; $6319: $68
	ld   [hl], b                                     ; $631a: $70
	db   $e3                                         ; $631b: $e3
	ld   [bc], a                                     ; $631c: $02
	ld   bc, $0003                                   ; $631d: $01 $03 $00
	dec  b                                           ; $6320: $05
	ld   b, $01                                      ; $6321: $06 $01
	inc  b                                           ; $6323: $04
	ld   [bc], a                                     ; $6324: $02
	inc  b                                           ; $6325: $04
	inc  c                                           ; $6326: $0c
	add  b                                           ; $6327: $80
	ld   bc, $1680                                   ; $6328: $01 $80 $16
	nop                                              ; $632b: $00
	cp   a                                           ; $632c: $bf
	add  c                                           ; $632d: $81
	and  b                                           ; $632e: $a0
	add  b                                           ; $632f: $80
	jr   nz, jr_080_62b2                             ; $6330: $20 $80

	jr   nc, @+$0f                                   ; $6332: $30 $0d

	sub  b                                           ; $6334: $90
	nop                                              ; $6335: $00
	ld   h, b                                        ; $6336: $60
	nop                                              ; $6337: $00
	ld   h, b                                        ; $6338: $60
	ld   [hl], b                                     ; $6339: $70
	stop                                             ; $633a: $10 $00
	rst  $28                                         ; $633c: $ef
	ld   [$0a00], sp                                 ; $633d: $08 $00 $0a
	ld   [$800a], sp                                 ; $6340: $08 $0a $80
	db   $10                                         ; $6343: $10
	ld   bc, $000f                                   ; $6344: $01 $0f $00
	add  b                                           ; $6347: $80
	db   $10                                         ; $6348: $10
	dec  b                                           ; $6349: $05
	ld   b, $19                                      ; $634a: $06 $19
	ld   b, $1e                                      ; $634c: $06 $1e
	xor  e                                           ; $634e: $ab
	ld   d, h                                        ; $634f: $54
	add  b                                           ; $6350: $80
	ld   c, h                                        ; $6351: $4c
	add  e                                           ; $6352: $83
	xor  b                                           ; $6353: $a8
	ld   [$0848], sp                                 ; $6354: $08 $48 $08
	jr   jr_080_62e1                                 ; $6357: $18 $88

	add  b                                           ; $6359: $80
	ret  nz                                          ; $635a: $c0

	jr   nz, @-$16                                   ; $635b: $20 $e8

	rlca                                             ; $635d: $07
	add  [hl]                                        ; $635e: $86
	rrca                                             ; $635f: $0f
	add  b                                           ; $6360: $80
	dec  c                                           ; $6361: $0d
	add  b                                           ; $6362: $80
	ld   c, $80                                      ; $6363: $0e $80
	rrca                                             ; $6365: $0f
	ld   bc, $e010                                   ; $6366: $01 $10 $e0
	add  b                                           ; $6369: $80
	call nc, $a080                                   ; $636a: $d4 $80 $a0
	add  b                                           ; $636d: $80
	add  b                                           ; $636e: $80
	add  b                                           ; $636f: $80
	and  b                                           ; $6370: $a0
	add  b                                           ; $6371: $80
	ld   b, b                                        ; $6372: $40
	add  b                                           ; $6373: $80
	add  b                                           ; $6374: $80
	add  b                                           ; $6375: $80
	nop                                              ; $6376: $00
	nop                                              ; $6377: $00
	rrca                                             ; $6378: $0f
	add  b                                           ; $6379: $80
	nop                                              ; $637a: $00
	add  e                                           ; $637b: $83
	ld   bc, $1100                                   ; $637c: $01 $00 $11
	add  b                                           ; $637f: $80
	ld   bc, $0281                                   ; $6380: $01 $81 $02
	inc  b                                           ; $6383: $04
	ld   [hl+], a                                    ; $6384: $22
	ld   [bc], a                                     ; $6385: $02
	ld   b, d                                        ; $6386: $42
	nop                                              ; $6387: $00
	add  b                                           ; $6388: $80
	adc  e                                           ; $6389: $8b
	nop                                              ; $638a: $00
	ld   bc, $0001                                   ; $638b: $01 $01 $00
	add  c                                           ; $638e: $81
	ld   bc, $0301                                   ; $638f: $01 $01 $03
	nop                                              ; $6392: $00
	add  c                                           ; $6393: $81
	ld   [bc], a                                     ; $6394: $02
	add  hl, bc                                      ; $6395: $09
	nop                                              ; $6396: $00
	ld   b, $04                                      ; $6397: $06 $04
	inc  bc                                          ; $6399: $03
	ld   bc, $fb06                                   ; $639a: $01 $06 $fb
	inc  b                                           ; $639d: $04
	ld   l, h                                        ; $639e: $6c
	ld   l, b                                        ; $639f: $68
	add  b                                           ; $63a0: $80
	ld   b, b                                        ; $63a1: $40
	ld   bc, $aca8                                   ; $63a2: $01 $a8 $ac
	add  b                                           ; $63a5: $80
	cp   h                                           ; $63a6: $bc
	ld   [$8c00], sp                                 ; $63a7: $08 $00 $8c
	ld   l, h                                        ; $63aa: $6c
	add  sp, $1c                                     ; $63ab: $e8 $1c
	ld   a, h                                        ; $63ad: $7c
	sub  e                                           ; $63ae: $93
	inc  b                                           ; $63af: $04
	rlca                                             ; $63b0: $07
	add  b                                           ; $63b1: $80
	inc  bc                                          ; $63b2: $03
	ld   bc, $0607                                   ; $63b3: $01 $07 $06
	add  b                                           ; $63b6: $80
	ld   [bc], a                                     ; $63b7: $02
	inc  bc                                          ; $63b8: $03
	add  hl, bc                                      ; $63b9: $09
	dec  b                                           ; $63ba: $05
	dec  bc                                          ; $63bb: $0b
	add  hl, bc                                      ; $63bc: $09
	add  b                                           ; $63bd: $80
	ld   c, $04                                      ; $63be: $0e $04
	add  hl, bc                                      ; $63c0: $09
	sub  $30                                         ; $63c1: $d6 $30
	ld   d, b                                        ; $63c3: $50
	ld   b, b                                        ; $63c4: $40
	add  c                                           ; $63c5: $81
	ld   d, b                                        ; $63c6: $50
	ld   a, [bc]                                     ; $63c7: $0a
	sub  b                                           ; $63c8: $90
	ld   [hl], b                                     ; $63c9: $70
	jr   nz, @-$1e                                   ; $63ca: $20 $e0

	add  b                                           ; $63cc: $80
	ret  nz                                          ; $63cd: $c0

	jr   nz, jr_080_6410                             ; $63ce: $20 $40

	ld   h, b                                        ; $63d0: $60
	jp   $8004                                       ; $63d1: $c3 $04 $80


	inc  bc                                          ; $63d4: $03
	add  b                                           ; $63d5: $80
	ld   [bc], a                                     ; $63d6: $02
	add  b                                           ; $63d7: $80
	dec  b                                           ; $63d8: $05
	add  hl, bc                                      ; $63d9: $09
	nop                                              ; $63da: $00
	ld   a, [bc]                                     ; $63db: $0a
	ld   [bc], a                                     ; $63dc: $02
	inc  b                                           ; $63dd: $04
	ld   b, $12                                      ; $63de: $06 $12
	jr   jr_080_63e9                                 ; $63e0: $18 $07

	ld   hl, sp+$00                                  ; $63e2: $f8 $00
	add  b                                           ; $63e4: $80
	ld   l, b                                        ; $63e5: $68
	ld   bc, $0008                                   ; $63e6: $01 $08 $00

jr_080_63e9:
	add  b                                           ; $63e9: $80
	db   $10                                         ; $63ea: $10
	add  b                                           ; $63eb: $80
	sub  b                                           ; $63ec: $90
	ld   [bc], a                                     ; $63ed: $02
	jr   nc, @-$5e                                   ; $63ee: $30 $a0

	add  b                                           ; $63f0: $80
	add  b                                           ; $63f1: $80
	ld   b, b                                        ; $63f2: $40
	dec  b                                           ; $63f3: $05
	ld   h, b                                        ; $63f4: $60
	add  e                                           ; $63f5: $83
	inc  b                                           ; $63f6: $04
	ld   bc, $0403                                   ; $63f7: $01 $03 $04
	add  b                                           ; $63fa: $80
	ld   bc, $0082                                   ; $63fb: $01 $82 $00
	nop                                              ; $63fe: $00
	ld   [bc], a                                     ; $63ff: $02
	add  d                                           ; $6400: $82
	ld   bc, $6301                                   ; $6401: $01 $01 $63
	or   b                                           ; $6404: $b0
	add  b                                           ; $6405: $80
	jr   nz, jr_080_640a                             ; $6406: $20 $02

	ldh  a, [$d0]                                    ; $6408: $f0 $d0

jr_080_640a:
	ld   [hl], b                                     ; $640a: $70
	add  c                                           ; $640b: $81
	add  b                                           ; $640c: $80
	inc  bc                                          ; $640d: $03
	ret  nz                                          ; $640e: $c0

	ld   b, b                                        ; $640f: $40

jr_080_6410:
	nop                                              ; $6410: $00
	ld   b, b                                        ; $6411: $40
	add  b                                           ; $6412: $80
	nop                                              ; $6413: $00
	add  hl, bc                                      ; $6414: $09
	rst  ToBoot                                         ; $6415: $c7
	jr   jr_080_642a                                 ; $6416: $18 $12

	ld   a, [bc]                                     ; $6418: $0a
	ld   [bc], a                                     ; $6419: $02
	ld   b, $19                                      ; $641a: $06 $19
	inc  b                                           ; $641c: $04
	add  hl, bc                                      ; $641d: $09
	ld   [$2180], sp                                 ; $641e: $08 $80 $21
	ld   [bc], a                                     ; $6421: $02
	ld   [bc], a                                     ; $6422: $02
	inc  hl                                          ; $6423: $23
	ld   e, $80                                      ; $6424: $1e $80
	nop                                              ; $6426: $00
	ld   [bc], a                                     ; $6427: $02
	ret  nz                                          ; $6428: $c0

	add  b                                           ; $6429: $80

jr_080_642a:
	and  b                                           ; $642a: $a0
	add  b                                           ; $642b: $80
	add  b                                           ; $642c: $80
	nop                                              ; $642d: $00
	ld   b, b                                        ; $642e: $40
	add  b                                           ; $642f: $80
	add  b                                           ; $6430: $80
	add  e                                           ; $6431: $83
	ld   b, b                                        ; $6432: $40
	ld   a, [de]                                     ; $6433: $1a
	ret  nz                                          ; $6434: $c0

	nop                                              ; $6435: $00
	inc  e                                           ; $6436: $1c
	inc  hl                                          ; $6437: $23
	inc  e                                           ; $6438: $1c
	inc  a                                           ; $6439: $3c
	inc  h                                           ; $643a: $24
	dec  l                                           ; $643b: $2d
	dec  c                                           ; $643c: $0d
	dec  l                                           ; $643d: $2d
	ld   b, l                                        ; $643e: $45
	ld   e, l                                        ; $643f: $5d
	ld   e, e                                        ; $6440: $5b
	dec  de                                          ; $6441: $1b
	ld   d, e                                        ; $6442: $53
	dec  sp                                          ; $6443: $3b
	ld   b, $00                                      ; $6444: $06 $00
	ld   b, c                                        ; $6446: $41
	pop  hl                                          ; $6447: $e1
	ld   hl, $0171                                   ; $6448: $21 $71 $01
	add  c                                           ; $644b: $81
	pop  de                                          ; $644c: $d1
	pop  af                                          ; $644d: $f1
	or   c                                           ; $644e: $b1
	add  c                                           ; $644f: $81
	and  c                                           ; $6450: $a1
	add  b                                           ; $6451: $80
	and  d                                           ; $6452: $a2
	add  b                                           ; $6453: $80
	ld   b, d                                        ; $6454: $42
	nop                                              ; $6455: $00
	ld   b, b                                        ; $6456: $40
	add  l                                           ; $6457: $85
	nop                                              ; $6458: $00
	nop                                              ; $6459: $00
	rst  $38                                         ; $645a: $ff
	add  l                                           ; $645b: $85
	nop                                              ; $645c: $00
	nop                                              ; $645d: $00
	rst  $38                                         ; $645e: $ff
	add  l                                           ; $645f: $85
	nop                                              ; $6460: $00
	nop                                              ; $6461: $00
	rst  $38                                         ; $6462: $ff
	add  l                                           ; $6463: $85
	nop                                              ; $6464: $00
	nop                                              ; $6465: $00
	rst  $38                                         ; $6466: $ff
	add  l                                           ; $6467: $85
	nop                                              ; $6468: $00
	nop                                              ; $6469: $00
	rst  $38                                         ; $646a: $ff
	add  l                                           ; $646b: $85
	nop                                              ; $646c: $00

jr_080_646d:
	nop                                              ; $646d: $00
	rst  $38                                         ; $646e: $ff
	add  l                                           ; $646f: $85
	nop                                              ; $6470: $00
	nop                                              ; $6471: $00
	ldh  a, [$85]                                    ; $6472: $f0 $85
	nop                                              ; $6474: $00
	nop                                              ; $6475: $00
	ldh  a, [$8d]                                    ; $6476: $f0 $8d
	nop                                              ; $6478: $00
	nop                                              ; $6479: $00
	inc  hl                                          ; $647a: $23
	add  e                                           ; $647b: $83
	jr   nz, jr_080_647e                             ; $647c: $20 $00

jr_080_647e:
	ld   b, h                                        ; $647e: $44
	add  l                                           ; $647f: $85
	ld   b, b                                        ; $6480: $40

Call_080_6481:
	ld   [bc], a                                     ; $6481: $02
	adc  b                                           ; $6482: $88
	add  b                                           ; $6483: $80
	ldh  a, [$8d]                                    ; $6484: $f0 $8d
	nop                                              ; $6486: $00
	nop                                              ; $6487: $00
	rrca                                             ; $6488: $0f
	adc  l                                           ; $6489: $8d
	nop                                              ; $648a: $00
	ld   bc, $04f4                                   ; $648b: $01 $f4 $04
	add  [hl]                                        ; $648e: $86
	ld   [$1080], sp                                 ; $648f: $08 $80 $10
	nop                                              ; $6492: $00
	ld   de, $1081                                   ; $6493: $11 $81 $10
	nop                                              ; $6496: $00
	ld   a, [hl]                                     ; $6497: $7e
	add  c                                           ; $6498: $81
	nop                                              ; $6499: $00
	nop                                              ; $649a: $00
	add  b                                           ; $649b: $80
	sbc  c                                           ; $649c: $99
	nop                                              ; $649d: $00
	nop                                              ; $649e: $00
	rrca                                             ; $649f: $0f
	adc  l                                           ; $64a0: $8d
	nop                                              ; $64a1: $00
	nop                                              ; $64a2: $00
	rst  $38                                         ; $64a3: $ff
	add  e                                           ; $64a4: $83
	nop                                              ; $64a5: $00
	nop                                              ; $64a6: $00
	db   $10                                         ; $64a7: $10
	add  a                                           ; $64a8: $87
	nop                                              ; $64a9: $00
	nop                                              ; $64aa: $00
	ldh  [$9d], a                                    ; $64ab: $e0 $9d
	nop                                              ; $64ad: $00
	nop                                              ; $64ae: $00
	rrca                                             ; $64af: $0f
	adc  l                                           ; $64b0: $8d
	nop                                              ; $64b1: $00
	nop                                              ; $64b2: $00
	rrca                                             ; $64b3: $0f
	adc  c                                           ; $64b4: $89
	nop                                              ; $64b5: $00
	inc  b                                           ; $64b6: $04
	ret  nz                                          ; $64b7: $c0

	nop                                              ; $64b8: $00
	inc  a                                           ; $64b9: $3c
	nop                                              ; $64ba: $00
	db   $fc                                         ; $64bb: $fc
	sbc  l                                           ; $64bc: $9d
	nop                                              ; $64bd: $00
	nop                                              ; $64be: $00
	rrca                                             ; $64bf: $0f
	adc  l                                           ; $64c0: $8d
	nop                                              ; $64c1: $00
	nop                                              ; $64c2: $00
	ldh  a, [$83]                                    ; $64c3: $f0 $83
	nop                                              ; $64c5: $00
	add  b                                           ; $64c6: $80
	pop  bc                                          ; $64c7: $c1
	ld   [$21d1], sp                                 ; $64c8: $08 $d1 $21
	ld   bc, $5161                                   ; $64cb: $01 $61 $51
	ld   sp, $c2d2                                   ; $64ce: $31 $d2 $c2
	ld   l, a                                        ; $64d1: $6f
	add  e                                           ; $64d2: $83
	add  b                                           ; $64d3: $80
	nop                                              ; $64d4: $00
	db   $10                                         ; $64d5: $10
	add  l                                           ; $64d6: $85
	nop                                              ; $64d7: $00
	ld   [bc], a                                     ; $64d8: $02
	jr   nz, jr_080_64db                             ; $64d9: $20 $00

jr_080_64db:
	ret  nz                                          ; $64db: $c0

	adc  l                                           ; $64dc: $8d
	nop                                              ; $64dd: $00
	nop                                              ; $64de: $00
	rrca                                             ; $64df: $0f
	adc  l                                           ; $64e0: $8d
	nop                                              ; $64e1: $00
	nop                                              ; $64e2: $00
	pop  hl                                          ; $64e3: $e1
	add  c                                           ; $64e4: $81
	db   $10                                         ; $64e5: $10
	add  b                                           ; $64e6: $80
	jr   nz, jr_080_64e9                             ; $64e7: $20 $00

jr_080_64e9:
	ld   [hl+], a                                    ; $64e9: $22
	add  l                                           ; $64ea: $85
	jr   nz, jr_080_646d                             ; $64eb: $20 $80

	ld   b, b                                        ; $64ed: $40
	nop                                              ; $64ee: $00
	db   $fc                                         ; $64ef: $fc
	sbc  l                                           ; $64f0: $9d
	nop                                              ; $64f1: $00
	nop                                              ; $64f2: $00
	rrca                                             ; $64f3: $0f
	adc  l                                           ; $64f4: $8d
	nop                                              ; $64f5: $00
	nop                                              ; $64f6: $00
	ldh  a, [$bf]                                    ; $64f7: $f0 $bf
	nop                                              ; $64f9: $00
	add  b                                           ; $64fa: $80
	add  b                                           ; $64fb: $80
	add  b                                           ; $64fc: $80
	ld   a, h                                        ; $64fd: $7c
	add  b                                           ; $64fe: $80
	inc  bc                                          ; $64ff: $03
	add  [hl]                                        ; $6500: $86
	nop                                              ; $6501: $00
	dec  b                                           ; $6502: $05
	rra                                              ; $6503: $1f
	nop                                              ; $6504: $00
	ld   e, $00                                      ; $6505: $1e $00
	ld   bc, $8000                                   ; $6507: $01 $00 $80
	ret  nz                                          ; $650a: $c0

	ld   bc, $3031                                   ; $650b: $01 $31 $30
	add  d                                           ; $650e: $82
	db   $10                                         ; $650f: $10

jr_080_6510:
	ld   [bc], a                                     ; $6510: $02
	ld   [hl+], a                                    ; $6511: $22
	jr   nz, jr_080_6510                             ; $6512: $20 $fc

	adc  l                                           ; $6514: $8d
	nop                                              ; $6515: $00
	nop                                              ; $6516: $00
	rrca                                             ; $6517: $0f
	adc  l                                           ; $6518: $8d
	nop                                              ; $6519: $00
	nop                                              ; $651a: $00
	ldh  a, [c]                                      ; $651b: $f2
	add  b                                           ; $651c: $80
	ldh  [c], a                                      ; $651d: $e2
	ld   [bc], a                                     ; $651e: $02
	and  d                                           ; $651f: $a2
	ldh  [c], a                                      ; $6520: $e2
	jp   nz, $8280                                   ; $6521: $c2 $80 $82

	ld   bc, $8404                                   ; $6524: $01 $04 $84
	add  h                                           ; $6527: $84
	inc  b                                           ; $6528: $04
	nop                                              ; $6529: $00
	ccf                                              ; $652a: $3f
	add  l                                           ; $652b: $85
	nop                                              ; $652c: $00
	nop                                              ; $652d: $00
	ld   b, b                                        ; $652e: $40
	add  l                                           ; $652f: $85
	nop                                              ; $6530: $00
	nop                                              ; $6531: $00
	add  b                                           ; $6532: $80
	adc  l                                           ; $6533: $8d
	nop                                              ; $6534: $00
	nop                                              ; $6535: $00
	rrca                                             ; $6536: $0f
	adc  l                                           ; $6537: $8d
	nop                                              ; $6538: $00
	nop                                              ; $6539: $00
	or   a                                           ; $653a: $b7
	add  l                                           ; $653b: $85
	ld   b, b                                        ; $653c: $40
	add  b                                           ; $653d: $80
	add  b                                           ; $653e: $80
	nop                                              ; $653f: $00
	adc  b                                           ; $6540: $88
	add  e                                           ; $6541: $83
	add  b                                           ; $6542: $80
	nop                                              ; $6543: $00
	ldh  a, [$9d]                                    ; $6544: $f0 $9d
	nop                                              ; $6546: $00
	nop                                              ; $6547: $00
	rrca                                             ; $6548: $0f
	adc  l                                           ; $6549: $8d
	nop                                              ; $654a: $00
	nop                                              ; $654b: $00
	ldh  a, [rIE]                                    ; $654c: $f0 $ff
	nop                                              ; $654e: $00
	rst  $38                                         ; $654f: $ff
	nop                                              ; $6550: $00
	rst  $38                                         ; $6551: $ff
	nop                                              ; $6552: $00
	rst  $38                                         ; $6553: $ff
	nop                                              ; $6554: $00
	rst  $38                                         ; $6555: $ff
	nop                                              ; $6556: $00
	rst  $38                                         ; $6557: $ff
	nop                                              ; $6558: $00
	or   a                                           ; $6559: $b7
	nop                                              ; $655a: $00
	ld   h, a                                        ; $655b: $67
	ld   bc, $0000                                   ; $655c: $01 $00 $00
	add  b                                           ; $655f: $80
	dec  b                                           ; $6560: $05
	add  b                                           ; $6561: $80
	ld   a, [bc]                                     ; $6562: $0a
	add  b                                           ; $6563: $80
	dec  b                                           ; $6564: $05
	add  b                                           ; $6565: $80
	ld   a, [bc]                                     ; $6566: $0a
	add  b                                           ; $6567: $80
	dec  b                                           ; $6568: $05
	add  b                                           ; $6569: $80
	ld   a, [bc]                                     ; $656a: $0a
	add  b                                           ; $656b: $80
	dec  b                                           ; $656c: $05
	add  b                                           ; $656d: $80
	ld   a, [bc]                                     ; $656e: $0a
	add  b                                           ; $656f: $80
	ld   d, b                                        ; $6570: $50
	add  b                                           ; $6571: $80
	xor  b                                           ; $6572: $a8
	add  b                                           ; $6573: $80
	ld   d, b                                        ; $6574: $50
	add  b                                           ; $6575: $80
	add  b                                           ; $6576: $80
	add  b                                           ; $6577: $80
	nop                                              ; $6578: $00
	add  b                                           ; $6579: $80
	add  b                                           ; $657a: $80
	sub  c                                           ; $657b: $91
	nop                                              ; $657c: $00
	nop                                              ; $657d: $00
	ccf                                              ; $657e: $3f
	adc  l                                           ; $657f: $8d
	scf                                              ; $6580: $37
	nop                                              ; $6581: $00
	jp   z, $3d83                                    ; $6582: $ca $83 $3d

	add  b                                           ; $6585: $80
	nop                                              ; $6586: $00
	add  [hl]                                        ; $6587: $86
	dec  a                                           ; $6588: $3d
	add  h                                           ; $6589: $84
	rst  $28                                         ; $658a: $ef
	add  b                                           ; $658b: $80
	nop                                              ; $658c: $00
	add  [hl]                                        ; $658d: $86
	rst  $28                                         ; $658e: $ef
	nop                                              ; $658f: $00
	cp   h                                           ; $6590: $bc
	add  e                                           ; $6591: $83
	cp   l                                           ; $6592: $bd
	add  b                                           ; $6593: $80
	ld   bc, $bd86                                   ; $6594: $01 $86 $bd
	nop                                              ; $6597: $00
	ld   [bc], a                                     ; $6598: $02
	add  b                                           ; $6599: $80
	db   $db                                         ; $659a: $db
	add  b                                           ; $659b: $80
	jp   c, $db80                                    ; $659c: $da $80 $db

	add  b                                           ; $659f: $80
	jp   c, $db80                                    ; $65a0: $da $80 $db

	add  b                                           ; $65a3: $80
	jp   c, $db80                                    ; $65a4: $da $80 $db

	ld   bc, $26da                                   ; $65a7: $01 $da $26
	add  b                                           ; $65aa: $80
	ld   d, l                                        ; $65ab: $55
	add  b                                           ; $65ac: $80
	xor  d                                           ; $65ad: $aa
	add  b                                           ; $65ae: $80
	ld   d, l                                        ; $65af: $55
	add  b                                           ; $65b0: $80
	xor  d                                           ; $65b1: $aa
	add  b                                           ; $65b2: $80
	ld   d, l                                        ; $65b3: $55
	add  b                                           ; $65b4: $80
	xor  d                                           ; $65b5: $aa
	add  b                                           ; $65b6: $80
	ld   d, l                                        ; $65b7: $55
	add  b                                           ; $65b8: $80
	xor  b                                           ; $65b9: $a8
	add  b                                           ; $65ba: $80
	ld   d, l                                        ; $65bb: $55
	add  b                                           ; $65bc: $80
	xor  d                                           ; $65bd: $aa
	add  b                                           ; $65be: $80
	ld   d, l                                        ; $65bf: $55
	add  b                                           ; $65c0: $80
	xor  b                                           ; $65c1: $a8
	add  b                                           ; $65c2: $80
	ld   b, b                                        ; $65c3: $40
	add  b                                           ; $65c4: $80
	and  b                                           ; $65c5: $a0
	sbc  d                                           ; $65c6: $9a
	nop                                              ; $65c7: $00
	add  b                                           ; $65c8: $80
	ld   [bc], a                                     ; $65c9: $02
	add  b                                           ; $65ca: $80
	ld   bc, $0a80                                   ; $65cb: $01 $80 $0a
	ld   bc, $1a15                                   ; $65ce: $01 $15 $1a
	add  b                                           ; $65d1: $80
	ld   b, $80                                      ; $65d2: $06 $80
	ld   d, $80                                      ; $65d4: $16 $80
	ld   h, $80                                      ; $65d6: $26 $80
	ld   d, $80                                      ; $65d8: $16 $80
	and  [hl]                                        ; $65da: $a6
	add  b                                           ; $65db: $80
	ld   d, [hl]                                     ; $65dc: $56
	add  b                                           ; $65dd: $80
	and  [hl]                                        ; $65de: $a6
	ld   bc, $a156                                   ; $65df: $01 $56 $a1
	add  e                                           ; $65e2: $83
	rst  $20                                         ; $65e3: $e7
	add  b                                           ; $65e4: $80
	ldh  [$86], a                                    ; $65e5: $e0 $86
	rst  $20                                         ; $65e7: $e7
	nop                                              ; $65e8: $00
	ld   e, l                                        ; $65e9: $5d
	add  e                                           ; $65ea: $83
	cp   l                                           ; $65eb: $bd
	add  b                                           ; $65ec: $80
	nop                                              ; $65ed: $00
	add  [hl]                                        ; $65ee: $86
	cp   l                                           ; $65ef: $bd
	nop                                              ; $65f0: $00
	rst  $28                                         ; $65f1: $ef
	add  b                                           ; $65f2: $80
	rrca                                             ; $65f3: $0f
	add  b                                           ; $65f4: $80
	adc  a                                           ; $65f5: $8f
	inc  bc                                          ; $65f6: $03
	db   $e3                                         ; $65f7: $e3
	inc  c                                           ; $65f8: $0c
	nop                                              ; $65f9: $00
	rst  $28                                         ; $65fa: $ef
	add  b                                           ; $65fb: $80
	ldh  [$80], a                                    ; $65fc: $e0 $80
	add  sp, -$80                                    ; $65fe: $e8 $80
	xor  $02                                         ; $6600: $ee $02
	rst  $28                                         ; $6602: $ef
	rst  $38                                         ; $6603: $ff
	rrca                                             ; $6604: $0f
	add  c                                           ; $6605: $81
	nop                                              ; $6606: $00
	add  d                                           ; $6607: $82
	rrca                                             ; $6608: $0f
	add  l                                           ; $6609: $85
	nop                                              ; $660a: $00
	ld   bc, $ff0f                                   ; $660b: $01 $0f $ff
	add  c                                           ; $660e: $81
	nop                                              ; $660f: $00
	add  d                                           ; $6610: $82
	rst  $38                                         ; $6611: $ff
	add  l                                           ; $6612: $85
	nop                                              ; $6613: $00
	add  b                                           ; $6614: $80
	rst  $38                                         ; $6615: $ff
	add  c                                           ; $6616: $81
	nop                                              ; $6617: $00
	add  d                                           ; $6618: $82
	rst  $38                                         ; $6619: $ff
	add  l                                           ; $661a: $85
	nop                                              ; $661b: $00
	ld   bc, $f7c0                                   ; $661c: $01 $c0 $f7
	add  c                                           ; $661f: $81
	scf                                              ; $6620: $37
	add  d                                           ; $6621: $82
	rst  $30                                         ; $6622: $f7
	add  [hl]                                        ; $6623: $86
	rlca                                             ; $6624: $07
	nop                                              ; $6625: $00
	nop                                              ; $6626: $00
	add  [hl]                                        ; $6627: $86
	dec  a                                           ; $6628: $3d
	add  b                                           ; $6629: $80
	nop                                              ; $662a: $00
	add  d                                           ; $662b: $82
	dec  a                                           ; $662c: $3d
	add  b                                           ; $662d: $80
	nop                                              ; $662e: $00
	add  [hl]                                        ; $662f: $86
	rst  $28                                         ; $6630: $ef
	add  b                                           ; $6631: $80
	nop                                              ; $6632: $00
	add  d                                           ; $6633: $82
	rst  $28                                         ; $6634: $ef
	ld   bc, $0100                                   ; $6635: $01 $00 $01
	add  [hl]                                        ; $6638: $86
	cp   l                                           ; $6639: $bd
	add  b                                           ; $663a: $80
	ld   bc, $bd82                                   ; $663b: $01 $82 $bd
	ld   bc, $db02                                   ; $663e: $01 $02 $db
	add  c                                           ; $6641: $81
	ret  c                                           ; $6642: $d8

	add  b                                           ; $6643: $80
	rst  $10                                         ; $6644: $d7
	add  b                                           ; $6645: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6646: $cf
	nop                                              ; $6647: $00
	ret  nz                                          ; $6648: $c0

	add  b                                           ; $6649: $80
	jp   $cf82                                       ; $664a: $c3 $82 $cf


	ld   bc, $ff3f                                   ; $664d: $01 $3f $ff
	add  c                                           ; $6650: $81
	nop                                              ; $6651: $00
	add  d                                           ; $6652: $82
	rst  $38                                         ; $6653: $ff
	ld   bc, $ff00                                   ; $6654: $01 $00 $ff
	add  b                                           ; $6657: $80
	push af                                          ; $6658: $f5
	add  b                                           ; $6659: $80
	jp   c, $f580                                    ; $665a: $da $80 $f5

	nop                                              ; $665d: $00
	rst  $38                                         ; $665e: $ff
	add  c                                           ; $665f: $81
	nop                                              ; $6660: $00
	add  d                                           ; $6661: $82
	rst  $38                                         ; $6662: $ff
	ld   bc, $ff00                                   ; $6663: $01 $00 $ff
	add  b                                           ; $6666: $80
	ld   c, b                                        ; $6667: $48
	add  b                                           ; $6668: $80
	and  b                                           ; $6669: $a0
	add  b                                           ; $666a: $80
	ld   c, b                                        ; $666b: $48
	nop                                              ; $666c: $00
	rst  $38                                         ; $666d: $ff
	add  c                                           ; $666e: $81
	nop                                              ; $666f: $00
	add  d                                           ; $6670: $82
	rst  $38                                         ; $6671: $ff
	ld   bc, $ff00                                   ; $6672: $01 $00 $ff
	add  b                                           ; $6675: $80
	ld   bc, $0080                                   ; $6676: $01 $80 $00
	add  b                                           ; $6679: $80
	ld   bc, $ff00                                   ; $667a: $01 $00 $ff
	add  c                                           ; $667d: $81
	nop                                              ; $667e: $00
	add  d                                           ; $667f: $82
	rst  $38                                         ; $6680: $ff
	ld   bc, $ff00                                   ; $6681: $01 $00 $ff
	add  b                                           ; $6684: $80
	ld   a, a                                        ; $6685: $7f
	add  b                                           ; $6686: $80
	xor  d                                           ; $6687: $aa
	ld   [bc], a                                     ; $6688: $02
	ld   b, h                                        ; $6689: $44
	ld   c, e                                        ; $668a: $4b
	or   $81                                         ; $668b: $f6 $81
	ld   b, $80                                      ; $668d: $06 $80
	ld   a, [$fc80]                                  ; $668f: $fa $80 $fc
	nop                                              ; $6692: $00
	nop                                              ; $6693: $00
	add  c                                           ; $6694: $81
	db   $fc                                         ; $6695: $fc
	add  b                                           ; $6696: $80
	xor  b                                           ; $6697: $a8
	ld   [bc], a                                     ; $6698: $02
	ld   d, h                                        ; $6699: $54
	xor  b                                           ; $669a: $a8
	ldh  [$86], a                                    ; $669b: $e0 $86
	rst  $20                                         ; $669d: $e7
	add  b                                           ; $669e: $80
	ldh  [$82], a                                    ; $669f: $e0 $82
	rst  $20                                         ; $66a1: $e7
	ld   bc, $00e0                                   ; $66a2: $01 $e0 $00
	add  [hl]                                        ; $66a5: $86
	cp   l                                           ; $66a6: $bd
	add  b                                           ; $66a7: $80
	nop                                              ; $66a8: $00
	add  d                                           ; $66a9: $82
	cp   l                                           ; $66aa: $bd
	add  b                                           ; $66ab: $80
	nop                                              ; $66ac: $00
	add  [hl]                                        ; $66ad: $86
	rst  $28                                         ; $66ae: $ef
	add  b                                           ; $66af: $80
	nop                                              ; $66b0: $00
	add  d                                           ; $66b1: $82
	rst  $28                                         ; $66b2: $ef
	nop                                              ; $66b3: $00
	rst  $38                                         ; $66b4: $ff
	add  l                                           ; $66b5: $85
	nop                                              ; $66b6: $00
	nop                                              ; $66b7: $00
	ld   a, a                                        ; $66b8: $7f
	add  l                                           ; $66b9: $85
	ldh  [rP1], a                                    ; $66ba: $e0 $00
	sbc  a                                           ; $66bc: $9f
	add  l                                           ; $66bd: $85
	nop                                              ; $66be: $00
	nop                                              ; $66bf: $00
	rst  $38                                         ; $66c0: $ff
	add  l                                           ; $66c1: $85
	nop                                              ; $66c2: $00
	nop                                              ; $66c3: $00
	rst  $38                                         ; $66c4: $ff
	add  l                                           ; $66c5: $85
	nop                                              ; $66c6: $00
	nop                                              ; $66c7: $00
	rst  $38                                         ; $66c8: $ff
	add  l                                           ; $66c9: $85
	nop                                              ; $66ca: $00
	nop                                              ; $66cb: $00
	rst  $38                                         ; $66cc: $ff
	add  l                                           ; $66cd: $85
	nop                                              ; $66ce: $00
	nop                                              ; $66cf: $00
	ldh  a, [$85]                                    ; $66d0: $f0 $85
	nop                                              ; $66d2: $00
	nop                                              ; $66d3: $00
	adc  a                                           ; $66d4: $8f
	add  b                                           ; $66d5: $80
	rst  $20                                         ; $66d6: $e7
	add  b                                           ; $66d7: $80
	db   $e3                                         ; $66d8: $e3
	nop                                              ; $66d9: $00
	db   $ec                                         ; $66da: $ec
	adc  b                                           ; $66db: $88
	db   $ed                                         ; $66dc: $ed
	nop                                              ; $66dd: $00
	ld   l, h                                        ; $66de: $6c
	add  d                                           ; $66df: $82
	rst  $38                                         ; $66e0: $ff
	ld   bc, $ff00                                   ; $66e1: $01 $00 $ff
	add  b                                           ; $66e4: $80
	xor  d                                           ; $66e5: $aa
	add  b                                           ; $66e6: $80
	ld   d, l                                        ; $66e7: $55
	add  b                                           ; $66e8: $80
	xor  d                                           ; $66e9: $aa
	add  b                                           ; $66ea: $80
	ld   d, l                                        ; $66eb: $55
	ld   bc, $55aa                                   ; $66ec: $01 $aa $55
	add  d                                           ; $66ef: $82
	rst  $38                                         ; $66f0: $ff
	ld   bc, $ff00                                   ; $66f1: $01 $00 $ff
	add  b                                           ; $66f4: $80
	xor  d                                           ; $66f5: $aa
	add  b                                           ; $66f6: $80
	ld   d, l                                        ; $66f7: $55
	add  b                                           ; $66f8: $80
	xor  d                                           ; $66f9: $aa
	add  b                                           ; $66fa: $80
	ld   d, h                                        ; $66fb: $54
	ld   bc, $5aaa                                   ; $66fc: $01 $aa $5a
	add  d                                           ; $66ff: $82
	ldh  a, [rSB]                                    ; $6700: $f0 $01
	nop                                              ; $6702: $00
	ldh  a, [$80]                                    ; $6703: $f0 $80
	and  b                                           ; $6705: $a0
	add  b                                           ; $6706: $80
	ld   d, b                                        ; $6707: $50
	add  b                                           ; $6708: $80
	and  b                                           ; $6709: $a0
	add  b                                           ; $670a: $80
	ld   d, b                                        ; $670b: $50
	ld   bc, $5ea0                                   ; $670c: $01 $a0 $5e
	adc  l                                           ; $670f: $8d
	ld   l, l                                        ; $6710: $6d
	nop                                              ; $6711: $00
	sub  e                                           ; $6712: $93
	add  b                                           ; $6713: $80
	ld   b, b                                        ; $6714: $40
	add  b                                           ; $6715: $80
	adc  d                                           ; $6716: $8a
	add  b                                           ; $6717: $80
	ld   b, l                                        ; $6718: $45
	add  b                                           ; $6719: $80
	ld   a, [hl+]                                    ; $671a: $2a
	add  b                                           ; $671b: $80
	ld   d, l                                        ; $671c: $55
	add  b                                           ; $671d: $80
	xor  d                                           ; $671e: $aa
	add  b                                           ; $671f: $80
	ld   d, l                                        ; $6720: $55
	add  b                                           ; $6721: $80
	xor  d                                           ; $6722: $aa
	add  b                                           ; $6723: $80
	ld   d, l                                        ; $6724: $55
	add  b                                           ; $6725: $80
	xor  d                                           ; $6726: $aa
	add  b                                           ; $6727: $80
	ld   d, l                                        ; $6728: $55
	add  b                                           ; $6729: $80
	xor  d                                           ; $672a: $aa
	add  b                                           ; $672b: $80
	ld   d, b                                        ; $672c: $50
	add  b                                           ; $672d: $80
	and  b                                           ; $672e: $a0
	add  b                                           ; $672f: $80
	ld   d, b                                        ; $6730: $50
	add  b                                           ; $6731: $80
	add  b                                           ; $6732: $80
	add  b                                           ; $6733: $80
	ld   d, b                                        ; $6734: $50
	add  b                                           ; $6735: $80
	and  b                                           ; $6736: $a0
	add  b                                           ; $6737: $80
	ld   d, b                                        ; $6738: $50
	add  b                                           ; $6739: $80
	and  b                                           ; $673a: $a0
	add  b                                           ; $673b: $80
	ld   d, b                                        ; $673c: $50
	add  b                                           ; $673d: $80
	and  b                                           ; $673e: $a0
	add  b                                           ; $673f: $80
	ld   d, b                                        ; $6740: $50
	ld   bc, $5ea0                                   ; $6741: $01 $a0 $5e
	adc  l                                           ; $6744: $8d
	ld   l, l                                        ; $6745: $6d
	nop                                              ; $6746: $00
	sub  e                                           ; $6747: $93
	sbc  [hl]                                        ; $6748: $9e
	nop                                              ; $6749: $00
	add  b                                           ; $674a: $80
	ld   d, b                                        ; $674b: $50
	add  b                                           ; $674c: $80
	and  b                                           ; $674d: $a0
	add  b                                           ; $674e: $80
	ld   d, b                                        ; $674f: $50
	add  b                                           ; $6750: $80
	and  b                                           ; $6751: $a0
	add  b                                           ; $6752: $80
	ld   d, b                                        ; $6753: $50
	add  b                                           ; $6754: $80
	and  b                                           ; $6755: $a0
	add  b                                           ; $6756: $80
	ld   d, b                                        ; $6757: $50
	ld   bc, $dfa0                                   ; $6758: $01 $a0 $df
	adc  l                                           ; $675b: $8d
	ldh  [rP1], a                                    ; $675c: $e0 $00
	ld   h, b                                        ; $675e: $60
	sbc  l                                           ; $675f: $9d
	nop                                              ; $6760: $00
	nop                                              ; $6761: $00
	rrca                                             ; $6762: $0f
	adc  l                                           ; $6763: $8d
	nop                                              ; $6764: $00
	nop                                              ; $6765: $00
	adc  [hl]                                        ; $6766: $8e
	adc  l                                           ; $6767: $8d
	db   $ed                                         ; $6768: $ed
	nop                                              ; $6769: $00
	sub  e                                           ; $676a: $93
	add  b                                           ; $676b: $80
	ld   d, l                                        ; $676c: $55
	add  b                                           ; $676d: $80
	xor  d                                           ; $676e: $aa
	add  b                                           ; $676f: $80
	ld   d, l                                        ; $6770: $55
	add  b                                           ; $6771: $80
	xor  d                                           ; $6772: $aa
	add  b                                           ; $6773: $80
	ld   d, h                                        ; $6774: $54
	add  b                                           ; $6775: $80
	xor  b                                           ; $6776: $a8
	add  b                                           ; $6777: $80
	ld   b, b                                        ; $6778: $40
	add  b                                           ; $6779: $80
	and  b                                           ; $677a: $a0
	add  b                                           ; $677b: $80
	ld   d, b                                        ; $677c: $50
	add  b                                           ; $677d: $80
	and  b                                           ; $677e: $a0
	add  b                                           ; $677f: $80
	nop                                              ; $6780: $00
	add  b                                           ; $6781: $80
	add  d                                           ; $6782: $82
	add  b                                           ; $6783: $80
	dec  d                                           ; $6784: $15
	add  b                                           ; $6785: $80
	ld   a, [bc]                                     ; $6786: $0a
	add  b                                           ; $6787: $80
	dec  d                                           ; $6788: $15
	add  b                                           ; $6789: $80
	xor  d                                           ; $678a: $aa
	add  b                                           ; $678b: $80
	ld   d, b                                        ; $678c: $50
	add  b                                           ; $678d: $80
	and  b                                           ; $678e: $a0
	add  b                                           ; $678f: $80
	ld   d, b                                        ; $6790: $50
	add  b                                           ; $6791: $80
	and  b                                           ; $6792: $a0
	add  b                                           ; $6793: $80
	ld   d, b                                        ; $6794: $50
	add  b                                           ; $6795: $80
	and  b                                           ; $6796: $a0
	add  b                                           ; $6797: $80
	ld   d, b                                        ; $6798: $50
	ld   bc, $5ea0                                   ; $6799: $01 $a0 $5e
	adc  l                                           ; $679c: $8d
	ld   l, l                                        ; $679d: $6d
	nop                                              ; $679e: $00
	sub  e                                           ; $679f: $93
	add  b                                           ; $67a0: $80
	ld   d, l                                        ; $67a1: $55
	add  b                                           ; $67a2: $80
	xor  b                                           ; $67a3: $a8
	add  b                                           ; $67a4: $80
	ld   d, b                                        ; $67a5: $50
	add  b                                           ; $67a6: $80
	and  b                                           ; $67a7: $a0
	add  b                                           ; $67a8: $80
	nop                                              ; $67a9: $00
	add  b                                           ; $67aa: $80
	add  b                                           ; $67ab: $80
	sub  d                                           ; $67ac: $92
	nop                                              ; $67ad: $00
	add  b                                           ; $67ae: $80
	ld   d, b                                        ; $67af: $50
	add  b                                           ; $67b0: $80
	and  b                                           ; $67b1: $a0
	add  b                                           ; $67b2: $80
	ld   d, b                                        ; $67b3: $50
	add  b                                           ; $67b4: $80
	and  b                                           ; $67b5: $a0
	add  b                                           ; $67b6: $80
	ld   d, b                                        ; $67b7: $50
	add  b                                           ; $67b8: $80
	and  b                                           ; $67b9: $a0
	add  b                                           ; $67ba: $80
	ld   d, b                                        ; $67bb: $50
	ld   bc, $5ea0                                   ; $67bc: $01 $a0 $5e
	adc  l                                           ; $67bf: $8d
	ld   l, l                                        ; $67c0: $6d
	nop                                              ; $67c1: $00
	sub  e                                           ; $67c2: $93
	adc  h                                           ; $67c3: $8c
	nop                                              ; $67c4: $00
	add  b                                           ; $67c5: $80
	ld   [bc], a                                     ; $67c6: $02
	add  b                                           ; $67c7: $80
	nop                                              ; $67c8: $00
	add  b                                           ; $67c9: $80
	ld   [bc], a                                     ; $67ca: $02
	add  b                                           ; $67cb: $80
	dec  b                                           ; $67cc: $05
	add  b                                           ; $67cd: $80
	ld   a, [hl+]                                    ; $67ce: $2a
	add  b                                           ; $67cf: $80
	dec  d                                           ; $67d0: $15
	add  b                                           ; $67d1: $80
	xor  d                                           ; $67d2: $aa
	add  b                                           ; $67d3: $80
	ld   d, l                                        ; $67d4: $55
	add  b                                           ; $67d5: $80
	xor  d                                           ; $67d6: $aa
	add  b                                           ; $67d7: $80
	ld   d, b                                        ; $67d8: $50
	add  b                                           ; $67d9: $80
	and  b                                           ; $67da: $a0
	add  b                                           ; $67db: $80
	ld   d, b                                        ; $67dc: $50
	add  b                                           ; $67dd: $80
	and  b                                           ; $67de: $a0
	add  b                                           ; $67df: $80
	ld   d, b                                        ; $67e0: $50
	add  b                                           ; $67e1: $80
	and  b                                           ; $67e2: $a0
	add  b                                           ; $67e3: $80
	ld   d, b                                        ; $67e4: $50
	ld   bc, $5ea0                                   ; $67e5: $01 $a0 $5e
	adc  l                                           ; $67e8: $8d
	ld   l, l                                        ; $67e9: $6d
	nop                                              ; $67ea: $00
	sub  e                                           ; $67eb: $93
	add  b                                           ; $67ec: $80
	ld   bc, $2a80                                   ; $67ed: $01 $80 $2a
	add  b                                           ; $67f0: $80
	dec  d                                           ; $67f1: $15
	add  b                                           ; $67f2: $80
	xor  d                                           ; $67f3: $aa
	add  b                                           ; $67f4: $80
	ld   d, l                                        ; $67f5: $55
	add  b                                           ; $67f6: $80
	xor  d                                           ; $67f7: $aa
	add  b                                           ; $67f8: $80
	ld   d, l                                        ; $67f9: $55
	add  b                                           ; $67fa: $80
	xor  d                                           ; $67fb: $aa
	add  b                                           ; $67fc: $80
	ld   d, l                                        ; $67fd: $55
	add  b                                           ; $67fe: $80

jr_080_67ff:
	xor  d                                           ; $67ff: $aa
	add  b                                           ; $6800: $80
	ld   d, l                                        ; $6801: $55
	add  b                                           ; $6802: $80
	xor  d                                           ; $6803: $aa
	add  b                                           ; $6804: $80
	ld   d, l                                        ; $6805: $55
	add  b                                           ; $6806: $80
	xor  d                                           ; $6807: $aa
	add  b                                           ; $6808: $80
	ld   d, l                                        ; $6809: $55
	add  b                                           ; $680a: $80
	xor  d                                           ; $680b: $aa
	add  b                                           ; $680c: $80
	ld   d, b                                        ; $680d: $50
	add  b                                           ; $680e: $80
	and  b                                           ; $680f: $a0
	add  b                                           ; $6810: $80
	ld   d, b                                        ; $6811: $50
	add  b                                           ; $6812: $80
	and  b                                           ; $6813: $a0
	add  b                                           ; $6814: $80
	ld   d, b                                        ; $6815: $50
	add  b                                           ; $6816: $80
	and  b                                           ; $6817: $a0
	add  b                                           ; $6818: $80
	ld   d, b                                        ; $6819: $50
	ld   [bc], a                                     ; $681a: $02
	and  b                                           ; $681b: $a0
	ld   e, [hl]                                     ; $681c: $5e
	ld   l, l                                        ; $681d: $6d
	add  c                                           ; $681e: $81
	ld   l, h                                        ; $681f: $6c
	add  b                                           ; $6820: $80
	ld   l, e                                        ; $6821: $6b
	add  b                                           ; $6822: $80
	ld   h, a                                        ; $6823: $67
	add  l                                           ; $6824: $85
	ld   h, b                                        ; $6825: $60
	ld   bc, $ff9f                                   ; $6826: $01 $9f $ff
	add  c                                           ; $6829: $81
	nop                                              ; $682a: $00
	add  d                                           ; $682b: $82
	rst  $38                                         ; $682c: $ff
	add  l                                           ; $682d: $85
	nop                                              ; $682e: $00
	add  b                                           ; $682f: $80
	rst  $38                                         ; $6830: $ff
	add  c                                           ; $6831: $81
	nop                                              ; $6832: $00
	add  d                                           ; $6833: $82
	rst  $38                                         ; $6834: $ff
	add  l                                           ; $6835: $85
	nop                                              ; $6836: $00
	ld   bc, $f0ff                                   ; $6837: $01 $ff $f0
	add  c                                           ; $683a: $81
	nop                                              ; $683b: $00
	add  d                                           ; $683c: $82
	ldh  a, [$85]                                    ; $683d: $f0 $85
	nop                                              ; $683f: $00
	nop                                              ; $6840: $00
	ldh  a, [rIE]                                    ; $6841: $f0 $ff
	nop                                              ; $6843: $00
	rst  $38                                         ; $6844: $ff
	nop                                              ; $6845: $00
	rst  $38                                         ; $6846: $ff
	nop                                              ; $6847: $00
	rst  $38                                         ; $6848: $ff
	nop                                              ; $6849: $00
	rst  $38                                         ; $684a: $ff
	nop                                              ; $684b: $00
	rst  $38                                         ; $684c: $ff
	nop                                              ; $684d: $00
	rst  $30                                         ; $684e: $f7
	nop                                              ; $684f: $00
	ei                                               ; $6850: $fb
	nop                                              ; $6851: $00
	nop                                              ; $6852: $00
	dec  bc                                          ; $6853: $0b
	adc  l                                           ; $6854: $8d
	inc  b                                           ; $6855: $04
	nop                                              ; $6856: $00
	ldh  a, [$8d]                                    ; $6857: $f0 $8d
	nop                                              ; $6859: $00
	add  [hl]                                        ; $685a: $86
	add  b                                           ; $685b: $80
	add  b                                           ; $685c: $80
	add  [hl]                                        ; $685d: $86
	add  d                                           ; $685e: $82
	add  b                                           ; $685f: $80
	add  b                                           ; $6860: $80
	add  c                                           ; $6861: $81
	add  b                                           ; $6862: $80
	nop                                              ; $6863: $00
	add  b                                           ; $6864: $80
	ld   [$0080], sp                                 ; $6865: $08 $80 $00
	add  b                                           ; $6868: $80
	ret  nz                                          ; $6869: $c0

	add  b                                           ; $686a: $80
	nop                                              ; $686b: $00
	add  b                                           ; $686c: $80
	jr   @-$7e                                       ; $686d: $18 $80

	ld   a, b                                        ; $686f: $78
	add  b                                           ; $6870: $80
	rst  $38                                         ; $6871: $ff
	add  b                                           ; $6872: $80
	ld   a, [hl]                                     ; $6873: $7e
	add  d                                           ; $6874: $82
	nop                                              ; $6875: $00
	add  b                                           ; $6876: $80
	ld   c, $84                                      ; $6877: $0e $84
	ld   a, [hl]                                     ; $6879: $7e
	add  b                                           ; $687a: $80
	cp   $86                                         ; $687b: $fe $86
	jr   nz, jr_080_67ff                             ; $687d: $20 $80

	ld   hl, $2380                                   ; $687f: $21 $80 $23
	add  b                                           ; $6882: $80
	daa                                              ; $6883: $27
	add  b                                           ; $6884: $80
	cpl                                              ; $6885: $2f
	add  h                                           ; $6886: $84
	nop                                              ; $6887: $00
	add  [hl]                                        ; $6888: $86
	sub  e                                           ; $6889: $93
	add  b                                           ; $688a: $80
	add  b                                           ; $688b: $80
	add  h                                           ; $688c: $84
	nop                                              ; $688d: $00
	add  h                                           ; $688e: $84
	rst  $38                                         ; $688f: $ff
	inc  bc                                          ; $6890: $03
	nop                                              ; $6891: $00
	rst  $38                                         ; $6892: $ff
	ret  nz                                          ; $6893: $c0

	ccf                                              ; $6894: $3f
	add  b                                           ; $6895: $80
	and  a                                           ; $6896: $a7
	add  d                                           ; $6897: $82
	daa                                              ; $6898: $27
	add  h                                           ; $6899: $84
	rlca                                             ; $689a: $07
	nop                                              ; $689b: $00
	nop                                              ; $689c: $00
	add  c                                           ; $689d: $81
	daa                                              ; $689e: $27
	nop                                              ; $689f: $00
	ret  c                                           ; $68a0: $d8

	adc  c                                           ; $68a1: $89
	rst  $38                                         ; $68a2: $ff
	nop                                              ; $68a3: $00
	nop                                              ; $68a4: $00
	add  c                                           ; $68a5: $81
	rst  $38                                         ; $68a6: $ff
	ld   bc, $fe01                                   ; $68a7: $01 $01 $fe
	add  b                                           ; $68aa: $80
	db   $fc                                         ; $68ab: $fc
	add  b                                           ; $68ac: $80
	cp   $84                                         ; $68ad: $fe $84
	rst  $38                                         ; $68af: $ff
	nop                                              ; $68b0: $00
	nop                                              ; $68b1: $00
	add  c                                           ; $68b2: $81
	rst  $38                                         ; $68b3: $ff
	ld   bc, $679e                                   ; $68b4: $01 $9e $67
	add  c                                           ; $68b7: $81
	rst  $20                                         ; $68b8: $e7
	ld   [bc], a                                     ; $68b9: $02
	rst  $28                                         ; $68ba: $ef
	ld   c, [hl]                                     ; $68bb: $4e
	ld   c, a                                        ; $68bc: $4f
	add  b                                           ; $68bd: $80

jr_080_68be:
	adc  a                                           ; $68be: $8f
	ld   b, $dd                                      ; $68bf: $06 $dd
	rst  JumpTable                                         ; $68c1: $df
	ld   e, a                                        ; $68c2: $5f
	rst  JumpTable                                         ; $68c3: $df
	cp   e                                           ; $68c4: $bb
	rst  $30                                         ; $68c5: $f7
	ldh  a, [c]                                      ; $68c6: $f2
	add  c                                           ; $68c7: $81
	rst  $38                                         ; $68c8: $ff
	nop                                              ; $68c9: $00
	cp   $81                                         ; $68ca: $fe $81
	rst  $38                                         ; $68cc: $ff
	jr   jr_080_68be                                 ; $68cd: $18 $ef

	rst  $38                                         ; $68cf: $ff
	cp   a                                           ; $68d0: $bf
	rst  $38                                         ; $68d1: $ff
	ld   sp, hl                                      ; $68d2: $f9
	rst  $38                                         ; $68d3: $ff
	rst  JumpTable                                         ; $68d4: $df
	rst  $38                                         ; $68d5: $ff
	dec  sp                                          ; $68d6: $3b
	rst  $38                                         ; $68d7: $ff
	ld   a, a                                        ; $68d8: $7f
	rst  $38                                         ; $68d9: $ff
	rst  JumpTable                                         ; $68da: $df
	rst  $38                                         ; $68db: $ff
	xor  a                                           ; $68dc: $af
	rst  $38                                         ; $68dd: $ff
	rst  $30                                         ; $68de: $f7
	rst  $38                                         ; $68df: $ff
	pop  af                                          ; $68e0: $f1
	rst  $38                                         ; $68e1: $ff
	ld   a, [$7eff]                                  ; $68e2: $fa $ff $7e
	rst  $38                                         ; $68e5: $ff
	dec  c                                           ; $68e6: $0d
	adc  d                                           ; $68e7: $8a
	rst  $38                                         ; $68e8: $ff
	nop                                              ; $68e9: $00
	add  b                                           ; $68ea: $80
	add  b                                           ; $68eb: $80
	call z, $8004                                    ; $68ec: $cc $04 $80
	rst  $38                                         ; $68ef: $ff
	ld   hl, sp-$01                                  ; $68f0: $f8 $ff
	ld   hl, sp-$7a                                  ; $68f2: $f8 $86
	rst  $38                                         ; $68f4: $ff
	inc  b                                           ; $68f5: $04
	call nz, $e622                                   ; $68f6: $c4 $22 $e6
	pop  af                                          ; $68f9: $f1
	ld   bc, $0580                                   ; $68fa: $01 $80 $05
	add  d                                           ; $68fd: $82
	nop                                              ; $68fe: $00
	add  d                                           ; $68ff: $82
	inc  c                                           ; $6900: $0c
	add  b                                           ; $6901: $80
	ld   [$0080], sp                                 ; $6902: $08 $80 $00
	ld   bc, $8070                                   ; $6905: $01 $70 $80
	adc  h                                           ; $6908: $8c
	nop                                              ; $6909: $00
	add  b                                           ; $690a: $80
	adc  a                                           ; $690b: $8f
	add  d                                           ; $690c: $82
	cp   a                                           ; $690d: $bf
	add  d                                           ; $690e: $82
	nop                                              ; $690f: $00
	add  b                                           ; $6910: $80
	add  c                                           ; $6911: $81
	add  b                                           ; $6912: $80
	add  a                                           ; $6913: $87
	add  b                                           ; $6914: $80
	sbc  a                                           ; $6915: $9f
	add  d                                           ; $6916: $82
	rst  $38                                         ; $6917: $ff
	ld   [bc], a                                     ; $6918: $02
	ret  nz                                          ; $6919: $c0

	rst  $38                                         ; $691a: $ff
	ccf                                              ; $691b: $3f
	add  c                                           ; $691c: $81
	nop                                              ; $691d: $00
	add  h                                           ; $691e: $84
	rst  $38                                         ; $691f: $ff
	add  d                                           ; $6920: $82
	cp   $00                                         ; $6921: $fe $00
	nop                                              ; $6923: $00
	add  b                                           ; $6924: $80
	cp   $81                                         ; $6925: $fe $81
	nop                                              ; $6927: $00
	add  h                                           ; $6928: $84
	cp   $82                                         ; $6929: $fe $82
	cpl                                              ; $692b: $2f
	inc  b                                           ; $692c: $04
	ld   hl, $282f                                   ; $692d: $21 $2f $28
	cpl                                              ; $6930: $2f
	ld   h, $85                                      ; $6931: $26 $85
	cpl                                              ; $6933: $2f
	nop                                              ; $6934: $00
	sub  b                                           ; $6935: $90
	add  c                                           ; $6936: $81
	sub  e                                           ; $6937: $93
	add  hl, bc                                      ; $6938: $09
	add  e                                           ; $6939: $83
	sbc  a                                           ; $693a: $9f
	rra                                              ; $693b: $1f
	sbc  a                                           ; $693c: $9f
	rra                                              ; $693d: $1f
	sbc  a                                           ; $693e: $9f
	sub  b                                           ; $693f: $90
	sbc  a                                           ; $6940: $9f
	adc  a                                           ; $6941: $8f
	sbc  a                                           ; $6942: $9f
	add  b                                           ; $6943: $80
	rst  $38                                         ; $6944: $ff
	nop                                              ; $6945: $00
	nop                                              ; $6946: $00
	add  l                                           ; $6947: $85
	rst  $38                                         ; $6948: $ff
	inc  b                                           ; $6949: $04
	db   $fc                                         ; $694a: $fc
	rst  $38                                         ; $694b: $ff
	ld   [bc], a                                     ; $694c: $02
	rst  $38                                         ; $694d: $ff
	cp   $81                                         ; $694e: $fe $81
	rst  $38                                         ; $6950: $ff
	nop                                              ; $6951: $00
	nop                                              ; $6952: $00
	add  c                                           ; $6953: $81
	daa                                              ; $6954: $27
	inc  b                                           ; $6955: $04
	rla                                              ; $6956: $17
	ccf                                              ; $6957: $3f
	cpl                                              ; $6958: $2f
	ccf                                              ; $6959: $3f
	rra                                              ; $695a: $1f
	add  e                                           ; $695b: $83
	ccf                                              ; $695c: $3f
	add  b                                           ; $695d: $80
	rst  $38                                         ; $695e: $ff
	nop                                              ; $695f: $00
	ccf                                              ; $6960: $3f
	sbc  l                                           ; $6961: $9d
	rst  $38                                         ; $6962: $ff
	ld   [bc], a                                     ; $6963: $02
	jp   hl                                          ; $6964: $e9


	rst  $30                                         ; $6965: $f7
	pop  hl                                          ; $6966: $e1
	add  b                                           ; $6967: $80
	di                                               ; $6968: $f3
	ld   bc, $fffb                                   ; $6969: $01 $fb $ff
	add  b                                           ; $696c: $80
	db   $fd                                         ; $696d: $fd
	ld   e, $fc                                      ; $696e: $1e $fc
	ei                                               ; $6970: $fb
	rst  $38                                         ; $6971: $ff
	db   $fd                                         ; $6972: $fd
	rst  $38                                         ; $6973: $ff
	cp   $ff                                         ; $6974: $fe $ff
	cp   a                                           ; $6976: $bf
	rst  $38                                         ; $6977: $ff
	rst  $30                                         ; $6978: $f7
	rst  $38                                         ; $6979: $ff
	cp   a                                           ; $697a: $bf
	ld   a, [hl]                                     ; $697b: $7e
	halt                                             ; $697c: $76
	ld   l, [hl]                                     ; $697d: $6e
	ld   l, h                                        ; $697e: $6c
	ld   l, [hl]                                     ; $697f: $6e
	ld   l, $5e                                      ; $6980: $2e $5e
	sbc  d                                           ; $6982: $9a
	sbc  [hl]                                        ; $6983: $9e
	inc  b                                           ; $6984: $04
	sbc  h                                           ; $6985: $9c
	ld   [hl-], a                                    ; $6986: $32
	rst  $38                                         ; $6987: $ff
	ld   a, a                                        ; $6988: $7f
	cp   $ee                                         ; $6989: $fe $ee
	cp   $fa                                         ; $698b: $fe $fa
	cp   $84                                         ; $698d: $fe $84
	rst  $38                                         ; $698f: $ff
	ld   [bc], a                                     ; $6990: $02
	rst  $10                                         ; $6991: $d7
	rst  $38                                         ; $6992: $ff
	ld   l, $83                                      ; $6993: $2e $83
	sbc  $80                                         ; $6995: $de $80
	cp   $80                                         ; $6997: $fe $80
	db   $fc                                         ; $6999: $fc
	add  d                                           ; $699a: $82
	db   $fd                                         ; $699b: $fd
	add  b                                           ; $699c: $80

jr_080_699d:
	ld   sp, hl                                      ; $699d: $f9
	add  d                                           ; $699e: $82
	and  $82                                         ; $699f: $e6 $82
	rst  $20                                         ; $69a1: $e7
	add  h                                           ; $69a2: $84
	rst  $28                                         ; $69a3: $ef
	add  c                                           ; $69a4: $81
	rst  $38                                         ; $69a5: $ff
	add  l                                           ; $69a6: $85
	nop                                              ; $69a7: $00
	nop                                              ; $69a8: $00
	rst  $38                                         ; $69a9: $ff
	add  b                                           ; $69aa: $80
	nop                                              ; $69ab: $00
	add  b                                           ; $69ac: $80
	inc  bc                                          ; $69ad: $03
	add  b                                           ; $69ae: $80
	rrca                                             ; $69af: $0f
	ld   bc, $c03f                                   ; $69b0: $01 $3f $c0
	add  l                                           ; $69b3: $85
	nop                                              ; $69b4: $00
	add  [hl]                                        ; $69b5: $86
	rst  $38                                         ; $69b6: $ff
	add  [hl]                                        ; $69b7: $86
	nop                                              ; $69b8: $00
	add  [hl]                                        ; $69b9: $86
	rst  $38                                         ; $69ba: $ff
	add  [hl]                                        ; $69bb: $86
	nop                                              ; $69bc: $00
	add  [hl]                                        ; $69bd: $86
	ldh  a, [$8e]                                    ; $69be: $f0 $8e
	rst  $38                                         ; $69c0: $ff
	add  b                                           ; $69c1: $80
	ld   a, a                                        ; $69c2: $7f
	add  b                                           ; $69c3: $80
	ccf                                              ; $69c4: $3f
	add  b                                           ; $69c5: $80
	rra                                              ; $69c6: $1f
	add  b                                           ; $69c7: $80
	rlca                                             ; $69c8: $07
	add  b                                           ; $69c9: $80
	inc  bc                                          ; $69ca: $03
	add  b                                           ; $69cb: $80
	ld   bc, $0082                                   ; $69cc: $01 $82 $00
	adc  h                                           ; $69cf: $8c
	rst  $38                                         ; $69d0: $ff
	add  b                                           ; $69d1: $80
	ld   a, a                                        ; $69d2: $7f
	adc  [hl]                                        ; $69d3: $8e
	ldh  a, [$8e]                                    ; $69d4: $f0 $8e
	rst  $38                                         ; $69d6: $ff
	or   b                                           ; $69d7: $b0
	nop                                              ; $69d8: $00
	inc  b                                           ; $69d9: $04
	ldh  [rP1], a                                    ; $69da: $e0 $00
	inc  e                                           ; $69dc: $1c
	nop                                              ; $69dd: $00
	inc  bc                                          ; $69de: $03
	add  c                                           ; $69df: $81
	nop                                              ; $69e0: $00
	add  b                                           ; $69e1: $80
	ld   hl, sp-$80                                  ; $69e2: $f8 $80
	cp   $02                                         ; $69e4: $fe $02
	cpl                                              ; $69e6: $2f
	rst  $38                                         ; $69e7: $ff
	cpl                                              ; $69e8: $2f
	add  e                                           ; $69e9: $83
	nop                                              ; $69ea: $00
	dec  b                                           ; $69eb: $05
	add  b                                           ; $69ec: $80
	nop                                              ; $69ed: $00
	ld   a, b                                        ; $69ee: $78
	nop                                              ; $69ef: $00
	rla                                              ; $69f0: $17
	db   $10                                         ; $69f1: $10
	add  b                                           ; $69f2: $80
	ld   b, $80                                      ; $69f3: $06 $80
	ld   [hl], c                                     ; $69f5: $71
	nop                                              ; $69f6: $00
	rst  $38                                         ; $69f7: $ff
	adc  c                                           ; $69f8: $89
	nop                                              ; $69f9: $00
	inc  b                                           ; $69fa: $04
	ldh  a, [rP1]                                    ; $69fb: $f0 $00
	adc  a                                           ; $69fd: $8f
	add  b                                           ; $69fe: $80
	rst  $38                                         ; $69ff: $ff
	adc  l                                           ; $6a00: $8d
	nop                                              ; $6a01: $00
	xor  [hl]                                        ; $6a02: $ae
	rst  $38                                         ; $6a03: $ff
	adc  [hl]                                        ; $6a04: $8e
	ldh  a, [$8e]                                    ; $6a05: $f0 $8e
	rst  $38                                         ; $6a07: $ff
	adc  [hl]                                        ; $6a08: $8e

jr_080_6a09:
	nop                                              ; $6a09: $00
	add  b                                           ; $6a0a: $80
	rra                                              ; $6a0b: $1f
	add  b                                           ; $6a0c: $80
	rrca                                             ; $6a0d: $0f
	add  b                                           ; $6a0e: $80
	rlca                                             ; $6a0f: $07
	add  b                                           ; $6a10: $80
	inc  bc                                          ; $6a11: $03
	add  b                                           ; $6a12: $80
	ld   bc, $0084                                   ; $6a13: $01 $84 $00
	adc  b                                           ; $6a16: $88
	ldh  a, [$80]                                    ; $6a17: $f0 $80
	ld   [hl], b                                     ; $6a19: $70
	add  b                                           ; $6a1a: $80
	jr   nc, jr_080_699d                             ; $6a1b: $30 $80

	db   $10                                         ; $6a1d: $10
	adc  [hl]                                        ; $6a1e: $8e
	rst  $38                                         ; $6a1f: $ff
	xor  [hl]                                        ; $6a20: $ae
	nop                                              ; $6a21: $00
	jr   jr_080_6a91                                 ; $6a22: $18 $6d

	rst  $38                                         ; $6a24: $ff
	ld   [hl-], a                                    ; $6a25: $32
	rst  $38                                         ; $6a26: $ff
	ld   b, b                                        ; $6a27: $40
	db   $ed                                         ; $6a28: $ed
	dec  c                                           ; $6a29: $0d
	xor  b                                           ; $6a2a: $a8
	xor  a                                           ; $6a2b: $af
	rlca                                             ; $6a2c: $07
	db   $fc                                         ; $6a2d: $fc
	rst  $38                                         ; $6a2e: $ff
	dec  bc                                          ; $6a2f: $0b
	rst  $38                                         ; $6a30: $ff
	rst  ToBoot                                         ; $6a31: $c7
	rst  $38                                         ; $6a32: $ff
	ld   [hl], c                                     ; $6a33: $71
	cp   [hl]                                        ; $6a34: $be
	inc  bc                                          ; $6a35: $03
	add  e                                           ; $6a36: $83

jr_080_6a37:
	add  b                                           ; $6a37: $80
	or   b                                           ; $6a38: $b0
	jr   nc, jr_080_6a37                             ; $6a39: $30 $fc

	ld   a, h                                        ; $6a3b: $7c
	add  l                                           ; $6a3c: $85
	rst  $38                                         ; $6a3d: $ff
	ld   bc, $38c7                                   ; $6a3e: $01 $c7 $38
	add  b                                           ; $6a41: $80
	add  a                                           ; $6a42: $87
	add  b                                           ; $6a43: $80
	ldh  a, [$80]                                    ; $6a44: $f0 $80
	rra                                              ; $6a46: $1f
	inc  b                                           ; $6a47: $04
	rrca                                             ; $6a48: $0f
	adc  a                                           ; $6a49: $8f
	adc  h                                           ; $6a4a: $8c
	db   $fc                                         ; $6a4b: $fc
	ldh  a, [$80]                                    ; $6a4c: $f0 $80
	cp   $01                                         ; $6a4e: $fe $01
	rst  $38                                         ; $6a50: $ff
	ldh  a, [$81]                                    ; $6a51: $f0 $81
	nop                                              ; $6a53: $00
	add  b                                           ; $6a54: $80
	ldh  [$80], a                                    ; $6a55: $e0 $80
	db   $10                                         ; $6a57: $10
	add  b                                           ; $6a58: $80
	ldh  [$80], a                                    ; $6a59: $e0 $80
	ld   [hl], b                                     ; $6a5b: $70
	add  b                                           ; $6a5c: $80
	db   $10                                         ; $6a5d: $10
	ld   b, $00                                      ; $6a5e: $06 $00
	add  b                                           ; $6a60: $80

jr_080_6a61:
	ld   l, a                                        ; $6a61: $6f
	rst  $38                                         ; $6a62: $ff
	sbc  a                                           ; $6a63: $9f
	rst  $38                                         ; $6a64: $ff
	ld   a, a                                        ; $6a65: $7f
	add  h                                           ; $6a66: $84
	rst  $38                                         ; $6a67: $ff
	add  b                                           ; $6a68: $80
	adc  a                                           ; $6a69: $8f
	inc  bc                                          ; $6a6a: $03
	inc  bc                                          ; $6a6b: $03
	db   $dd                                         ; $6a6c: $dd
	sbc  $00                                         ; $6a6d: $de $00
	adc  b                                           ; $6a6f: $88
	rst  $38                                         ; $6a70: $ff
	dec  b                                           ; $6a71: $05
	ei                                               ; $6a72: $fb
	ld   sp, hl                                      ; $6a73: $f9
	add  d                                           ; $6a74: $82
	rst  $20                                         ; $6a75: $e7
	ld   h, a                                        ; $6a76: $67
	nop                                              ; $6a77: $00
	add  [hl]                                        ; $6a78: $86
	rst  $38                                         ; $6a79: $ff
	add  b                                           ; $6a7a: $80
	rst  $30                                         ; $6a7b: $f7
	ld   bc, $f2c0                                   ; $6a7c: $01 $c0 $f2
	add  c                                           ; $6a7f: $81
	ld   [hl-], a                                    ; $6a80: $32
	nop                                              ; $6a81: $00
	rrca                                             ; $6a82: $0f
	adc  c                                           ; $6a83: $89
	ldh  a, [rP1]                                    ; $6a84: $f0 $00
	jr   nc, jr_080_6a09                             ; $6a86: $30 $81

	ret  nz                                          ; $6a88: $c0

	nop                                              ; $6a89: $00
	pop  de                                          ; $6a8a: $d1
	add  e                                           ; $6a8b: $83
	sbc  $80                                         ; $6a8c: $de $80
	rst  JumpTable                                         ; $6a8e: $df
	add  d                                           ; $6a8f: $82
	sbc  a                                           ; $6a90: $9f

jr_080_6a91:
	add  d                                           ; $6a91: $82
	cp   a                                           ; $6a92: $bf
	add  d                                           ; $6a93: $82
	ld   h, a                                        ; $6a94: $67
	add  h                                           ; $6a95: $84
	ld   [hl], a                                     ; $6a96: $77
	add  h                                           ; $6a97: $84
	ld   a, a                                        ; $6a98: $7f
	add  b                                           ; $6a99: $80
	ld   [hl-], a                                    ; $6a9a: $32
	add  b                                           ; $6a9b: $80
	inc  sp                                          ; $6a9c: $33
	add  b                                           ; $6a9d: $80
	dec  sp                                          ; $6a9e: $3b
	add  [hl]                                        ; $6a9f: $86
	cp   e                                           ; $6aa0: $bb
	add  b                                           ; $6aa1: $80
	cp   a                                           ; $6aa2: $bf
	ld   bc, $c0cf                                   ; $6aa3: $01 $cf $c0
	adc  d                                           ; $6aa6: $8a
	ret  nc                                          ; $6aa7: $d0

	add  b                                           ; $6aa8: $80
	ldh  a, [$09]                                    ; $6aa9: $f0 $09
	rla                                              ; $6aab: $17
	ccf                                              ; $6aac: $3f
	ld   sp, $bcbf                                   ; $6aad: $31 $bf $bc
	rst  JumpTable                                         ; $6ab0: $df
	adc  $f6                                         ; $6ab1: $ce $f6
	ldh  a, [c]                                      ; $6ab3: $f2
	db   $fc                                         ; $6ab4: $fc
	add  b                                           ; $6ab5: $80
	rst  $38                                         ; $6ab6: $ff
	ld   bc, $fffc                                   ; $6ab7: $01 $fc $ff
	add  b                                           ; $6aba: $80
	cp   $0c                                         ; $6abb: $fe $0c
	ld   l, l                                        ; $6abd: $6d
	rst  $38                                         ; $6abe: $ff
	ld   [hl-], a                                    ; $6abf: $32
	rst  $38                                         ; $6ac0: $ff
	ld   b, b                                        ; $6ac1: $40
	db   $ed                                         ; $6ac2: $ed
	dec  c                                           ; $6ac3: $0d
	xor  b                                           ; $6ac4: $a8
	xor  a                                           ; $6ac5: $af
	rlca                                             ; $6ac6: $07
	db   $fc                                         ; $6ac7: $fc
	jp   $80c0                                       ; $6ac8: $c3 $c0 $80


	nop                                              ; $6acb: $00
	add  hl, bc                                      ; $6acc: $09
	ld   bc, $be40                                   ; $6acd: $01 $40 $be
	inc  bc                                          ; $6ad0: $03
	add  e                                           ; $6ad1: $83

jr_080_6ad2:
	add  b                                           ; $6ad2: $80
	or   b                                           ; $6ad3: $b0
	jr   nc, jr_080_6ad2                             ; $6ad4: $30 $fc

	ld   a, h                                        ; $6ad6: $7c
	add  c                                           ; $6ad7: $81
	rst  $38                                         ; $6ad8: $ff
	dec  b                                           ; $6ad9: $05
	ld   hl, $00e1                                   ; $6ada: $21 $e1 $00
	ret  nz                                          ; $6add: $c0

	rst  ToBoot                                         ; $6ade: $c7
	jr   c, jr_080_6a61                              ; $6adf: $38 $80

	add  a                                           ; $6ae1: $87
	add  b                                           ; $6ae2: $80
	ldh  a, [$80]                                    ; $6ae3: $f0 $80
	rra                                              ; $6ae5: $1f
	ld   c, $0f                                      ; $6ae6: $0e $0f
	adc  a                                           ; $6ae8: $8f
	adc  h                                           ; $6ae9: $8c
	db   $fc                                         ; $6aea: $fc
	ldh  a, [$fe]                                    ; $6aeb: $f0 $fe
	ld   a, [hl]                                     ; $6aed: $7e
	ccf                                              ; $6aee: $3f
	cp   a                                           ; $6aef: $bf
	cp   $fa                                         ; $6af0: $fe $fa
	db   $fc                                         ; $6af2: $fc
	ei                                               ; $6af3: $fb
	rst  $38                                         ; $6af4: $ff
	db   $fc                                         ; $6af5: $fc
	add  h                                           ; $6af6: $84
	rst  $38                                         ; $6af7: $ff
	ld   b, $c4                                      ; $6af8: $06 $c4
	ld   [hl+], a                                    ; $6afa: $22
	and  $14                                         ; $6afb: $e6 $14
	dec  e                                           ; $6afd: $1d
	add  hl, bc                                      ; $6afe: $09
	nop                                              ; $6aff: $00
	add  b                                           ; $6b00: $80
	ld   hl, sp+$02                                  ; $6b01: $f8 $02
	rlca                                             ; $6b03: $07
	rst  $38                                         ; $6b04: $ff
	ld   hl, sp-$80                                  ; $6b05: $f8 $80
	rst  $38                                         ; $6b07: $ff
	add  b                                           ; $6b08: $80
	adc  a                                           ; $6b09: $8f
	dec  bc                                          ; $6b0a: $0b
	inc  bc                                          ; $6b0b: $03
	db   $dd                                         ; $6b0c: $dd
	sbc  $fe                                         ; $6b0d: $de $fe
	ld   bc, $7a9b                                   ; $6b0f: $01 $9b $7a
	ld   e, $00                                      ; $6b12: $1e $00
	ldh  a, [$f1]                                    ; $6b14: $f0 $f1
	ld   bc, $ff80                                   ; $6b16: $01 $80 $ff
	dec  b                                           ; $6b19: $05
	ei                                               ; $6b1a: $fb
	ld   sp, hl                                      ; $6b1b: $f9
	add  d                                           ; $6b1c: $82
	rst  $20                                         ; $6b1d: $e7
	ld   h, a                                        ; $6b1e: $67
	nop                                              ; $6b1f: $00
	add  d                                           ; $6b20: $82
	ld   a, a                                        ; $6b21: $7f
	add  d                                           ; $6b22: $82
	rst  $38                                         ; $6b23: $ff
	add  b                                           ; $6b24: $80
	rst  $30                                         ; $6b25: $f7
	ld   bc, $f2c0                                   ; $6b26: $01 $c0 $f2
	add  c                                           ; $6b29: $81
	ld   [hl-], a                                    ; $6b2a: $32
	nop                                              ; $6b2b: $00
	rst  $38                                         ; $6b2c: $ff
	rst  $38                                         ; $6b2d: $ff
	nop                                              ; $6b2e: $00
	rst  $38                                         ; $6b2f: $ff
	nop                                              ; $6b30: $00
	rst  $38                                         ; $6b31: $ff
	nop                                              ; $6b32: $00
	rst  $38                                         ; $6b33: $ff
	nop                                              ; $6b34: $00
	rst  $38                                         ; $6b35: $ff
	nop                                              ; $6b36: $00
	ld   hl, sp+$00                                  ; $6b37: $f8 $00
	reti                                             ; $6b39: $d9


	nop                                              ; $6b3a: $00
	adc  [hl]                                        ; $6b3b: $8e
	rrca                                             ; $6b3c: $0f
	adc  [hl]                                        ; $6b3d: $8e
	rst  $38                                         ; $6b3e: $ff
	ld   b, $aa                                      ; $6b3f: $06 $aa
	rst  $38                                         ; $6b41: $ff
	and  b                                           ; $6b42: $a0
	rst  $38                                         ; $6b43: $ff
	db   $f4                                         ; $6b44: $f4
	rst  $38                                         ; $6b45: $ff
	cp   $87                                         ; $6b46: $fe $87
	rst  $38                                         ; $6b48: $ff
	ld   a, [bc]                                     ; $6b49: $0a
	xor  b                                           ; $6b4a: $a8
	rst  $38                                         ; $6b4b: $ff
	nop                                              ; $6b4c: $00
	ld   hl, sp+$0f                                  ; $6b4d: $f8 $0f
	rst  $38                                         ; $6b4f: $ff
	adc  a                                           ; $6b50: $8f
	rst  $38                                         ; $6b51: $ff
	rst  JumpTable                                         ; $6b52: $df
	rst  $38                                         ; $6b53: $ff
	ldh  a, [$83]                                    ; $6b54: $f0 $83
	rst  $38                                         ; $6b56: $ff
	dec  b                                           ; $6b57: $05
	ccf                                              ; $6b58: $3f
	ret  nz                                          ; $6b59: $c0

	inc  b                                           ; $6b5a: $04
	nop                                              ; $6b5b: $00
	call nz, $80c0                                   ; $6b5c: $c4 $c0 $80
	rst  ToBoot                                         ; $6b5f: $c7
	add  b                                           ; $6b60: $80
	ret  nz                                          ; $6b61: $c0

	nop                                              ; $6b62: $00
	nop                                              ; $6b63: $00
	add  e                                           ; $6b64: $83
	rst  $38                                         ; $6b65: $ff
	ld   bc, $c03f                                   ; $6b66: $01 $3f $c0
	add  b                                           ; $6b69: $80
	call z, $0080                                    ; $6b6a: $cc $80 $00
	add  b                                           ; $6b6d: $80
	rst  $38                                         ; $6b6e: $ff
	add  c                                           ; $6b6f: $81
	nop                                              ; $6b70: $00
	add  h                                           ; $6b71: $84
	rst  $38                                         ; $6b72: $ff
	nop                                              ; $6b73: $00
	nop                                              ; $6b74: $00
	add  b                                           ; $6b75: $80
	call z, $0080                                    ; $6b76: $cc $80 $00
	add  b                                           ; $6b79: $80
	rst  $38                                         ; $6b7a: $ff
	add  c                                           ; $6b7b: $81
	nop                                              ; $6b7c: $00
	add  h                                           ; $6b7d: $84
	rst  $38                                         ; $6b7e: $ff
	nop                                              ; $6b7f: $00
	nop                                              ; $6b80: $00
	add  b                                           ; $6b81: $80
	call z, $0080                                    ; $6b82: $cc $80 $00
	add  b                                           ; $6b85: $80
	rst  $38                                         ; $6b86: $ff
	add  c                                           ; $6b87: $81
	nop                                              ; $6b88: $00
	add  h                                           ; $6b89: $84
	rst  $38                                         ; $6b8a: $ff
	nop                                              ; $6b8b: $00
	nop                                              ; $6b8c: $00
	add  b                                           ; $6b8d: $80
	call z, $0080                                    ; $6b8e: $cc $80 $00
	add  b                                           ; $6b91: $80
	rst  $38                                         ; $6b92: $ff
	add  c                                           ; $6b93: $81
	nop                                              ; $6b94: $00
	add  h                                           ; $6b95: $84
	rst  $38                                         ; $6b96: $ff
	nop                                              ; $6b97: $00
	nop                                              ; $6b98: $00
	add  b                                           ; $6b99: $80
	call z, $0080                                    ; $6b9a: $cc $80 $00
	add  b                                           ; $6b9d: $80
	rst  $38                                         ; $6b9e: $ff
	add  c                                           ; $6b9f: $81
	nop                                              ; $6ba0: $00
	add  h                                           ; $6ba1: $84
	rst  $38                                         ; $6ba2: $ff
	nop                                              ; $6ba3: $00
	nop                                              ; $6ba4: $00
	add  b                                           ; $6ba5: $80
	call z, $0080                                    ; $6ba6: $cc $80 $00
	add  b                                           ; $6ba9: $80
	rst  $38                                         ; $6baa: $ff
	add  c                                           ; $6bab: $81
	nop                                              ; $6bac: $00
	add  h                                           ; $6bad: $84
	rst  $38                                         ; $6bae: $ff
	nop                                              ; $6baf: $00
	nop                                              ; $6bb0: $00
	add  b                                           ; $6bb1: $80
	call z, $0080                                    ; $6bb2: $cc $80 $00
	add  b                                           ; $6bb5: $80
	rst  $38                                         ; $6bb6: $ff
	add  c                                           ; $6bb7: $81
	nop                                              ; $6bb8: $00
	add  h                                           ; $6bb9: $84
	rst  $38                                         ; $6bba: $ff
	nop                                              ; $6bbb: $00
	nop                                              ; $6bbc: $00
	add  b                                           ; $6bbd: $80
	call z, $0080                                    ; $6bbe: $cc $80 $00
	add  b                                           ; $6bc1: $80
	rst  $38                                         ; $6bc2: $ff
	add  c                                           ; $6bc3: $81
	nop                                              ; $6bc4: $00
	add  h                                           ; $6bc5: $84
	rst  $38                                         ; $6bc6: $ff
	nop                                              ; $6bc7: $00
	nop                                              ; $6bc8: $00
	add  b                                           ; $6bc9: $80
	call z, $0080                                    ; $6bca: $cc $80 $00
	add  b                                           ; $6bcd: $80
	rst  $38                                         ; $6bce: $ff
	add  c                                           ; $6bcf: $81
	nop                                              ; $6bd0: $00
	add  e                                           ; $6bd1: $83
	rst  $38                                         ; $6bd2: $ff
	ld   bc, $39c6                                   ; $6bd3: $01 $c6 $39
	add  b                                           ; $6bd6: $80
	ret  z                                           ; $6bd7: $c8

	add  b                                           ; $6bd8: $80
	nop                                              ; $6bd9: $00
	add  b                                           ; $6bda: $80
	cp   $81                                         ; $6bdb: $fe $81
	nop                                              ; $6bdd: $00
	add  e                                           ; $6bde: $83
	rst  $38                                         ; $6bdf: $ff
	inc  bc                                          ; $6be0: $03
	add  a                                           ; $6be1: $87
	ld   a, a                                        ; $6be2: $7f
	rlca                                             ; $6be3: $07
	inc  bc                                          ; $6be4: $03
	add  d                                           ; $6be5: $82
	ld   a, a                                        ; $6be6: $7f
	ld   [bc], a                                     ; $6be7: $02
	ld   a, h                                        ; $6be8: $7c
	ld   a, a                                        ; $6be9: $7f
	nop                                              ; $6bea: $00
	add  e                                           ; $6beb: $83
	rst  $38                                         ; $6bec: $ff
	add  b                                           ; $6bed: $80
	rrca                                             ; $6bee: $0f
	ld   c, $07                                      ; $6bef: $0e $07
	rrca                                             ; $6bf1: $0f
	inc  bc                                          ; $6bf2: $03
	rrca                                             ; $6bf3: $0f
	ld   bc, $000f                                   ; $6bf4: $01 $0f $00
	rrca                                             ; $6bf7: $0f
	nop                                              ; $6bf8: $00
	rrca                                             ; $6bf9: $0f
	nop                                              ; $6bfa: $00
	rrca                                             ; $6bfb: $0f
	nop                                              ; $6bfc: $00
	rrca                                             ; $6bfd: $0f
	push af                                          ; $6bfe: $f5
	add  e                                           ; $6bff: $83
	rst  $38                                         ; $6c00: $ff
	ld   a, [bc]                                     ; $6c01: $0a
	ld   a, a                                        ; $6c02: $7f
	rst  $38                                         ; $6c03: $ff
	ccf                                              ; $6c04: $3f
	rst  $38                                         ; $6c05: $ff
	rla                                              ; $6c06: $17
	rst  $38                                         ; $6c07: $ff
	ld   [bc], a                                     ; $6c08: $02
	rst  $38                                         ; $6c09: $ff
	nop                                              ; $6c0a: $00
	rst  $38                                         ; $6c0b: $ff
	ld   d, l                                        ; $6c0c: $55
	adc  e                                           ; $6c0d: $8b
	rst  $38                                         ; $6c0e: $ff
	ld   [bc], a                                     ; $6c0f: $02
	ld   a, a                                        ; $6c10: $7f
	rst  $38                                         ; $6c11: $ff
	ld   a, a                                        ; $6c12: $7f
	rst  $38                                         ; $6c13: $ff
	rst  $38                                         ; $6c14: $ff
	call z, $86ff                                    ; $6c15: $cc $ff $86
	nop                                              ; $6c18: $00
	ld   [$ffe3], sp                                 ; $6c19: $08 $e3 $ff
	db   $d3                                         ; $6c1c: $d3
	rst  $38                                         ; $6c1d: $ff
	adc  a                                           ; $6c1e: $8f
	rst  $38                                         ; $6c1f: $ff
	ccf                                              ; $6c20: $3f
	rst  $38                                         ; $6c21: $ff
	add  b                                           ; $6c22: $80
	add  l                                           ; $6c23: $85
	nop                                              ; $6c24: $00

jr_080_6c25:
	ld   [$ff7f], sp                                 ; $6c25: $08 $7f $ff
	cp   $ff                                         ; $6c28: $fe $ff
	ld   sp, hl                                      ; $6c2a: $f9
	rst  $38                                         ; $6c2b: $ff
	pop  hl                                          ; $6c2c: $e1
	rst  $38                                         ; $6c2d: $ff
	sbc  c                                           ; $6c2e: $99
	add  l                                           ; $6c2f: $85
	nop                                              ; $6c30: $00
	ld   [$ff9f], sp                                 ; $6c31: $08 $9f $ff
	rra                                              ; $6c34: $1f
	rst  $38                                         ; $6c35: $ff
	ld   h, e                                        ; $6c36: $63
	db   $fd                                         ; $6c37: $fd
	adc  a                                           ; $6c38: $8f
	xor  $7f                                         ; $6c39: $ee $7f
	add  l                                           ; $6c3b: $85
	nop                                              ; $6c3c: $00
	nop                                              ; $6c3d: $00
	ldh  [$84], a                                    ; $6c3e: $e0 $84
	ldh  a, [$09]                                    ; $6c40: $f0 $09
	ld   [hl], b                                     ; $6c42: $70
	ld   h, h                                        ; $6c43: $64
	rst  $38                                         ; $6c44: $ff
	add  sp, -$01                                    ; $6c45: $e8 $ff
	add  e                                           ; $6c47: $83
	rst  $38                                         ; $6c48: $ff
	rra                                              ; $6c49: $1f
	rst  $38                                         ; $6c4a: $ff
	ld   a, a                                        ; $6c4b: $7f
	add  c                                           ; $6c4c: $81
	rst  $38                                         ; $6c4d: $ff
	inc  b                                           ; $6c4e: $04
	ld   a, [hl]                                     ; $6c4f: $7e
	ld   a, a                                        ; $6c50: $7f
	jr   nc, jr_080_6c92                             ; $6c51: $30 $3f

jr_080_6c53:
	cp   a                                           ; $6c53: $bf
	add  b                                           ; $6c54: $80
	db   $fd                                         ; $6c55: $fd
	add  c                                           ; $6c56: $81
	ld   hl, sp-$80                                  ; $6c57: $f8 $80
	ld   sp, hl                                      ; $6c59: $f9
	add  b                                           ; $6c5a: $80
	ei                                               ; $6c5b: $fb
	ld   [$f8cb], sp                                 ; $6c5c: $08 $cb $f8
	ld   e, b                                        ; $6c5f: $58
	pop  af                                          ; $6c60: $f1
	ld   sp, $92f0                                   ; $6c61: $31 $f0 $92
	dec  sp                                          ; $6c64: $3b
	cp   e                                           ; $6c65: $bb
	add  b                                           ; $6c66: $80
	xor  $80                                         ; $6c67: $ee $80
	cp   e                                           ; $6c69: $bb
	add  b                                           ; $6c6a: $80
	xor  $07                                         ; $6c6b: $ee $07
	cp   d                                           ; $6c6d: $ba
	cp   l                                           ; $6c6e: $bd
	rst  $28                                         ; $6c6f: $ef
	db   $f4                                         ; $6c70: $f4
	cp   h                                           ; $6c71: $bc
	pop  bc                                          ; $6c72: $c1
	ldh  [$81], a                                    ; $6c73: $e0 $81
	add  b                                           ; $6c75: $80
	and  b                                           ; $6c76: $a0
	add  b                                           ; $6c77: $80
	ldh  [rDIV], a                                   ; $6c78: $e0 $04
	and  b                                           ; $6c7a: $a0
	add  b                                           ; $6c7b: $80

jr_080_6c7c:
	or   b                                           ; $6c7c: $b0
	ld   [hl], b                                     ; $6c7d: $70
	ldh  [$80], a                                    ; $6c7e: $e0 $80
	nop                                              ; $6c80: $00
	dec  c                                           ; $6c81: $0d
	jr   nc, jr_080_6c84                             ; $6c82: $30 $00

jr_080_6c84:
	ret  nz                                          ; $6c84: $c0

	nop                                              ; $6c85: $00
	pop  af                                          ; $6c86: $f1
	ld   bc, $0141                                   ; $6c87: $01 $41 $01
	ld   hl, $d141                                   ; $6c8a: $21 $41 $d1
	rlca                                             ; $6c8d: $07
	dec  [hl]                                        ; $6c8e: $35
	rst  ToBoot                                         ; $6c8f: $c7
	add  c                                           ; $6c90: $81
	ld   h, a                                        ; $6c91: $67

jr_080_6c92:
	add  b                                           ; $6c92: $80
	rlca                                             ; $6c93: $07
	ld   bc, $e347                                   ; $6c94: $01 $47 $e3
	add  c                                           ; $6c97: $81
	ldh  [rSC], a                                    ; $6c98: $e0 $02
	jr   nz, jr_080_6c7c                             ; $6c9a: $20 $e0

	jr   nz, jr_080_6c25                             ; $6c9c: $20 $87

	ldh  [rP1], a                                    ; $6c9e: $e0 $00
	inc  bc                                          ; $6ca0: $03
	add  e                                           ; $6ca1: $83
	db   $db                                         ; $6ca2: $db
	add  d                                           ; $6ca3: $82
	reti                                             ; $6ca4: $d9


	add  b                                           ; $6ca5: $80
	sbc  a                                           ; $6ca6: $9f
	add  b                                           ; $6ca7: $80
	cp   $80                                         ; $6ca8: $fe $80
	ld   sp, hl                                      ; $6caa: $f9
	nop                                              ; $6cab: $00

jr_080_6cac:
	rst  $38                                         ; $6cac: $ff
	adc  c                                           ; $6cad: $89

jr_080_6cae:
	ret  nz                                          ; $6cae: $c0

	add  b                                           ; $6caf: $80
	ld   b, b                                        ; $6cb0: $40
	add  b                                           ; $6cb1: $80
	ret  nz                                          ; $6cb2: $c0

	ld   bc, $9f5b                                   ; $6cb3: $01 $5b $9f
	add  b                                           ; $6cb6: $80
	cp   a                                           ; $6cb7: $bf
	rlca                                             ; $6cb8: $07
	inc  b                                           ; $6cb9: $04
	rst  $38                                         ; $6cba: $ff
	nop                                              ; $6cbb: $00
	rst  $38                                         ; $6cbc: $ff
	nop                                              ; $6cbd: $00
	rst  $38                                         ; $6cbe: $ff
	ld   [$82ff], sp                                 ; $6cbf: $08 $ff $82
	jr   c, @+$04                                    ; $6cc2: $38 $02

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cc4: $cf
	ldh  [rAUD4LEN], a                               ; $6cc5: $e0 $20
	add  c                                           ; $6cc7: $81
	ldh  [rDIV], a                                   ; $6cc8: $e0 $04
	jr   nz, jr_080_6cac                             ; $6cca: $20 $e0

	jr   nz, jr_080_6cae                             ; $6ccc: $20 $e0

	jr   nz, jr_080_6c53                             ; $6cce: $20 $83

	ldh  [rSB], a                                    ; $6cd0: $e0 $01
	ld   [hl], e                                     ; $6cd2: $73
	add  e                                           ; $6cd3: $83
	add  d                                           ; $6cd4: $82
	rst  ToBoot                                         ; $6cd5: $c7
	add  b                                           ; $6cd6: $80
	add  b                                           ; $6cd7: $80
	add  b                                           ; $6cd8: $80
	add  c                                           ; $6cd9: $81
	nop                                              ; $6cda: $00
	di                                               ; $6cdb: $f3
	add  e                                           ; $6cdc: $83
	db   $db                                         ; $6cdd: $db
	nop                                              ; $6cde: $00
	rst  $38                                         ; $6cdf: $ff
	add  e                                           ; $6ce0: $83
	ret  nz                                          ; $6ce1: $c0

	add  b                                           ; $6ce2: $80
	ld   b, b                                        ; $6ce3: $40
	add  [hl]                                        ; $6ce4: $86
	ret  nz                                          ; $6ce5: $c0

	ld   a, [bc]                                     ; $6ce6: $0a
	ccf                                              ; $6ce7: $3f
	rst  $38                                         ; $6ce8: $ff
	cp   $ff                                         ; $6ce9: $fe $ff
	ld   hl, sp-$01                                  ; $6ceb: $f8 $ff
	pop  bc                                          ; $6ced: $c1
	rst  $38                                         ; $6cee: $ff
	rrca                                             ; $6cef: $0f
	rst  $38                                         ; $6cf0: $ff
	ccf                                              ; $6cf1: $3f
	add  e                                           ; $6cf2: $83
	rst  $38                                         ; $6cf3: $ff
	rlca                                             ; $6cf4: $07
	ld   d, $ff                                      ; $6cf5: $16 $ff
	sbc  a                                           ; $6cf7: $9f
	rst  $38                                         ; $6cf8: $ff
	ld   a, a                                        ; $6cf9: $7f
	rst  $38                                         ; $6cfa: $ff
	db   $fc                                         ; $6cfb: $fc

jr_080_6cfc:
	rst  $38                                         ; $6cfc: $ff
	add  b                                           ; $6cfd: $80
	cp   $06                                         ; $6cfe: $fe $06
	ldh  a, [c]                                      ; $6d00: $f2
	cp   $c6                                         ; $6d01: $fe $c6
	db   $fc                                         ; $6d03: $fc
	inc  c                                           ; $6d04: $0c
	db   $fc                                         ; $6d05: $fc
	sub  $80                                         ; $6d06: $d6 $80
	db   $ed                                         ; $6d08: $ed
	add  hl, bc                                      ; $6d09: $09
	add  c                                           ; $6d0a: $81
	nop                                              ; $6d0b: $00
	add  c                                           ; $6d0c: $81
	add  hl, hl                                      ; $6d0d: $29
	dec  h                                           ; $6d0e: $25
	inc  a                                           ; $6d0f: $3c
	add  hl, de                                      ; $6d10: $19
	ei                                               ; $6d11: $fb
	xor  [hl]                                        ; $6d12: $ae
	xor  $80                                         ; $6d13: $ee $80
	ld   a, e                                        ; $6d15: $7b
	inc  bc                                          ; $6d16: $03
	ld   l, [hl]                                     ; $6d17: $6e
	xor  [hl]                                        ; $6d18: $ae
	or   b                                           ; $6d19: $b0
	ret  nz                                          ; $6d1a: $c0

	add  b                                           ; $6d1b: $80
	ret  nc                                          ; $6d1c: $d0

	rlca                                             ; $6d1d: $07
	ret  nz                                          ; $6d1e: $c0

	ldh  [$60], a                                    ; $6d1f: $e0 $60
	ldh  a, [$b0]                                    ; $6d21: $f0 $b0
	jr   nz, @-$6e                                   ; $6d23: $20 $90

	add  b                                           ; $6d25: $80
	add  c                                           ; $6d26: $81
	ret  nz                                          ; $6d27: $c0

	dec  b                                           ; $6d28: $05
	rst  ToBoot                                         ; $6d29: $c7
	ld   a, a                                        ; $6d2a: $7f
	ld   c, a                                        ; $6d2b: $4f
	cp   a                                           ; $6d2c: $bf
	adc  a                                           ; $6d2d: $8f
	rrca                                             ; $6d2e: $0f
	add  b                                           ; $6d2f: $80
	add  hl, bc                                      ; $6d30: $09
	ld   [bc], a                                     ; $6d31: $02
	ld   [$0809], sp                                 ; $6d32: $08 $09 $08
	add  b                                           ; $6d35: $80
	rrca                                             ; $6d36: $0f
	add  b                                           ; $6d37: $80
	ld   [hl], c                                     ; $6d38: $71
	dec  c                                           ; $6d39: $0d
	add  c                                           ; $6d3a: $81
	ld   h, e                                        ; $6d3b: $63
	pop  af                                          ; $6d3c: $f1
	db   $f4                                         ; $6d3d: $f4
	ldh  a, [c]                                      ; $6d3e: $f2
	ret  z                                           ; $6d3f: $c8

	cp   $e5                                         ; $6d40: $fe $e5
	ldh  [$28], a                                    ; $6d42: $e0 $28
	ld   hl, sp+$28                                  ; $6d44: $f8 $28
	add  sp, -$10                                    ; $6d46: $e8 $f0
	add  c                                           ; $6d48: $81
	ldh  [rTIMA], a                                  ; $6d49: $e0 $05
	jr   nz, jr_080_6d4d                             ; $6d4b: $20 $00

jr_080_6d4d:
	jr   c, jr_080_6d4f                              ; $6d4d: $38 $00

jr_080_6d4f:
	jp   $8003                                       ; $6d4f: $c3 $03 $80


	ld   e, $80                                      ; $6d52: $1e $80
	ld   sp, hl                                      ; $6d54: $f9
	add  b                                           ; $6d55: $80
	db   $db                                         ; $6d56: $db
	add  b                                           ; $6d57: $80
	dec  de                                          ; $6d58: $1b

jr_080_6d59:
	add  b                                           ; $6d59: $80
	db   $db                                         ; $6d5a: $db
	ld   bc, $003f                                   ; $6d5b: $01 $3f $00
	add  d                                           ; $6d5e: $82
	ret  nz                                          ; $6d5f: $c0

	add  b                                           ; $6d60: $80
	ld   b, b                                        ; $6d61: $40
	add  [hl]                                        ; $6d62: $86
	ret  nz                                          ; $6d63: $c0

	ld   [bc], a                                     ; $6d64: $02
	ldh  [$27], a                                    ; $6d65: $e0 $27
	nop                                              ; $6d67: $00
	add  l                                           ; $6d68: $85
	add  a                                           ; $6d69: $87
	ld   [$8f88], sp                                 ; $6d6a: $08 $88 $8f
	db   $ec                                         ; $6d6d: $ec
	rst  $38                                         ; $6d6e: $ff
	rrca                                             ; $6d6f: $0f
	sbc  a                                           ; $6d70: $9f
	inc  bc                                          ; $6d71: $03
	ldh  [rAUD4LEN], a                               ; $6d72: $e0 $20
	add  l                                           ; $6d74: $85
	ldh  [rSC], a                                    ; $6d75: $e0 $02
	jr   nz, jr_080_6d59                             ; $6d77: $20 $e0

	jr   nz, jr_080_6cfc                             ; $6d79: $20 $81

	ldh  [rSB], a                                    ; $6d7b: $e0 $01
	inc  bc                                          ; $6d7d: $03
	db   $db                                         ; $6d7e: $db
	add  b                                           ; $6d7f: $80
	dec  de                                          ; $6d80: $1b
	adc  d                                           ; $6d81: $8a
	db   $db                                         ; $6d82: $db
	nop                                              ; $6d83: $00
	rst  $38                                         ; $6d84: $ff
	adc  [hl]                                        ; $6d85: $8e
	ret  nz                                          ; $6d86: $c0

	add  b                                           ; $6d87: $80
	ld   [$f880], sp                                 ; $6d88: $08 $80 $f8
	add  b                                           ; $6d8b: $80
	rst  $38                                         ; $6d8c: $ff
	add  hl, bc                                      ; $6d8d: $09
	rlca                                             ; $6d8e: $07
	rla                                              ; $6d8f: $17
	ldh  a, [rOBP0]                                  ; $6d90: $f0 $48
	rst  $38                                         ; $6d92: $ff
	ld   [bc], a                                     ; $6d93: $02
	rst  $38                                         ; $6d94: $ff
	nop                                              ; $6d95: $00
	rst  $38                                         ; $6d96: $ff
	ld   d, d                                        ; $6d97: $52
	add  d                                           ; $6d98: $82
	jr   nz, jr_080_6d9e                             ; $6d99: $20 $03

	ldh  [$c0], a                                    ; $6d9b: $e0 $c0
	ret  c                                           ; $6d9d: $d8

jr_080_6d9e:
	ld   hl, sp-$80                                  ; $6d9e: $f8 $80
	jr   c, jr_080_6da7                              ; $6da0: $38 $05

	ldh  [$b2], a                                    ; $6da2: $e0 $b2
	rst  $38                                         ; $6da4: $ff
	nop                                              ; $6da5: $00
	rst  $38                                         ; $6da6: $ff

jr_080_6da7:
	ld   [hl], c                                     ; $6da7: $71
	add  l                                           ; $6da8: $85
	db   $db                                         ; $6da9: $db
	add  b                                           ; $6daa: $80
	ld   a, e                                        ; $6dab: $7b
	add  b                                           ; $6dac: $80
	rst  $38                                         ; $6dad: $ff
	inc  b                                           ; $6dae: $04
	xor  a                                           ; $6daf: $af
	rst  $38                                         ; $6db0: $ff
	dec  b                                           ; $6db1: $05
	rst  $38                                         ; $6db2: $ff
	ld   d, l                                        ; $6db3: $55
	add  [hl]                                        ; $6db4: $86
	ret  nz                                          ; $6db5: $c0

	nop                                              ; $6db6: $00
	ldh  a, [$80]                                    ; $6db7: $f0 $80
	and  b                                           ; $6db9: $a0
	ld   [$80e0], sp                                 ; $6dba: $08 $e0 $80
	nop                                              ; $6dbd: $00
	add  b                                           ; $6dbe: $80
	push hl                                          ; $6dbf: $e5
	rst  $38                                         ; $6dc0: $ff
	db   $f4                                         ; $6dc1: $f4
	rst  $38                                         ; $6dc2: $ff
	cp   $89                                         ; $6dc3: $fe $89
	rst  $38                                         ; $6dc5: $ff
	ld   b, $55                                      ; $6dc6: $06 $55
	rst  $38                                         ; $6dc8: $ff
	nop                                              ; $6dc9: $00
	rst  $38                                         ; $6dca: $ff
	xor  b                                           ; $6dcb: $a8
	rst  $38                                         ; $6dcc: $ff
	db   $fd                                         ; $6dcd: $fd
	add  a                                           ; $6dce: $87
	rst  $38                                         ; $6dcf: $ff
	ld   [$ff55], sp                                 ; $6dd0: $08 $55 $ff
	nop                                              ; $6dd3: $00
	rst  $38                                         ; $6dd4: $ff
	nop                                              ; $6dd5: $00
	rst  $38                                         ; $6dd6: $ff
	ld   b, b                                        ; $6dd7: $40
	rst  $38                                         ; $6dd8: $ff
	ld   [$ff85], a                                  ; $6dd9: $ea $85 $ff
	inc  c                                           ; $6ddc: $0c
	ld   d, b                                        ; $6ddd: $50
	ldh  a, [rP1]                                    ; $6dde: $f0 $00
	ldh  a, [rP1]                                    ; $6de0: $f0 $00
	ldh  a, [rP1]                                    ; $6de2: $f0 $00
	ldh  a, [rP1]                                    ; $6de4: $f0 $00
	ldh  a, [rLCDC]                                  ; $6de6: $f0 $40
	ldh  a, [$e0]                                    ; $6de8: $f0 $e0
	add  c                                           ; $6dea: $81
	ldh  a, [$9c]                                    ; $6deb: $f0 $9c
	rst  $38                                         ; $6ded: $ff
	ld   [bc], a                                     ; $6dee: $02
	cp   $ff                                         ; $6def: $fe $ff
	cp   $83                                         ; $6df1: $fe $83
	rst  $38                                         ; $6df3: $ff
	ld   a, [de]                                     ; $6df4: $1a
	cp   $ff                                         ; $6df5: $fe $ff
	db   $fc                                         ; $6df7: $fc
	rst  $38                                         ; $6df8: $ff
	add  sp, -$01                                    ; $6df9: $e8 $ff
	ld   b, b                                        ; $6dfb: $40
	rst  $38                                         ; $6dfc: $ff
	nop                                              ; $6dfd: $00
	rst  $38                                         ; $6dfe: $ff
	and  l                                           ; $6dff: $a5
	ldh  a, [$e0]                                    ; $6e00: $f0 $e0
	ldh  a, [$c0]                                    ; $6e02: $f0 $c0
	ldh  a, [$80]                                    ; $6e04: $f0 $80
	ldh  a, [rP1]                                    ; $6e06: $f0 $00
	ldh  a, [rP1]                                    ; $6e08: $f0 $00
	ldh  a, [rP1]                                    ; $6e0a: $f0 $00
	ldh  a, [rP1]                                    ; $6e0c: $f0 $00
	ldh  a, [$50]                                    ; $6e0e: $f0 $50
	rst  $38                                         ; $6e10: $ff
	nop                                              ; $6e11: $00
	rst  $38                                         ; $6e12: $ff
	nop                                              ; $6e13: $00
	rst  $38                                         ; $6e14: $ff
	nop                                              ; $6e15: $00
	rst  $38                                         ; $6e16: $ff
	nop                                              ; $6e17: $00
	rst  $38                                         ; $6e18: $ff
	nop                                              ; $6e19: $00
	rst  $38                                         ; $6e1a: $ff
	nop                                              ; $6e1b: $00
	rst  $30                                         ; $6e1c: $f7
	nop                                              ; $6e1d: $00
	sbc  $00                                         ; $6e1e: $de $00
	add  [hl]                                        ; $6e20: $86
	nop                                              ; $6e21: $00
	ld   [$fe01], sp                                 ; $6e22: $08 $01 $fe
	db   $fd                                         ; $6e25: $fd
	db   $fc                                         ; $6e26: $fc
	db   $fd                                         ; $6e27: $fd
	xor  b                                           ; $6e28: $a8
	ld   [hl-], a                                    ; $6e29: $32
	inc  b                                           ; $6e2a: $04
	sbc  l                                           ; $6e2b: $9d
	add  l                                           ; $6e2c: $85
	nop                                              ; $6e2d: $00
	add  b                                           ; $6e2e: $80
	ld   e, a                                        ; $6e2f: $5f
	nop                                              ; $6e30: $00
	rst  $38                                         ; $6e31: $ff
	add  b                                           ; $6e32: $80
	ld   a, [hl]                                     ; $6e33: $7e
	add  b                                           ; $6e34: $80
	db   $fc                                         ; $6e35: $fc
	ld   bc, $01fe                                   ; $6e36: $01 $fe $01
	add  l                                           ; $6e39: $85
	nop                                              ; $6e3a: $00
	inc  b                                           ; $6e3b: $04
	rst  $38                                         ; $6e3c: $ff
	ldh  [c], a                                      ; $6e3d: $e2
	jp   nz, Jump_080_7554                           ; $6e3e: $c2 $54 $75

	add  b                                           ; $6e41: $80
	xor  b                                           ; $6e42: $a8
	ld   bc, $be40                                   ; $6e43: $01 $40 $be
	add  [hl]                                        ; $6e46: $86
	nop                                              ; $6e47: $00
	add  c                                           ; $6e48: $81
	ld   [hl], b                                     ; $6e49: $70
	nop                                              ; $6e4a: $00
	ld   h, b                                        ; $6e4b: $60
	add  c                                           ; $6e4c: $81
	ldh  [rTIMA], a                                  ; $6e4d: $e0 $05
	cp   $0e                                         ; $6e4f: $fe $0e
	inc  c                                           ; $6e51: $0c
	ld   c, $01                                      ; $6e52: $0e $01
	inc  c                                           ; $6e54: $0c
	add  b                                           ; $6e55: $80
	inc  bc                                          ; $6e56: $03
	add  [hl]                                        ; $6e57: $86
	rrca                                             ; $6e58: $0f
	nop                                              ; $6e59: $00
	adc  a                                           ; $6e5a: $8f
	add  b                                           ; $6e5b: $80
	nop                                              ; $6e5c: $00
	nop                                              ; $6e5d: $00
	ld   a, a                                        ; $6e5e: $7f
	add  c                                           ; $6e5f: $81
	rst  $38                                         ; $6e60: $ff
	add  b                                           ; $6e61: $80
	rst  $30                                         ; $6e62: $f7
	inc  bc                                          ; $6e63: $03
	rst  $38                                         ; $6e64: $ff
	rst  $30                                         ; $6e65: $f7
	rst  $38                                         ; $6e66: $ff
	res  0, b                                        ; $6e67: $cb $80
	rst  JumpTable                                         ; $6e69: $df
	ld   bc, $e7c3                                   ; $6e6a: $01 $c3 $e7
	add  b                                           ; $6e6d: $80
	nop                                              ; $6e6e: $00
	add  b                                           ; $6e6f: $80
	ldh  [rP1], a                                    ; $6e70: $e0 $00
	rst  $20                                         ; $6e72: $e7
	add  b                                           ; $6e73: $80
	rst  $38                                         ; $6e74: $ff
	add  b                                           ; $6e75: $80
	ld   a, a                                        ; $6e76: $7f
	ld   [bc], a                                     ; $6e77: $02
	rst  $38                                         ; $6e78: $ff
	jp   $81fb                                       ; $6e79: $c3 $fb $81


	db   $db                                         ; $6e7c: $db
	nop                                              ; $6e7d: $00

jr_080_6e7e:
	inc  hl                                          ; $6e7e: $23
	add  c                                           ; $6e7f: $81
	nop                                              ; $6e80: $00
	dec  d                                           ; $6e81: $15
	jp   $fffc                                       ; $6e82: $c3 $fc $ff


	ld   hl, sp-$01                                  ; $6e85: $f8 $ff
	ld   hl, sp+$7e                                  ; $6e87: $f8 $7e
	jr   c, @+$7a                                    ; $6e89: $38 $78

	jr   nc, jr_080_6e7e                             ; $6e8b: $30 $f1

	ldh  a, [rPCM12]                                 ; $6e8d: $f0 $76
	ld   a, c                                        ; $6e8f: $79
	or   l                                           ; $6e90: $b5
	dec  [hl]                                        ; $6e91: $35
	xor  l                                           ; $6e92: $ad
	dec  l                                           ; $6e93: $2d
	cp   l                                           ; $6e94: $bd
	dec  a                                           ; $6e95: $3d
	cp   e                                           ; $6e96: $bb
	dec  sp                                          ; $6e97: $3b
	add  b                                           ; $6e98: $80
	jp   $fc80                                       ; $6e99: $c3 $80 $fc


	add  b                                           ; $6e9c: $80
	ld   a, a                                        ; $6e9d: $7f
	ld   [bc], a                                     ; $6e9e: $02
	call c, $c2c0                                    ; $6e9f: $dc $c0 $c2
	adc  c                                           ; $6ea2: $89
	ret  nz                                          ; $6ea3: $c0

	add  b                                           ; $6ea4: $80
	nop                                              ; $6ea5: $00
	nop                                              ; $6ea6: $00
	db   $e3                                         ; $6ea7: $e3
	add  b                                           ; $6ea8: $80
	rrca                                             ; $6ea9: $0f
	add  c                                           ; $6eaa: $81
	rlca                                             ; $6eab: $07

jr_080_6eac:
	ld   b, $87                                      ; $6eac: $06 $87
	rlca                                             ; $6eae: $07
	rst  ToBoot                                         ; $6eaf: $c7
	rlca                                             ; $6eb0: $07
	ld   h, a                                        ; $6eb1: $67
	rlca                                             ; $6eb2: $07
	dec  [hl]                                        ; $6eb3: $35
	add  b                                           ; $6eb4: $80
	inc  bc                                          ; $6eb5: $03
	dec  b                                           ; $6eb6: $05
	ld   bc, $ff2a                                   ; $6eb7: $01 $2a $ff
	ld   hl, sp-$01                                  ; $6eba: $f8 $ff
	db   $fc                                         ; $6ebc: $fc
	add  c                                           ; $6ebd: $81
	rst  $38                                         ; $6ebe: $ff
	inc  b                                           ; $6ebf: $04
	rst  JumpTable                                         ; $6ec0: $df
	rst  $38                                         ; $6ec1: $ff
	rst  $28                                         ; $6ec2: $ef
	rst  $38                                         ; $6ec3: $ff
	di                                               ; $6ec4: $f3
	add  b                                           ; $6ec5: $80
	rst  $38                                         ; $6ec6: $ff
	dec  b                                           ; $6ec7: $05
	db   $fc                                         ; $6ec8: $fc
	ld   l, a                                        ; $6ec9: $6f
	ldh  [rP1], a                                    ; $6eca: $e0 $00
	ldh  [$60], a                                    ; $6ecc: $e0 $60
	add  [hl]                                        ; $6ece: $86
	ldh  [$03], a                                    ; $6ecf: $e0 $03
	ret  nz                                          ; $6ed1: $c0

	ldh  [rAUD4LEN], a                               ; $6ed2: $e0 $20
	ldh  a, [$8d]                                    ; $6ed4: $f0 $8d
	nop                                              ; $6ed6: $00
	nop                                              ; $6ed7: $00
	db   $10                                         ; $6ed8: $10
	add  l                                           ; $6ed9: $85
	ldh  [rP1], a                                    ; $6eda: $e0 $00
	ld   hl, sp-$7b                                  ; $6edc: $f8 $85
	ldh  a, [rSB]                                    ; $6ede: $f0 $01
	ld   sp, hl                                      ; $6ee0: $f9
	ld   bc, $0280                                   ; $6ee1: $01 $80 $02
	add  b                                           ; $6ee4: $80
	ld   bc, $0a80                                   ; $6ee5: $01 $80 $0a
	add  b                                           ; $6ee8: $80
	ld   d, l                                        ; $6ee9: $55
	add  b                                           ; $6eea: $80
	xor  b                                           ; $6eeb: $a8
	add  b                                           ; $6eec: $80
	ld   a, l                                        ; $6eed: $7d
	add  b                                           ; $6eee: $80
	cp   a                                           ; $6eef: $bf
	dec  c                                           ; $6ef0: $0d
	rst  JumpTable                                         ; $6ef1: $df
	reti                                             ; $6ef2: $d9


	cp   e                                           ; $6ef3: $bb
	or   b                                           ; $6ef4: $b0
	ldh  a, [c]                                      ; $6ef5: $f2
	ld   a, c                                        ; $6ef6: $79
	jr   c, jr_080_6eac                              ; $6ef7: $38 $b3

	or   d                                           ; $6ef9: $b2
	ld   l, c                                        ; $6efa: $69
	xor  e                                           ; $6efb: $ab
	jp   nz, $a565                                   ; $6efc: $c2 $65 $a5

	add  c                                           ; $6eff: $81
	ret  nz                                          ; $6f00: $c0

	ld   de, $fdbd                                   ; $6f01: $11 $bd $fd
	rst  $38                                         ; $6f04: $ff
	or   $f4                                         ; $6f05: $f6 $f4
	jp   hl                                          ; $6f07: $e9


	ld   l, d                                        ; $6f08: $6a
	ld   d, [hl]                                     ; $6f09: $56
	dec  d                                           ; $6f0a: $15
	dec  a                                           ; $6f0b: $3d
	halt                                             ; $6f0c: $76
	ld   d, [hl]                                     ; $6f0d: $56
	bit  5, e                                        ; $6f0e: $cb $6b
	ret  nc                                          ; $6f10: $d0

	ld   d, c                                        ; $6f11: $51
	nop                                              ; $6f12: $00
	ld   [bc], a                                     ; $6f13: $02
	add  c                                           ; $6f14: $81
	ld   bc, $0500                                   ; $6f15: $01 $00 $05
	add  c                                           ; $6f18: $81
	inc  bc                                          ; $6f19: $03
	rlca                                             ; $6f1a: $07
	ld   a, [bc]                                     ; $6f1b: $0a
	ld   b, $14                                      ; $6f1c: $06 $14
	inc  c                                           ; $6f1e: $0c
	add  hl, hl                                      ; $6f1f: $29
	add  hl, de                                      ; $6f20: $19
	rst  $28                                         ; $6f21: $ef
	ret  nz                                          ; $6f22: $c0

	add  b                                           ; $6f23: $80
	ret  nc                                          ; $6f24: $d0

	add  b                                           ; $6f25: $80
	add  b                                           ; $6f26: $80
	add  b                                           ; $6f27: $80
	or   b                                           ; $6f28: $b0
	add  b                                           ; $6f29: $80
	nop                                              ; $6f2a: $00
	add  b                                           ; $6f2b: $80
	ld   [hl], b                                     ; $6f2c: $70
	add  b                                           ; $6f2d: $80
	nop                                              ; $6f2e: $00
	add  c                                           ; $6f2f: $81
	ldh  a, [$82]                                    ; $6f30: $f0 $82
	rrca                                             ; $6f32: $0f

jr_080_6f33:
	add  b                                           ; $6f33: $80
	dec  c                                           ; $6f34: $0d
	add  b                                           ; $6f35: $80
	rrca                                             ; $6f36: $0f
	ld   [bc], a                                     ; $6f37: $02
	rlca                                             ; $6f38: $07
	ld   b, $0e                                      ; $6f39: $06 $0e
	add  d                                           ; $6f3b: $82
	rrca                                             ; $6f3c: $0f
	ld   bc, $fe0e                                   ; $6f3d: $01 $0e $fe
	add  b                                           ; $6f40: $80
	rst  $38                                         ; $6f41: $ff
	nop                                              ; $6f42: $00
	di                                               ; $6f43: $f3
	add  b                                           ; $6f44: $80
	rst  $30                                         ; $6f45: $f7
	nop                                              ; $6f46: $00
	di                                               ; $6f47: $f3
	add  l                                           ; $6f48: $85
	rst  $38                                         ; $6f49: $ff
	ld   [bc], a                                     ; $6f4a: $02
	ld   hl, sp-$3c                                  ; $6f4b: $f8 $c4
	jp   $ff80                                       ; $6f4d: $c3 $80 $ff


	inc  b                                           ; $6f50: $04
	cp   a                                           ; $6f51: $bf
	sbc  a                                           ; $6f52: $9f
	cp   a                                           ; $6f53: $bf
	sbc  a                                           ; $6f54: $9f
	rst  $38                                         ; $6f55: $ff
	add  b                                           ; $6f56: $80
	db   $fc                                         ; $6f57: $fc
	add  b                                           ; $6f58: $80
	ldh  [$82], a                                    ; $6f59: $e0 $82
	nop                                              ; $6f5b: $00
	dec  b                                           ; $6f5c: $05
	ld   a, c                                        ; $6f5d: $79
	ld   a, a                                        ; $6f5e: $7f
	ld   hl, sp-$01                                  ; $6f5f: $f8 $ff
	ldh  a, [$f1]                                    ; $6f61: $f0 $f1
	add  b                                           ; $6f63: $80
	add  b                                           ; $6f64: $80
	add  l                                           ; $6f65: $85
	nop                                              ; $6f66: $00
	ld   a, [bc]                                     ; $6f67: $0a
	ret  nz                                          ; $6f68: $c0

	ccf                                              ; $6f69: $3f
	add  b                                           ; $6f6a: $80
	nop                                              ; $6f6b: $00
	add  c                                           ; $6f6c: $81
	nop                                              ; $6f6d: $00

jr_080_6f6e:
	ret  nz                                          ; $6f6e: $c0

	nop                                              ; $6f6f: $00
	ld   [bc], a                                     ; $6f70: $02
	nop                                              ; $6f71: $00
	inc  a                                           ; $6f72: $3c
	add  e                                           ; $6f73: $83
	nop                                              ; $6f74: $00
	inc  b                                           ; $6f75: $04
	ld   b, c                                        ; $6f76: $41
	add  b                                           ; $6f77: $80
	ld   b, b                                        ; $6f78: $40
	nop                                              ; $6f79: $00
	add  b                                           ; $6f7a: $80
	adc  c                                           ; $6f7b: $89
	nop                                              ; $6f7c: $00
	add  c                                           ; $6f7d: $81
	ld   bc, $008c                                   ; $6f7e: $01 $8c $00
	adc  b                                           ; $6f81: $88
	rst  $38                                         ; $6f82: $ff
	add  h                                           ; $6f83: $84
	ld   a, a                                        ; $6f84: $7f
	cp   l                                           ; $6f85: $bd
	nop                                              ; $6f86: $00

jr_080_6f87:
	jr   jr_080_6f87                                 ; $6f87: $18 $fe

	pop  bc                                          ; $6f89: $c1
	ret  nc                                          ; $6f8a: $d0

	and  b                                           ; $6f8b: $a0
	cp   b                                           ; $6f8c: $b8
	ld   de, $a3a9                                   ; $6f8d: $11 $a9 $a3
	ld   d, e                                        ; $6f90: $53
	ld   l, c                                        ; $6f91: $69
	ld   e, c                                        ; $6f92: $59
	ldh  a, [rBCPS]                                  ; $6f93: $f0 $68
	jp   hl                                          ; $6f95: $e9


	ld   bc, $7000                                   ; $6f96: $01 $00 $70
	adc  b                                           ; $6f99: $88
	add  hl, de                                      ; $6f9a: $19
	ld   e, h                                        ; $6f9b: $5c
	cp   l                                           ; $6f9c: $bd
	ld   a, [$7d7a]                                  ; $6f9d: $fa $7a $7d
	db   $fd                                         ; $6fa0: $fd
	add  b                                           ; $6fa1: $80
	ld   c, d                                        ; $6fa2: $4a
	ld   [$1191], sp                                 ; $6fa3: $08 $91 $11
	ret  nz                                          ; $6fa6: $c0

	ld   b, b                                        ; $6fa7: $40
	nop                                              ; $6fa8: $00
	ld   [hl], b                                     ; $6fa9: $70
	jr   nc, jr_080_6f33                             ; $6faa: $30 $87

	rst  ToBoot                                         ; $6fac: $c7
	adc  d                                           ; $6fad: $8a
	nop                                              ; $6fae: $00
	ld   bc, $000f                                   ; $6faf: $01 $0f $00
	add  b                                           ; $6fb2: $80
	ldh  a, [$84]                                    ; $6fb3: $f0 $84
	nop                                              ; $6fb5: $00
	add  b                                           ; $6fb6: $80
	db   $10                                         ; $6fb7: $10
	inc  b                                           ; $6fb8: $04
	jr   nz, jr_080_6feb                             ; $6fb9: $20 $30

	ld   d, b                                        ; $6fbb: $50
	ld   [hl], b                                     ; $6fbc: $70
	ret  nz                                          ; $6fbd: $c0

	rst  $38                                         ; $6fbe: $ff
	nop                                              ; $6fbf: $00
	cp   h                                           ; $6fc0: $bc
	nop                                              ; $6fc1: $00
	ld   bc, $f6fe                                   ; $6fc2: $01 $fe $f6
	add  e                                           ; $6fc5: $83
	db   $f4                                         ; $6fc6: $f4
	ld   bc, $e0e4                                   ; $6fc7: $01 $e4 $e0
	add  b                                           ; $6fca: $80
	ret  nc                                          ; $6fcb: $d0

	add  e                                           ; $6fcc: $83
	ldh  a, [rP1]                                    ; $6fcd: $f0 $00
	rst  $30                                         ; $6fcf: $f7
	add  b                                           ; $6fd0: $80
	rst  $38                                         ; $6fd1: $ff
	nop                                              ; $6fd2: $00
	nop                                              ; $6fd3: $00
	add  b                                           ; $6fd4: $80
	rst  $38                                         ; $6fd5: $ff
	add  d                                           ; $6fd6: $82
	nop                                              ; $6fd7: $00
	nop                                              ; $6fd8: $00
	inc  sp                                          ; $6fd9: $33
	add  c                                           ; $6fda: $81
	nop                                              ; $6fdb: $00
	ld   [bc], a                                     ; $6fdc: $02
	jr   nc, jr_080_6fdf                             ; $6fdd: $30 $00

jr_080_6fdf:
	inc  bc                                          ; $6fdf: $03
	add  b                                           ; $6fe0: $80
	ldh  a, [rP1]                                    ; $6fe1: $f0 $00
	nop                                              ; $6fe3: $00
	add  b                                           ; $6fe4: $80
	ldh  a, [$82]                                    ; $6fe5: $f0 $82
	nop                                              ; $6fe7: $00
	nop                                              ; $6fe8: $00
	jr   nc, jr_080_6f6e                             ; $6fe9: $30 $83

jr_080_6feb:
	nop                                              ; $6feb: $00
	nop                                              ; $6fec: $00
	cp   a                                           ; $6fed: $bf
	adc  h                                           ; $6fee: $8c
	ldh  [rSB], a                                    ; $6fef: $e0 $01
	ret  nz                                          ; $6ff1: $c0

	or   b                                           ; $6ff2: $b0
	rst  $38                                         ; $6ff3: $ff
	nop                                              ; $6ff4: $00
	cp   h                                           ; $6ff5: $bc
	nop                                              ; $6ff6: $00
	nop                                              ; $6ff7: $00
	call z, $0085                                    ; $6ff8: $cc $85 $00
	ld   [bc], a                                     ; $6ffb: $02
	ld   bc, $0300                                   ; $6ffc: $01 $00 $03
	add  e                                           ; $6fff: $83
	nop                                              ; $7000: $00
	ld   [bc], a                                     ; $7001: $02
	inc  sp                                          ; $7002: $33
	nop                                              ; $7003: $00
	ld   sp, $0081                                   ; $7004: $31 $81 $00
	ld   [bc], a                                     ; $7007: $02
	ld   bc, $b910                                   ; $7008: $01 $10 $b9
	add  b                                           ; $700b: $80
	ld   hl, $230f                                   ; $700c: $21 $0f $23
	dec  [hl]                                        ; $700f: $35
	ld   sp, $0535                                   ; $7010: $31 $35 $05
	sbc  h                                           ; $7013: $9c
	nop                                              ; $7014: $00
	add  b                                           ; $7015: $80
	nop                                              ; $7016: $00
	jr   nz, jr_080_7019                             ; $7017: $20 $00

jr_080_7019:
	jr   nz, jr_080_701b                             ; $7019: $20 $00

jr_080_701b:
	ld   [hl], b                                     ; $701b: $70
	ld   h, b                                        ; $701c: $60
	ld   [hl], b                                     ; $701d: $70
	add  c                                           ; $701e: $81
	ldh  a, [$80]                                    ; $701f: $f0 $80
	ret  nc                                          ; $7021: $d0

	nop                                              ; $7022: $00
	sbc  a                                           ; $7023: $9f
	add  c                                           ; $7024: $81
	ret  nz                                          ; $7025: $c0

	inc  b                                           ; $7026: $04
	ret  nc                                          ; $7027: $d0

	ret  nz                                          ; $7028: $c0

	ret  nc                                          ; $7029: $d0

	ret  nz                                          ; $702a: $c0

	ldh  [$81], a                                    ; $702b: $e0 $81
	ret  nz                                          ; $702d: $c0

	nop                                              ; $702e: $00
	ldh  a, [$81]                                    ; $702f: $f0 $81
	ret  nz                                          ; $7031: $c0

	nop                                              ; $7032: $00
	or   b                                           ; $7033: $b0
	rst  $38                                         ; $7034: $ff
	nop                                              ; $7035: $00
	cp   h                                           ; $7036: $bc
	nop                                              ; $7037: $00
	ld   [bc], a                                     ; $7038: $02
	call z, Boot                                     ; $7039: $cc $00 $01
	add  e                                           ; $703c: $83
	nop                                              ; $703d: $00
	inc  c                                           ; $703e: $0c
	db   $10                                         ; $703f: $10
	ret  nz                                          ; $7040: $c0

	ldh  [c], a                                      ; $7041: $e2
	ret  nc                                          ; $7042: $d0

	pop  de                                          ; $7043: $d1
	ldh  a, [$f1]                                    ; $7044: $f0 $f1
	sub  b                                           ; $7046: $90
	dec  e                                           ; $7047: $1d
	nop                                              ; $7048: $00
	ld   sp, $3100                                   ; $7049: $31 $00 $31
	add  b                                           ; $704c: $80
	nop                                              ; $704d: $00
	ld   [bc], a                                     ; $704e: $02
	ld   sp, $3135                                   ; $704f: $31 $35 $31
	add  d                                           ; $7052: $82
	inc  sp                                          ; $7053: $33
	ld   b, $bb                                      ; $7054: $06 $bb
	inc  sp                                          ; $7056: $33
	add  sp, $18                                     ; $7057: $e8 $18
	ld   hl, sp+$38                                  ; $7059: $f8 $38
	cp   b                                           ; $705b: $b8
	add  b                                           ; $705c: $80
	jr   c, jr_080_705f                              ; $705d: $38 $00

jr_080_705f:
	cp   b                                           ; $705f: $b8
	add  b                                           ; $7060: $80
	ret  c                                           ; $7061: $d8

	inc  bc                                          ; $7062: $03
	push de                                          ; $7063: $d5
	db   $d3                                         ; $7064: $d3
	ret  nc                                          ; $7065: $d0

	pop  de                                          ; $7066: $d1
	add  b                                           ; $7067: $80
	ret  nc                                          ; $7068: $d0

	ld   [bc], a                                     ; $7069: $02
	adc  b                                           ; $706a: $88
	ret  nz                                          ; $706b: $c0

	ldh  a, [$85]                                    ; $706c: $f0 $85
	ret  nz                                          ; $706e: $c0

	add  b                                           ; $706f: $80
	ld   b, b                                        ; $7070: $40
	inc  b                                           ; $7071: $04
	ret  nz                                          ; $7072: $c0

	add  b                                           ; $7073: $80
	ld   b, b                                        ; $7074: $40
	ret  nz                                          ; $7075: $c0

	ld   b, b                                        ; $7076: $40
	rst  $38                                         ; $7077: $ff
	nop                                              ; $7078: $00
	cp   h                                           ; $7079: $bc
	nop                                              ; $707a: $00
	nop                                              ; $707b: $00
	ldh  a, [$83]                                    ; $707c: $f0 $83
	nop                                              ; $707e: $00
	ld   bc, $0080                                   ; $707f: $01 $80 $00
	add  b                                           ; $7082: $80
	add  b                                           ; $7083: $80
	add  b                                           ; $7084: $80
	adc  b                                           ; $7085: $88
	add  d                                           ; $7086: $82
	adc  h                                           ; $7087: $8c
	nop                                              ; $7088: $00
	add  h                                           ; $7089: $84
	adc  l                                           ; $708a: $8d
	rst  $38                                         ; $708b: $ff
	add  hl, bc                                      ; $708c: $09
	scf                                              ; $708d: $37
	ret  z                                           ; $708e: $c8

	jp   c, $d7cc                                    ; $708f: $da $cc $d7

	add  $c5                                         ; $7092: $c6 $c5
	rst  ToBoot                                         ; $7094: $c7
	jp   z, $80c3                                    ; $7095: $ca $c3 $80

	pop  de                                          ; $7098: $d1
	inc  d                                           ; $7099: $14
	push de                                          ; $709a: $d5
	pop  de                                          ; $709b: $d1
	ret  z                                           ; $709c: $c8

	ret  c                                           ; $709d: $d8

	xor  h                                           ; $709e: $ac
	ld   b, b                                        ; $709f: $40
	jr   nc, jr_080_70a2                             ; $70a0: $30 $00

jr_080_70a2:
	jr   nc, jr_080_70a4                             ; $70a2: $30 $00

jr_080_70a4:
	or   b                                           ; $70a4: $b0
	nop                                              ; $70a5: $00
	ld   [hl], b                                     ; $70a6: $70
	nop                                              ; $70a7: $00
	and  b                                           ; $70a8: $a0
	add  b                                           ; $70a9: $80
	ld   d, b                                        ; $70aa: $50
	ret  nz                                          ; $70ab: $c0

	and  b                                           ; $70ac: $a0
	ldh  [$30], a                                    ; $70ad: $e0 $30
	rst  $38                                         ; $70af: $ff
	nop                                              ; $70b0: $00
	cp   h                                           ; $70b1: $bc
	nop                                              ; $70b2: $00
	ld   bc, $8efe                                   ; $70b3: $01 $fe $8e
	add  b                                           ; $70b6: $80
	add  [hl]                                        ; $70b7: $86
	add  b                                           ; $70b8: $80
	ld   b, $04                                      ; $70b9: $06 $04
	halt                                             ; $70bb: $76
	ld   b, $26                                      ; $70bc: $06 $26
	ld   b, $4e                                      ; $70be: $06 $4e
	add  c                                           ; $70c0: $81
	ld   b, $0b                                      ; $70c1: $06 $0b
	sub  [hl]                                        ; $70c3: $96
	ld   b, $0f                                      ; $70c4: $06 $0f
	db   $fc                                         ; $70c6: $fc
	dec  c                                           ; $70c7: $0d
	cp   $f7                                         ; $70c8: $fe $f7
	ld   c, $7e                                      ; $70ca: $0e $7e
	rrca                                             ; $70cc: $0f
	ld   h, l                                        ; $70cd: $65
	dec  d                                           ; $70ce: $15
	add  b                                           ; $70cf: $80

jr_080_70d0:
	ld   [bc], a                                     ; $70d0: $02
	add  b                                           ; $70d1: $80
	ld   bc, $0280                                   ; $70d2: $01 $80 $02
	inc  b                                           ; $70d5: $04
	or   $18                                         ; $70d6: $f6 $18
	ret  c                                           ; $70d8: $d8

	jr   c, jr_080_70d0                              ; $70d9: $38 $f5

	add  b                                           ; $70db: $80
	inc  a                                           ; $70dc: $3c
	nop                                              ; $70dd: $00
	db   $fc                                         ; $70de: $fc
	add  b                                           ; $70df: $80
	cp   $01                                         ; $70e0: $fe $01
	cp   d                                           ; $70e2: $ba
	cp   [hl]                                        ; $70e3: $be
	add  b                                           ; $70e4: $80
	rra                                              ; $70e5: $1f
	add  b                                           ; $70e6: $80
	cp   a                                           ; $70e7: $bf
	ld   [bc], a                                     ; $70e8: $02
	jp   $50f0                                       ; $70e9: $c3 $f0 $50


	add  c                                           ; $70ec: $81
	ld   [hl], b                                     ; $70ed: $70
	ld   [bc], a                                     ; $70ee: $02
	jr   nz, jr_080_7121                             ; $70ef: $20 $30

	sub  b                                           ; $70f1: $90
	add  c                                           ; $70f2: $81
	stop                                             ; $70f3: $10 $00
	ld   b, b                                        ; $70f5: $40
	add  c                                           ; $70f6: $81
	nop                                              ; $70f7: $00
	nop                                              ; $70f8: $00
	ret  nz                                          ; $70f9: $c0

	rst  $38                                         ; $70fa: $ff
	nop                                              ; $70fb: $00
	cp   h                                           ; $70fc: $bc
	nop                                              ; $70fd: $00
	or   $00                                         ; $70fe: $f6 $00
	ld   bc, $00ff                                   ; $7100: $01 $ff $00
	add  b                                           ; $7103: $80
	ld   [bc], a                                     ; $7104: $02
	add  b                                           ; $7105: $80
	ld   bc, $0280                                   ; $7106: $01 $80 $02
	add  b                                           ; $7109: $80
	nop                                              ; $710a: $00
	add  b                                           ; $710b: $80
	ld   [bc], a                                     ; $710c: $02
	add  b                                           ; $710d: $80
	ld   bc, $0280                                   ; $710e: $01 $80 $02
	add  b                                           ; $7111: $80
	ld   d, l                                        ; $7112: $55
	add  b                                           ; $7113: $80
	xor  d                                           ; $7114: $aa
	add  b                                           ; $7115: $80
	ld   d, h                                        ; $7116: $54
	add  b                                           ; $7117: $80
	add  d                                           ; $7118: $82
	add  b                                           ; $7119: $80
	ld   d, l                                        ; $711a: $55
	add  b                                           ; $711b: $80
	xor  d                                           ; $711c: $aa
	add  b                                           ; $711d: $80
	ld   d, h                                        ; $711e: $54
	add  b                                           ; $711f: $80
	add  d                                           ; $7120: $82

jr_080_7121:
	add  b                                           ; $7121: $80
	ld   d, l                                        ; $7122: $55
	add  b                                           ; $7123: $80
	and  b                                           ; $7124: $a0
	add  b                                           ; $7125: $80
	dec  d                                           ; $7126: $15
	add  b                                           ; $7127: $80
	xor  d                                           ; $7128: $aa
	add  b                                           ; $7129: $80
	ld   d, l                                        ; $712a: $55
	add  b                                           ; $712b: $80
	and  b                                           ; $712c: $a0
	add  b                                           ; $712d: $80
	dec  d                                           ; $712e: $15
	add  b                                           ; $712f: $80
	xor  d                                           ; $7130: $aa
	add  b                                           ; $7131: $80
	dec  b                                           ; $7132: $05
	add  b                                           ; $7133: $80
	xor  d                                           ; $7134: $aa
	add  b                                           ; $7135: $80
	ld   d, l                                        ; $7136: $55
	add  b                                           ; $7137: $80
	xor  b                                           ; $7138: $a8
	add  b                                           ; $7139: $80
	dec  b                                           ; $713a: $05
	add  b                                           ; $713b: $80
	xor  d                                           ; $713c: $aa
	add  b                                           ; $713d: $80
	ld   d, l                                        ; $713e: $55
	add  b                                           ; $713f: $80
	xor  b                                           ; $7140: $a8
	add  b                                           ; $7141: $80
	ld   d, l                                        ; $7142: $55
	add  b                                           ; $7143: $80
	xor  d                                           ; $7144: $aa
	add  b                                           ; $7145: $80
	ld   b, c                                        ; $7146: $41
	add  b                                           ; $7147: $80
	ld   a, [hl+]                                    ; $7148: $2a
	add  b                                           ; $7149: $80
	ld   d, l                                        ; $714a: $55
	add  b                                           ; $714b: $80
	xor  d                                           ; $714c: $aa
	add  b                                           ; $714d: $80
	ld   b, c                                        ; $714e: $41
	add  b                                           ; $714f: $80
	ld   a, [hl+]                                    ; $7150: $2a
	add  b                                           ; $7151: $80
	ld   d, b                                        ; $7152: $50
	add  b                                           ; $7153: $80
	rrca                                             ; $7154: $0f
	add  b                                           ; $7155: $80
	ld   d, l                                        ; $7156: $55
	add  b                                           ; $7157: $80
	xor  d                                           ; $7158: $aa
	add  b                                           ; $7159: $80
	ld   d, b                                        ; $715a: $50
	add  b                                           ; $715b: $80
	dec  bc                                          ; $715c: $0b
	add  b                                           ; $715d: $80
	ld   d, l                                        ; $715e: $55
	add  b                                           ; $715f: $80
	xor  d                                           ; $7160: $aa
	add  b                                           ; $7161: $80
	ld   a, a                                        ; $7162: $7f
	add  b                                           ; $7163: $80
	rst  $38                                         ; $7164: $ff
	add  b                                           ; $7165: $80
	ld   hl, sp-$80                                  ; $7166: $f8 $80
	add  a                                           ; $7168: $87
	add  b                                           ; $7169: $80
	ld   a, a                                        ; $716a: $7f
	add  b                                           ; $716b: $80
	rst  $38                                         ; $716c: $ff
	add  b                                           ; $716d: $80
	ld   hl, sp-$80                                  ; $716e: $f8 $80
	rlca                                             ; $7170: $07
	add  b                                           ; $7171: $80
	cp   $80                                         ; $7172: $fe $80
	pop  bc                                          ; $7174: $c1
	add  b                                           ; $7175: $80
	ccf                                              ; $7176: $3f
	add  b                                           ; $7177: $80
	rst  $38                                         ; $7178: $ff
	add  b                                           ; $7179: $80
	cp   $80                                         ; $717a: $fe $80
	pop  bc                                          ; $717c: $c1
	add  b                                           ; $717d: $80
	ccf                                              ; $717e: $3f
	add  b                                           ; $717f: $80
	db   $eb                                         ; $7180: $eb
	add  b                                           ; $7181: $80
	rrca                                             ; $7182: $0f
	add  d                                           ; $7183: $82
	rst  $38                                         ; $7184: $ff
	add  b                                           ; $7185: $80
	ldh  a, [$80]                                    ; $7186: $f0 $80
	rrca                                             ; $7188: $0f
	add  d                                           ; $7189: $82
	rst  $38                                         ; $718a: $ff
	add  b                                           ; $718b: $80
	ldh  [rTAC], a                                   ; $718c: $e0 $07
	ld   [$e7ff], a                                  ; $718e: $ea $ff $e7
	ld   a, [$979d]                                  ; $7191: $fa $9d $97
	ld   a, l                                        ; $7194: $7d
	ld   a, a                                        ; $7195: $7f
	add  b                                           ; $7196: $80
	rst  $38                                         ; $7197: $ff
	add  b                                           ; $7198: $80
	ld   hl, sp-$80                                  ; $7199: $f8 $80
	rlca                                             ; $719b: $07
	add  b                                           ; $719c: $80
	rst  $38                                         ; $719d: $ff
	rlca                                             ; $719e: $07
	sub  c                                           ; $719f: $91
	pop  de                                          ; $71a0: $d1
	db   $eb                                         ; $71a1: $eb
	cp   a                                           ; $71a2: $bf
	ld   b, e                                        ; $71a3: $43
	rst  $38                                         ; $71a4: $ff
	ld   d, h                                        ; $71a5: $54
	db   $fc                                         ; $71a6: $fc
	add  b                                           ; $71a7: $80
	jp   $3f80                                       ; $71a8: $c3 $80 $3f


	add  b                                           ; $71ab: $80
	rst  $38                                         ; $71ac: $ff
	add  b                                           ; $71ad: $80
	db   $fc                                         ; $71ae: $fc
	ld   [$ffe5], sp                                 ; $71af: $08 $e5 $ff
	db   $e4                                         ; $71b2: $e4
	rst  $38                                         ; $71b3: $ff
	db   $eb                                         ; $71b4: $eb
	ld   [$1f15], a                                  ; $71b5: $ea $15 $1f
	push af                                          ; $71b8: $f5
	add  c                                           ; $71b9: $81
	rst  $38                                         ; $71ba: $ff
	add  b                                           ; $71bb: $80
	ldh  [$80], a                                    ; $71bc: $e0 $80
	rra                                              ; $71be: $1f
	add  b                                           ; $71bf: $80
	ld   hl, sp-$80                                  ; $71c0: $f8 $80
	rlca                                             ; $71c2: $07
	add  d                                           ; $71c3: $82
	rst  $38                                         ; $71c4: $ff
	add  b                                           ; $71c5: $80
	ldh  a, [$80]                                    ; $71c6: $f0 $80
	rrca                                             ; $71c8: $0f
	add  d                                           ; $71c9: $82
	rst  $38                                         ; $71ca: $ff
	dec  d                                           ; $71cb: $15
	dec  hl                                          ; $71cc: $2b
	nop                                              ; $71cd: $00
	and  b                                           ; $71ce: $a0
	nop                                              ; $71cf: $00
	ld   b, b                                        ; $71d0: $40
	nop                                              ; $71d1: $00
	ld   c, b                                        ; $71d2: $48
	nop                                              ; $71d3: $00
	ld   a, [$8500]                                  ; $71d4: $fa $00 $85
	nop                                              ; $71d7: $00
	inc  b                                           ; $71d8: $04
	nop                                              ; $71d9: $00
	ld   a, a                                        ; $71da: $7f
	nop                                              ; $71db: $00
	ld   [hl], l                                     ; $71dc: $75
	di                                               ; $71dd: $f3
	ld   h, c                                        ; $71de: $61
	pop  hl                                          ; $71df: $e1
	ld   [hl], e                                     ; $71e0: $73
	di                                               ; $71e1: $f3
	add  b                                           ; $71e2: $80
	pop  hl                                          ; $71e3: $e1
	add  b                                           ; $71e4: $80
	di                                               ; $71e5: $f3
	add  b                                           ; $71e6: $80
	pop  hl                                          ; $71e7: $e1
	add  b                                           ; $71e8: $80
	di                                               ; $71e9: $f3
	add  b                                           ; $71ea: $80
	pop  hl                                          ; $71eb: $e1
	ld   de, $f03e                                   ; $71ec: $11 $3e $f0
	sub  b                                           ; $71ef: $90
	ldh  a, [rAUD1SWEEP]                             ; $71f0: $f0 $10
	ldh  a, [$30]                                    ; $71f2: $f0 $30
	ldh  a, [$30]                                    ; $71f4: $f0 $30
	ldh  a, [$30]                                    ; $71f6: $f0 $30
	ldh  a, [$30]                                    ; $71f8: $f0 $30
	ldh  a, [$30]                                    ; $71fa: $f0 $30
	ldh  a, [$8f]                                    ; $71fc: $f0 $8f
	nop                                              ; $71fe: $00
	add  b                                           ; $71ff: $80
	ld   [bc], a                                     ; $7200: $02
	add  b                                           ; $7201: $80
	ld   bc, $0280                                   ; $7202: $01 $80 $02
	add  b                                           ; $7205: $80
	nop                                              ; $7206: $00
	add  b                                           ; $7207: $80
	ld   [bc], a                                     ; $7208: $02
	add  b                                           ; $7209: $80
	ld   bc, $0280                                   ; $720a: $01 $80 $02
	add  b                                           ; $720d: $80
	ld   d, l                                        ; $720e: $55
	add  b                                           ; $720f: $80
	xor  d                                           ; $7210: $aa
	add  b                                           ; $7211: $80
	ld   d, h                                        ; $7212: $54
	add  b                                           ; $7213: $80
	add  d                                           ; $7214: $82
	add  b                                           ; $7215: $80
	ld   d, l                                        ; $7216: $55
	add  b                                           ; $7217: $80
	xor  d                                           ; $7218: $aa
	add  b                                           ; $7219: $80
	ld   d, h                                        ; $721a: $54
	add  b                                           ; $721b: $80
	add  d                                           ; $721c: $82
	add  b                                           ; $721d: $80
	ld   d, l                                        ; $721e: $55
	add  b                                           ; $721f: $80
	and  b                                           ; $7220: $a0
	add  b                                           ; $7221: $80
	dec  d                                           ; $7222: $15
	add  b                                           ; $7223: $80
	xor  d                                           ; $7224: $aa
	add  b                                           ; $7225: $80
	ld   d, l                                        ; $7226: $55
	add  b                                           ; $7227: $80
	and  b                                           ; $7228: $a0
	add  b                                           ; $7229: $80
	dec  d                                           ; $722a: $15
	add  b                                           ; $722b: $80
	xor  d                                           ; $722c: $aa
	add  b                                           ; $722d: $80
	dec  b                                           ; $722e: $05
	add  b                                           ; $722f: $80
	xor  d                                           ; $7230: $aa
	add  b                                           ; $7231: $80
	ld   d, l                                        ; $7232: $55
	add  b                                           ; $7233: $80
	xor  b                                           ; $7234: $a8
	add  b                                           ; $7235: $80
	dec  b                                           ; $7236: $05
	add  b                                           ; $7237: $80
	xor  d                                           ; $7238: $aa
	add  b                                           ; $7239: $80
	ld   d, l                                        ; $723a: $55
	add  b                                           ; $723b: $80
	xor  b                                           ; $723c: $a8
	add  b                                           ; $723d: $80
	ld   d, l                                        ; $723e: $55
	add  b                                           ; $723f: $80
	xor  b                                           ; $7240: $a8
	add  b                                           ; $7241: $80
	ld   bc, $2a80                                   ; $7242: $01 $80 $2a
	add  b                                           ; $7245: $80
	ld   d, l                                        ; $7246: $55
	add  b                                           ; $7247: $80
	xor  b                                           ; $7248: $a8
	add  b                                           ; $7249: $80
	ld   bc, $2a80                                   ; $724a: $01 $80 $2a
	add  b                                           ; $724d: $80
	ld   b, b                                        ; $724e: $40
	add  b                                           ; $724f: $80
	ld   a, [de]                                     ; $7250: $1a
	add  b                                           ; $7251: $80
	ld   d, l                                        ; $7252: $55
	add  b                                           ; $7253: $80
	xor  d                                           ; $7254: $aa
	add  b                                           ; $7255: $80
	ld   b, b                                        ; $7256: $40
	add  b                                           ; $7257: $80
	ld   a, [bc]                                     ; $7258: $0a
	add  b                                           ; $7259: $80
	ld   d, l                                        ; $725a: $55
	add  b                                           ; $725b: $80
	xor  d                                           ; $725c: $aa
	add  b                                           ; $725d: $80
	ld   [hl], l                                     ; $725e: $75
	add  b                                           ; $725f: $80
	xor  d                                           ; $7260: $aa
	add  b                                           ; $7261: $80
	ld   d, b                                        ; $7262: $50
	add  b                                           ; $7263: $80
	ld   a, [bc]                                     ; $7264: $0a
	add  b                                           ; $7265: $80
	ld   d, l                                        ; $7266: $55
	add  b                                           ; $7267: $80
	xor  d                                           ; $7268: $aa
	add  b                                           ; $7269: $80
	ld   d, b                                        ; $726a: $50
	add  b                                           ; $726b: $80
	add  d                                           ; $726c: $82
	add  b                                           ; $726d: $80
	ld   e, h                                        ; $726e: $5c
	add  b                                           ; $726f: $80
	add  e                                           ; $7270: $83
	add  b                                           ; $7271: $80
	ld   d, l                                        ; $7272: $55
	add  b                                           ; $7273: $80
	xor  d                                           ; $7274: $aa
	add  b                                           ; $7275: $80
	call nc, $8280                                   ; $7276: $d4 $80 $82
	add  b                                           ; $7279: $80
	dec  d                                           ; $727a: $15
	add  b                                           ; $727b: $80
	xor  e                                           ; $727c: $ab
	add  b                                           ; $727d: $80
	rra                                              ; $727e: $1f
	add  b                                           ; $727f: $80
	rst  $38                                         ; $7280: $ff
	add  b                                           ; $7281: $80
	ld   d, a                                        ; $7282: $57
	add  b                                           ; $7283: $80
	and  b                                           ; $7284: $a0
	add  b                                           ; $7285: $80
	dec  d                                           ; $7286: $15
	add  b                                           ; $7287: $80
	xor  d                                           ; $7288: $aa
	add  b                                           ; $7289: $80
	ld   d, l                                        ; $728a: $55
	add  b                                           ; $728b: $80
	cp   $80                                         ; $728c: $fe $80
	rst  $38                                         ; $728e: $ff
	add  b                                           ; $728f: $80
	ld   hl, sp-$80                                  ; $7290: $f8 $80
	rlca                                             ; $7292: $07
	add  b                                           ; $7293: $80
	rst  $38                                         ; $7294: $ff
	add  b                                           ; $7295: $80
	ld   d, l                                        ; $7296: $55
	add  b                                           ; $7297: $80
	xor  b                                           ; $7298: $a8
	add  b                                           ; $7299: $80
	ld   b, c                                        ; $729a: $41
	add  b                                           ; $729b: $80
	ld   a, [hl+]                                    ; $729c: $2a
	add  b                                           ; $729d: $80
	db   $e3                                         ; $729e: $e3
	add  b                                           ; $729f: $80
	ccf                                              ; $72a0: $3f
	add  b                                           ; $72a1: $80
	rst  $38                                         ; $72a2: $ff
	add  b                                           ; $72a3: $80
	cp   $80                                         ; $72a4: $fe $80
	ld   h, c                                        ; $72a6: $61
	add  b                                           ; $72a7: $80
	dec  de                                          ; $72a8: $1b
	add  b                                           ; $72a9: $80
	ld   d, l                                        ; $72aa: $55
	add  b                                           ; $72ab: $80
	xor  d                                           ; $72ac: $aa
	add  d                                           ; $72ad: $82
	rst  $38                                         ; $72ae: $ff
	add  b                                           ; $72af: $80
	ldh  [$80], a                                    ; $72b0: $e0 $80
	rra                                              ; $72b2: $1f
	add  d                                           ; $72b3: $82
	rst  $38                                         ; $72b4: $ff
	add  b                                           ; $72b5: $80
	ld   a, a                                        ; $72b6: $7f
	add  b                                           ; $72b7: $80
	xor  b                                           ; $72b8: $a8
	add  b                                           ; $72b9: $80
	ldh  a, [$80]                                    ; $72ba: $f0 $80
	rrca                                             ; $72bc: $0f
	add  h                                           ; $72bd: $84
	rst  $38                                         ; $72be: $ff
	add  b                                           ; $72bf: $80
	ldh  a, [$80]                                    ; $72c0: $f0 $80
	rrca                                             ; $72c2: $0f
	add  b                                           ; $72c3: $80
	rst  $38                                         ; $72c4: $ff
	add  b                                           ; $72c5: $80
	ld   a, a                                        ; $72c6: $7f
	add  d                                           ; $72c7: $82
	rst  $38                                         ; $72c8: $ff
	add  b                                           ; $72c9: $80
	db   $fc                                         ; $72ca: $fc
	add  b                                           ; $72cb: $80
	add  e                                           ; $72cc: $83
	add  b                                           ; $72cd: $80
	ld   a, a                                        ; $72ce: $7f
	add  d                                           ; $72cf: $82
	rst  $38                                         ; $72d0: $ff
	ld   bc, $f3f2                                   ; $72d1: $01 $f2 $f3
	add  b                                           ; $72d4: $80
	pop  hl                                          ; $72d5: $e1
	add  b                                           ; $72d6: $80

jr_080_72d7:
	di                                               ; $72d7: $f3
	add  b                                           ; $72d8: $80

jr_080_72d9:
	pop  hl                                          ; $72d9: $e1
	add  b                                           ; $72da: $80

jr_080_72db:
	di                                               ; $72db: $f3
	add  b                                           ; $72dc: $80

jr_080_72dd:
	pop  hl                                          ; $72dd: $e1
	add  b                                           ; $72de: $80

jr_080_72df:
	di                                               ; $72df: $f3
	add  b                                           ; $72e0: $80

jr_080_72e1:
	pop  hl                                          ; $72e1: $e1
	ld   de, $f0be                                   ; $72e2: $11 $be $f0
	jr   nc, jr_080_72d7                             ; $72e5: $30 $f0

	jr   nc, jr_080_72d9                             ; $72e7: $30 $f0

	jr   nc, jr_080_72db                             ; $72e9: $30 $f0

	jr   nc, jr_080_72dd                             ; $72eb: $30 $f0

	jr   nc, jr_080_72df                             ; $72ed: $30 $f0

	jr   nc, jr_080_72e1                             ; $72ef: $30 $f0

	jr   nc, @-$0e                                   ; $72f1: $30 $f0

	ld   [hl], d                                     ; $72f3: $72
	db   $fd                                         ; $72f4: $fd
	add  b                                           ; $72f5: $80
	ld   hl, sp-$80                                  ; $72f6: $f8 $80
	db   $fd                                         ; $72f8: $fd
	add  b                                           ; $72f9: $80
	ld   hl, sp-$80                                  ; $72fa: $f8 $80
	db   $fd                                         ; $72fc: $fd
	add  b                                           ; $72fd: $80
	ld   hl, sp-$80                                  ; $72fe: $f8 $80
	db   $fd                                         ; $7300: $fd
	add  b                                           ; $7301: $80
	ld   hl, sp+$31                                  ; $7302: $f8 $31
	add  d                                           ; $7304: $82
	rst  $38                                         ; $7305: $ff
	cp   b                                           ; $7306: $b8
	rst  $38                                         ; $7307: $ff
	cp   c                                           ; $7308: $b9
	rst  $38                                         ; $7309: $ff
	cp   c                                           ; $730a: $b9
	rst  $38                                         ; $730b: $ff
	cp   b                                           ; $730c: $b8
	rst  $38                                         ; $730d: $ff
	cp   h                                           ; $730e: $bc
	rst  $38                                         ; $730f: $ff
	cp   l                                           ; $7310: $bd
	rst  $38                                         ; $7311: $ff
	cp   l                                           ; $7312: $bd
	rst  $38                                         ; $7313: $ff
	jp   z, $e1f5                                    ; $7314: $ca $f5 $e1

	db   $e3                                         ; $7317: $e3
	rst  $30                                         ; $7318: $f7
	push af                                          ; $7319: $f5
	pop  hl                                          ; $731a: $e1
	db   $e3                                         ; $731b: $e3
	rst  $30                                         ; $731c: $f7
	push af                                          ; $731d: $f5
	pop  hl                                          ; $731e: $e1
	db   $e3                                         ; $731f: $e3
	rst  $30                                         ; $7320: $f7
	push af                                          ; $7321: $f5
	pop  hl                                          ; $7322: $e1
	db   $e3                                         ; $7323: $e3
	inc  a                                           ; $7324: $3c
	ldh  a, [$90]                                    ; $7325: $f0 $90
	ldh  a, [$90]                                    ; $7327: $f0 $90
	ldh  a, [$90]                                    ; $7329: $f0 $90
	ldh  a, [$90]                                    ; $732b: $f0 $90
	ldh  a, [$90]                                    ; $732d: $f0 $90
	ldh  a, [$90]                                    ; $732f: $f0 $90
	ldh  a, [$90]                                    ; $7331: $f0 $90
	ldh  a, [rHDMA2]                                 ; $7333: $f0 $52
	db   $fd                                         ; $7335: $fd
	add  b                                           ; $7336: $80
	ld   a, b                                        ; $7337: $78
	inc  bc                                          ; $7338: $03
	ld   e, l                                        ; $7339: $5d
	dec  e                                           ; $733a: $1d
	jr   jr_080_733d                                 ; $733b: $18 $00

jr_080_733d:
	add  b                                           ; $733d: $80
	dec  b                                           ; $733e: $05
	nop                                              ; $733f: $00
	inc  b                                           ; $7340: $04
	add  c                                           ; $7341: $81
	nop                                              ; $7342: $00
	dec  d                                           ; $7343: $15
	ld   b, b                                        ; $7344: $40
	nop                                              ; $7345: $00
	sbc  [hl]                                        ; $7346: $9e
	rst  $38                                         ; $7347: $ff
	cp   h                                           ; $7348: $bc
	rst  $38                                         ; $7349: $ff
	cp   l                                           ; $734a: $bd
	rst  $38                                         ; $734b: $ff
	cp   l                                           ; $734c: $bd
	rst  $38                                         ; $734d: $ff
	cp   h                                           ; $734e: $bc
	rst  $38                                         ; $734f: $ff
	cp   h                                           ; $7350: $bc
	rst  $38                                         ; $7351: $ff
	cp   h                                           ; $7352: $bc
	rst  $38                                         ; $7353: $ff
	cp   h                                           ; $7354: $bc
	rst  $38                                         ; $7355: $ff
	jp   z, $e1f5                                    ; $7356: $ca $f5 $e1

	db   $e3                                         ; $7359: $e3
	add  b                                           ; $735a: $80
	rst  $30                                         ; $735b: $f7
	inc  bc                                          ; $735c: $03
	ld   h, e                                        ; $735d: $63
	db   $e3                                         ; $735e: $e3
	ld   [hl], a                                     ; $735f: $77
	rst  $30                                         ; $7360: $f7
	add  b                                           ; $7361: $80
	db   $e3                                         ; $7362: $e3
	ld   a, [hl+]                                    ; $7363: $2a
	or   a                                           ; $7364: $b7
	rst  $30                                         ; $7365: $f7
	daa                                              ; $7366: $27
	rst  $20                                         ; $7367: $e7
	xor  h                                           ; $7368: $ac
	ldh  a, [$80]                                    ; $7369: $f0 $80
	ldh  a, [$80]                                    ; $736b: $f0 $80
	ldh  a, [$80]                                    ; $736d: $f0 $80
	ldh  a, [$80]                                    ; $736f: $f0 $80
	ldh  a, [$c0]                                    ; $7371: $f0 $c0
	ldh  a, [$c0]                                    ; $7373: $f0 $c0
	ldh  a, [$c0]                                    ; $7375: $f0 $c0
	ldh  a, [rAUD4GO]                                ; $7377: $f0 $23
	nop                                              ; $7379: $00
	jr   z, jr_080_737c                              ; $737a: $28 $00

jr_080_737c:
	inc  h                                           ; $737c: $24
	nop                                              ; $737d: $00
	ld   hl, sp+$00                                  ; $737e: $f8 $00
	call nz, $0200                                   ; $7380: $c4 $00 $02
	nop                                              ; $7383: $00
	ld   b, $00                                      ; $7384: $06 $00
	ccf                                              ; $7386: $3f
	nop                                              ; $7387: $00
	ld   [hl], l                                     ; $7388: $75
	ccf                                              ; $7389: $3f
	jr   nc, jr_080_739b                             ; $738a: $30 $0f

	ld   [$0203], sp                                 ; $738c: $08 $03 $02
	add  b                                           ; $738f: $80
	ld   bc, $0010                                   ; $7390: $01 $10 $00
	add  b                                           ; $7393: $80
	nop                                              ; $7394: $00
	jr   nz, jr_080_7397                             ; $7395: $20 $00

jr_080_7397:
	sbc  b                                           ; $7397: $98
	nop                                              ; $7398: $00
	ld   [hl], a                                     ; $7399: $77
	rst  $30                                         ; $739a: $f7

jr_080_739b:
	ld   b, a                                        ; $739b: $47
	rst  $20                                         ; $739c: $e7
	rla                                              ; $739d: $17
	rst  $30                                         ; $739e: $f7
	rlca                                             ; $739f: $07
	rst  $20                                         ; $73a0: $e7
	sub  a                                           ; $73a1: $97
	ld   [hl], a                                     ; $73a2: $77
	add  b                                           ; $73a3: $80
	rlca                                             ; $73a4: $07
	ld   bc, $031b                                   ; $73a5: $01 $1b $03
	add  b                                           ; $73a8: $80
	ld   bc, $740f                                   ; $73a9: $01 $0f $74
	ldh  a, [$c0]                                    ; $73ac: $f0 $c0
	ldh  a, [$c0]                                    ; $73ae: $f0 $c0
	ldh  a, [$c0]                                    ; $73b0: $f0 $c0
	ldh  a, [$c0]                                    ; $73b2: $f0 $c0
	ldh  a, [$c0]                                    ; $73b4: $f0 $c0
	ldh  a, [$c0]                                    ; $73b6: $f0 $c0
	ldh  a, [$d0]                                    ; $73b8: $f0 $d0
	ldh  a, [rIE]                                    ; $73ba: $f0 $ff
	nop                                              ; $73bc: $00
	rst  $38                                         ; $73bd: $ff
	nop                                              ; $73be: $00
	rst  $38                                         ; $73bf: $ff
	nop                                              ; $73c0: $00
	rst  $38                                         ; $73c1: $ff
	nop                                              ; $73c2: $00
	rst  $38                                         ; $73c3: $ff
	nop                                              ; $73c4: $00
	rst  $38                                         ; $73c5: $ff
	nop                                              ; $73c6: $00
	rst  $38                                         ; $73c7: $ff
	nop                                              ; $73c8: $00
	rst  $38                                         ; $73c9: $ff
	nop                                              ; $73ca: $00
	rst  $38                                         ; $73cb: $ff
	nop                                              ; $73cc: $00
	rst  $38                                         ; $73cd: $ff
	nop                                              ; $73ce: $00
	or   h                                           ; $73cf: $b4
	nop                                              ; $73d0: $00
	and  c                                           ; $73d1: $a1
	nop                                              ; $73d2: $00
	add  [hl]                                        ; $73d3: $86
	nop                                              ; $73d4: $00
	dec  b                                           ; $73d5: $05
	inc  bc                                          ; $73d6: $03
	rst  $38                                         ; $73d7: $ff
	db   $fd                                         ; $73d8: $fd
	rst  $38                                         ; $73d9: $ff
	cp   $ff                                         ; $73da: $fe $ff
	add  b                                           ; $73dc: $80
	cp   $00                                         ; $73dd: $fe $00
	rst  $38                                         ; $73df: $ff
	add  l                                           ; $73e0: $85
	nop                                              ; $73e1: $00
	ld   [$e39c], sp                                 ; $73e2: $08 $9c $e3
	ld   d, c                                        ; $73e5: $51
	pop  de                                          ; $73e6: $d1
	cp   d                                           ; $73e7: $ba
	ld   a, [$b515]                                  ; $73e8: $fa $15 $b5
	rra                                              ; $73eb: $1f
	add  l                                           ; $73ec: $85
	nop                                              ; $73ed: $00
	dec  b                                           ; $73ee: $05
	ld   b, b                                        ; $73ef: $40
	cp   a                                           ; $73f0: $bf
	cp   $ff                                         ; $73f1: $fe $ff
	xor  d                                           ; $73f3: $aa
	xor  e                                           ; $73f4: $ab
	add  b                                           ; $73f5: $80
	push bc                                          ; $73f6: $c5
	nop                                              ; $73f7: $00
	rst  $38                                         ; $73f8: $ff
	add  l                                           ; $73f9: $85
	nop                                              ; $73fa: $00
	inc  b                                           ; $73fb: $04
	add  b                                           ; $73fc: $80
	ldh  a, [$30]                                    ; $73fd: $f0 $30
	ldh  a, [$b0]                                    ; $73ff: $f0 $b0
	add  c                                           ; $7401: $81
	ldh  a, [rSB]                                    ; $7402: $f0 $01
	push af                                          ; $7404: $f5
	ld   a, [bc]                                     ; $7405: $0a
	add  b                                           ; $7406: $80
	rlca                                             ; $7407: $07
	add  b                                           ; $7408: $80
	inc  bc                                          ; $7409: $03
	add  b                                           ; $740a: $80
	dec  b                                           ; $740b: $05
	ld   [bc], a                                     ; $740c: $02
	rlca                                             ; $740d: $07
	rrca                                             ; $740e: $0f
	add  hl, bc                                      ; $740f: $09
	add  e                                           ; $7410: $83
	rrca                                             ; $7411: $0f
	ld   bc, $f40a                                   ; $7412: $01 $0a $f4
	add  b                                           ; $7415: $80
	cp   $03                                         ; $7416: $fe $03
	add  d                                           ; $7418: $82
	cp   $7d                                         ; $7419: $fe $7d
	rst  $38                                         ; $741b: $ff
	add  b                                           ; $741c: $80
	cp   $01                                         ; $741d: $fe $01
	db   $fc                                         ; $741f: $fc
	cp   $80                                         ; $7420: $fe $80
	db   $fd                                         ; $7422: $fd
	inc  bc                                          ; $7423: $03
	rst  $38                                         ; $7424: $ff
	ei                                               ; $7425: $fb
	xor  c                                           ; $7426: $a9
	ld   d, c                                        ; $7427: $51
	add  b                                           ; $7428: $80
	ld   a, e                                        ; $7429: $7b
	inc  bc                                          ; $742a: $03
	ld   a, h                                        ; $742b: $7c
	ld   a, a                                        ; $742c: $7f
	inc  sp                                          ; $742d: $33
	scf                                              ; $742e: $37
	add  b                                           ; $742f: $80
	rlca                                             ; $7430: $07

jr_080_7431:
	dec  c                                           ; $7431: $0d
	db   $d3                                         ; $7432: $d3
	rst  $30                                         ; $7433: $f7
	jr   z, jr_080_7431                              ; $7434: $28 $fb

	add  hl, sp                                      ; $7436: $39
	ld   sp, hl                                      ; $7437: $f9
	ld   [hl], h                                     ; $7438: $74
	ld   e, a                                        ; $7439: $5f
	jp   c, $ddcf                                    ; $743a: $da $cf $dd

	rst  JumpTable                                         ; $743d: $df
	ld   d, e                                        ; $743e: $53
	rst  JumpTable                                         ; $743f: $df
	add  d                                           ; $7440: $82
	cp   $10                                         ; $7441: $fe $10
	ld   e, [hl]                                     ; $7443: $5e
	rst  JumpTable                                         ; $7444: $df
	adc  d                                           ; $7445: $8a
	adc  h                                           ; $7446: $8c
	daa                                              ; $7447: $27
	ld   a, $62                                      ; $7448: $3e $62
	ld   a, [hl]                                     ; $744a: $7e
	ld   a, l                                        ; $744b: $7d
	ld   a, a                                        ; $744c: $7f
	ld   a, e                                        ; $744d: $7b
	ld   a, h                                        ; $744e: $7c
	jr   z, jr_080_7481                              ; $744f: $28 $30

	and  b                                           ; $7451: $a0
	ret  nz                                          ; $7452: $c0

	add  b                                           ; $7453: $80
	add  c                                           ; $7454: $81
	nop                                              ; $7455: $00
	dec  b                                           ; $7456: $05
	adc  b                                           ; $7457: $88
	ld   a, b                                        ; $7458: $78
	ld   d, b                                        ; $7459: $50
	ld   h, b                                        ; $745a: $60
	ld   b, b                                        ; $745b: $40
	add  b                                           ; $745c: $80
	add  b                                           ; $745d: $80
	nop                                              ; $745e: $00
	dec  d                                           ; $745f: $15
	ld   bc, $0600                                   ; $7460: $01 $00 $06
	nop                                              ; $7463: $00
	dec  de                                          ; $7464: $1b
	inc  bc                                          ; $7465: $03
	ld   l, h                                        ; $7466: $6c
	rrca                                             ; $7467: $0f
	ld   a, l                                        ; $7468: $7d
	nop                                              ; $7469: $00
	ld   b, $00                                      ; $746a: $06 $00
	dec  de                                          ; $746c: $1b
	inc  bc                                          ; $746d: $03
	ld   l, h                                        ; $746e: $6c
	rrca                                             ; $746f: $0f
	or   b                                           ; $7470: $b0
	inc  a                                           ; $7471: $3c
	ret  nz                                          ; $7472: $c0

	ldh  a, [rP1]                                    ; $7473: $f0 $00
	ret  nz                                          ; $7475: $c0

	add  b                                           ; $7476: $80
	nop                                              ; $7477: $00
	dec  b                                           ; $7478: $05
	call z, $c03c                                    ; $7479: $cc $3c $c0
	ldh  a, [rP1]                                    ; $747c: $f0 $00
	ret  nz                                          ; $747e: $c0

	adc  b                                           ; $747f: $88
	nop                                              ; $7480: $00

jr_080_7481:
	nop                                              ; $7481: $00
	ld   c, $81                                      ; $7482: $0e $81
	rrca                                             ; $7484: $0f
	ld   [bc], a                                     ; $7485: $02
	dec  b                                           ; $7486: $05
	rrca                                             ; $7487: $0f
	dec  bc                                          ; $7488: $0b
	add  e                                           ; $7489: $83
	rrca                                             ; $748a: $0f
	add  b                                           ; $748b: $80
	inc  c                                           ; $748c: $0c
	add  b                                           ; $748d: $80
	ld   bc, $6b02                                   ; $748e: $01 $02 $6b
	ei                                               ; $7491: $fb
	sub  e                                           ; $7492: $93
	add  c                                           ; $7493: $81

jr_080_7494:
	di                                               ; $7494: $f3
	add  b                                           ; $7495: $80
	pop  hl                                          ; $7496: $e1
	add  b                                           ; $7497: $80
	ret  nz                                          ; $7498: $c0

	rrca                                             ; $7499: $0f
	dec  bc                                          ; $749a: $0b
	inc  c                                           ; $749b: $0c
	jr   z, jr_080_74ce                              ; $749c: $28 $30

	ld   h, b                                        ; $749e: $60
	add  b                                           ; $749f: $80
	scf                                              ; $74a0: $37
	ld   hl, sp-$3e                                  ; $74a1: $f8 $c2
	di                                               ; $74a3: $f3
	or   $f8                                         ; $74a4: $f6 $f8
	ret  nc                                          ; $74a6: $d0

	ldh  [rLCDC], a                                  ; $74a7: $e0 $40
	add  b                                           ; $74a9: $80
	add  h                                           ; $74aa: $84
	nop                                              ; $74ab: $00
	ld   [bc], a                                     ; $74ac: $02
	and  b                                           ; $74ad: $a0
	ld   h, b                                        ; $74ae: $60
	ret  nz                                          ; $74af: $c0

	add  e                                           ; $74b0: $83
	nop                                              ; $74b1: $00
	inc  d                                           ; $74b2: $14
	ld   bc, $0600                                   ; $74b3: $01 $00 $06
	nop                                              ; $74b6: $00
	dec  de                                          ; $74b7: $1b
	inc  bc                                          ; $74b8: $03
	ld   l, [hl]                                     ; $74b9: $6e
	rrca                                             ; $74ba: $0f
	ld   a, [hl]                                     ; $74bb: $7e
	xor  d                                           ; $74bc: $aa
	xor  e                                           ; $74bd: $ab
	ld   d, h                                        ; $74be: $54
	ld   d, l                                        ; $74bf: $55
	xor  d                                           ; $74c0: $aa
	xor  e                                           ; $74c1: $ab
	ld   d, h                                        ; $74c2: $54
	ld   d, d                                        ; $74c3: $52
	dec  b                                           ; $74c4: $05
	call $e6ce                                       ; $74c5: $cd $ce $e6
	add  b                                           ; $74c8: $80
	push hl                                          ; $74c9: $e5
	inc  c                                           ; $74ca: $0c
	and  $fe                                         ; $74cb: $e6 $fe

jr_080_74cd:
	ld   d, b                                        ; $74cd: $50

jr_080_74ce:
	ret  nc                                          ; $74ce: $d0

	jr   nz, jr_080_7531                             ; $74cf: $20 $60

	jp   nz, $a0a2                                   ; $74d1: $c2 $a2 $a0

	nop                                              ; $74d4: $00
	ld   b, b                                        ; $74d5: $40
	ret  nz                                          ; $74d6: $c0

	add  b                                           ; $74d7: $80
	add  b                                           ; $74d8: $80
	nop                                              ; $74d9: $00
	inc  bc                                          ; $74da: $03
	db   $10                                         ; $74db: $10
	inc  d                                           ; $74dc: $14
	adc  a                                           ; $74dd: $8f
	adc  e                                           ; $74de: $8b
	add  b                                           ; $74df: $80
	dec  b                                           ; $74e0: $05
	inc  bc                                          ; $74e1: $03
	ld   a, [bc]                                     ; $74e2: $0a
	ld   c, $01                                      ; $74e3: $0e $01
	dec  b                                           ; $74e5: $05
	add  [hl]                                        ; $74e6: $86
	nop                                              ; $74e7: $00
	ld   bc, $f0ff                                   ; $74e8: $01 $ff $f0
	add  b                                           ; $74eb: $80
	ld   d, b                                        ; $74ec: $50
	adc  d                                           ; $74ed: $8a
	nop                                              ; $74ee: $00
	dec  c                                           ; $74ef: $0d
	pop  af                                          ; $74f0: $f1
	nop                                              ; $74f1: $00
	ld   b, $00                                      ; $74f2: $06 $00
	dec  de                                          ; $74f4: $1b
	inc  bc                                          ; $74f5: $03
	ld   l, h                                        ; $74f6: $6c
	rrca                                             ; $74f7: $0f
	or   b                                           ; $74f8: $b0
	inc  a                                           ; $74f9: $3c
	ret  nz                                          ; $74fa: $c0

	ldh  a, [rP1]                                    ; $74fb: $f0 $00
	ret  nz                                          ; $74fd: $c0

	add  b                                           ; $74fe: $80
	nop                                              ; $74ff: $00
	dec  b                                           ; $7500: $05
	call z, $c03c                                    ; $7501: $cc $3c $c0
	ldh  a, [rP1]                                    ; $7504: $f0 $00
	ret  nz                                          ; $7506: $c0

	sbc  [hl]                                        ; $7507: $9e
	nop                                              ; $7508: $00
	add  b                                           ; $7509: $80
	ld   bc, $0a80                                   ; $750a: $01 $80 $0a
	add  b                                           ; $750d: $80
	ld   bc, $0082                                   ; $750e: $01 $82 $00
	add  b                                           ; $7511: $80
	jr   nz, jr_080_7494                             ; $7512: $20 $80

	dec  b                                           ; $7514: $05
	add  b                                           ; $7515: $80
	xor  e                                           ; $7516: $ab
	rlca                                             ; $7517: $07
	ld   a, d                                        ; $7518: $7a
	ld   a, a                                        ; $7519: $7f
	pop  af                                          ; $751a: $f1
	rst  $38                                         ; $751b: $ff
	ld   d, l                                        ; $751c: $55
	ld   e, a                                        ; $751d: $5f
	inc  c                                           ; $751e: $0c
	dec  c                                           ; $751f: $0d
	add  b                                           ; $7520: $80
	rra                                              ; $7521: $1f
	xor  $00                                         ; $7522: $ee $00
	inc  c                                           ; $7524: $0c
	rst  $10                                         ; $7525: $d7
	rst  $38                                         ; $7526: $ff
	jp   z, $ccff                                    ; $7527: $ca $ff $cc

	rst  $38                                         ; $752a: $ff
	push de                                          ; $752b: $d5
	rst  $38                                         ; $752c: $ff
	ei                                               ; $752d: $fb
	rst  $38                                         ; $752e: $ff
	ld   a, a                                        ; $752f: $7f
	rst  $38                                         ; $7530: $ff

jr_080_7531:
	ld   a, a                                        ; $7531: $7f
	add  c                                           ; $7532: $81
	rst  $38                                         ; $7533: $ff
	jr   nz, jr_080_74cd                             ; $7534: $20 $97

	ld   l, b                                        ; $7536: $68
	jp   nz, $f5e2                                   ; $7537: $c2 $e2 $f5

	push de                                          ; $753a: $d5
	db   $eb                                         ; $753b: $eb
	dec  hl                                          ; $753c: $2b
	ld   e, $1f                                      ; $753d: $1e $1f
	push hl                                          ; $753f: $e5
	adc  d                                           ; $7540: $8a
	db   $e4                                         ; $7541: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7542: $cf
	ldh  [$e5], a                                    ; $7543: $e0 $e5
	ret  nc                                          ; $7545: $d0

	ld   d, d                                        ; $7546: $52
	and  e                                           ; $7547: $a3
	pop  hl                                          ; $7548: $e1
	nop                                              ; $7549: $00
	ld   b, d                                        ; $754a: $42
	add  d                                           ; $754b: $82
	add  b                                           ; $754c: $80
	ld   d, h                                        ; $754d: $54
	ld   d, l                                        ; $754e: $55
	ccf                                              ; $754f: $3f
	cp   [hl]                                        ; $7550: $be
	dec  d                                           ; $7551: $15
	rst  JumpTable                                         ; $7552: $df
	and  d                                           ; $7553: $a2

Jump_080_7554:
	rst  $30                                         ; $7554: $f7
	db   $10                                         ; $7555: $10
	add  b                                           ; $7556: $80
	add  b                                           ; $7557: $80
	nop                                              ; $7558: $00
	nop                                              ; $7559: $00
	add  b                                           ; $755a: $80
	add  b                                           ; $755b: $80
	ld   a, [bc]                                     ; $755c: $0a
	sub  b                                           ; $755d: $90
	ld   d, b                                        ; $755e: $50
	sub  b                                           ; $755f: $90
	ld   [hl], b                                     ; $7560: $70
	and  b                                           ; $7561: $a0
	ret  nc                                          ; $7562: $d0

	jr   nc, jr_080_75c5                             ; $7563: $30 $60

	and  b                                           ; $7565: $a0
	ldh  a, [hScriptOpcodeParams]                                    ; $7566: $f0 $a0
	rst  $38                                         ; $7568: $ff
	nop                                              ; $7569: $00
	cp   h                                           ; $756a: $bc
	nop                                              ; $756b: $00
	ld   b, $b5                                      ; $756c: $06 $b5
	rst  $38                                         ; $756e: $ff
	ld   c, c                                        ; $756f: $49
	rst  $38                                         ; $7570: $ff
	halt                                             ; $7571: $76
	rst  JumpTable                                         ; $7572: $df
	push de                                          ; $7573: $d5
	add  b                                           ; $7574: $80
	push hl                                          ; $7575: $e5
	add  b                                           ; $7576: $80
	and  l                                           ; $7577: $a5
	jr   jr_080_7531                                 ; $7578: $18 $b7

	rst  $30                                         ; $757a: $f7
	rst  $38                                         ; $757b: $ff
	ret  nz                                          ; $757c: $c0

	rst  $38                                         ; $757d: $ff
	db   $fd                                         ; $757e: $fd
	jp   nz, $edcc                                   ; $757f: $c2 $cc $ed

	and  h                                           ; $7582: $a4
	cp   $46                                         ; $7583: $fe $46
	cp   $b6                                         ; $7585: $fe $b6
	ld   a, a                                        ; $7587: $7f
	add  hl, de                                      ; $7588: $19
	rst  $38                                         ; $7589: $ff
	ld   [hl+], a                                    ; $758a: $22
	rst  $38                                         ; $758b: $ff
	pop  af                                          ; $758c: $f1
	rst  $38                                         ; $758d: $ff
	ld   [hl+], a                                    ; $758e: $22
	and  d                                           ; $758f: $a2
	add  c                                           ; $7590: $81
	ld   bc, $0080                                   ; $7591: $01 $80 $00
	add  hl, bc                                      ; $7594: $09
	ld   b, b                                        ; $7595: $40
	ldh  [$08], a                                    ; $7596: $e0 $08
	ld   hl, sp-$54                                  ; $7598: $f8 $ac
	db   $fc                                         ; $759a: $fc
	ld   a, a                                        ; $759b: $7f
	rst  $38                                         ; $759c: $ff
	ld   a, b                                        ; $759d: $78
	ld   hl, sp-$80                                  ; $759e: $f8 $80
	and  b                                           ; $75a0: $a0
	adc  b                                           ; $75a1: $88
	nop                                              ; $75a2: $00
	add  b                                           ; $75a3: $80
	ldh  a, [rIE]                                    ; $75a4: $f0 $ff
	nop                                              ; $75a6: $00
	ret  nz                                          ; $75a7: $c0

	nop                                              ; $75a8: $00
	ld   bc, $00ff                                   ; $75a9: $01 $ff $00
	add  e                                           ; $75ac: $83
	rst  $38                                         ; $75ad: $ff
	add  a                                           ; $75ae: $87
	nop                                              ; $75af: $00
	ld   bc, $00ff                                   ; $75b0: $01 $ff $00
	add  e                                           ; $75b3: $83
	rst  $38                                         ; $75b4: $ff
	add  b                                           ; $75b5: $80
	nop                                              ; $75b6: $00
	add  b                                           ; $75b7: $80
	ld   bc, $0080                                   ; $75b8: $01 $80 $00
	add  b                                           ; $75bb: $80
	ld   d, l                                        ; $75bc: $55
	ld   [bc], a                                     ; $75bd: $02
	nop                                              ; $75be: $00
	rst  $38                                         ; $75bf: $ff
	nop                                              ; $75c0: $00
	add  e                                           ; $75c1: $83
	rst  $38                                         ; $75c2: $ff
	add  b                                           ; $75c3: $80
	nop                                              ; $75c4: $00

jr_080_75c5:
	add  b                                           ; $75c5: $80
	ld   b, l                                        ; $75c6: $45
	add  b                                           ; $75c7: $80
	xor  a                                           ; $75c8: $af
	inc  b                                           ; $75c9: $04
	cp   $ff                                         ; $75ca: $fe $ff
	ld   bc, $00f0                                   ; $75cc: $01 $f0 $00
	add  e                                           ; $75cf: $83
	ldh  a, [$80]                                    ; $75d0: $f0 $80
	nop                                              ; $75d2: $00
	add  b                                           ; $75d3: $80
	ld   d, b                                        ; $75d4: $50
	add  b                                           ; $75d5: $80
	ldh  [rSC], a                                    ; $75d6: $e0 $02
	and  b                                           ; $75d8: $a0
	ldh  a, [$50]                                    ; $75d9: $f0 $50
	rst  $38                                         ; $75db: $ff
	nop                                              ; $75dc: $00
	jp   nz, $8000                                   ; $75dd: $c2 $00 $80

	ld   bc, $0380                                   ; $75e0: $01 $80 $03
	add  b                                           ; $75e3: $80
	ld   bc, $4280                                   ; $75e4: $01 $80 $42
	add  b                                           ; $75e7: $80
	rst  $38                                         ; $75e8: $ff
	add  b                                           ; $75e9: $80
	cpl                                              ; $75ea: $2f
	add  b                                           ; $75eb: $80
	dec  b                                           ; $75ec: $05
	add  b                                           ; $75ed: $80
	nop                                              ; $75ee: $00
	rlca                                             ; $75ef: $07
	ld   d, h                                        ; $75f0: $54
	ld   d, l                                        ; $75f1: $55
	push af                                          ; $75f2: $f5
	rst  $38                                         ; $75f3: $ff
	pop  af                                          ; $75f4: $f1
	rst  $38                                         ; $75f5: $ff
	sub  b                                           ; $75f6: $90
	sub  l                                           ; $75f7: $95
	add  b                                           ; $75f8: $80
	ld   hl, sp-$80                                  ; $75f9: $f8 $80
	db   $fd                                         ; $75fb: $fd
	inc  e                                           ; $75fc: $1c
	xor  d                                           ; $75fd: $aa
	cp   a                                           ; $75fe: $bf
	ld   c, b                                        ; $75ff: $48
	rst  $38                                         ; $7600: $ff
	ld   a, [hl+]                                    ; $7601: $2a
	rst  $38                                         ; $7602: $ff
	ld   [hl], a                                     ; $7603: $77
	rst  $38                                         ; $7604: $ff
	ld   e, a                                        ; $7605: $5f
	rst  $38                                         ; $7606: $ff
	adc  [hl]                                        ; $7607: $8e
	rst  $38                                         ; $7608: $ff
	sub  $ff                                         ; $7609: $d6 $ff
	ld   b, a                                        ; $760b: $47
	ldh  a, [$30]                                    ; $760c: $f0 $30
	ldh  a, [$30]                                    ; $760e: $f0 $30
	ldh  a, [hScriptOpcodeParams]                                    ; $7610: $f0 $a0
	ldh  a, [$e0]                                    ; $7612: $f0 $e0
	ldh  a, [$e0]                                    ; $7614: $f0 $e0
	ldh  a, [hScriptOpcodeParams]                                    ; $7616: $f0 $a0
	ldh  a, [$b0]                                    ; $7618: $f0 $b0
	add  b                                           ; $761a: $80
	ldh  a, [rIE]                                    ; $761b: $f0 $ff
	nop                                              ; $761d: $00
	cp   h                                           ; $761e: $bc
	nop                                              ; $761f: $00
	add  b                                           ; $7620: $80
	ld   a, e                                        ; $7621: $7b
	add  b                                           ; $7622: $80
	rla                                              ; $7623: $17
	add  b                                           ; $7624: $80
	dec  bc                                          ; $7625: $0b
	add  b                                           ; $7626: $80
	rla                                              ; $7627: $17
	add  b                                           ; $7628: $80
	dec  sp                                          ; $7629: $3b
	add  b                                           ; $762a: $80
	ld   e, [hl]                                     ; $762b: $5e
	dec  c                                           ; $762c: $0d
	db   $fd                                         ; $762d: $fd
	rst  $38                                         ; $762e: $ff
	ld   a, [$f2ff]                                  ; $762f: $fa $ff $f2
	push af                                          ; $7632: $f5
	ld   a, d                                        ; $7633: $7a
	ld   a, a                                        ; $7634: $7f
	db   $f4                                         ; $7635: $f4
	rst  $38                                         ; $7636: $ff
	or   h                                           ; $7637: $b4
	cp   a                                           ; $7638: $bf
	ld   a, [$80ff]                                  ; $7639: $fa $ff $80
	db   $fd                                         ; $763c: $fd
	inc  d                                           ; $763d: $14
	ld   a, a                                        ; $763e: $7f
	rst  $38                                         ; $763f: $ff
	ld   a, [hl]                                     ; $7640: $7e
	rst  $38                                         ; $7641: $ff
	pop  de                                          ; $7642: $d1
	rst  $38                                         ; $7643: $ff
	xor  a                                           ; $7644: $af
	rst  $38                                         ; $7645: $ff
	ccf                                              ; $7646: $3f
	rst  $38                                         ; $7647: $ff
	ld   d, a                                        ; $7648: $57
	rst  $38                                         ; $7649: $ff
	db   $e3                                         ; $764a: $e3
	rst  $38                                         ; $764b: $ff
	ld   [hl], c                                     ; $764c: $71
	ld   a, e                                        ; $764d: $7b
	db   $fc                                         ; $764e: $fc
	rst  $38                                         ; $764f: $ff
	xor  d                                           ; $7650: $aa
	rst  $38                                         ; $7651: $ff
	ld   d, a                                        ; $7652: $57
	add  l                                           ; $7653: $85
	ldh  a, [rDIV]                                   ; $7654: $f0 $04
	ldh  [$f0], a                                    ; $7656: $e0 $f0
	ld   h, b                                        ; $7658: $60
	ldh  a, [rSVBK]                                  ; $7659: $f0 $70
	add  d                                           ; $765b: $82
	ldh  a, [rIE]                                    ; $765c: $f0 $ff
	nop                                              ; $765e: $00
	cp   h                                           ; $765f: $bc
	nop                                              ; $7660: $00
	dec  b                                           ; $7661: $05
	db   $fc                                         ; $7662: $fc
	rst  $38                                         ; $7663: $ff
	add  hl, de                                      ; $7664: $19
	rra                                              ; $7665: $1f
	rrca                                             ; $7666: $0f
	ld   a, [bc]                                     ; $7667: $0a
	add  b                                           ; $7668: $80
	dec  b                                           ; $7669: $05
	add  b                                           ; $766a: $80
	nop                                              ; $766b: $00
	add  b                                           ; $766c: $80
	ld   d, l                                        ; $766d: $55
	add  b                                           ; $766e: $80
	cp   e                                           ; $766f: $bb
	add  b                                           ; $7670: $80
	ld   d, a                                        ; $7671: $57
	inc  e                                           ; $7672: $1c
	ld   d, l                                        ; $7673: $55
	rst  $38                                         ; $7674: $ff
	dec  b                                           ; $7675: $05
	rst  $38                                         ; $7676: $ff
	xor  a                                           ; $7677: $af
	rst  $38                                         ; $7678: $ff
	ld   a, [de]                                     ; $7679: $1a
	rra                                              ; $767a: $1f
	add  hl, sp                                      ; $767b: $39
	ccf                                              ; $767c: $3f
	ld   l, c                                        ; $767d: $69
	ld   a, a                                        ; $767e: $7f
	push bc                                          ; $767f: $c5
	rst  $38                                         ; $7680: $ff
	rst  ToBoot                                         ; $7681: $c7
	rst  $38                                         ; $7682: $ff
	ld   d, a                                        ; $7683: $57
	rst  $38                                         ; $7684: $ff
	ccf                                              ; $7685: $3f
	rst  $38                                         ; $7686: $ff
	cpl                                              ; $7687: $2f
	rst  $38                                         ; $7688: $ff
	rrca                                             ; $7689: $0f
	rst  $38                                         ; $768a: $ff
	dec  hl                                          ; $768b: $2b
	rst  $38                                         ; $768c: $ff
	and  e                                           ; $768d: $a3
	rst  $38                                         ; $768e: $ff
	rst  $10                                         ; $768f: $d7
	add  d                                           ; $7690: $82
	rst  $38                                         ; $7691: $ff
	inc  bc                                          ; $7692: $03
	ldh  a, [$b0]                                    ; $7693: $f0 $b0
	ldh  a, [$b0]                                    ; $7695: $f0 $b0
	adc  d                                           ; $7697: $8a
	ldh  a, [rIE]                                    ; $7698: $f0 $ff
	nop                                              ; $769a: $00
	cp   h                                           ; $769b: $bc
	nop                                              ; $769c: $00
	ld   c, $01                                      ; $769d: $0e $01
	nop                                              ; $769f: $00
	rrca                                             ; $76a0: $0f
	adc  l                                           ; $76a1: $8d
	nop                                              ; $76a2: $00
	nop                                              ; $76a3: $00
	ldh  a, [$80]                                    ; $76a4: $f0 $80
	rra                                              ; $76a6: $1f
	add  b                                           ; $76a7: $80
	rlca                                             ; $76a8: $07
	adc  d                                           ; $76a9: $8a
	nop                                              ; $76aa: $00
	add  h                                           ; $76ab: $84
	rst  $38                                         ; $76ac: $ff
	add  b                                           ; $76ad: $80
	rra                                              ; $76ae: $1f
	add  b                                           ; $76af: $80
	inc  bc                                          ; $76b0: $03
	add  e                                           ; $76b1: $83
	nop                                              ; $76b2: $00
	inc  b                                           ; $76b3: $04
	inc  bc                                          ; $76b4: $03
	rst  $38                                         ; $76b5: $ff
	db   $fc                                         ; $76b6: $fc
	ld   hl, sp-$09                                  ; $76b7: $f8 $f7
	add  e                                           ; $76b9: $83
	rst  $38                                         ; $76ba: $ff
	nop                                              ; $76bb: $00
	ldh  a, [$80]                                    ; $76bc: $f0 $80
	ld   a, a                                        ; $76be: $7f
	add  b                                           ; $76bf: $80
	rra                                              ; $76c0: $1f
	ld   b, $03                                      ; $76c1: $06 $03
	jp   $04c0                                       ; $76c3: $c3 $c0 $04


	nop                                              ; $76c6: $00
	call nz, $80c0                                   ; $76c7: $c4 $c0 $80
	rst  ToBoot                                         ; $76ca: $c7
	add  b                                           ; $76cb: $80
	ret  nz                                          ; $76cc: $c0

	nop                                              ; $76cd: $00
	nop                                              ; $76ce: $00
	add  e                                           ; $76cf: $83
	rst  $38                                         ; $76d0: $ff
	ld   bc, $c03f                                   ; $76d1: $01 $3f $c0
	add  b                                           ; $76d4: $80
	call z, $0080                                    ; $76d5: $cc $80 $00
	add  b                                           ; $76d8: $80
	rst  $38                                         ; $76d9: $ff
	add  c                                           ; $76da: $81
	nop                                              ; $76db: $00
	add  h                                           ; $76dc: $84
	rst  $38                                         ; $76dd: $ff
	nop                                              ; $76de: $00
	nop                                              ; $76df: $00
	add  b                                           ; $76e0: $80
	call z, $0080                                    ; $76e1: $cc $80 $00
	add  b                                           ; $76e4: $80
	rst  $38                                         ; $76e5: $ff
	add  c                                           ; $76e6: $81
	nop                                              ; $76e7: $00
	add  h                                           ; $76e8: $84
	rst  $38                                         ; $76e9: $ff
	nop                                              ; $76ea: $00
	nop                                              ; $76eb: $00
	add  b                                           ; $76ec: $80
	call z, $0080                                    ; $76ed: $cc $80 $00
	add  b                                           ; $76f0: $80
	rst  $38                                         ; $76f1: $ff
	add  c                                           ; $76f2: $81
	nop                                              ; $76f3: $00
	add  h                                           ; $76f4: $84
	rst  $38                                         ; $76f5: $ff
	nop                                              ; $76f6: $00
	nop                                              ; $76f7: $00
	add  b                                           ; $76f8: $80
	call z, $0080                                    ; $76f9: $cc $80 $00
	add  b                                           ; $76fc: $80
	rst  $38                                         ; $76fd: $ff
	add  c                                           ; $76fe: $81
	nop                                              ; $76ff: $00
	add  h                                           ; $7700: $84
	rst  $38                                         ; $7701: $ff
	nop                                              ; $7702: $00
	nop                                              ; $7703: $00
	add  b                                           ; $7704: $80
	call z, $0080                                    ; $7705: $cc $80 $00
	add  b                                           ; $7708: $80
	rst  $38                                         ; $7709: $ff
	add  c                                           ; $770a: $81
	nop                                              ; $770b: $00
	add  h                                           ; $770c: $84
	rst  $38                                         ; $770d: $ff
	nop                                              ; $770e: $00
	nop                                              ; $770f: $00
	add  b                                           ; $7710: $80
	call z, $0080                                    ; $7711: $cc $80 $00
	add  b                                           ; $7714: $80
	rst  $38                                         ; $7715: $ff
	add  c                                           ; $7716: $81
	nop                                              ; $7717: $00
	add  h                                           ; $7718: $84
	rst  $38                                         ; $7719: $ff
	nop                                              ; $771a: $00
	nop                                              ; $771b: $00
	add  b                                           ; $771c: $80
	call z, $0080                                    ; $771d: $cc $80 $00
	add  b                                           ; $7720: $80
	rst  $38                                         ; $7721: $ff
	add  c                                           ; $7722: $81
	nop                                              ; $7723: $00
	add  h                                           ; $7724: $84
	rst  $38                                         ; $7725: $ff
	nop                                              ; $7726: $00
	nop                                              ; $7727: $00
	add  b                                           ; $7728: $80
	call z, $0080                                    ; $7729: $cc $80 $00
	add  b                                           ; $772c: $80
	rst  $38                                         ; $772d: $ff
	add  c                                           ; $772e: $81
	nop                                              ; $772f: $00
	add  h                                           ; $7730: $84
	rst  $38                                         ; $7731: $ff
	nop                                              ; $7732: $00
	nop                                              ; $7733: $00
	add  b                                           ; $7734: $80
	call z, $0080                                    ; $7735: $cc $80 $00
	add  b                                           ; $7738: $80
	rst  $38                                         ; $7739: $ff
	add  c                                           ; $773a: $81
	nop                                              ; $773b: $00
	add  e                                           ; $773c: $83
	rst  $38                                         ; $773d: $ff
	ld   bc, $39c6                                   ; $773e: $01 $c6 $39
	add  b                                           ; $7741: $80
	ret  z                                           ; $7742: $c8

	add  b                                           ; $7743: $80
	nop                                              ; $7744: $00
	add  b                                           ; $7745: $80
	cp   $81                                         ; $7746: $fe $81
	nop                                              ; $7748: $00
	add  e                                           ; $7749: $83
	rst  $38                                         ; $774a: $ff
	ld   bc, $7887                                   ; $774b: $01 $87 $78
	add  b                                           ; $774e: $80
	nop                                              ; $774f: $00
	nop                                              ; $7750: $00
	ld   a, h                                        ; $7751: $7c
	add  b                                           ; $7752: $80
	ld   a, a                                        ; $7753: $7f
	nop                                              ; $7754: $00
	ld   a, h                                        ; $7755: $7c
	add  b                                           ; $7756: $80
	ld   a, a                                        ; $7757: $7f
	nop                                              ; $7758: $00
	nop                                              ; $7759: $00
	add  e                                           ; $775a: $83
	rst  $38                                         ; $775b: $ff
	nop                                              ; $775c: $00
	rrca                                             ; $775d: $0f
	adc  l                                           ; $775e: $8d
	nop                                              ; $775f: $00
	nop                                              ; $7760: $00
	ldh  a, [$ae]                                    ; $7761: $f0 $ae
	nop                                              ; $7763: $00
	add  b                                           ; $7764: $80
	ld   a, a                                        ; $7765: $7f
	add  b                                           ; $7766: $80
	rrca                                             ; $7767: $0f
	add  b                                           ; $7768: $80
	ld   bc, $0088                                   ; $7769: $01 $88 $00
	add  h                                           ; $776c: $84
	rst  $38                                         ; $776d: $ff
	add  b                                           ; $776e: $80
	ld   a, a                                        ; $776f: $7f
	add  b                                           ; $7770: $80
	rrca                                             ; $7771: $0f
	add  b                                           ; $7772: $80
	ld   bc, $0082                                   ; $7773: $01 $82 $00
	adc  d                                           ; $7776: $8a
	rst  $38                                         ; $7777: $ff
	add  b                                           ; $7778: $80
	ccf                                              ; $7779: $3f
	add  b                                           ; $777a: $80
	rlca                                             ; $777b: $07
	rst  $38                                         ; $777c: $ff
	rst  $38                                         ; $777d: $ff
	adc  h                                           ; $777e: $8c
	rst  $38                                         ; $777f: $ff
	add  [hl]                                        ; $7780: $86

jr_080_7781:
	nop                                              ; $7781: $00
	ld   b, $e0                                      ; $7782: $06 $e0
	db   $fc                                         ; $7784: $fc
	call c, $90f0                                    ; $7785: $dc $f0 $90
	ldh  [rLCDC], a                                  ; $7788: $e0 $40
	add  b                                           ; $778a: $80
	add  b                                           ; $778b: $80
	add  l                                           ; $778c: $85
	nop                                              ; $778d: $00
	inc  b                                           ; $778e: $04
	ccf                                              ; $778f: $3f
	cp   a                                           ; $7790: $bf
	adc  [hl]                                        ; $7791: $8e
	adc  a                                           ; $7792: $8f
	add  c                                           ; $7793: $81
	add  b                                           ; $7794: $80
	add  a                                           ; $7795: $87
	add  b                                           ; $7796: $80
	sbc  c                                           ; $7797: $99
	add  l                                           ; $7798: $85
	nop                                              ; $7799: $00
	ld   [$ff9f], sp                                 ; $779a: $08 $9f $ff
	rra                                              ; $779d: $1f
	rst  $38                                         ; $779e: $ff
	ld   h, e                                        ; $779f: $63
	db   $fd                                         ; $77a0: $fd
	adc  a                                           ; $77a1: $8f
	xor  $7f                                         ; $77a2: $ee $7f
	add  l                                           ; $77a4: $85
	nop                                              ; $77a5: $00
	nop                                              ; $77a6: $00
	ldh  [$84], a                                    ; $77a7: $e0 $84
	ldh  a, [rSB]                                    ; $77a9: $f0 $01
	ld   [hl], b                                     ; $77ab: $70
	sub  b                                           ; $77ac: $90
	add  b                                           ; $77ad: $80
	dec  bc                                          ; $77ae: $0b
	add  b                                           ; $77af: $80
	inc  e                                           ; $77b0: $1c
	add  b                                           ; $77b1: $80
	ld   h, b                                        ; $77b2: $60
	add  b                                           ; $77b3: $80

jr_080_77b4:
	add  b                                           ; $77b4: $80
	add  d                                           ; $77b5: $82
	nop                                              ; $77b6: $00
	add  b                                           ; $77b7: $80
	ld   bc, $0e01                                   ; $77b8: $01 $01 $0e
	rrca                                             ; $77bb: $0f
	add  b                                           ; $77bc: $80
	ld   c, l                                        ; $77bd: $4d
	add  c                                           ; $77be: $81
	ld   c, b                                        ; $77bf: $48
	add  b                                           ; $77c0: $80
	ld   c, c                                        ; $77c1: $49
	add  c                                           ; $77c2: $81
	ld   c, e                                        ; $77c3: $4b
	add  b                                           ; $77c4: $80
	ld   a, b                                        ; $77c5: $78
	add  b                                           ; $77c6: $80
	pop  de                                          ; $77c7: $d1
	inc  bc                                          ; $77c8: $03
	db   $10                                         ; $77c9: $10
	sub  d                                           ; $77ca: $92
	dec  sp                                          ; $77cb: $3b
	cp   e                                           ; $77cc: $bb
	add  b                                           ; $77cd: $80
	xor  $80                                         ; $77ce: $ee $80

jr_080_77d0:
	cp   e                                           ; $77d0: $bb
	add  b                                           ; $77d1: $80
	xor  $07                                         ; $77d2: $ee $07
	cp   d                                           ; $77d4: $ba
	cp   l                                           ; $77d5: $bd
	rst  $28                                         ; $77d6: $ef
	db   $f4                                         ; $77d7: $f4
	cp   h                                           ; $77d8: $bc
	pop  bc                                          ; $77d9: $c1
	ldh  [$81], a                                    ; $77da: $e0 $81
	add  b                                           ; $77dc: $80
	and  b                                           ; $77dd: $a0
	add  b                                           ; $77de: $80
	ldh  [rDIV], a                                   ; $77df: $e0 $04
	and  b                                           ; $77e1: $a0
	add  b                                           ; $77e2: $80
	or   b                                           ; $77e3: $b0
	ld   [hl], b                                     ; $77e4: $70
	ldh  [$80], a                                    ; $77e5: $e0 $80
	nop                                              ; $77e7: $00
	dec  c                                           ; $77e8: $0d
	jr   nc, jr_080_77eb                             ; $77e9: $30 $00

jr_080_77eb:
	ret  nz                                          ; $77eb: $c0

	nop                                              ; $77ec: $00
	ldh  a, [rP1]                                    ; $77ed: $f0 $00
	ld   b, b                                        ; $77ef: $40
	nop                                              ; $77f0: $00
	jr   nz, jr_080_7833                             ; $77f1: $20 $40

	ret  nc                                          ; $77f3: $d0

	ld   b, $36                                      ; $77f4: $06 $36
	call nz, Call_080_6481                           ; $77f6: $c4 $81 $64
	add  b                                           ; $77f9: $80
	inc  b                                           ; $77fa: $04
	ld   bc, $2344                                   ; $77fb: $01 $44 $23
	add  d                                           ; $77fe: $82
	jr   nz, jr_080_7781                             ; $77ff: $20 $80

	ldh  [$87], a                                    ; $7801: $e0 $87
	jr   nz, jr_080_7805                             ; $7803: $20 $00

jr_080_7805:
	inc  bc                                          ; $7805: $03
	add  e                                           ; $7806: $83
	db   $db                                         ; $7807: $db
	add  d                                           ; $7808: $82
	reti                                             ; $7809: $d9


	add  b                                           ; $780a: $80
	sbc  a                                           ; $780b: $9f
	add  b                                           ; $780c: $80

jr_080_780d:
	cp   $80                                         ; $780d: $fe $80

jr_080_780f:
	ld   sp, hl                                      ; $780f: $f9
	nop                                              ; $7810: $00
	rst  $38                                         ; $7811: $ff

jr_080_7812:
	adc  c                                           ; $7812: $89
	ret  nz                                          ; $7813: $c0

	add  b                                           ; $7814: $80
	ld   b, b                                        ; $7815: $40
	add  c                                           ; $7816: $81
	ret  nz                                          ; $7817: $c0

	add  d                                           ; $7818: $82
	inc  b                                           ; $7819: $04
	ld   b, $ff                                      ; $781a: $06 $ff
	nop                                              ; $781c: $00
	rst  $38                                         ; $781d: $ff
	nop                                              ; $781e: $00
	rst  $38                                         ; $781f: $ff
	ld   [$82ff], sp                                 ; $7820: $08 $ff $82
	jr   c, jr_080_7825                              ; $7823: $38 $00

jr_080_7825:
	rrca                                             ; $7825: $0f
	add  b                                           ; $7826: $80
	jr   nz, @-$7d                                   ; $7827: $20 $81

	ldh  [rDIV], a                                   ; $7829: $e0 $04
	jr   nz, jr_080_780d                             ; $782b: $20 $e0

	jr   nz, jr_080_780f                             ; $782d: $20 $e0

	jr   nz, jr_080_77b4                             ; $782f: $20 $83

	ldh  [rSB], a                                    ; $7831: $e0 $01

jr_080_7833:
	ld   [hl], e                                     ; $7833: $73
	add  e                                           ; $7834: $83
	add  d                                           ; $7835: $82
	rst  ToBoot                                         ; $7836: $c7
	add  b                                           ; $7837: $80
	add  b                                           ; $7838: $80
	add  b                                           ; $7839: $80
	add  c                                           ; $783a: $81
	nop                                              ; $783b: $00
	di                                               ; $783c: $f3
	add  e                                           ; $783d: $83
	db   $db                                         ; $783e: $db
	nop                                              ; $783f: $00
	rst  $38                                         ; $7840: $ff
	add  e                                           ; $7841: $83
	ret  nz                                          ; $7842: $c0

	add  b                                           ; $7843: $80
	ld   b, b                                        ; $7844: $40
	add  a                                           ; $7845: $87
	ret  nz                                          ; $7846: $c0

	add  b                                           ; $7847: $80
	nop                                              ; $7848: $00
	add  b                                           ; $7849: $80
	ld   bc, $0680                                   ; $784a: $01 $80 $06

jr_080_784d:
	add  b                                           ; $784d: $80
	jr   c, jr_080_77d0                              ; $784e: $38 $80

	ret  z                                           ; $7850: $c8

	add  h                                           ; $7851: $84
	ld   [$e180], sp                                 ; $7852: $08 $80 $e1
	add  b                                           ; $7855: $80
	add  c                                           ; $7856: $81
	ld   [bc], a                                     ; $7857: $02
	ld   bc, $0300                                   ; $7858: $01 $00 $03
	add  c                                           ; $785b: $81
	ld   [bc], a                                     ; $785c: $02
	add  b                                           ; $785d: $80
	ld   c, $80                                      ; $785e: $0e $80
	inc  [hl]                                        ; $7860: $34
	ld   bc, $d6c4                                   ; $7861: $01 $c4 $d6
	add  b                                           ; $7864: $80
	db   $ed                                         ; $7865: $ed
	add  hl, bc                                      ; $7866: $09
	add  c                                           ; $7867: $81
	nop                                              ; $7868: $00
	add  c                                           ; $7869: $81
	add  hl, hl                                      ; $786a: $29
	dec  h                                           ; $786b: $25
	inc  a                                           ; $786c: $3c
	add  hl, de                                      ; $786d: $19
	ei                                               ; $786e: $fb
	xor  [hl]                                        ; $786f: $ae
	xor  $80                                         ; $7870: $ee $80
	ld   a, e                                        ; $7872: $7b
	inc  bc                                          ; $7873: $03
	ld   l, [hl]                                     ; $7874: $6e
	xor  [hl]                                        ; $7875: $ae
	or   b                                           ; $7876: $b0
	ret  nz                                          ; $7877: $c0

	add  b                                           ; $7878: $80
	ret  nc                                          ; $7879: $d0

	rlca                                             ; $787a: $07
	ret  nz                                          ; $787b: $c0

	ldh  [$60], a                                    ; $787c: $e0 $60
	ldh  a, [$b0]                                    ; $787e: $f0 $b0
	jr   nz, jr_080_7812                             ; $7880: $20 $90

	add  b                                           ; $7882: $80
	add  d                                           ; $7883: $82
	ret  nz                                          ; $7884: $c0

	add  b                                           ; $7885: $80
	ld   a, b                                        ; $7886: $78
	add  b                                           ; $7887: $80
	adc  b                                           ; $7888: $88
	add  d                                           ; $7889: $82
	ld   [$0980], sp                                 ; $788a: $08 $80 $09
	add  b                                           ; $788d: $80
	ld   c, $80                                      ; $788e: $0e $80
	ld   [hl], b                                     ; $7890: $70
	dec  c                                           ; $7891: $0d
	add  b                                           ; $7892: $80
	add  e                                           ; $7893: $83
	ld   de, $1214                                   ; $7894: $11 $14 $12
	ld   [$253e], sp                                 ; $7897: $08 $3e $25
	jr   nz, jr_080_78c4                             ; $789a: $20 $28

	ld   hl, sp-$18                                  ; $789c: $f8 $e8
	jr   z, @+$32                                    ; $789e: $28 $30

	add  d                                           ; $78a0: $82
	jr   nz, @+$06                                   ; $78a1: $20 $04

	nop                                              ; $78a3: $00
	jr   c, jr_080_78a6                              ; $78a4: $38 $00

jr_080_78a6:
	jp   $8003                                       ; $78a6: $c3 $03 $80


	ld   e, $80                                      ; $78a9: $1e $80
	ld   sp, hl                                      ; $78ab: $f9
	add  b                                           ; $78ac: $80
	db   $db                                         ; $78ad: $db
	add  b                                           ; $78ae: $80
	dec  de                                          ; $78af: $1b
	add  b                                           ; $78b0: $80
	db   $db                                         ; $78b1: $db
	ld   bc, $003f                                   ; $78b2: $01 $3f $00
	add  d                                           ; $78b5: $82
	ret  nz                                          ; $78b6: $c0

	add  b                                           ; $78b7: $80
	ld   b, b                                        ; $78b8: $40
	add  [hl]                                        ; $78b9: $86
	ret  nz                                          ; $78ba: $c0

	ld   [bc], a                                     ; $78bb: $02
	ldh  [$2f], a                                    ; $78bc: $e0 $2f
	rrca                                             ; $78be: $0f
	add  [hl]                                        ; $78bf: $86
	add  b                                           ; $78c0: $80
	add  b                                           ; $78c1: $80
	adc  a                                           ; $78c2: $8f
	add  b                                           ; $78c3: $80

jr_080_78c4:
	db   $f4                                         ; $78c4: $f4
	ld   bc, $0304                                   ; $78c5: $01 $04 $03
	add  b                                           ; $78c8: $80
	ldh  [$86], a                                    ; $78c9: $e0 $86
	jr   nz, jr_080_784d                             ; $78cb: $20 $80

	ldh  [$81], a                                    ; $78cd: $e0 $81
	jr   nz, jr_080_78d2                             ; $78cf: $20 $01

	inc  bc                                          ; $78d1: $03

jr_080_78d2:
	db   $db                                         ; $78d2: $db
	add  b                                           ; $78d3: $80
	dec  de                                          ; $78d4: $1b
	adc  d                                           ; $78d5: $8a
	db   $db                                         ; $78d6: $db
	nop                                              ; $78d7: $00
	rst  $38                                         ; $78d8: $ff
	adc  [hl]                                        ; $78d9: $8e
	ret  nz                                          ; $78da: $c0

	add  b                                           ; $78db: $80
	ld   [$f880], sp                                 ; $78dc: $08 $80 $f8
	add  b                                           ; $78df: $80
	rst  $38                                         ; $78e0: $ff
	dec  b                                           ; $78e1: $05
	rlca                                             ; $78e2: $07
	rla                                              ; $78e3: $17
	ldh  a, [rAUD2LOW]                               ; $78e4: $f0 $18
	rst  $38                                         ; $78e6: $ff
	ld   hl, sp-$7f                                  ; $78e7: $f8 $81
	rst  $38                                         ; $78e9: $ff
	nop                                              ; $78ea: $00
	rlca                                             ; $78eb: $07
	add  d                                           ; $78ec: $82
	jr   nz, jr_080_78f2                             ; $78ed: $20 $03

	ldh  [$c0], a                                    ; $78ef: $e0 $c0
	ret  c                                           ; $78f1: $d8

jr_080_78f2:
	ld   hl, sp-$80                                  ; $78f2: $f8 $80
	jr   c, @+$03                                    ; $78f4: $38 $01

	ldh  [rAUD2LOW], a                               ; $78f6: $e0 $18
	add  c                                           ; $78f8: $81
	rst  $38                                         ; $78f9: $ff
	nop                                              ; $78fa: $00
	inc  h                                           ; $78fb: $24
	add  l                                           ; $78fc: $85
	db   $db                                         ; $78fd: $db
	add  b                                           ; $78fe: $80
	ld   a, e                                        ; $78ff: $7b
	add  b                                           ; $7900: $80

Jump_080_7901:
	rst  $38                                         ; $7901: $ff
	inc  b                                           ; $7902: $04
	rrca                                             ; $7903: $0f
	rst  $38                                         ; $7904: $ff
	ldh  a, [rIE]                                    ; $7905: $f0 $ff
	nop                                              ; $7907: $00
	add  [hl]                                        ; $7908: $86
	ret  nz                                          ; $7909: $c0

	nop                                              ; $790a: $00
	ldh  a, [$80]                                    ; $790b: $f0 $80
	and  b                                           ; $790d: $a0
	inc  b                                           ; $790e: $04
	ldh  [$80], a                                    ; $790f: $e0 $80
	nop                                              ; $7911: $00
	add  b                                           ; $7912: $80
	rst  $28                                         ; $7913: $ef
	add  b                                           ; $7914: $80
	ccf                                              ; $7915: $3f
	add  b                                           ; $7916: $80
	rlca                                             ; $7917: $07
	add  b                                           ; $7918: $80
	rst  $38                                         ; $7919: $ff
	add  b                                           ; $791a: $80
	ld   bc, $0080                                   ; $791b: $01 $80 $00
	adc  h                                           ; $791e: $8c
	rst  $38                                         ; $791f: $ff
	add  b                                           ; $7920: $80
	ld   bc, $8080                                   ; $7921: $01 $80 $80
	adc  h                                           ; $7924: $8c
	rst  $38                                         ; $7925: $ff
	add  b                                           ; $7926: $80
	rlca                                             ; $7927: $07
	add  b                                           ; $7928: $80
	ld   sp, hl                                      ; $7929: $f9
	nop                                              ; $792a: $00
	rst  $38                                         ; $792b: $ff
	adc  [hl]                                        ; $792c: $8e
	ldh  a, [$ae]                                    ; $792d: $f0 $ae
	rst  $38                                         ; $792f: $ff
	adc  [hl]                                        ; $7930: $8e
	ldh  a, [rIE]                                    ; $7931: $f0 $ff
	nop                                              ; $7933: $00
	rst  $38                                         ; $7934: $ff
	nop                                              ; $7935: $00
	rst  $38                                         ; $7936: $ff
	nop                                              ; $7937: $00
	rst  $38                                         ; $7938: $ff
	nop                                              ; $7939: $00
	rst  $38                                         ; $793a: $ff
	nop                                              ; $793b: $00
	rst  $38                                         ; $793c: $ff
	nop                                              ; $793d: $00
	ld   hl, sp+$00                                  ; $793e: $f8 $00
	ld   l, $01                                      ; $7940: $2e $01
	nop                                              ; $7942: $00
	rrca                                             ; $7943: $0f
	adc  l                                           ; $7944: $8d
	nop                                              ; $7945: $00
	nop                                              ; $7946: $00
	ld   [hl], b                                     ; $7947: $70
	add  a                                           ; $7948: $87
	add  b                                           ; $7949: $80
	sub  e                                           ; $794a: $93
	nop                                              ; $794b: $00
	ld   bc, $1503                                   ; $794c: $01 $03 $15
	add  c                                           ; $794f: $81
	ld   d, [hl]                                     ; $7950: $56
	add  c                                           ; $7951: $81
	ld   b, b                                        ; $7952: $40
	add  b                                           ; $7953: $80
	ld   b, [hl]                                     ; $7954: $46
	add  b                                           ; $7955: $80
	ld   e, [hl]                                     ; $7956: $5e
	add  b                                           ; $7957: $80
	ld   e, $81                                      ; $7958: $1e $81
	cp   $01                                         ; $795a: $fe $01
	cp   a                                           ; $795c: $bf
	ld   b, c                                        ; $795d: $41
	add  l                                           ; $795e: $85
	nop                                              ; $795f: $00
	add  b                                           ; $7960: $80
	ld   [hl], a                                     ; $7961: $77
	add  b                                           ; $7962: $80
	ld   l, a                                        ; $7963: $6f
	add  b                                           ; $7964: $80
	ld   b, b                                        ; $7965: $40
	nop                                              ; $7966: $00
	nop                                              ; $7967: $00
	add  b                                           ; $7968: $80
	ld   e, b                                        ; $7969: $58
	add  b                                           ; $796a: $80
	ld   d, b                                        ; $796b: $50
	add  b                                           ; $796c: $80
	ld   b, b                                        ; $796d: $40
	nop                                              ; $796e: $00
	nop                                              ; $796f: $00
	add  b                                           ; $7970: $80
	ld   c, $80                                      ; $7971: $0e $80
	dec  e                                           ; $7973: $1d
	add  b                                           ; $7974: $80
	dec  sp                                          ; $7975: $3b
	add  h                                           ; $7976: $84
	rlca                                             ; $7977: $07
	add  b                                           ; $7978: $80
	rrca                                             ; $7979: $0f
	add  b                                           ; $797a: $80
	rra                                              ; $797b: $1f
	adc  b                                           ; $797c: $88
	rst  $38                                         ; $797d: $ff
	add  b                                           ; $797e: $80
	add  b                                           ; $797f: $80
	add  b                                           ; $7980: $80
	add  e                                           ; $7981: $83
	adc  d                                           ; $7982: $8a
	rst  $38                                         ; $7983: $ff
	add  b                                           ; $7984: $80
	ld   a, [hl]                                     ; $7985: $7e
	add  d                                           ; $7986: $82
	cp   $82                                         ; $7987: $fe $82
	db   $fc                                         ; $7989: $fc
	add  e                                           ; $798a: $83
	rst  $38                                         ; $798b: $ff
	nop                                              ; $798c: $00
	cp   $80                                         ; $798d: $fe $80
	ld   a, a                                        ; $798f: $7f
	add  c                                           ; $7990: $81
	ld   bc, $0083                                   ; $7991: $01 $83 $00
	add  b                                           ; $7994: $80
	db   $fc                                         ; $7995: $fc
	add  d                                           ; $7996: $82
	ld   hl, sp-$74                                  ; $7997: $f8 $8c
	nop                                              ; $7999: $00
	ld   bc, $8101                                   ; $799a: $01 $01 $81
	add  e                                           ; $799d: $83
	add  b                                           ; $799e: $80
	add  c                                           ; $799f: $81
	nop                                              ; $79a0: $00
	add  b                                           ; $79a1: $80
	ld   h, b                                        ; $79a2: $60
	add  b                                           ; $79a3: $80
	ldh  [$80], a                                    ; $79a4: $e0 $80
	ldh  a, [$80]                                    ; $79a6: $f0 $80
	db   $fc                                         ; $79a8: $fc
	add  [hl]                                        ; $79a9: $86
	nop                                              ; $79aa: $00
	add  b                                           ; $79ab: $80
	ld   [bc], a                                     ; $79ac: $02
	add  d                                           ; $79ad: $82
	rrca                                             ; $79ae: $0f
	ld   bc, $cf4f                                   ; $79af: $01 $4f $cf
	add  e                                           ; $79b2: $83
	add  b                                           ; $79b3: $80
	add  l                                           ; $79b4: $85
	nop                                              ; $79b5: $00
	add  c                                           ; $79b6: $81
	add  b                                           ; $79b7: $80
	nop                                              ; $79b8: $00
	ret  nz                                          ; $79b9: $c0

	add  e                                           ; $79ba: $83
	ld   b, c                                        ; $79bb: $41
	nop                                              ; $79bc: $00
	ld   bc, $0380                                   ; $79bd: $01 $80 $03
	add  b                                           ; $79c0: $80
	rrca                                             ; $79c1: $0f
	add  d                                           ; $79c2: $82
	rlca                                             ; $79c3: $07

jr_080_79c4:
	add  b                                           ; $79c4: $80
	inc  bc                                          ; $79c5: $03
	adc  l                                           ; $79c6: $8d
	rst  $38                                         ; $79c7: $ff
	adc  [hl]                                        ; $79c8: $8e
	rrca                                             ; $79c9: $0f
	sbc  a                                           ; $79ca: $9f
	rst  $38                                         ; $79cb: $ff
	add  h                                           ; $79cc: $84
	cp   $80                                         ; $79cd: $fe $80
	db   $fc                                         ; $79cf: $fc
	add  b                                           ; $79d0: $80
	ld   hl, sp-$80                                  ; $79d1: $f8 $80
	ldh  a, [$80]                                    ; $79d3: $f0 $80
	ldh  [$80], a                                    ; $79d5: $e0 $80
	ret  nz                                          ; $79d7: $c0

	adc  b                                           ; $79d8: $88
	nop                                              ; $79d9: $00
	add  b                                           ; $79da: $80
	ld   bc, $0380                                   ; $79db: $01 $80 $03
	add  b                                           ; $79de: $80
	rlca                                             ; $79df: $07
	add  b                                           ; $79e0: $80
	rrca                                             ; $79e1: $0f
	add  d                                           ; $79e2: $82
	rra                                              ; $79e3: $1f
	add  b                                           ; $79e4: $80
	ld   a, a                                        ; $79e5: $7f
	or   [hl]                                        ; $79e6: $b6
	rst  $38                                         ; $79e7: $ff
	add  d                                           ; $79e8: $82
	ldh  a, [$84]                                    ; $79e9: $f0 $84
	ldh  [$80], a                                    ; $79eb: $e0 $80
	ldh  a, [$82]                                    ; $79ed: $f0 $82
	rst  $38                                         ; $79ef: $ff
	add  b                                           ; $79f0: $80
	ld   bc, $0382                                   ; $79f1: $01 $82 $03
	add  d                                           ; $79f4: $82
	rlca                                             ; $79f5: $07
	add  b                                           ; $79f6: $80
	rrca                                             ; $79f7: $0f
	add  d                                           ; $79f8: $82
	rst  $38                                         ; $79f9: $ff
	add  b                                           ; $79fa: $80
	db   $fc                                         ; $79fb: $fc
	sbc  h                                           ; $79fc: $9c
	rst  $38                                         ; $79fd: $ff
	add  b                                           ; $79fe: $80
	ret  nz                                          ; $79ff: $c0

jr_080_7a00:
	add  d                                           ; $7a00: $82
	ldh  [$80], a                                    ; $7a01: $e0 $80
	ldh  a, [$80]                                    ; $7a03: $f0 $80
	ld   hl, sp-$7c                                  ; $7a05: $f8 $84
	rst  $38                                         ; $7a07: $ff
	add  b                                           ; $7a08: $80
	inc  bc                                          ; $7a09: $03
	add  h                                           ; $7a0a: $84
	ld   bc, $0f80                                   ; $7a0b: $01 $80 $0f
	sub  e                                           ; $7a0e: $93
	rst  $38                                         ; $7a0f: $ff
	add  [hl]                                        ; $7a10: $86
	nop                                              ; $7a11: $00
	nop                                              ; $7a12: $00
	rst  $38                                         ; $7a13: $ff
	add  l                                           ; $7a14: $85
	nop                                              ; $7a15: $00
	nop                                              ; $7a16: $00
	rst  $38                                         ; $7a17: $ff
	add  l                                           ; $7a18: $85
	nop                                              ; $7a19: $00
	nop                                              ; $7a1a: $00
	rst  $38                                         ; $7a1b: $ff
	add  l                                           ; $7a1c: $85
	nop                                              ; $7a1d: $00
	nop                                              ; $7a1e: $00
	rst  $38                                         ; $7a1f: $ff
	add  l                                           ; $7a20: $85
	nop                                              ; $7a21: $00
	ld   bc, $00ff                                   ; $7a22: $01 $ff $00
	add  b                                           ; $7a25: $80
	ld   bc, $0280                                   ; $7a26: $01 $80 $02
	add  b                                           ; $7a29: $80
	inc  bc                                          ; $7a2a: $03
	nop                                              ; $7a2b: $00
	rst  $38                                         ; $7a2c: $ff
	add  l                                           ; $7a2d: $85
	nop                                              ; $7a2e: $00
	ld   bc, $20d0                                   ; $7a2f: $01 $d0 $20
	add  b                                           ; $7a32: $80
	db   $10                                         ; $7a33: $10
	add  b                                           ; $7a34: $80
	ld   [hl], b                                     ; $7a35: $70
	add  b                                           ; $7a36: $80
	add  b                                           ; $7a37: $80
	ld   bc, $a7a8                                   ; $7a38: $01 $a8 $a7
	add  b                                           ; $7a3b: $80
	ld   e, $80                                      ; $7a3c: $1e $80
	ldh  a, [$80]                                    ; $7a3e: $f0 $80

jr_080_7a40:
	adc  b                                           ; $7a40: $88
	add  b                                           ; $7a41: $80
	jr   c, jr_080_79c4                              ; $7a42: $38 $80

	add  sp, -$80                                    ; $7a44: $e8 $80
	adc  b                                           ; $7a46: $88
	add  b                                           ; $7a47: $80
	xor  b                                           ; $7a48: $a8
	add  b                                           ; $7a49: $80
	add  b                                           ; $7a4a: $80
	nop                                              ; $7a4b: $00
	inc  b                                           ; $7a4c: $04
	add  b                                           ; $7a4d: $80
	inc  e                                           ; $7a4e: $1c
	add  b                                           ; $7a4f: $80
	ld   a, h                                        ; $7a50: $7c
	add  b                                           ; $7a51: $80
	cp   h                                           ; $7a52: $bc
	add  b                                           ; $7a53: $80
	ld   a, h                                        ; $7a54: $7c
	add  b                                           ; $7a55: $80
	cp   h                                           ; $7a56: $bc
	add  b                                           ; $7a57: $80
	ld   a, h                                        ; $7a58: $7c
	ld   bc, $edbc                                   ; $7a59: $01 $bc $ed
	add  l                                           ; $7a5c: $85
	add  d                                           ; $7a5d: $82
	add  b                                           ; $7a5e: $80
	add  e                                           ; $7a5f: $83
	ld   b, $96                                      ; $7a60: $06 $96
	add  c                                           ; $7a62: $81
	ret  nz                                          ; $7a63: $c0

	ld   bc, $1f11                                   ; $7a64: $01 $11 $1f
	ld   b, b                                        ; $7a67: $40
	add  c                                           ; $7a68: $81
	add  b                                           ; $7a69: $80
	nop                                              ; $7a6a: $00
	sub  b                                           ; $7a6b: $90
	add  c                                           ; $7a6c: $81
	or   b                                           ; $7a6d: $b0
	add  b                                           ; $7a6e: $80
	ldh  a, [rSC]                                    ; $7a6f: $f0 $02
	db   $10                                         ; $7a71: $10
	ldh  a, [rAUD1SWEEP]                             ; $7a72: $f0 $10
	add  c                                           ; $7a74: $81
	ldh  a, [rP1]                                    ; $7a75: $f0 $00
	ld   a, a                                        ; $7a77: $7f
	add  l                                           ; $7a78: $85
	or   b                                           ; $7a79: $b0
	ld   bc, $80a0                                   ; $7a7a: $01 $a0 $80
	add  b                                           ; $7a7d: $80
	jr   nc, jr_080_7a00                             ; $7a7e: $30 $80

	add  b                                           ; $7a80: $80
	add  b                                           ; $7a81: $80
	sub  b                                           ; $7a82: $90
	nop                                              ; $7a83: $00
	inc  b                                           ; $7a84: $04
	add  b                                           ; $7a85: $80
	ld   a, h                                        ; $7a86: $7c
	add  b                                           ; $7a87: $80
	cp   h                                           ; $7a88: $bc
	add  b                                           ; $7a89: $80
	ld   a, h                                        ; $7a8a: $7c
	add  b                                           ; $7a8b: $80
	cp   h                                           ; $7a8c: $bc
	add  b                                           ; $7a8d: $80
	ld   a, h                                        ; $7a8e: $7c
	add  b                                           ; $7a8f: $80
	cp   h                                           ; $7a90: $bc
	add  b                                           ; $7a91: $80
	ld   a, h                                        ; $7a92: $7c
	ld   bc, $47bc                                   ; $7a93: $01 $bc $47
	add  e                                           ; $7a96: $83
	ld   [$e802], sp                                 ; $7a97: $08 $02 $e8
	rra                                              ; $7a9a: $1f
	rst  $38                                         ; $7a9b: $ff
	add  l                                           ; $7a9c: $85
	ld   [$2800], sp                                 ; $7a9d: $08 $00 $28
	add  h                                           ; $7aa0: $84
	jr   nc, @-$7e                                   ; $7aa1: $30 $80

	ldh  a, [$85]                                    ; $7aa3: $f0 $85
	jr   nc, jr_080_7aa8                             ; $7aa5: $30 $01

	ld   h, a                                        ; $7aa7: $67

jr_080_7aa8:
	adc  b                                           ; $7aa8: $88
	add  b                                           ; $7aa9: $80
	ld   a, [de]                                     ; $7aaa: $1a
	add  b                                           ; $7aab: $80
	ldh  a, [c]                                      ; $7aac: $f2
	add  b                                           ; $7aad: $80
	ld   c, $80                                      ; $7aae: $0e $80
	ld   a, [hl+]                                    ; $7ab0: $2a
	add  h                                           ; $7ab1: $84
	xor  d                                           ; $7ab2: $aa
	add  b                                           ; $7ab3: $80
	ld   de, $0082                                   ; $7ab4: $11 $82 $00
	add  b                                           ; $7ab7: $80
	ld   [$2a80], sp                                 ; $7ab8: $08 $80 $2a
	add  d                                           ; $7abb: $82
	xor  d                                           ; $7abc: $aa
	add  b                                           ; $7abd: $80
	jr   z, jr_080_7a40                              ; $7abe: $28 $80

	nop                                              ; $7ac0: $00
	adc  b                                           ; $7ac1: $88
	dec  b                                           ; $7ac2: $05
	add  d                                           ; $7ac3: $82
	ld   bc, $ff01                                   ; $7ac4: $01 $01 $ff
	ldh  a, [$80]                                    ; $7ac7: $f0 $80
	ld   b, b                                        ; $7ac9: $40
	adc  d                                           ; $7aca: $8a
	ld   d, b                                        ; $7acb: $50
	nop                                              ; $7acc: $00
	rrca                                             ; $7acd: $0f
	add  c                                           ; $7ace: $81
	nop                                              ; $7acf: $00
	add  b                                           ; $7ad0: $80
	ld   a, [bc]                                     ; $7ad1: $0a
	add  b                                           ; $7ad2: $80
	nop                                              ; $7ad3: $00
	add  b                                           ; $7ad4: $80
	xor  d                                           ; $7ad5: $aa
	add  b                                           ; $7ad6: $80
	dec  d                                           ; $7ad7: $15
	add  b                                           ; $7ad8: $80
	xor  d                                           ; $7ad9: $aa
	add  b                                           ; $7ada: $80
	ld   e, h                                        ; $7adb: $5c
	add  b                                           ; $7adc: $80
	nop                                              ; $7add: $00
	add  b                                           ; $7ade: $80
	dec  b                                           ; $7adf: $05
	add  b                                           ; $7ae0: $80
	xor  e                                           ; $7ae1: $ab
	add  b                                           ; $7ae2: $80
	ld   d, $80                                      ; $7ae3: $16 $80
	cp   c                                           ; $7ae5: $b9
	add  b                                           ; $7ae6: $80
	ld   b, a                                        ; $7ae7: $47
	add  b                                           ; $7ae8: $80
	ld   a, $80                                      ; $7ae9: $3e $80
	ldh  a, [$80]                                    ; $7aeb: $f0 $80
	ld   l, $80                                      ; $7aed: $2e $80
	ld   sp, $cf80                                   ; $7aef: $31 $80 $cf
	add  b                                           ; $7af2: $80
	ld   a, $80                                      ; $7af3: $3e $80
	ld   sp, hl                                      ; $7af5: $f9
	add  b                                           ; $7af6: $80
	pop  bc                                          ; $7af7: $c1
	dec  b                                           ; $7af8: $05
	dec  b                                           ; $7af9: $05
	ld   [bc], a                                     ; $7afa: $02
	ld   [de], a                                     ; $7afb: $12
	ld   [bc], a                                     ; $7afc: $02
	ld   l, b                                        ; $7afd: $68
	ld   [hl], b                                     ; $7afe: $70
	add  b                                           ; $7aff: $80
	ldh  a, [$80]                                    ; $7b00: $f0 $80

jr_080_7b02:
	ret  nz                                          ; $7b02: $c0

	add  b                                           ; $7b03: $80

jr_080_7b04:
	nop                                              ; $7b04: $00
	add  b                                           ; $7b05: $80
	ret  nz                                          ; $7b06: $c0

	nop                                              ; $7b07: $00
	ld   b, b                                        ; $7b08: $40
	add  e                                           ; $7b09: $83
	add  b                                           ; $7b0a: $80
	nop                                              ; $7b0b: $00
	ld   h, a                                        ; $7b0c: $67
	add  a                                           ; $7b0d: $87
	xor  b                                           ; $7b0e: $a8
	add  b                                           ; $7b0f: $80
	ld   hl, sp-$80                                  ; $7b10: $f8 $80
	ret  nz                                          ; $7b12: $c0

	add  b                                           ; $7b13: $80
	stop                                             ; $7b14: $10 $00
	inc  b                                           ; $7b16: $04
	add  b                                           ; $7b17: $80
	ld   a, h                                        ; $7b18: $7c
	add  b                                           ; $7b19: $80
	cp   h                                           ; $7b1a: $bc
	add  b                                           ; $7b1b: $80
	ld   a, h                                        ; $7b1c: $7c
	add  b                                           ; $7b1d: $80
	cp   h                                           ; $7b1e: $bc
	add  b                                           ; $7b1f: $80
	ld   a, h                                        ; $7b20: $7c
	add  b                                           ; $7b21: $80
	cp   h                                           ; $7b22: $bc
	add  b                                           ; $7b23: $80
	ld   a, h                                        ; $7b24: $7c
	inc  bc                                          ; $7b25: $03
	cp   h                                           ; $7b26: $bc
	cp   a                                           ; $7b27: $bf
	nop                                              ; $7b28: $00
	ld   hl, sp-$7a                                  ; $7b29: $f8 $86
	ld   [$0b05], sp                                 ; $7b2b: $08 $05 $0b
	db   $eb                                         ; $7b2e: $eb
	inc  e                                           ; $7b2f: $1c
	db   $fc                                         ; $7b30: $fc
	ld   [$8828], sp                                 ; $7b31: $08 $28 $88
	jr   nc, @-$7e                                   ; $7b34: $30 $80

	ldh  a, [$81]                                    ; $7b36: $f0 $81
	jr   nc, jr_080_7b3b                             ; $7b38: $30 $01

	ld   a, a                                        ; $7b3a: $7f

jr_080_7b3b:
	sub  b                                           ; $7b3b: $90
	add  b                                           ; $7b3c: $80
	sub  d                                           ; $7b3d: $92
	add  d                                           ; $7b3e: $82
	sub  b                                           ; $7b3f: $90
	add  b                                           ; $7b40: $80
	sub  e                                           ; $7b41: $93
	add  b                                           ; $7b42: $80
	sub  [hl]                                        ; $7b43: $96
	add  b                                           ; $7b44: $80
	sub  h                                           ; $7b45: $94
	add  b                                           ; $7b46: $80
	adc  h                                           ; $7b47: $8c
	nop                                              ; $7b48: $00
	inc  b                                           ; $7b49: $04
	add  b                                           ; $7b4a: $80
	ld   a, h                                        ; $7b4b: $7c
	add  b                                           ; $7b4c: $80
	cp   h                                           ; $7b4d: $bc
	ld   bc, $877c                                   ; $7b4e: $01 $7c $87
	add  c                                           ; $7b51: $81
	rst  $38                                         ; $7b52: $ff
	add  d                                           ; $7b53: $82
	nop                                              ; $7b54: $00
	add  b                                           ; $7b55: $80
	ld   c, l                                        ; $7b56: $4d
	add  b                                           ; $7b57: $80
	rra                                              ; $7b58: $1f
	nop                                              ; $7b59: $00
	rst  $38                                         ; $7b5a: $ff
	add  d                                           ; $7b5b: $82
	ld   [$8880], sp                                 ; $7b5c: $08 $80 $88
	ld   bc, $48c8                                   ; $7b5f: $01 $c8 $48
	add  c                                           ; $7b62: $81
	ld   [$4802], sp                                 ; $7b63: $08 $02 $48
	ccf                                              ; $7b66: $3f
	rst  JumpTable                                         ; $7b67: $df
	add  b                                           ; $7b68: $80
	ldh  a, [$89]                                    ; $7b69: $f0 $89
	jr   nc, jr_080_7b70                             ; $7b6b: $30 $03

	nop                                              ; $7b6d: $00
	ldh  [$a5], a                                    ; $7b6e: $e0 $a5

jr_080_7b70:
	xor  d                                           ; $7b70: $aa
	add  b                                           ; $7b71: $80
	add  d                                           ; $7b72: $82
	add  b                                           ; $7b73: $80
	and  b                                           ; $7b74: $a0
	add  d                                           ; $7b75: $82
	xor  c                                           ; $7b76: $a9
	add  b                                           ; $7b77: $80
	ld   [rRAMG], sp                                 ; $7b78: $08 $00 $00
	add  b                                           ; $7b7b: $80
	ldh  a, [rSC]                                    ; $7b7c: $f0 $02
	cp   $d6                                         ; $7b7e: $fe $d6
	jr   z, jr_080_7b02                              ; $7b80: $28 $80

	jr   nz, jr_080_7b04                             ; $7b82: $20 $80

	nop                                              ; $7b84: $00
	add  b                                           ; $7b85: $80
	ld   [bc], a                                     ; $7b86: $02
	add  b                                           ; $7b87: $80
	ld   [hl+], a                                    ; $7b88: $22
	add  b                                           ; $7b89: $80
	ld   a, [hl+]                                    ; $7b8a: $2a
	add  d                                           ; $7b8b: $82
	nop                                              ; $7b8c: $00
	add  h                                           ; $7b8d: $84
	ld   bc, $0088                                   ; $7b8e: $01 $88 $00
	nop                                              ; $7b91: $00
	ld   e, a                                        ; $7b92: $5f
	add  l                                           ; $7b93: $85
	ld   d, b                                        ; $7b94: $50
	add  b                                           ; $7b95: $80
	add  b                                           ; $7b96: $80
	add  d                                           ; $7b97: $82
	ldh  a, [$80]                                    ; $7b98: $f0 $80
	nop                                              ; $7b9a: $00
	nop                                              ; $7b9b: $00
	rrca                                             ; $7b9c: $0f
	adc  [hl]                                        ; $7b9d: $8e
	rst  $38                                         ; $7b9e: $ff
	add  b                                           ; $7b9f: $80
	add  b                                           ; $7ba0: $80
	add  b                                           ; $7ba1: $80
	ldh  [$80], a                                    ; $7ba2: $e0 $80
	ldh  a, [$80]                                    ; $7ba4: $f0 $80
	cp   $86                                         ; $7ba6: $fe $86
	rst  $38                                         ; $7ba8: $ff
	add  b                                           ; $7ba9: $80
	nop                                              ; $7baa: $00
	add  b                                           ; $7bab: $80
	ld   bc, $0380                                   ; $7bac: $01 $80 $03
	add  b                                           ; $7baf: $80
	rrca                                             ; $7bb0: $0f
	add  l                                           ; $7bb1: $85
	rst  $38                                         ; $7bb2: $ff
	nop                                              ; $7bb3: $00
	ldh  a, [$80]                                    ; $7bb4: $f0 $80
	ld   [hl], b                                     ; $7bb6: $70
	adc  e                                           ; $7bb7: $8b
	ldh  a, [$ae]                                    ; $7bb8: $f0 $ae
	rst  $38                                         ; $7bba: $ff
	adc  [hl]                                        ; $7bbb: $8e
	ldh  a, [rIE]                                    ; $7bbc: $f0 $ff
	nop                                              ; $7bbe: $00
	rst  $38                                         ; $7bbf: $ff
	nop                                              ; $7bc0: $00
	rst  $38                                         ; $7bc1: $ff
	nop                                              ; $7bc2: $00
	rst  $38                                         ; $7bc3: $ff
	nop                                              ; $7bc4: $00
	rst  $38                                         ; $7bc5: $ff
	nop                                              ; $7bc6: $00
	rst  $38                                         ; $7bc7: $ff
	nop                                              ; $7bc8: $00
	ld   hl, sp+$00                                  ; $7bc9: $f8 $00
	rlc  b                                           ; $7bcb: $cb $00
	ld   bc, $40ff                                   ; $7bcd: $01 $ff $40
	add  b                                           ; $7bd0: $80
	ld   c, b                                        ; $7bd1: $48
	add  b                                           ; $7bd2: $80
	ld   b, b                                        ; $7bd3: $40
	add  c                                           ; $7bd4: $81
	ld   b, [hl]                                     ; $7bd5: $46
	ld   bc, $4647                                   ; $7bd6: $01 $47 $46
	add  e                                           ; $7bd9: $83
	ld   b, a                                        ; $7bda: $47
	inc  bc                                          ; $7bdb: $03
	add  hl, sp                                      ; $7bdc: $39
	ld   sp, hl                                      ; $7bdd: $f9
	sbc  c                                           ; $7bde: $99
	add  hl, de                                      ; $7bdf: $19
	add  d                                           ; $7be0: $82
	ld   bc, $8109                                   ; $7be1: $01 $09 $81
	pop  bc                                          ; $7be4: $c1

jr_080_7be5:
	ld   de, $01f9                                   ; $7be5: $11 $f9 $01
	ld   sp, hl                                      ; $7be8: $f9
	add  c                                           ; $7be9: $81
	ld   sp, hl                                      ; $7bea: $f9

jr_080_7beb:
	and  a                                           ; $7beb: $a7
	or   b                                           ; $7bec: $b0
	add  b                                           ; $7bed: $80
	cp   [hl]                                        ; $7bee: $be
	dec  b                                           ; $7bef: $05
	cp   l                                           ; $7bf0: $bd
	adc  l                                           ; $7bf1: $8d
	xor  a                                           ; $7bf2: $af
	and  b                                           ; $7bf3: $a0
	and  d                                           ; $7bf4: $a2
	or   h                                           ; $7bf5: $b4
	add  b                                           ; $7bf6: $80
	or   [hl]                                        ; $7bf7: $b6
	inc  b                                           ; $7bf8: $04
	sub  [hl]                                        ; $7bf9: $96
	or   [hl]                                        ; $7bfa: $b6
	sub  [hl]                                        ; $7bfb: $96
	or   [hl]                                        ; $7bfc: $b6
	jp   hl                                          ; $7bfd: $e9


	add  c                                           ; $7bfe: $81
	nop                                              ; $7bff: $00
	add  b                                           ; $7c00: $80
	ret  nz                                          ; $7c01: $c0

	add  b                                           ; $7c02: $80
	jr   nc, jr_080_7c09                             ; $7c03: $30 $04

	ldh  [rP1], a                                    ; $7c05: $e0 $00
	ret  nc                                          ; $7c07: $d0

	nop                                              ; $7c08: $00

jr_080_7c09:
	ret  nz                                          ; $7c09: $c0

	add  c                                           ; $7c0a: $81
	ret  nc                                          ; $7c0b: $d0

	nop                                              ; $7c0c: $00
	add  hl, hl                                      ; $7c0d: $29
	adc  l                                           ; $7c0e: $8d
	ld   b, $00                                      ; $7c0f: $06 $00
	inc  a                                           ; $7c11: $3c
	adc  l                                           ; $7c12: $8d
	call z, $ba07                                    ; $7c13: $cc $07 $ba
	cp   a                                           ; $7c16: $bf
	cp   b                                           ; $7c17: $b8
	cp   a                                           ; $7c18: $bf
	cp   h                                           ; $7c19: $bc
	cp   a                                           ; $7c1a: $bf
	sbc  [hl]                                        ; $7c1b: $9e
	sbc  a                                           ; $7c1c: $9f
	add  b                                           ; $7c1d: $80
	xor  a                                           ; $7c1e: $af
	add  b                                           ; $7c1f: $80
	sbc  a                                           ; $7c20: $9f
	add  b                                           ; $7c21: $80
	adc  a                                           ; $7c22: $8f
	add  b                                           ; $7c23: $80
	sub  h                                           ; $7c24: $94
	nop                                              ; $7c25: $00
	nop                                              ; $7c26: $00
	adc  l                                           ; $7c27: $8d
	ld   de, $8400                                   ; $7c28: $11 $00 $84
	add  l                                           ; $7c2b: $85
	cp   a                                           ; $7c2c: $bf
	add  b                                           ; $7c2d: $80
	cp   [hl]                                        ; $7c2e: $be
	nop                                              ; $7c2f: $00
	cp   d                                           ; $7c30: $ba
	add  b                                           ; $7c31: $80
	cp   c                                           ; $7c32: $b9
	inc  b                                           ; $7c33: $04
	or   e                                           ; $7c34: $b3
	xor  c                                           ; $7c35: $a9
	adc  a                                           ; $7c36: $8f
	ld   b, $a3                                      ; $7c37: $06 $a3
	add  b                                           ; $7c39: $80
	xor  a                                           ; $7c3a: $af
	add  b                                           ; $7c3b: $80
	xor  [hl]                                        ; $7c3c: $ae
	ld   bc, $2dad                                   ; $7c3d: $01 $ad $2d
	add  b                                           ; $7c40: $80
	dec  hl                                          ; $7c41: $2b
	inc  bc                                          ; $7c42: $03
	jr   nz, jr_080_7be5                             ; $7c43: $20 $a0

	xor  a                                           ; $7c45: $af
	adc  a                                           ; $7c46: $8f
	add  b                                           ; $7c47: $80
	cp   a                                           ; $7c48: $bf
	db   $10                                         ; $7c49: $10
	jr   jr_080_7beb                                 ; $7c4a: $18 $9f

	ld   [hl], e                                     ; $7c4c: $73
	ld   a, a                                        ; $7c4d: $7f
	inc  b                                           ; $7c4e: $04
	rrca                                             ; $7c4f: $0f
	ld   hl, sp-$01                                  ; $7c50: $f8 $ff
	di                                               ; $7c52: $f3
	rst  $38                                         ; $7c53: $ff
	inc  b                                           ; $7c54: $04
	rrca                                             ; $7c55: $0f
	ld   hl, sp-$01                                  ; $7c56: $f8 $ff
	di                                               ; $7c58: $f3
	rst  $38                                         ; $7c59: $ff
	ld   [hl], h                                     ; $7c5a: $74
	add  c                                           ; $7c5b: $81
	rst  $38                                         ; $7c5c: $ff
	ld   [bc], a                                     ; $7c5d: $02
	nop                                              ; $7c5e: $00
	add  b                                           ; $7c5f: $80
	ld   a, a                                        ; $7c60: $7f
	add  c                                           ; $7c61: $81
	rst  $38                                         ; $7c62: $ff
	ld   [bc], a                                     ; $7c63: $02
	nop                                              ; $7c64: $00
	add  b                                           ; $7c65: $80
	ld   a, a                                        ; $7c66: $7f
	add  c                                           ; $7c67: $81
	rst  $38                                         ; $7c68: $ff
	db   $10                                         ; $7c69: $10
	ret  nz                                          ; $7c6a: $c0

	rst  $38                                         ; $7c6b: $ff
	rra                                              ; $7c6c: $1f
	rst  $38                                         ; $7c6d: $ff
	ldh  [$bf], a                                    ; $7c6e: $e0 $bf
	ld   b, b                                        ; $7c70: $40
	rst  $38                                         ; $7c71: $ff
	rra                                              ; $7c72: $1f
	rst  $38                                         ; $7c73: $ff
	ldh  [$bf], a                                    ; $7c74: $e0 $bf
	ld   b, b                                        ; $7c76: $40
	rst  $38                                         ; $7c77: $ff
	rrca                                             ; $7c78: $0f
	rst  $38                                         ; $7c79: $ff
	ld   c, a                                        ; $7c7a: $4f
	add  c                                           ; $7c7b: $81
	rst  $38                                         ; $7c7c: $ff
	ld   [bc], a                                     ; $7c7d: $02
	nop                                              ; $7c7e: $00
	rst  $38                                         ; $7c7f: $ff
	nop                                              ; $7c80: $00
	add  c                                           ; $7c81: $81
	rst  $38                                         ; $7c82: $ff
	ld   [bc], a                                     ; $7c83: $02
	nop                                              ; $7c84: $00
	rst  $38                                         ; $7c85: $ff
	nop                                              ; $7c86: $00
	add  l                                           ; $7c87: $85
	rst  $38                                         ; $7c88: $ff
	inc  e                                           ; $7c89: $1c
	nop                                              ; $7c8a: $00
	rst  $38                                         ; $7c8b: $ff
	ld   bc, $fcff                                   ; $7c8c: $01 $ff $fc
	rst  $38                                         ; $7c8f: $ff
	ld   [bc], a                                     ; $7c90: $02
	rst  $38                                         ; $7c91: $ff
	ld   bc, $fcff                                   ; $7c92: $01 $ff $fc
	rst  $38                                         ; $7c95: $ff
	and  d                                           ; $7c96: $a2
	rst  $38                                         ; $7c97: $ff
	rrca                                             ; $7c98: $0f
	rst  $38                                         ; $7c99: $ff
	ld   a, [$7faa]                                  ; $7c9a: $fa $aa $7f
	rst  $38                                         ; $7c9d: $ff
	cpl                                              ; $7c9e: $2f
	rst  $38                                         ; $7c9f: $ff
	ret  nz                                          ; $7ca0: $c0

	sub  b                                           ; $7ca1: $90
	ld   a, a                                        ; $7ca2: $7f
	rst  $38                                         ; $7ca3: $ff
	ld   a, a                                        ; $7ca4: $7f
	rst  $38                                         ; $7ca5: $ff
	ld   hl, sp-$7f                                  ; $7ca6: $f8 $81
	rst  $38                                         ; $7ca8: $ff
	dec  b                                           ; $7ca9: $05
	ld   bc, $f906                                   ; $7caa: $01 $06 $f9
	rst  $38                                         ; $7cad: $ff
	ld   sp, hl                                      ; $7cae: $f9
	rst  $38                                         ; $7caf: $ff
	add  b                                           ; $7cb0: $80
	nop                                              ; $7cb1: $00
	add  d                                           ; $7cb2: $82
	rst  $38                                         ; $7cb3: $ff
	ld   bc, $e727                                   ; $7cb4: $01 $27 $e7
	add  b                                           ; $7cb7: $80
	di                                               ; $7cb8: $f3
	inc  bc                                          ; $7cb9: $03
	add  c                                           ; $7cba: $81
	ld   b, c                                        ; $7cbb: $41
	cp   [hl]                                        ; $7cbc: $be
	cp   $80                                         ; $7cbd: $fe $80
	rst  $38                                         ; $7cbf: $ff
	rlca                                             ; $7cc0: $07
	nop                                              ; $7cc1: $00
	ld   b, b                                        ; $7cc2: $40
	cp   a                                           ; $7cc3: $bf
	rst  $38                                         ; $7cc4: $ff
	cp   a                                           ; $7cc5: $bf
	rst  $38                                         ; $7cc6: $ff
	adc  l                                           ; $7cc7: $8d
	sbc  l                                           ; $7cc8: $9d
	add  h                                           ; $7cc9: $84
	push de                                          ; $7cca: $d5
	ld   bc, $5141                                   ; $7ccb: $01 $41 $51
	add  b                                           ; $7cce: $80
	ld   de, $d680                                   ; $7ccf: $11 $80 $d6
	add  b                                           ; $7cd2: $80
	rst  $20                                         ; $7cd3: $e7
	adc  h                                           ; $7cd4: $8c
	ld   l, h                                        ; $7cd5: $6c
	add  b                                           ; $7cd6: $80
	adc  h                                           ; $7cd7: $8c
	ld   [bc], a                                     ; $7cd8: $02
	rlca                                             ; $7cd9: $07
	ld   b, a                                        ; $7cda: $47
	rlca                                             ; $7cdb: $07
	adc  e                                           ; $7cdc: $8b
	ld   b, a                                        ; $7cdd: $47
	ld   [bc], a                                     ; $7cde: $02
	jp   hl                                          ; $7cdf: $e9


	ld   sp, hl                                      ; $7ce0: $f9
	jp   hl                                          ; $7ce1: $e9


	add  c                                           ; $7ce2: $81
	ld   sp, hl                                      ; $7ce3: $f9
	add  b                                           ; $7ce4: $80
	pop  af                                          ; $7ce5: $f1
	add  b                                           ; $7ce6: $80
	ld   sp, hl                                      ; $7ce7: $f9
	add  b                                           ; $7ce8: $80
	pop  af                                          ; $7ce9: $f1
	add  b                                           ; $7cea: $80
	jp   hl                                          ; $7ceb: $e9


	add  b                                           ; $7cec: $80
	pop  af                                          ; $7ced: $f1
	db   $10                                         ; $7cee: $10
	sub  b                                           ; $7cef: $90
	or   [hl]                                        ; $7cf0: $b6
	add  [hl]                                        ; $7cf1: $86
	or   [hl]                                        ; $7cf2: $b6
	add  d                                           ; $7cf3: $82
	or   [hl]                                        ; $7cf4: $b6
	add  b                                           ; $7cf5: $80
	or   [hl]                                        ; $7cf6: $b6
	and  b                                           ; $7cf7: $a0
	or   [hl]                                        ; $7cf8: $b6
	or   b                                           ; $7cf9: $b0
	or   [hl]                                        ; $7cfa: $b6
	or   b                                           ; $7cfb: $b0
	or   [hl]                                        ; $7cfc: $b6
	or   h                                           ; $7cfd: $b4
	or   [hl]                                        ; $7cfe: $b6
	rrca                                             ; $7cff: $0f
	add  e                                           ; $7d00: $83
	ret  nc                                          ; $7d01: $d0

	ld   a, [bc]                                     ; $7d02: $0a
	ld   d, b                                        ; $7d03: $50
	ret  nc                                          ; $7d04: $d0

	nop                                              ; $7d05: $00
	ret  nc                                          ; $7d06: $d0

	db   $10                                         ; $7d07: $10
	ret  nc                                          ; $7d08: $d0

	db   $10                                         ; $7d09: $10
	ret  nc                                          ; $7d0a: $d0

	db   $10                                         ; $7d0b: $10
	ret  nc                                          ; $7d0c: $d0

	add  e                                           ; $7d0d: $83
	adc  c                                           ; $7d0e: $89
	call z, $da82                                    ; $7d0f: $cc $82 $da
	add  b                                           ; $7d12: $80
	add  e                                           ; $7d13: $83
	add  b                                           ; $7d14: $80
	adc  a                                           ; $7d15: $8f
	add  b                                           ; $7d16: $80
	cp   a                                           ; $7d17: $bf
	add  b                                           ; $7d18: $80
	cp   l                                           ; $7d19: $bd
	inc  b                                           ; $7d1a: $04
	and  h                                           ; $7d1b: $a4
	and  a                                           ; $7d1c: $a7
	sub  e                                           ; $7d1d: $93
	sbc  a                                           ; $7d1e: $9f
	rrca                                             ; $7d1f: $0f
	add  d                                           ; $7d20: $82
	rst  $38                                         ; $7d21: $ff
	nop                                              ; $7d22: $00
	ld   de, $9180                                   ; $7d23: $11 $80 $91
	add  b                                           ; $7d26: $80
	ld   [hl], c                                     ; $7d27: $71
	nop                                              ; $7d28: $00
	ld   de, $f183                                   ; $7d29: $11 $83 $f1
	add  d                                           ; $7d2c: $82
	ld   sp, hl                                      ; $7d2d: $f9
	dec  b                                           ; $7d2e: $05
	ld   h, h                                        ; $7d2f: $64
	sbc  a                                           ; $7d30: $9f
	or   b                                           ; $7d31: $b0
	cp   [hl]                                        ; $7d32: $be
	cp   c                                           ; $7d33: $b9
	cp   l                                           ; $7d34: $bd
	add  b                                           ; $7d35: $80
	cp   e                                           ; $7d36: $bb
	add  b                                           ; $7d37: $80
	and  a                                           ; $7d38: $a7
	add  b                                           ; $7d39: $80
	nop                                              ; $7d3a: $00
	add  b                                           ; $7d3b: $80
	sbc  a                                           ; $7d3c: $9f
	add  b                                           ; $7d3d: $80
	cp   a                                           ; $7d3e: $bf
	add  b                                           ; $7d3f: $80
	ld   a, a                                        ; $7d40: $7f
	add  b                                           ; $7d41: $80
	nop                                              ; $7d42: $00
	add  h                                           ; $7d43: $84
	rst  $38                                         ; $7d44: $ff
	add  b                                           ; $7d45: $80
	nop                                              ; $7d46: $00
	add  h                                           ; $7d47: $84
	rst  $38                                         ; $7d48: $ff
	add  b                                           ; $7d49: $80
	nop                                              ; $7d4a: $00
	add  h                                           ; $7d4b: $84
	rst  $38                                         ; $7d4c: $ff
	add  b                                           ; $7d4d: $80
	nop                                              ; $7d4e: $00
	add  d                                           ; $7d4f: $82
	rst  $38                                         ; $7d50: $ff
	add  b                                           ; $7d51: $80
	rst  $30                                         ; $7d52: $f7
	add  b                                           ; $7d53: $80
	ld   bc, $fc80                                   ; $7d54: $01 $80 $fc
	add  b                                           ; $7d57: $80
	cp   $80                                         ; $7d58: $fe $80
	rst  $38                                         ; $7d5a: $ff
	add  b                                           ; $7d5b: $80
	nop                                              ; $7d5c: $00
	add  d                                           ; $7d5d: $82
	rst  $38                                         ; $7d5e: $ff
	add  b                                           ; $7d5f: $80
	call z, $ec82                                    ; $7d60: $cc $82 $ec
	add  b                                           ; $7d63: $80
	ld   l, h                                        ; $7d64: $6c
	add  b                                           ; $7d65: $80
	inc  l                                           ; $7d66: $2c
	add  b                                           ; $7d67: $80
	inc  c                                           ; $7d68: $0c
	add  b                                           ; $7d69: $80
	call z, $e480                                    ; $7d6a: $cc $80 $e4
	add  b                                           ; $7d6d: $80
	ld   b, a                                        ; $7d6e: $47
	add  b                                           ; $7d6f: $80
	ld   b, c                                        ; $7d70: $41
	add  b                                           ; $7d71: $80
	ld   b, [hl]                                     ; $7d72: $46
	add  b                                           ; $7d73: $80
	ld   c, a                                        ; $7d74: $4f
	add  b                                           ; $7d75: $80
	ld   [hl], a                                     ; $7d76: $77
	add  b                                           ; $7d77: $80
	ld   a, l                                        ; $7d78: $7d
	add  b                                           ; $7d79: $80
	ld   a, a                                        ; $7d7a: $7f
	add  b                                           ; $7d7b: $80
	ccf                                              ; $7d7c: $3f
	add  b                                           ; $7d7d: $80
	jp   hl                                          ; $7d7e: $e9


	add  b                                           ; $7d7f: $80
	pop  de                                          ; $7d80: $d1
	add  b                                           ; $7d81: $80
	ld   hl, $9180                                   ; $7d82: $21 $80 $91
	add  b                                           ; $7d85: $80
	pop  hl                                          ; $7d86: $e1
	add  b                                           ; $7d87: $80
	ld   sp, hl                                      ; $7d88: $f9
	add  b                                           ; $7d89: $80
	add  hl, sp                                      ; $7d8a: $39
	add  b                                           ; $7d8b: $80
	ret                                              ; $7d8c: $c9


	adc  [hl]                                        ; $7d8d: $8e
	or   [hl]                                        ; $7d8e: $b6
	ld   [bc], a                                     ; $7d8f: $02
	ld   e, a                                        ; $7d90: $5f
	ret  nc                                          ; $7d91: $d0

	ld   d, b                                        ; $7d92: $50
	adc  e                                           ; $7d93: $8b
	ret  nc                                          ; $7d94: $d0

	nop                                              ; $7d95: $00
	ldh  a, [$85]                                    ; $7d96: $f0 $85
	nop                                              ; $7d98: $00
	nop                                              ; $7d99: $00
	rst  $38                                         ; $7d9a: $ff
	add  e                                           ; $7d9b: $83
	nop                                              ; $7d9c: $00
	ld   [bc], a                                     ; $7d9d: $02
	ld   bc, $fe00                                   ; $7d9e: $01 $00 $fe
	add  l                                           ; $7da1: $85
	nop                                              ; $7da2: $00
	inc  b                                           ; $7da3: $04

jr_080_7da4:
	ld   a, e                                        ; $7da4: $7b
	add  h                                           ; $7da5: $84
	ccf                                              ; $7da6: $3f
	nop                                              ; $7da7: $00

jr_080_7da8:
	ret  nz                                          ; $7da8: $c0

	adc  c                                           ; $7da9: $89
	nop                                              ; $7daa: $00
	db   $10                                         ; $7dab: $10
	rst  $20                                         ; $7dac: $e7
	jr   @-$0e                                       ; $7dad: $18 $f0

	nop                                              ; $7daf: $00
	inc  c                                           ; $7db0: $0c
	nop                                              ; $7db1: $00
	ld   [bc], a                                     ; $7db2: $02
	nop                                              ; $7db3: $00
	ld   bc, $8000                                   ; $7db4: $01 $00 $80
	nop                                              ; $7db7: $00
	ld   b, b                                        ; $7db8: $40
	nop                                              ; $7db9: $00
	jr   nc, jr_080_7dbc                             ; $7dba: $30 $00

jr_080_7dbc:
	rrca                                             ; $7dbc: $0f
	add  l                                           ; $7dbd: $85
	nop                                              ; $7dbe: $00
	ld   [$00fc], sp                                 ; $7dbf: $08 $fc $00
	inc  b                                           ; $7dc2: $04
	nop                                              ; $7dc3: $00
	ld   [rROMB1], sp                                 ; $7dc4: $08 $00 $30
	nop                                              ; $7dc7: $00
	ret  nz                                          ; $7dc8: $c0

	add  a                                           ; $7dc9: $87
	nop                                              ; $7dca: $00
	ld   [$001f], sp                                 ; $7dcb: $08 $1f $00
	jr   nz, jr_080_7dd0                             ; $7dce: $20 $00

jr_080_7dd0:
	jr   nz, jr_080_7dd2                             ; $7dd0: $20 $00

jr_080_7dd2:
	stop                                             ; $7dd2: $10 $00
	rrca                                             ; $7dd4: $0f
	add  l                                           ; $7dd5: $85
	nop                                              ; $7dd6: $00
	add  hl, bc                                      ; $7dd7: $09
	ret  nz                                          ; $7dd8: $c0

	nop                                              ; $7dd9: $00
	jr   nz, jr_080_7ddc                             ; $7dda: $20 $00

jr_080_7ddc:
	jr   nz, jr_080_7dde                             ; $7ddc: $20 $00

jr_080_7dde:
	ld   b, b                                        ; $7dde: $40
	nop                                              ; $7ddf: $00
	add  c                                           ; $7de0: $81
	ld   bc, $0082                                   ; $7de1: $01 $82 $00
	nop                                              ; $7de4: $00
	cp   $87                                         ; $7de5: $fe $87
	add  e                                           ; $7de7: $83
	add  h                                           ; $7de8: $84
	add  d                                           ; $7de9: $82
	ld   bc, $f964                                   ; $7dea: $01 $64 $f9
	add  b                                           ; $7ded: $80
	reti                                             ; $7dee: $d9


	add  b                                           ; $7def: $80
	sbc  c                                           ; $7df0: $99
	add  d                                           ; $7df1: $82
	rra                                              ; $7df2: $1f
	add  d                                           ; $7df3: $82
	add  hl, de                                      ; $7df4: $19
	add  b                                           ; $7df5: $80
	rra                                              ; $7df6: $1f
	ld   bc, $3fd0                                   ; $7df7: $01 $d0 $3f
	add  b                                           ; $7dfa: $80
	scf                                              ; $7dfb: $37
	add  b                                           ; $7dfc: $80
	inc  sp                                          ; $7dfd: $33
	add  d                                           ; $7dfe: $82
	pop  af                                          ; $7dff: $f1
	add  d                                           ; $7e00: $82
	jr   nc, @-$7d                                   ; $7e01: $30 $81

	ldh  a, [$89]                                    ; $7e03: $f0 $89
	add  d                                           ; $7e05: $82
	dec  b                                           ; $7e06: $05
	adc  l                                           ; $7e07: $8d
	add  b                                           ; $7e08: $80
	ldh  a, [$80]                                    ; $7e09: $f0 $80
	ld   sp, hl                                      ; $7e0b: $f9
	add  hl, de                                      ; $7e0c: $19
	add  b                                           ; $7e0d: $80
	rra                                              ; $7e0e: $1f
	add  b                                           ; $7e0f: $80
	add  hl, de                                      ; $7e10: $19
	add  b                                           ; $7e11: $80
	rra                                              ; $7e12: $1f
	add  b                                           ; $7e13: $80
	add  hl, de                                      ; $7e14: $19
	add  b                                           ; $7e15: $80
	rra                                              ; $7e16: $1f
	ld   bc, $1fff                                   ; $7e17: $01 $ff $1f
	add  b                                           ; $7e1a: $80
	nop                                              ; $7e1b: $00
	ld   bc, $303f                                   ; $7e1c: $01 $3f $30
	add  b                                           ; $7e1f: $80
	ldh  a, [$80]                                    ; $7e20: $f0 $80
	jr   nc, jr_080_7da4                             ; $7e22: $30 $80

	ldh  a, [$80]                                    ; $7e24: $f0 $80
	jr   nc, jr_080_7da8                             ; $7e26: $30 $80

	ldh  a, [rSB]                                    ; $7e28: $f0 $01
	rst  $38                                         ; $7e2a: $ff
	ldh  a, [$80]                                    ; $7e2b: $f0 $80
	nop                                              ; $7e2d: $00
	nop                                              ; $7e2e: $00
	rst  $38                                         ; $7e2f: $ff
	rst  $38                                         ; $7e30: $ff
	nop                                              ; $7e31: $00
	rst  $38                                         ; $7e32: $ff
	nop                                              ; $7e33: $00
	rst  $38                                         ; $7e34: $ff
	nop                                              ; $7e35: $00
	rst  $38                                         ; $7e36: $ff
	nop                                              ; $7e37: $00
	rst  $38                                         ; $7e38: $ff
	nop                                              ; $7e39: $00
	rst  $38                                         ; $7e3a: $ff
	nop                                              ; $7e3b: $00
	rst  $38                                         ; $7e3c: $ff
	nop                                              ; $7e3d: $00
	rst  $38                                         ; $7e3e: $ff
	nop                                              ; $7e3f: $00
	rst  $38                                         ; $7e40: $ff
	nop                                              ; $7e41: $00
	db   $e4                                         ; $7e42: $e4
	nop                                              ; $7e43: $00
	nop                                              ; $7e44: $00
	nop                                              ; $7e45: $00
	nop                                              ; $7e46: $00
	nop                                              ; $7e47: $00
	nop                                              ; $7e48: $00
	nop                                              ; $7e49: $00
	nop                                              ; $7e4a: $00
	nop                                              ; $7e4b: $00
	nop                                              ; $7e4c: $00
	nop                                              ; $7e4d: $00
	nop                                              ; $7e4e: $00
	nop                                              ; $7e4f: $00
	nop                                              ; $7e50: $00
	nop                                              ; $7e51: $00
	nop                                              ; $7e52: $00
	nop                                              ; $7e53: $00
	nop                                              ; $7e54: $00
	nop                                              ; $7e55: $00
	nop                                              ; $7e56: $00
	nop                                              ; $7e57: $00
	nop                                              ; $7e58: $00
	nop                                              ; $7e59: $00
	nop                                              ; $7e5a: $00
	nop                                              ; $7e5b: $00
	nop                                              ; $7e5c: $00
	nop                                              ; $7e5d: $00
	nop                                              ; $7e5e: $00
	nop                                              ; $7e5f: $00
	nop                                              ; $7e60: $00
	nop                                              ; $7e61: $00
	nop                                              ; $7e62: $00
	nop                                              ; $7e63: $00
	nop                                              ; $7e64: $00
	nop                                              ; $7e65: $00
	nop                                              ; $7e66: $00
	nop                                              ; $7e67: $00
	nop                                              ; $7e68: $00
	nop                                              ; $7e69: $00
	nop                                              ; $7e6a: $00
	nop                                              ; $7e6b: $00
	nop                                              ; $7e6c: $00
	nop                                              ; $7e6d: $00
	nop                                              ; $7e6e: $00
	nop                                              ; $7e6f: $00
	nop                                              ; $7e70: $00
	nop                                              ; $7e71: $00
	nop                                              ; $7e72: $00
	nop                                              ; $7e73: $00
	nop                                              ; $7e74: $00
	nop                                              ; $7e75: $00
	nop                                              ; $7e76: $00
	nop                                              ; $7e77: $00
	nop                                              ; $7e78: $00
	nop                                              ; $7e79: $00
	nop                                              ; $7e7a: $00
	nop                                              ; $7e7b: $00
	nop                                              ; $7e7c: $00
	nop                                              ; $7e7d: $00
	nop                                              ; $7e7e: $00
	nop                                              ; $7e7f: $00
	nop                                              ; $7e80: $00
	nop                                              ; $7e81: $00
	nop                                              ; $7e82: $00
	nop                                              ; $7e83: $00
	nop                                              ; $7e84: $00
	nop                                              ; $7e85: $00
	nop                                              ; $7e86: $00
	nop                                              ; $7e87: $00
	nop                                              ; $7e88: $00
	nop                                              ; $7e89: $00
	nop                                              ; $7e8a: $00
	nop                                              ; $7e8b: $00
	nop                                              ; $7e8c: $00
	nop                                              ; $7e8d: $00
	nop                                              ; $7e8e: $00
	nop                                              ; $7e8f: $00
	nop                                              ; $7e90: $00
	nop                                              ; $7e91: $00
	nop                                              ; $7e92: $00
	nop                                              ; $7e93: $00
	nop                                              ; $7e94: $00
	nop                                              ; $7e95: $00
	nop                                              ; $7e96: $00
	nop                                              ; $7e97: $00
	nop                                              ; $7e98: $00
	nop                                              ; $7e99: $00
	nop                                              ; $7e9a: $00
	nop                                              ; $7e9b: $00
	nop                                              ; $7e9c: $00
	nop                                              ; $7e9d: $00
	nop                                              ; $7e9e: $00
	nop                                              ; $7e9f: $00
	nop                                              ; $7ea0: $00
	nop                                              ; $7ea1: $00
	nop                                              ; $7ea2: $00
	nop                                              ; $7ea3: $00
	nop                                              ; $7ea4: $00
	nop                                              ; $7ea5: $00
	nop                                              ; $7ea6: $00
	nop                                              ; $7ea7: $00
	nop                                              ; $7ea8: $00
	nop                                              ; $7ea9: $00
	nop                                              ; $7eaa: $00
	nop                                              ; $7eab: $00
	nop                                              ; $7eac: $00
	nop                                              ; $7ead: $00
	nop                                              ; $7eae: $00
	nop                                              ; $7eaf: $00
	nop                                              ; $7eb0: $00
	nop                                              ; $7eb1: $00
	nop                                              ; $7eb2: $00
	nop                                              ; $7eb3: $00
	nop                                              ; $7eb4: $00
	nop                                              ; $7eb5: $00
	nop                                              ; $7eb6: $00
	nop                                              ; $7eb7: $00
	nop                                              ; $7eb8: $00
	nop                                              ; $7eb9: $00
	nop                                              ; $7eba: $00
	nop                                              ; $7ebb: $00
	nop                                              ; $7ebc: $00
	nop                                              ; $7ebd: $00
	nop                                              ; $7ebe: $00
	nop                                              ; $7ebf: $00
	nop                                              ; $7ec0: $00
	nop                                              ; $7ec1: $00
	nop                                              ; $7ec2: $00
	nop                                              ; $7ec3: $00
	nop                                              ; $7ec4: $00
	nop                                              ; $7ec5: $00
	nop                                              ; $7ec6: $00
	nop                                              ; $7ec7: $00
	nop                                              ; $7ec8: $00
	nop                                              ; $7ec9: $00
	nop                                              ; $7eca: $00
	nop                                              ; $7ecb: $00
	nop                                              ; $7ecc: $00
	nop                                              ; $7ecd: $00
	nop                                              ; $7ece: $00
	nop                                              ; $7ecf: $00
	nop                                              ; $7ed0: $00
	nop                                              ; $7ed1: $00
	nop                                              ; $7ed2: $00
	nop                                              ; $7ed3: $00
	nop                                              ; $7ed4: $00
	nop                                              ; $7ed5: $00
	nop                                              ; $7ed6: $00
	nop                                              ; $7ed7: $00
	nop                                              ; $7ed8: $00
	nop                                              ; $7ed9: $00
	nop                                              ; $7eda: $00
	nop                                              ; $7edb: $00
	nop                                              ; $7edc: $00
	nop                                              ; $7edd: $00
	nop                                              ; $7ede: $00
	nop                                              ; $7edf: $00
	nop                                              ; $7ee0: $00
	nop                                              ; $7ee1: $00
	nop                                              ; $7ee2: $00
	nop                                              ; $7ee3: $00
	nop                                              ; $7ee4: $00
	nop                                              ; $7ee5: $00
	nop                                              ; $7ee6: $00
	nop                                              ; $7ee7: $00
	nop                                              ; $7ee8: $00
	nop                                              ; $7ee9: $00
	nop                                              ; $7eea: $00
	nop                                              ; $7eeb: $00
	nop                                              ; $7eec: $00
	nop                                              ; $7eed: $00
	nop                                              ; $7eee: $00
	nop                                              ; $7eef: $00
	nop                                              ; $7ef0: $00
	nop                                              ; $7ef1: $00
	nop                                              ; $7ef2: $00
	nop                                              ; $7ef3: $00
	nop                                              ; $7ef4: $00
	nop                                              ; $7ef5: $00
	nop                                              ; $7ef6: $00
	nop                                              ; $7ef7: $00
	nop                                              ; $7ef8: $00
	nop                                              ; $7ef9: $00
	nop                                              ; $7efa: $00
	nop                                              ; $7efb: $00
	nop                                              ; $7efc: $00
	nop                                              ; $7efd: $00
	nop                                              ; $7efe: $00
	nop                                              ; $7eff: $00
	nop                                              ; $7f00: $00
	nop                                              ; $7f01: $00
	nop                                              ; $7f02: $00
	nop                                              ; $7f03: $00
	nop                                              ; $7f04: $00
	nop                                              ; $7f05: $00
	nop                                              ; $7f06: $00
	nop                                              ; $7f07: $00
	nop                                              ; $7f08: $00
	nop                                              ; $7f09: $00
	nop                                              ; $7f0a: $00
	nop                                              ; $7f0b: $00
	inc  bc                                          ; $7f0c: $03
	inc  bc                                          ; $7f0d: $03
	inc  bc                                          ; $7f0e: $03
	inc  bc                                          ; $7f0f: $03
	inc  bc                                          ; $7f10: $03
	inc  bc                                          ; $7f11: $03
	inc  bc                                          ; $7f12: $03
	inc  bc                                          ; $7f13: $03
	inc  bc                                          ; $7f14: $03
	inc  bc                                          ; $7f15: $03
	inc  bc                                          ; $7f16: $03
	inc  bc                                          ; $7f17: $03
	inc  bc                                          ; $7f18: $03
	inc  bc                                          ; $7f19: $03
	inc  bc                                          ; $7f1a: $03
	inc  bc                                          ; $7f1b: $03
	inc  bc                                          ; $7f1c: $03
	inc  bc                                          ; $7f1d: $03
	inc  bc                                          ; $7f1e: $03
	inc  bc                                          ; $7f1f: $03
	inc  bc                                          ; $7f20: $03
	inc  bc                                          ; $7f21: $03
	inc  bc                                          ; $7f22: $03
	inc  bc                                          ; $7f23: $03
	inc  bc                                          ; $7f24: $03
	inc  bc                                          ; $7f25: $03
	inc  bc                                          ; $7f26: $03
	inc  bc                                          ; $7f27: $03
	inc  bc                                          ; $7f28: $03
	inc  bc                                          ; $7f29: $03
	inc  bc                                          ; $7f2a: $03
	inc  bc                                          ; $7f2b: $03
	inc  bc                                          ; $7f2c: $03
	inc  bc                                          ; $7f2d: $03
	inc  bc                                          ; $7f2e: $03
	inc  bc                                          ; $7f2f: $03
	inc  bc                                          ; $7f30: $03
	inc  bc                                          ; $7f31: $03
	inc  bc                                          ; $7f32: $03
	inc  bc                                          ; $7f33: $03
	inc  bc                                          ; $7f34: $03
	inc  bc                                          ; $7f35: $03
	inc  bc                                          ; $7f36: $03
	inc  bc                                          ; $7f37: $03
	inc  bc                                          ; $7f38: $03
	inc  bc                                          ; $7f39: $03
	inc  bc                                          ; $7f3a: $03
	inc  bc                                          ; $7f3b: $03
	inc  bc                                          ; $7f3c: $03
	inc  bc                                          ; $7f3d: $03
	inc  bc                                          ; $7f3e: $03
	inc  bc                                          ; $7f3f: $03
	inc  bc                                          ; $7f40: $03
	inc  bc                                          ; $7f41: $03
	inc  bc                                          ; $7f42: $03
	inc  bc                                          ; $7f43: $03
	inc  bc                                          ; $7f44: $03
	inc  bc                                          ; $7f45: $03
	inc  bc                                          ; $7f46: $03
	inc  bc                                          ; $7f47: $03
	inc  bc                                          ; $7f48: $03
	inc  bc                                          ; $7f49: $03
	inc  bc                                          ; $7f4a: $03
	inc  bc                                          ; $7f4b: $03
	inc  bc                                          ; $7f4c: $03
	inc  bc                                          ; $7f4d: $03
	inc  bc                                          ; $7f4e: $03
	inc  bc                                          ; $7f4f: $03
	inc  bc                                          ; $7f50: $03
	inc  bc                                          ; $7f51: $03
	inc  bc                                          ; $7f52: $03
	inc  bc                                          ; $7f53: $03
	inc  bc                                          ; $7f54: $03
	inc  bc                                          ; $7f55: $03
	inc  bc                                          ; $7f56: $03
	inc  bc                                          ; $7f57: $03
	inc  bc                                          ; $7f58: $03
	inc  bc                                          ; $7f59: $03
	inc  bc                                          ; $7f5a: $03
	inc  bc                                          ; $7f5b: $03
	inc  bc                                          ; $7f5c: $03
	inc  bc                                          ; $7f5d: $03
	inc  bc                                          ; $7f5e: $03
	inc  bc                                          ; $7f5f: $03
	inc  bc                                          ; $7f60: $03
	inc  bc                                          ; $7f61: $03
	inc  bc                                          ; $7f62: $03
	inc  bc                                          ; $7f63: $03
	inc  bc                                          ; $7f64: $03
	inc  bc                                          ; $7f65: $03
	inc  bc                                          ; $7f66: $03
	inc  bc                                          ; $7f67: $03
	inc  bc                                          ; $7f68: $03
	inc  bc                                          ; $7f69: $03
	inc  bc                                          ; $7f6a: $03
	inc  bc                                          ; $7f6b: $03
	inc  bc                                          ; $7f6c: $03
	inc  bc                                          ; $7f6d: $03
	inc  bc                                          ; $7f6e: $03
	inc  bc                                          ; $7f6f: $03
	inc  bc                                          ; $7f70: $03
	inc  bc                                          ; $7f71: $03
	inc  bc                                          ; $7f72: $03
	inc  bc                                          ; $7f73: $03
	inc  bc                                          ; $7f74: $03
	inc  bc                                          ; $7f75: $03
	inc  bc                                          ; $7f76: $03
	inc  bc                                          ; $7f77: $03
	inc  bc                                          ; $7f78: $03
	inc  bc                                          ; $7f79: $03
	inc  bc                                          ; $7f7a: $03
	inc  bc                                          ; $7f7b: $03
	inc  bc                                          ; $7f7c: $03
	inc  bc                                          ; $7f7d: $03
	inc  bc                                          ; $7f7e: $03
	inc  bc                                          ; $7f7f: $03
	inc  bc                                          ; $7f80: $03
	inc  bc                                          ; $7f81: $03
	inc  bc                                          ; $7f82: $03
	inc  bc                                          ; $7f83: $03
	inc  bc                                          ; $7f84: $03
	inc  bc                                          ; $7f85: $03
	inc  bc                                          ; $7f86: $03
	inc  bc                                          ; $7f87: $03
	inc  bc                                          ; $7f88: $03
	inc  bc                                          ; $7f89: $03
	inc  bc                                          ; $7f8a: $03
	inc  bc                                          ; $7f8b: $03
	inc  bc                                          ; $7f8c: $03
	inc  bc                                          ; $7f8d: $03
	inc  bc                                          ; $7f8e: $03
	inc  bc                                          ; $7f8f: $03
	inc  bc                                          ; $7f90: $03
	inc  bc                                          ; $7f91: $03
	inc  bc                                          ; $7f92: $03
	inc  bc                                          ; $7f93: $03
	inc  bc                                          ; $7f94: $03
	inc  bc                                          ; $7f95: $03
	inc  bc                                          ; $7f96: $03
	inc  bc                                          ; $7f97: $03
	inc  bc                                          ; $7f98: $03
	inc  bc                                          ; $7f99: $03
	inc  bc                                          ; $7f9a: $03
	inc  bc                                          ; $7f9b: $03
	inc  bc                                          ; $7f9c: $03
	inc  bc                                          ; $7f9d: $03
	inc  bc                                          ; $7f9e: $03
	inc  bc                                          ; $7f9f: $03
	inc  bc                                          ; $7fa0: $03
	inc  bc                                          ; $7fa1: $03
	inc  bc                                          ; $7fa2: $03
	inc  bc                                          ; $7fa3: $03
	inc  bc                                          ; $7fa4: $03
	inc  bc                                          ; $7fa5: $03
	inc  bc                                          ; $7fa6: $03
	inc  bc                                          ; $7fa7: $03
	inc  bc                                          ; $7fa8: $03
	inc  bc                                          ; $7fa9: $03
	inc  bc                                          ; $7faa: $03
	inc  bc                                          ; $7fab: $03
	inc  bc                                          ; $7fac: $03
	inc  bc                                          ; $7fad: $03
	inc  bc                                          ; $7fae: $03
	inc  bc                                          ; $7faf: $03
	inc  bc                                          ; $7fb0: $03
	inc  bc                                          ; $7fb1: $03
	inc  bc                                          ; $7fb2: $03
	inc  bc                                          ; $7fb3: $03
	inc  bc                                          ; $7fb4: $03
	inc  bc                                          ; $7fb5: $03
	inc  bc                                          ; $7fb6: $03
	inc  bc                                          ; $7fb7: $03
	inc  bc                                          ; $7fb8: $03
	inc  bc                                          ; $7fb9: $03
	inc  bc                                          ; $7fba: $03
	inc  bc                                          ; $7fbb: $03
	inc  bc                                          ; $7fbc: $03
	inc  bc                                          ; $7fbd: $03
	inc  bc                                          ; $7fbe: $03
	inc  bc                                          ; $7fbf: $03
	inc  bc                                          ; $7fc0: $03
	inc  bc                                          ; $7fc1: $03
	inc  bc                                          ; $7fc2: $03
	inc  bc                                          ; $7fc3: $03
	inc  bc                                          ; $7fc4: $03
	inc  bc                                          ; $7fc5: $03
	inc  bc                                          ; $7fc6: $03
	inc  bc                                          ; $7fc7: $03
	inc  bc                                          ; $7fc8: $03
	inc  bc                                          ; $7fc9: $03
	inc  bc                                          ; $7fca: $03
	inc  bc                                          ; $7fcb: $03
	inc  bc                                          ; $7fcc: $03
	inc  bc                                          ; $7fcd: $03
	inc  bc                                          ; $7fce: $03
	inc  bc                                          ; $7fcf: $03
	inc  bc                                          ; $7fd0: $03
	inc  bc                                          ; $7fd1: $03
	inc  bc                                          ; $7fd2: $03
	inc  bc                                          ; $7fd3: $03
	stop                                             ; $7fd4: $10 $00
	rst  $38                                         ; $7fd6: $ff
	nop                                              ; $7fd7: $00
	rst  $38                                         ; $7fd8: $ff
	nop                                              ; $7fd9: $00
	rst  $38                                         ; $7fda: $ff
	nop                                              ; $7fdb: $00
	rst  $38                                         ; $7fdc: $ff
	nop                                              ; $7fdd: $00
	rst  $38                                         ; $7fde: $ff
	nop                                              ; $7fdf: $00
	rst  $38                                         ; $7fe0: $ff
	nop                                              ; $7fe1: $00
	rst  $38                                         ; $7fe2: $ff
	nop                                              ; $7fe3: $00
	rst  $38                                         ; $7fe4: $ff
	nop                                              ; $7fe5: $00
	rst  $38                                         ; $7fe6: $ff
	nop                                              ; $7fe7: $00
	rst  $38                                         ; $7fe8: $ff
	nop                                              ; $7fe9: $00
	rst  $38                                         ; $7fea: $ff
	nop                                              ; $7feb: $00
	rst  $38                                         ; $7fec: $ff
	nop                                              ; $7fed: $00
	rst  $38                                         ; $7fee: $ff
	nop                                              ; $7fef: $00
	rst  $38                                         ; $7ff0: $ff
	nop                                              ; $7ff1: $00
	rst  $38                                         ; $7ff2: $ff
	nop                                              ; $7ff3: $00
	rst  $28                                         ; $7ff4: $ef
	nop                                              ; $7ff5: $00
	nop                                              ; $7ff6: $00
	nop                                              ; $7ff7: $00
	nop                                              ; $7ff8: $00
	nop                                              ; $7ff9: $00
	nop                                              ; $7ffa: $00
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
