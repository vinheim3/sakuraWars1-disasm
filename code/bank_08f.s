; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $08f", ROMX[$4000], BANK[$8f]

	ret  nz                                          ; $4000: $c0

	ret  nz                                          ; $4001: $c0

	ldh  a, [$b0]                                    ; $4002: $f0 $b0
	ld   a, h                                        ; $4004: $7c
	ld   c, h                                        ; $4005: $4c
	ld   a, a                                        ; $4006: $7f
	ld   b, e                                        ; $4007: $43
	ld   a, $21                                      ; $4008: $3e $21
	dec  a                                           ; $400a: $3d
	ld   [hl+], a                                    ; $400b: $22
	ld   a, [de]                                     ; $400c: $1a
	dec  d                                           ; $400d: $15
	dec  d                                           ; $400e: $15
	ld   a, [de]                                     ; $400f: $1a
	ld   a, [bc]                                     ; $4010: $0a
	dec  c                                           ; $4011: $0d
	inc  c                                           ; $4012: $0c
	dec  bc                                          ; $4013: $0b
	inc  b                                           ; $4014: $04
	rlca                                             ; $4015: $07
	inc  b                                           ; $4016: $04
	rlca                                             ; $4017: $07
	ld   [bc], a                                     ; $4018: $02
	inc  bc                                          ; $4019: $03
	ld   [bc], a                                     ; $401a: $02
	inc  bc                                          ; $401b: $03
	ld   bc, $0001                                   ; $401c: $01 $01 $00
	nop                                              ; $401f: $00
	nop                                              ; $4020: $00
	nop                                              ; $4021: $00
	nop                                              ; $4022: $00
	nop                                              ; $4023: $00
	nop                                              ; $4024: $00
	nop                                              ; $4025: $00
	nop                                              ; $4026: $00
	nop                                              ; $4027: $00
	ret  nz                                          ; $4028: $c0

	ret  nz                                          ; $4029: $c0

	ld   [hl], b                                     ; $402a: $70
	or   b                                           ; $402b: $b0
	adc  h                                           ; $402c: $8c
	ld   a, h                                        ; $402d: $7c
	ld   [bc], a                                     ; $402e: $02
	cp   $04                                         ; $402f: $fe $04
	db   $fc                                         ; $4031: $fc
	ld   [$10f8], sp                                 ; $4032: $08 $f8 $10
	ldh  a, [rAUD4LEN]                               ; $4035: $f0 $20
	ldh  [rLCDC], a                                  ; $4037: $e0 $40
	ret  nz                                          ; $4039: $c0

	add  b                                           ; $403a: $80
	add  b                                           ; $403b: $80
	nop                                              ; $403c: $00
	nop                                              ; $403d: $00
	nop                                              ; $403e: $00
	nop                                              ; $403f: $00
	ret  nz                                          ; $4040: $c0

	ret  nz                                          ; $4041: $c0

	or   b                                           ; $4042: $b0
	ldh  a, [$4c]                                    ; $4043: $f0 $4c
	ld   a, h                                        ; $4045: $7c

jr_08f_4046:
	ld   b, e                                        ; $4046: $43
	ld   a, a                                        ; $4047: $7f
	jr   nz, @+$41                                   ; $4048: $20 $3f

	jr   nz, jr_08f_408b                             ; $404a: $20 $3f

	db   $10                                         ; $404c: $10
	rra                                              ; $404d: $1f
	db   $10                                         ; $404e: $10
	rra                                              ; $404f: $1f
	ld   [$080f], sp                                 ; $4050: $08 $0f $08
	rrca                                             ; $4053: $0f
	inc  b                                           ; $4054: $04
	rlca                                             ; $4055: $07
	inc  b                                           ; $4056: $04
	rlca                                             ; $4057: $07
	ld   [bc], a                                     ; $4058: $02
	inc  bc                                          ; $4059: $03
	ld   [bc], a                                     ; $405a: $02
	inc  bc                                          ; $405b: $03

jr_08f_405c:
	ld   bc, $0001                                   ; $405c: $01 $01 $00
	nop                                              ; $405f: $00
	nop                                              ; $4060: $00
	nop                                              ; $4061: $00
	nop                                              ; $4062: $00
	nop                                              ; $4063: $00
	nop                                              ; $4064: $00
	nop                                              ; $4065: $00
	nop                                              ; $4066: $00
	nop                                              ; $4067: $00
	ret  nz                                          ; $4068: $c0

	ret  nz                                          ; $4069: $c0

	jr   nc, jr_08f_405c                             ; $406a: $30 $f0

	inc  c                                           ; $406c: $0c
	db   $fc                                         ; $406d: $fc
	ld   [bc], a                                     ; $406e: $02
	cp   $0c                                         ; $406f: $fe $0c
	db   $f4                                         ; $4071: $f4
	jr   jr_08f_405c                                 ; $4072: $18 $e8

	jr   nc, jr_08f_4046                             ; $4074: $30 $d0

	ld   h, b                                        ; $4076: $60
	and  b                                           ; $4077: $a0
	ret  nz                                          ; $4078: $c0

	ld   b, b                                        ; $4079: $40
	add  b                                           ; $407a: $80
	add  b                                           ; $407b: $80
	nop                                              ; $407c: $00
	nop                                              ; $407d: $00
	nop                                              ; $407e: $00
	nop                                              ; $407f: $00
	ret  nz                                          ; $4080: $c0

	ret  nz                                          ; $4081: $c0

	or   b                                           ; $4082: $b0
	ldh  a, [$4c]                                    ; $4083: $f0 $4c
	ld   a, h                                        ; $4085: $7c
	ld   b, e                                        ; $4086: $43
	ld   a, a                                        ; $4087: $7f
	ld   hl, $223e                                   ; $4088: $21 $3e $22

jr_08f_408b:
	dec  a                                           ; $408b: $3d
	dec  d                                           ; $408c: $15
	ld   a, [de]                                     ; $408d: $1a
	ld   a, [de]                                     ; $408e: $1a
	dec  d                                           ; $408f: $15
	dec  c                                           ; $4090: $0d
	ld   a, [bc]                                     ; $4091: $0a
	dec  bc                                          ; $4092: $0b
	inc  c                                           ; $4093: $0c
	rlca                                             ; $4094: $07
	inc  b                                           ; $4095: $04
	rlca                                             ; $4096: $07

jr_08f_4097:
	inc  b                                           ; $4097: $04
	inc  bc                                          ; $4098: $03
	ld   [bc], a                                     ; $4099: $02
	inc  bc                                          ; $409a: $03
	ld   [bc], a                                     ; $409b: $02
	ld   bc, $0001                                   ; $409c: $01 $01 $00
	nop                                              ; $409f: $00
	nop                                              ; $40a0: $00
	nop                                              ; $40a1: $00
	nop                                              ; $40a2: $00
	nop                                              ; $40a3: $00
	nop                                              ; $40a4: $00
	nop                                              ; $40a5: $00
	nop                                              ; $40a6: $00
	nop                                              ; $40a7: $00
	ret  nz                                          ; $40a8: $c0

	ret  nz                                          ; $40a9: $c0

	or   b                                           ; $40aa: $b0
	ld   [hl], b                                     ; $40ab: $70
	ld   a, h                                        ; $40ac: $7c
	adc  h                                           ; $40ad: $8c
	cp   $02                                         ; $40ae: $fe $02
	db   $fc                                         ; $40b0: $fc
	inc  b                                           ; $40b1: $04
	ld   hl, sp+$08                                  ; $40b2: $f8 $08
	ldh  a, [rAUD1SWEEP]                             ; $40b4: $f0 $10
	ldh  [rAUD4LEN], a                               ; $40b6: $e0 $20
	ret  nz                                          ; $40b8: $c0

	ld   b, b                                        ; $40b9: $40
	add  b                                           ; $40ba: $80
	add  b                                           ; $40bb: $80
	nop                                              ; $40bc: $00
	nop                                              ; $40bd: $00
	nop                                              ; $40be: $00
	nop                                              ; $40bf: $00
	ret  nz                                          ; $40c0: $c0

	ret  nz                                          ; $40c1: $c0

	ldh  a, [$b0]                                    ; $40c2: $f0 $b0
	ld   a, h                                        ; $40c4: $7c
	ld   c, h                                        ; $40c5: $4c
	ld   a, a                                        ; $40c6: $7f
	ld   b, e                                        ; $40c7: $43
	ccf                                              ; $40c8: $3f
	jr   nz, @+$41                                   ; $40c9: $20 $3f

	jr   nz, jr_08f_40ec                             ; $40cb: $20 $1f

	db   $10                                         ; $40cd: $10
	rra                                              ; $40ce: $1f
	db   $10                                         ; $40cf: $10
	rrca                                             ; $40d0: $0f
	ld   [$080f], sp                                 ; $40d1: $08 $0f $08
	rlca                                             ; $40d4: $07
	inc  b                                           ; $40d5: $04
	rlca                                             ; $40d6: $07
	inc  b                                           ; $40d7: $04
	inc  bc                                          ; $40d8: $03
	ld   [bc], a                                     ; $40d9: $02
	inc  bc                                          ; $40da: $03
	ld   [bc], a                                     ; $40db: $02
	ld   bc, $0001                                   ; $40dc: $01 $01 $00
	nop                                              ; $40df: $00
	nop                                              ; $40e0: $00
	nop                                              ; $40e1: $00
	nop                                              ; $40e2: $00
	nop                                              ; $40e3: $00
	nop                                              ; $40e4: $00
	nop                                              ; $40e5: $00
	nop                                              ; $40e6: $00
	nop                                              ; $40e7: $00
	ret  nz                                          ; $40e8: $c0

	ret  nz                                          ; $40e9: $c0

	ldh  a, [$30]                                    ; $40ea: $f0 $30

jr_08f_40ec:
	db   $fc                                         ; $40ec: $fc
	inc  c                                           ; $40ed: $0c
	cp   $02                                         ; $40ee: $fe $02
	db   $f4                                         ; $40f0: $f4
	inc  c                                           ; $40f1: $0c
	add  sp, $18                                     ; $40f2: $e8 $18
	ret  nc                                          ; $40f4: $d0

	jr   nc, jr_08f_4097                             ; $40f5: $30 $a0

	ld   h, b                                        ; $40f7: $60
	ld   b, b                                        ; $40f8: $40
	ret  nz                                          ; $40f9: $c0

	add  b                                           ; $40fa: $80
	add  b                                           ; $40fb: $80
	nop                                              ; $40fc: $00
	nop                                              ; $40fd: $00
	nop                                              ; $40fe: $00
	nop                                              ; $40ff: $00
	ld   bc, $0701                                   ; $4100: $01 $01 $07
	ld   b, $1f                                      ; $4103: $06 $1f
	jr   jr_08f_4146                                 ; $4105: $18 $3f

	jr   nc, jr_08f_4118                             ; $4107: $30 $0f

	ld   [$080f], sp                                 ; $4109: $08 $0f $08
	rrca                                             ; $410c: $0f
	ld   [$7f7e], sp                                 ; $410d: $08 $7e $7f
	ld   b, e                                        ; $4110: $43
	ld   a, a                                        ; $4111: $7f
	ld   b, e                                        ; $4112: $43
	ld   a, a                                        ; $4113: $7f
	ld   b, b                                        ; $4114: $40
	ld   a, a                                        ; $4115: $7f
	ld   b, b                                        ; $4116: $40
	ld   a, a                                        ; $4117: $7f

jr_08f_4118:
	ld   b, b                                        ; $4118: $40
	ld   a, a                                        ; $4119: $7f
	ld   b, b                                        ; $411a: $40
	ld   a, a                                        ; $411b: $7f
	ld   a, a                                        ; $411c: $7f
	ld   a, a                                        ; $411d: $7f
	nop                                              ; $411e: $00
	nop                                              ; $411f: $00
	add  b                                           ; $4120: $80
	add  b                                           ; $4121: $80
	ldh  [$60], a                                    ; $4122: $e0 $60
	ld   hl, sp+$18                                  ; $4124: $f8 $18
	db   $fc                                         ; $4126: $fc
	inc  c                                           ; $4127: $0c
	ldh  a, [rAUD1SWEEP]                             ; $4128: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $412a: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $412c: $f0 $10
	db   $10                                         ; $412e: $10
	ldh  a, [$f0]                                    ; $412f: $f0 $f0
	ldh  a, [$e0]                                    ; $4131: $f0 $e0
	ldh  [rAUD4LEN], a                               ; $4133: $e0 $20
	ldh  [$3e], a                                    ; $4135: $e0 $3e
	cp   $02                                         ; $4137: $fe $02
	cp   $02                                         ; $4139: $fe $02
	cp   $fe                                         ; $413b: $fe $fe
	cp   $00                                         ; $413d: $fe $00
	nop                                              ; $413f: $00
	ld   bc, $0601                                   ; $4140: $01 $01 $06
	rlca                                             ; $4143: $07
	jr   jr_08f_4165                                 ; $4144: $18 $1f

jr_08f_4146:
	jr   nc, @+$41                                   ; $4146: $30 $3f

	ld   [$080f], sp                                 ; $4148: $08 $0f $08
	rrca                                             ; $414b: $0f
	ld   [$7e0f], sp                                 ; $414c: $08 $0f $7e
	ld   a, a                                        ; $414f: $7f
	ld   b, e                                        ; $4150: $43
	ld   a, a                                        ; $4151: $7f
	ld   b, e                                        ; $4152: $43
	ld   a, a                                        ; $4153: $7f
	ld   b, b                                        ; $4154: $40
	ld   a, a                                        ; $4155: $7f
	ld   b, b                                        ; $4156: $40
	ld   a, a                                        ; $4157: $7f
	ld   b, b                                        ; $4158: $40
	ld   a, a                                        ; $4159: $7f
	ld   a, a                                        ; $415a: $7f
	ld   b, b                                        ; $415b: $40
	ld   a, a                                        ; $415c: $7f
	ld   a, a                                        ; $415d: $7f
	nop                                              ; $415e: $00
	nop                                              ; $415f: $00
	add  b                                           ; $4160: $80
	add  b                                           ; $4161: $80
	ld   h, b                                        ; $4162: $60
	ldh  [rAUD2LOW], a                               ; $4163: $e0 $18

jr_08f_4165:
	ld   hl, sp+$0c                                  ; $4165: $f8 $0c
	db   $fc                                         ; $4167: $fc
	db   $10                                         ; $4168: $10
	ldh  a, [rAUD1SWEEP]                             ; $4169: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $416b: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $416d: $f0 $10
	ldh  a, [$f0]                                    ; $416f: $f0 $f0
	ldh  a, [$e0]                                    ; $4171: $f0 $e0
	ldh  [rAUD4LEN], a                               ; $4173: $e0 $20
	ldh  [$3e], a                                    ; $4175: $e0 $3e
	cp   $02                                         ; $4177: $fe $02
	cp   $fe                                         ; $4179: $fe $fe
	ld   [bc], a                                     ; $417b: $02
	cp   $fe                                         ; $417c: $fe $fe
	nop                                              ; $417e: $00
	nop                                              ; $417f: $00
	ld   bc, $0601                                   ; $4180: $01 $01 $06
	rlca                                             ; $4183: $07
	jr   jr_08f_41a5                                 ; $4184: $18 $1f

	jr   nc, jr_08f_41c7                             ; $4186: $30 $3f

	ld   [$080f], sp                                 ; $4188: $08 $0f $08
	rrca                                             ; $418b: $0f
	ld   [$7f0f], sp                                 ; $418c: $08 $0f $7f
	ld   a, [hl]                                     ; $418f: $7e
	ld   a, a                                        ; $4190: $7f
	ld   b, e                                        ; $4191: $43
	ld   a, a                                        ; $4192: $7f
	ld   b, e                                        ; $4193: $43
	ld   a, a                                        ; $4194: $7f
	ld   b, b                                        ; $4195: $40
	ld   a, a                                        ; $4196: $7f
	ld   b, b                                        ; $4197: $40
	ld   a, a                                        ; $4198: $7f
	ld   b, b                                        ; $4199: $40
	ld   a, a                                        ; $419a: $7f
	ld   b, b                                        ; $419b: $40
	ld   a, a                                        ; $419c: $7f
	ld   a, a                                        ; $419d: $7f
	nop                                              ; $419e: $00
	nop                                              ; $419f: $00
	add  b                                           ; $41a0: $80
	add  b                                           ; $41a1: $80
	ld   h, b                                        ; $41a2: $60
	ldh  [rAUD2LOW], a                               ; $41a3: $e0 $18

jr_08f_41a5:
	ld   hl, sp+$0c                                  ; $41a5: $f8 $0c
	db   $fc                                         ; $41a7: $fc
	db   $10                                         ; $41a8: $10
	ldh  a, [rAUD1SWEEP]                             ; $41a9: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $41ab: $f0 $10
	ldh  a, [$f0]                                    ; $41ad: $f0 $f0
	db   $10                                         ; $41af: $10
	ldh  a, [$f0]                                    ; $41b0: $f0 $f0
	ldh  [$e0], a                                    ; $41b2: $e0 $e0
	ldh  [rAUD4LEN], a                               ; $41b4: $e0 $20
	cp   $3e                                         ; $41b6: $fe $3e
	cp   $02                                         ; $41b8: $fe $02
	cp   $02                                         ; $41ba: $fe $02
	cp   $fe                                         ; $41bc: $fe $fe
	nop                                              ; $41be: $00
	nop                                              ; $41bf: $00
	ld   bc, $0701                                   ; $41c0: $01 $01 $07
	ld   b, $1f                                      ; $41c3: $06 $1f
	jr   jr_08f_4206                                 ; $41c5: $18 $3f

jr_08f_41c7:
	jr   nc, jr_08f_41d8                             ; $41c7: $30 $0f

	ld   [$080f], sp                                 ; $41c9: $08 $0f $08
	rrca                                             ; $41cc: $0f
	ld   [$7e7f], sp                                 ; $41cd: $08 $7f $7e
	ld   a, a                                        ; $41d0: $7f
	ld   b, e                                        ; $41d1: $43
	ld   a, a                                        ; $41d2: $7f
	ld   b, e                                        ; $41d3: $43
	ld   a, a                                        ; $41d4: $7f
	ld   b, b                                        ; $41d5: $40
	ld   a, a                                        ; $41d6: $7f
	ld   b, b                                        ; $41d7: $40

jr_08f_41d8:
	ld   a, a                                        ; $41d8: $7f
	ld   b, b                                        ; $41d9: $40
	ld   b, b                                        ; $41da: $40
	ld   a, a                                        ; $41db: $7f
	ld   a, a                                        ; $41dc: $7f
	ld   a, a                                        ; $41dd: $7f
	nop                                              ; $41de: $00
	nop                                              ; $41df: $00
	add  b                                           ; $41e0: $80
	add  b                                           ; $41e1: $80
	ldh  [$60], a                                    ; $41e2: $e0 $60
	ld   hl, sp+$18                                  ; $41e4: $f8 $18
	db   $fc                                         ; $41e6: $fc
	inc  c                                           ; $41e7: $0c
	ldh  a, [rAUD1SWEEP]                             ; $41e8: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $41ea: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $41ec: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $41ee: $f0 $10
	ldh  a, [$f0]                                    ; $41f0: $f0 $f0
	ldh  [$e0], a                                    ; $41f2: $e0 $e0
	ldh  [rAUD4LEN], a                               ; $41f4: $e0 $20
	cp   $3e                                         ; $41f6: $fe $3e
	cp   $02                                         ; $41f8: $fe $02
	ld   [bc], a                                     ; $41fa: $02
	cp   $fe                                         ; $41fb: $fe $fe
	cp   $00                                         ; $41fd: $fe $00
	nop                                              ; $41ff: $00
	rrca                                             ; $4200: $0f
	rrca                                             ; $4201: $0f
	ld   [$080f], sp                                 ; $4202: $08 $0f $08
	rrca                                             ; $4205: $0f

jr_08f_4206:
	ld   [$080f], sp                                 ; $4206: $08 $0f $08
	rrca                                             ; $4209: $0f
	jr   nc, @+$41                                   ; $420a: $30 $3f

	jr   @+$21                                       ; $420c: $18 $1f

	ld   b, $07                                      ; $420e: $06 $07
	ld   bc, $0701                                   ; $4210: $01 $01 $07
	rlca                                             ; $4213: $07
	rlca                                             ; $4214: $07
	inc  b                                           ; $4215: $04
	ld   a, a                                        ; $4216: $7f
	ld   a, h                                        ; $4217: $7c
	ld   a, a                                        ; $4218: $7f
	ld   b, b                                        ; $4219: $40
	ld   a, a                                        ; $421a: $7f
	ld   b, b                                        ; $421b: $40
	ld   a, a                                        ; $421c: $7f
	ld   a, a                                        ; $421d: $7f
	nop                                              ; $421e: $00
	nop                                              ; $421f: $00
	ldh  a, [$f0]                                    ; $4220: $f0 $f0
	db   $10                                         ; $4222: $10
	ldh  a, [rAUD1SWEEP]                             ; $4223: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $4225: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $4227: $f0 $10
	ldh  a, [$0c]                                    ; $4229: $f0 $0c
	db   $fc                                         ; $422b: $fc
	jr   @-$06                                       ; $422c: $18 $f8

	ld   a, [hl]                                     ; $422e: $7e
	cp   $c2                                         ; $422f: $fe $c2
	cp   $fe                                         ; $4231: $fe $fe
	jp   nz, $02fe                                   ; $4233: $c2 $fe $02

	cp   $02                                         ; $4236: $fe $02
	cp   $02                                         ; $4238: $fe $02
	cp   $02                                         ; $423a: $fe $02
	cp   $fe                                         ; $423c: $fe $fe
	nop                                              ; $423e: $00
	nop                                              ; $423f: $00
	rrca                                             ; $4240: $0f
	rrca                                             ; $4241: $0f
	rrca                                             ; $4242: $0f
	ld   [$0f08], sp                                 ; $4243: $08 $08 $0f
	ld   [$080f], sp                                 ; $4246: $08 $0f $08
	rrca                                             ; $4249: $0f
	jr   nc, jr_08f_428b                             ; $424a: $30 $3f

	jr   @+$21                                       ; $424c: $18 $1f

	ld   b, $07                                      ; $424e: $06 $07
	ld   bc, $0701                                   ; $4250: $01 $01 $07
	rlca                                             ; $4253: $07
	inc  b                                           ; $4254: $04
	rlca                                             ; $4255: $07
	ld   a, h                                        ; $4256: $7c
	ld   a, a                                        ; $4257: $7f
	ld   b, b                                        ; $4258: $40
	ld   a, a                                        ; $4259: $7f
	ld   b, b                                        ; $425a: $40
	ld   a, a                                        ; $425b: $7f
	ld   a, a                                        ; $425c: $7f
	ld   a, a                                        ; $425d: $7f
	nop                                              ; $425e: $00
	nop                                              ; $425f: $00
	ldh  a, [$f0]                                    ; $4260: $f0 $f0
	ldh  a, [rAUD1SWEEP]                             ; $4262: $f0 $10
	db   $10                                         ; $4264: $10
	ldh  a, [rAUD1SWEEP]                             ; $4265: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $4267: $f0 $10
	ldh  a, [$0c]                                    ; $4269: $f0 $0c
	db   $fc                                         ; $426b: $fc
	jr   @-$06                                       ; $426c: $18 $f8

	ld   a, [hl]                                     ; $426e: $7e
	cp   $c2                                         ; $426f: $fe $c2
	cp   $c2                                         ; $4271: $fe $c2
	cp   $02                                         ; $4273: $fe $02
	cp   $02                                         ; $4275: $fe $02
	cp   $02                                         ; $4277: $fe $02
	cp   $02                                         ; $4279: $fe $02
	cp   $fe                                         ; $427b: $fe $fe
	cp   $00                                         ; $427d: $fe $00
	nop                                              ; $427f: $00
	rrca                                             ; $4280: $0f
	rrca                                             ; $4281: $0f
	rrca                                             ; $4282: $0f
	ld   [$080f], sp                                 ; $4283: $08 $0f $08
	rrca                                             ; $4286: $0f
	ld   [$080f], sp                                 ; $4287: $08 $0f $08
	ccf                                              ; $428a: $3f

jr_08f_428b:
	jr   nc, jr_08f_42ac                             ; $428b: $30 $1f

	jr   jr_08f_4296                                 ; $428d: $18 $07

	ld   b, $01                                      ; $428f: $06 $01
	ld   bc, $0707                                   ; $4291: $01 $07 $07
	inc  b                                           ; $4294: $04
	rlca                                             ; $4295: $07

jr_08f_4296:
	ld   a, h                                        ; $4296: $7c
	ld   a, a                                        ; $4297: $7f
	ld   b, b                                        ; $4298: $40
	ld   a, a                                        ; $4299: $7f
	ld   b, b                                        ; $429a: $40
	ld   a, a                                        ; $429b: $7f
	ld   a, a                                        ; $429c: $7f
	ld   a, a                                        ; $429d: $7f
	nop                                              ; $429e: $00
	nop                                              ; $429f: $00
	ldh  a, [$f0]                                    ; $42a0: $f0 $f0
	ldh  a, [rAUD1SWEEP]                             ; $42a2: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $42a4: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $42a6: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $42a8: $f0 $10
	db   $fc                                         ; $42aa: $fc
	inc  c                                           ; $42ab: $0c

jr_08f_42ac:
	ld   hl, sp+$18                                  ; $42ac: $f8 $18
	cp   $7e                                         ; $42ae: $fe $7e
	cp   $c2                                         ; $42b0: $fe $c2
	jp   nz, $02fe                                   ; $42b2: $c2 $fe $02

	cp   $02                                         ; $42b5: $fe $02
	cp   $02                                         ; $42b7: $fe $02
	cp   $02                                         ; $42b9: $fe $02
	cp   $fe                                         ; $42bb: $fe $fe
	cp   $00                                         ; $42bd: $fe $00
	nop                                              ; $42bf: $00
	rrca                                             ; $42c0: $0f
	rrca                                             ; $42c1: $0f
	ld   [$0f0f], sp                                 ; $42c2: $08 $0f $0f
	ld   [$080f], sp                                 ; $42c5: $08 $0f $08
	rrca                                             ; $42c8: $0f
	ld   [$303f], sp                                 ; $42c9: $08 $3f $30
	rra                                              ; $42cc: $1f
	jr   jr_08f_42d6                                 ; $42cd: $18 $07

	ld   b, $01                                      ; $42cf: $06 $01
	ld   bc, $0707                                   ; $42d1: $01 $07 $07
	rlca                                             ; $42d4: $07
	inc  b                                           ; $42d5: $04

jr_08f_42d6:
	ld   a, a                                        ; $42d6: $7f
	ld   a, h                                        ; $42d7: $7c
	ld   a, a                                        ; $42d8: $7f
	ld   b, b                                        ; $42d9: $40
	ld   a, a                                        ; $42da: $7f
	ld   b, b                                        ; $42db: $40
	ld   a, a                                        ; $42dc: $7f
	ld   a, a                                        ; $42dd: $7f
	nop                                              ; $42de: $00
	nop                                              ; $42df: $00
	ldh  a, [$f0]                                    ; $42e0: $f0 $f0
	db   $10                                         ; $42e2: $10
	ldh  a, [$f0]                                    ; $42e3: $f0 $f0
	db   $10                                         ; $42e5: $10
	ldh  a, [rAUD1SWEEP]                             ; $42e6: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $42e8: $f0 $10
	db   $fc                                         ; $42ea: $fc
	inc  c                                           ; $42eb: $0c
	ld   hl, sp+$18                                  ; $42ec: $f8 $18
	cp   $7e                                         ; $42ee: $fe $7e
	cp   $c2                                         ; $42f0: $fe $c2
	cp   $c2                                         ; $42f2: $fe $c2
	cp   $02                                         ; $42f4: $fe $02
	cp   $02                                         ; $42f6: $fe $02
	cp   $02                                         ; $42f8: $fe $02
	cp   $02                                         ; $42fa: $fe $02
	cp   $fe                                         ; $42fc: $fe $fe
	nop                                              ; $42fe: $00
	nop                                              ; $42ff: $00
	nop                                              ; $4300: $00
	nop                                              ; $4301: $00
	nop                                              ; $4302: $00
	nop                                              ; $4303: $00
	nop                                              ; $4304: $00
	ld   h, b                                        ; $4305: $60
	jr   nz, jr_08f_4364                             ; $4306: $20 $5c

	inc  a                                           ; $4308: $3c
	ld   b, e                                        ; $4309: $43
	ccf                                              ; $430a: $3f
	ld   b, b                                        ; $430b: $40
	ccf                                              ; $430c: $3f
	ld   b, b                                        ; $430d: $40
	rra                                              ; $430e: $1f
	jr   nz, @+$21                                   ; $430f: $20 $1f

	jr   nz, @+$21                                   ; $4311: $20 $1f

	jr   nc, jr_08f_4324                             ; $4313: $30 $0f

	db   $10                                         ; $4315: $10
	rrca                                             ; $4316: $0f
	jr   jr_08f_4320                                 ; $4317: $18 $07

	inc  c                                           ; $4319: $0c
	ld   bc, $0007                                   ; $431a: $01 $07 $00
	ld   bc, $0000                                   ; $431d: $01 $00 $00

jr_08f_4320:
	nop                                              ; $4320: $00

jr_08f_4321:
	nop                                              ; $4321: $00
	nop                                              ; $4322: $00
	nop                                              ; $4323: $00

jr_08f_4324:
	nop                                              ; $4324: $00
	nop                                              ; $4325: $00
	nop                                              ; $4326: $00
	nop                                              ; $4327: $00
	nop                                              ; $4328: $00
	add  b                                           ; $4329: $80
	add  b                                           ; $432a: $80
	ldh  [$e0], a                                    ; $432b: $e0 $e0
	jr   nc, @-$0e                                   ; $432d: $30 $f0

	jr   jr_08f_4321                                 ; $432f: $18 $f0

	ld   [$04f8], sp                                 ; $4331: $08 $f8 $04
	adc  b                                           ; $4334: $88
	ld   [hl], h                                     ; $4335: $74
	add  b                                           ; $4336: $80
	ld   c, h                                        ; $4337: $4c
	add  b                                           ; $4338: $80
	ld   b, h                                        ; $4339: $44
	ret  nz                                          ; $433a: $c0

	jr   nz, jr_08f_433d                             ; $433b: $20 $00

jr_08f_433d:
	ldh  a, [rP1]                                    ; $433d: $f0 $00
	nop                                              ; $433f: $00
	nop                                              ; $4340: $00
	nop                                              ; $4341: $00
	nop                                              ; $4342: $00
	nop                                              ; $4343: $00
	nop                                              ; $4344: $00
	ld   h, b                                        ; $4345: $60
	jr   nz, jr_08f_43a0                             ; $4346: $20 $58

	jr   c, jr_08f_4391                              ; $4348: $38 $47

	ccf                                              ; $434a: $3f
	ld   b, c                                        ; $434b: $41
	rra                                              ; $434c: $1f
	jr   nz, jr_08f_436e                             ; $434d: $20 $1f

	jr   nz, jr_08f_4370                             ; $434f: $20 $1f

	jr   nc, jr_08f_4362                             ; $4351: $30 $0f

	db   $10                                         ; $4353: $10
	rrca                                             ; $4354: $0f
	jr   jr_08f_435e                                 ; $4355: $18 $07

	inc  c                                           ; $4357: $0c
	ld   bc, $0007                                   ; $4358: $01 $07 $00
	ld   bc, $0000                                   ; $435b: $01 $00 $00

jr_08f_435e:
	nop                                              ; $435e: $00
	nop                                              ; $435f: $00
	nop                                              ; $4360: $00
	nop                                              ; $4361: $00

jr_08f_4362:
	nop                                              ; $4362: $00
	nop                                              ; $4363: $00

jr_08f_4364:
	nop                                              ; $4364: $00
	nop                                              ; $4365: $00
	nop                                              ; $4366: $00
	nop                                              ; $4367: $00
	nop                                              ; $4368: $00
	nop                                              ; $4369: $00
	nop                                              ; $436a: $00
	ret  nz                                          ; $436b: $c0

	ret  nz                                          ; $436c: $c0

	ld   h, b                                        ; $436d: $60

jr_08f_436e:
	ldh  [rAUD1SWEEP], a                             ; $436e: $e0 $10

jr_08f_4370:
	ldh  a, [$08]                                    ; $4370: $f0 $08
	ret  nz                                          ; $4372: $c0

	inc  a                                           ; $4373: $3c
	ret  nz                                          ; $4374: $c0

	inc  h                                           ; $4375: $24
	ret  nz                                          ; $4376: $c0

	jr   nz, @-$1e                                   ; $4377: $20 $e0

	jr   jr_08f_437b                                 ; $4379: $18 $00

jr_08f_437b:
	ldh  a, [rP1]                                    ; $437b: $f0 $00
	nop                                              ; $437d: $00
	nop                                              ; $437e: $00
	nop                                              ; $437f: $00
	nop                                              ; $4380: $00
	nop                                              ; $4381: $00
	nop                                              ; $4382: $00
	nop                                              ; $4383: $00
	nop                                              ; $4384: $00
	ld   h, b                                        ; $4385: $60
	jr   nz, jr_08f_43d8                             ; $4386: $20 $50

	jr   nz, jr_08f_43da                             ; $4388: $20 $50

	jr   nc, jr_08f_43e4                             ; $438a: $30 $58

	jr   nc, jr_08f_43f6                             ; $438c: $30 $68

	jr   jr_08f_43b4                                 ; $438e: $18 $24

	inc  e                                           ; $4390: $1c

jr_08f_4391:
	ld   [hl-], a                                    ; $4391: $32
	ld   c, $11                                      ; $4392: $0e $11
	rrca                                             ; $4394: $0f
	jr   jr_08f_439e                                 ; $4395: $18 $07

	inc  c                                           ; $4397: $0c
	ld   bc, $0006                                   ; $4398: $01 $06 $00
	ld   bc, $0000                                   ; $439b: $01 $00 $00

jr_08f_439e:
	nop                                              ; $439e: $00
	nop                                              ; $439f: $00

jr_08f_43a0:
	nop                                              ; $43a0: $00
	nop                                              ; $43a1: $00
	nop                                              ; $43a2: $00
	nop                                              ; $43a3: $00
	nop                                              ; $43a4: $00
	nop                                              ; $43a5: $00
	nop                                              ; $43a6: $00
	nop                                              ; $43a7: $00
	nop                                              ; $43a8: $00
	nop                                              ; $43a9: $00
	nop                                              ; $43aa: $00
	nop                                              ; $43ab: $00
	nop                                              ; $43ac: $00
	nop                                              ; $43ad: $00
	nop                                              ; $43ae: $00
	nop                                              ; $43af: $00
	nop                                              ; $43b0: $00
	nop                                              ; $43b1: $00
	nop                                              ; $43b2: $00
	add  b                                           ; $43b3: $80

jr_08f_43b4:
	add  b                                           ; $43b4: $80
	ldh  a, [$f0]                                    ; $43b5: $f0 $f0
	inc  c                                           ; $43b7: $0c
	ldh  [$38], a                                    ; $43b8: $e0 $38
	nop                                              ; $43ba: $00
	ldh  [rP1], a                                    ; $43bb: $e0 $00
	nop                                              ; $43bd: $00
	nop                                              ; $43be: $00
	nop                                              ; $43bf: $00
	nop                                              ; $43c0: $00
	nop                                              ; $43c1: $00
	nop                                              ; $43c2: $00
	nop                                              ; $43c3: $00
	nop                                              ; $43c4: $00
	ld   h, b                                        ; $43c5: $60
	jr   nz, jr_08f_4420                             ; $43c6: $20 $58

	jr   c, jr_08f_4419                              ; $43c8: $38 $4f

	rra                                              ; $43ca: $1f
	ld   hl, $201f                                   ; $43cb: $21 $1f $20
	rra                                              ; $43ce: $1f
	jr   nz, jr_08f_43e0                             ; $43cf: $20 $0f

	db   $10                                         ; $43d1: $10
	rrca                                             ; $43d2: $0f
	jr   jr_08f_43dc                                 ; $43d3: $18 $07

	ld   [$0603], sp                                 ; $43d5: $08 $03 $06

jr_08f_43d8:
	nop                                              ; $43d8: $00
	inc  bc                                          ; $43d9: $03

jr_08f_43da:
	nop                                              ; $43da: $00
	nop                                              ; $43db: $00

jr_08f_43dc:
	nop                                              ; $43dc: $00
	nop                                              ; $43dd: $00
	nop                                              ; $43de: $00
	nop                                              ; $43df: $00

jr_08f_43e0:
	nop                                              ; $43e0: $00
	nop                                              ; $43e1: $00
	nop                                              ; $43e2: $00
	nop                                              ; $43e3: $00

jr_08f_43e4:
	nop                                              ; $43e4: $00
	nop                                              ; $43e5: $00
	nop                                              ; $43e6: $00
	nop                                              ; $43e7: $00
	nop                                              ; $43e8: $00
	nop                                              ; $43e9: $00

jr_08f_43ea:
	nop                                              ; $43ea: $00
	ret  nz                                          ; $43eb: $c0

	ret  nz                                          ; $43ec: $c0

	ld   h, b                                        ; $43ed: $60
	ldh  [rAUD1SWEEP], a                             ; $43ee: $e0 $10
	ldh  a, [rAUD2LOW]                               ; $43f0: $f0 $18
	ldh  a, [$08]                                    ; $43f2: $f0 $08
	jr   jr_08f_43ea                                 ; $43f4: $18 $f4

jr_08f_43f6:
	nop                                              ; $43f6: $00
	sbc  h                                           ; $43f7: $9c
	add  b                                           ; $43f8: $80
	ld   b, h                                        ; $43f9: $44
	nop                                              ; $43fa: $00
	ldh  [rP1], a                                    ; $43fb: $e0 $00
	nop                                              ; $43fd: $00
	nop                                              ; $43fe: $00
	nop                                              ; $43ff: $00
	nop                                              ; $4400: $00
	nop                                              ; $4401: $00
	nop                                              ; $4402: $00
	rlca                                             ; $4403: $07
	rlca                                             ; $4404: $07
	ld   a, l                                        ; $4405: $7d
	ccf                                              ; $4406: $3f
	ld   b, b                                        ; $4407: $40
	rra                                              ; $4408: $1f
	jr   nz, @+$11                                   ; $4409: $20 $0f

	db   $10                                         ; $440b: $10
	rrca                                             ; $440c: $0f
	jr   @+$09                                       ; $440d: $18 $07

	ld   [$0c07], sp                                 ; $440f: $08 $07 $0c
	inc  bc                                          ; $4412: $03
	inc  b                                           ; $4413: $04
	inc  bc                                          ; $4414: $03
	ld   b, $01                                      ; $4415: $06 $01
	inc  bc                                          ; $4417: $03
	nop                                              ; $4418: $00

jr_08f_4419:
	ld   bc, $0000                                   ; $4419: $01 $00 $00
	nop                                              ; $441c: $00
	nop                                              ; $441d: $00
	nop                                              ; $441e: $00
	nop                                              ; $441f: $00

jr_08f_4420:
	nop                                              ; $4420: $00
	nop                                              ; $4421: $00
	nop                                              ; $4422: $00

jr_08f_4423:
	nop                                              ; $4423: $00
	nop                                              ; $4424: $00
	ret  nz                                          ; $4425: $c0

	ret  nz                                          ; $4426: $c0

	jr   nc, jr_08f_4419                             ; $4427: $30 $f0

	jr   jr_08f_4423                                 ; $4429: $18 $f8

	inc  c                                           ; $442b: $0c
	ld   hl, sp+$04                                  ; $442c: $f8 $04
	db   $fc                                         ; $442e: $fc
	ld   b, $fc                                      ; $442f: $06 $fc
	ld   [bc], a                                     ; $4431: $02
	call nz, $c03a                                   ; $4432: $c4 $3a $c0
	ld   h, $c0                                      ; $4435: $26 $c0
	ld   [hl+], a                                    ; $4437: $22
	ld   h, b                                        ; $4438: $60
	sub  b                                           ; $4439: $90
	nop                                              ; $443a: $00
	ld   a, b                                        ; $443b: $78
	nop                                              ; $443c: $00
	nop                                              ; $443d: $00
	nop                                              ; $443e: $00
	nop                                              ; $443f: $00
	nop                                              ; $4440: $00
	nop                                              ; $4441: $00
	nop                                              ; $4442: $00
	nop                                              ; $4443: $00
	nop                                              ; $4444: $00
	ld   a, h                                        ; $4445: $7c
	inc  a                                           ; $4446: $3c
	ld   b, e                                        ; $4447: $43
	rra                                              ; $4448: $1f
	jr   nz, @+$11                                   ; $4449: $20 $0f

	db   $10                                         ; $444b: $10
	rrca                                             ; $444c: $0f
	db   $10                                         ; $444d: $10
	rlca                                             ; $444e: $07
	ld   [$0807], sp                                 ; $444f: $08 $07 $08
	inc  bc                                          ; $4452: $03
	inc  b                                           ; $4453: $04
	inc  bc                                          ; $4454: $03
	ld   b, $01                                      ; $4455: $06 $01
	inc  bc                                          ; $4457: $03
	nop                                              ; $4458: $00
	ld   bc, $0000                                   ; $4459: $01 $00 $00
	nop                                              ; $445c: $00
	nop                                              ; $445d: $00
	nop                                              ; $445e: $00
	nop                                              ; $445f: $00
	nop                                              ; $4460: $00
	nop                                              ; $4461: $00
	nop                                              ; $4462: $00
	nop                                              ; $4463: $00
	nop                                              ; $4464: $00
	nop                                              ; $4465: $00
	nop                                              ; $4466: $00
	add  b                                           ; $4467: $80
	add  b                                           ; $4468: $80
	ld   h, b                                        ; $4469: $60
	ldh  [$30], a                                    ; $446a: $e0 $30
	ldh  a, [$08]                                    ; $446c: $f0 $08
	ld   hl, sp+$0c                                  ; $446e: $f8 $0c
	ld   hl, sp+$04                                  ; $4470: $f8 $04
	ldh  [rAUD3HIGH], a                              ; $4472: $e0 $1e
	ldh  [rAUD1ENV], a                               ; $4474: $e0 $12
	ldh  [rAUD1SWEEP], a                             ; $4476: $e0 $10
	ld   [hl], b                                     ; $4478: $70
	adc  b                                           ; $4479: $88
	nop                                              ; $447a: $00
	ld   a, h                                        ; $447b: $7c
	nop                                              ; $447c: $00
	nop                                              ; $447d: $00
	nop                                              ; $447e: $00
	nop                                              ; $447f: $00

Call_08f_4480:
	nop                                              ; $4480: $00
	nop                                              ; $4481: $00
	nop                                              ; $4482: $00
	nop                                              ; $4483: $00
	nop                                              ; $4484: $00
	ld   a, [hl]                                     ; $4485: $7e
	ld   a, $43                                      ; $4486: $3e $43
	rrca                                             ; $4488: $0f
	jr   c, @+$05                                    ; $4489: $38 $03

	inc  c                                           ; $448b: $0c
	ld   bc, $0002                                   ; $448c: $01 $02 $00

jr_08f_448f:
	ld   bc, $0000                                   ; $448f: $01 $00 $00
	nop                                              ; $4492: $00
	nop                                              ; $4493: $00
	nop                                              ; $4494: $00
	nop                                              ; $4495: $00
	nop                                              ; $4496: $00
	nop                                              ; $4497: $00
	nop                                              ; $4498: $00
	nop                                              ; $4499: $00
	nop                                              ; $449a: $00
	nop                                              ; $449b: $00
	nop                                              ; $449c: $00
	nop                                              ; $449d: $00
	nop                                              ; $449e: $00
	nop                                              ; $449f: $00
	nop                                              ; $44a0: $00
	nop                                              ; $44a1: $00
	nop                                              ; $44a2: $00
	nop                                              ; $44a3: $00
	nop                                              ; $44a4: $00
	nop                                              ; $44a5: $00
	nop                                              ; $44a6: $00
	add  b                                           ; $44a7: $80
	add  b                                           ; $44a8: $80
	ret  nz                                          ; $44a9: $c0

	ret  nz                                          ; $44aa: $c0

	ld   h, b                                        ; $44ab: $60
	ret  nz                                          ; $44ac: $c0

	jr   nz, jr_08f_448f                             ; $44ad: $20 $e0

	jr   nc, @+$62                                   ; $44af: $30 $60

	sub  b                                           ; $44b1: $90
	ld   h, b                                        ; $44b2: $60
	ret  nc                                          ; $44b3: $d0

	jr   nz, jr_08f_4506                             ; $44b4: $20 $50

	nop                                              ; $44b6: $00
	ld   h, b                                        ; $44b7: $60
	nop                                              ; $44b8: $00
	ld   h, b                                        ; $44b9: $60
	nop                                              ; $44ba: $00
	ld   b, b                                        ; $44bb: $40
	nop                                              ; $44bc: $00
	nop                                              ; $44bd: $00
	nop                                              ; $44be: $00
	nop                                              ; $44bf: $00
	nop                                              ; $44c0: $00
	nop                                              ; $44c1: $00
	nop                                              ; $44c2: $00
	nop                                              ; $44c3: $00
	nop                                              ; $44c4: $00
	ld   a, b                                        ; $44c5: $78
	jr   c, @+$49                                    ; $44c6: $38 $47

	rra                                              ; $44c8: $1f
	ld   hl, $100f                                   ; $44c9: $21 $0f $10
	rrca                                             ; $44cc: $0f
	db   $10                                         ; $44cd: $10
	rlca                                             ; $44ce: $07
	ld   [$0807], sp                                 ; $44cf: $08 $07 $08
	inc  bc                                          ; $44d2: $03
	inc  b                                           ; $44d3: $04
	inc  bc                                          ; $44d4: $03
	ld   b, $01                                      ; $44d5: $06 $01
	ld   [bc], a                                     ; $44d7: $02
	nop                                              ; $44d8: $00
	ld   bc, $0000                                   ; $44d9: $01 $00 $00
	nop                                              ; $44dc: $00
	nop                                              ; $44dd: $00
	nop                                              ; $44de: $00
	nop                                              ; $44df: $00
	nop                                              ; $44e0: $00
	nop                                              ; $44e1: $00
	nop                                              ; $44e2: $00
	nop                                              ; $44e3: $00
	nop                                              ; $44e4: $00
	nop                                              ; $44e5: $00
	nop                                              ; $44e6: $00
	nop                                              ; $44e7: $00
	nop                                              ; $44e8: $00
	ret  nz                                          ; $44e9: $c0

	ret  nz                                          ; $44ea: $c0

	ld   h, b                                        ; $44eb: $60
	ldh  [rAUD1SWEEP], a                             ; $44ec: $e0 $10
	ldh  a, [rAUD2LOW]                               ; $44ee: $f0 $18
	ldh  a, [$08]                                    ; $44f0: $f0 $08
	ld   hl, sp+$0c                                  ; $44f2: $f8 $0c
	sbc  b                                           ; $44f4: $98
	ld   h, h                                        ; $44f5: $64
	adc  b                                           ; $44f6: $88
	ld   d, h                                        ; $44f7: $54
	add  b                                           ; $44f8: $80
	ld   c, h                                        ; $44f9: $4c
	nop                                              ; $44fa: $00
	ret  z                                           ; $44fb: $c8

	nop                                              ; $44fc: $00
	ld   b, b                                        ; $44fd: $40
	nop                                              ; $44fe: $00
	nop                                              ; $44ff: $00
	ldh  [$e0], a                                    ; $4500: $e0 $e0
	ldh  a, [$90]                                    ; $4502: $f0 $90
	ld   sp, hl                                      ; $4504: $f9
	ret                                              ; $4505: $c9


jr_08f_4506:
	ld   a, [hl]                                     ; $4506: $7e
	ld   h, a                                        ; $4507: $67
	inc  a                                           ; $4508: $3c
	dec  sp                                          ; $4509: $3b
	dec  de                                          ; $450a: $1b
	inc  d                                           ; $450b: $14
	dec  de                                          ; $450c: $1b
	inc  d                                           ; $450d: $14
	ld   [hl], $29                                   ; $450e: $36 $29
	ld   [hl], $29                                   ; $4510: $36 $29
	ld   [hl], $29                                   ; $4512: $36 $29
	scf                                              ; $4514: $37
	jr   z, jr_08f_4532                              ; $4515: $28 $1b

	inc  d                                           ; $4517: $14
	add  hl, de                                      ; $4518: $19
	ld   d, $0e                                      ; $4519: $16 $0e
	add  hl, bc                                      ; $451b: $09
	rlca                                             ; $451c: $07
	ld   b, $01                                      ; $451d: $06 $01
	ld   bc, $0000                                   ; $451f: $01 $00 $00
	nop                                              ; $4522: $00
	nop                                              ; $4523: $00
	ldh  [$e0], a                                    ; $4524: $e0 $e0
	jr   @-$06                                       ; $4526: $18 $f8

	db   $e4                                         ; $4528: $e4
	inc  e                                           ; $4529: $1c
	ldh  a, [c]                                      ; $452a: $f2
	ld   c, $1a                                      ; $452b: $0e $1a
	and  $69                                         ; $452d: $e6 $69
	sub  a                                           ; $452f: $97
	rst  $30                                         ; $4530: $f7
	add  hl, bc                                      ; $4531: $09

jr_08f_4532:
	rst  $10                                         ; $4532: $d7
	add  hl, hl                                      ; $4533: $29
	rla                                              ; $4534: $17
	jp   hl                                          ; $4535: $e9


	or   $0a                                         ; $4536: $f6 $0a
	adc  $32                                         ; $4538: $ce $32
	inc  e                                           ; $453a: $1c
	db   $e4                                         ; $453b: $e4
	ld   hl, sp+$18                                  ; $453c: $f8 $18
	ldh  [$e0], a                                    ; $453e: $e0 $e0
	nop                                              ; $4540: $00
	nop                                              ; $4541: $00
	nop                                              ; $4542: $00
	nop                                              ; $4543: $00
	nop                                              ; $4544: $00
	nop                                              ; $4545: $00
	nop                                              ; $4546: $00
	nop                                              ; $4547: $00
	nop                                              ; $4548: $00
	nop                                              ; $4549: $00
	nop                                              ; $454a: $00
	nop                                              ; $454b: $00
	nop                                              ; $454c: $00
	nop                                              ; $454d: $00
	nop                                              ; $454e: $00
	nop                                              ; $454f: $00
	nop                                              ; $4550: $00
	nop                                              ; $4551: $00
	nop                                              ; $4552: $00
	nop                                              ; $4553: $00
	nop                                              ; $4554: $00
	nop                                              ; $4555: $00
	nop                                              ; $4556: $00
	nop                                              ; $4557: $00
	nop                                              ; $4558: $00
	nop                                              ; $4559: $00
	nop                                              ; $455a: $00
	nop                                              ; $455b: $00
	nop                                              ; $455c: $00
	nop                                              ; $455d: $00
	nop                                              ; $455e: $00
	nop                                              ; $455f: $00
	nop                                              ; $4560: $00
	nop                                              ; $4561: $00
	nop                                              ; $4562: $00
	nop                                              ; $4563: $00
	nop                                              ; $4564: $00
	nop                                              ; $4565: $00
	nop                                              ; $4566: $00
	nop                                              ; $4567: $00
	nop                                              ; $4568: $00
	nop                                              ; $4569: $00
	nop                                              ; $456a: $00
	nop                                              ; $456b: $00
	nop                                              ; $456c: $00
	nop                                              ; $456d: $00
	nop                                              ; $456e: $00
	nop                                              ; $456f: $00
	nop                                              ; $4570: $00
	nop                                              ; $4571: $00
	nop                                              ; $4572: $00
	nop                                              ; $4573: $00
	nop                                              ; $4574: $00
	nop                                              ; $4575: $00
	nop                                              ; $4576: $00
	nop                                              ; $4577: $00
	nop                                              ; $4578: $00
	nop                                              ; $4579: $00
	nop                                              ; $457a: $00
	nop                                              ; $457b: $00
	nop                                              ; $457c: $00
	nop                                              ; $457d: $00
	nop                                              ; $457e: $00
	nop                                              ; $457f: $00
	nop                                              ; $4580: $00
	nop                                              ; $4581: $00
	nop                                              ; $4582: $00
	nop                                              ; $4583: $00
	nop                                              ; $4584: $00
	nop                                              ; $4585: $00
	nop                                              ; $4586: $00
	nop                                              ; $4587: $00
	nop                                              ; $4588: $00
	nop                                              ; $4589: $00
	nop                                              ; $458a: $00
	nop                                              ; $458b: $00
	nop                                              ; $458c: $00
	nop                                              ; $458d: $00
	nop                                              ; $458e: $00
	nop                                              ; $458f: $00
	nop                                              ; $4590: $00
	nop                                              ; $4591: $00
	nop                                              ; $4592: $00
	nop                                              ; $4593: $00
	nop                                              ; $4594: $00
	nop                                              ; $4595: $00
	nop                                              ; $4596: $00
	nop                                              ; $4597: $00
	nop                                              ; $4598: $00
	nop                                              ; $4599: $00
	nop                                              ; $459a: $00
	nop                                              ; $459b: $00
	nop                                              ; $459c: $00
	nop                                              ; $459d: $00
	nop                                              ; $459e: $00
	nop                                              ; $459f: $00
	nop                                              ; $45a0: $00
	nop                                              ; $45a1: $00
	nop                                              ; $45a2: $00
	nop                                              ; $45a3: $00
	nop                                              ; $45a4: $00
	nop                                              ; $45a5: $00
	nop                                              ; $45a6: $00
	nop                                              ; $45a7: $00
	nop                                              ; $45a8: $00
	nop                                              ; $45a9: $00
	nop                                              ; $45aa: $00
	nop                                              ; $45ab: $00
	nop                                              ; $45ac: $00
	nop                                              ; $45ad: $00
	nop                                              ; $45ae: $00
	nop                                              ; $45af: $00
	nop                                              ; $45b0: $00
	nop                                              ; $45b1: $00
	nop                                              ; $45b2: $00
	nop                                              ; $45b3: $00
	nop                                              ; $45b4: $00
	nop                                              ; $45b5: $00
	nop                                              ; $45b6: $00
	nop                                              ; $45b7: $00
	nop                                              ; $45b8: $00
	nop                                              ; $45b9: $00
	nop                                              ; $45ba: $00
	nop                                              ; $45bb: $00
	nop                                              ; $45bc: $00
	nop                                              ; $45bd: $00
	nop                                              ; $45be: $00
	nop                                              ; $45bf: $00
	nop                                              ; $45c0: $00
	nop                                              ; $45c1: $00
	nop                                              ; $45c2: $00
	nop                                              ; $45c3: $00
	nop                                              ; $45c4: $00
	nop                                              ; $45c5: $00
	nop                                              ; $45c6: $00
	nop                                              ; $45c7: $00
	nop                                              ; $45c8: $00
	nop                                              ; $45c9: $00
	nop                                              ; $45ca: $00
	nop                                              ; $45cb: $00
	nop                                              ; $45cc: $00
	nop                                              ; $45cd: $00
	nop                                              ; $45ce: $00
	nop                                              ; $45cf: $00
	nop                                              ; $45d0: $00
	nop                                              ; $45d1: $00
	nop                                              ; $45d2: $00
	nop                                              ; $45d3: $00
	nop                                              ; $45d4: $00
	nop                                              ; $45d5: $00
	nop                                              ; $45d6: $00
	nop                                              ; $45d7: $00
	nop                                              ; $45d8: $00
	nop                                              ; $45d9: $00
	nop                                              ; $45da: $00
	nop                                              ; $45db: $00
	nop                                              ; $45dc: $00
	nop                                              ; $45dd: $00
	nop                                              ; $45de: $00
	nop                                              ; $45df: $00
	nop                                              ; $45e0: $00
	nop                                              ; $45e1: $00
	nop                                              ; $45e2: $00
	nop                                              ; $45e3: $00
	nop                                              ; $45e4: $00
	nop                                              ; $45e5: $00
	nop                                              ; $45e6: $00
	nop                                              ; $45e7: $00
	nop                                              ; $45e8: $00
	nop                                              ; $45e9: $00
	nop                                              ; $45ea: $00
	nop                                              ; $45eb: $00
	nop                                              ; $45ec: $00
	nop                                              ; $45ed: $00
	nop                                              ; $45ee: $00
	nop                                              ; $45ef: $00
	nop                                              ; $45f0: $00
	nop                                              ; $45f1: $00
	nop                                              ; $45f2: $00
	nop                                              ; $45f3: $00
	nop                                              ; $45f4: $00
	nop                                              ; $45f5: $00
	nop                                              ; $45f6: $00
	nop                                              ; $45f7: $00
	nop                                              ; $45f8: $00
	nop                                              ; $45f9: $00
	nop                                              ; $45fa: $00
	nop                                              ; $45fb: $00
	nop                                              ; $45fc: $00
	nop                                              ; $45fd: $00
	nop                                              ; $45fe: $00
	nop                                              ; $45ff: $00
	nop                                              ; $4600: $00
	nop                                              ; $4601: $00
	nop                                              ; $4602: $00
	nop                                              ; $4603: $00
	nop                                              ; $4604: $00
	nop                                              ; $4605: $00
	nop                                              ; $4606: $00
	nop                                              ; $4607: $00
	nop                                              ; $4608: $00
	nop                                              ; $4609: $00
	nop                                              ; $460a: $00
	nop                                              ; $460b: $00
	nop                                              ; $460c: $00
	nop                                              ; $460d: $00
	nop                                              ; $460e: $00
	nop                                              ; $460f: $00
	nop                                              ; $4610: $00
	nop                                              ; $4611: $00
	nop                                              ; $4612: $00
	nop                                              ; $4613: $00
	nop                                              ; $4614: $00
	nop                                              ; $4615: $00
	nop                                              ; $4616: $00
	nop                                              ; $4617: $00
	nop                                              ; $4618: $00
	nop                                              ; $4619: $00
	nop                                              ; $461a: $00
	nop                                              ; $461b: $00
	nop                                              ; $461c: $00
	nop                                              ; $461d: $00
	nop                                              ; $461e: $00
	nop                                              ; $461f: $00
	nop                                              ; $4620: $00
	nop                                              ; $4621: $00
	nop                                              ; $4622: $00
	nop                                              ; $4623: $00
	nop                                              ; $4624: $00
	nop                                              ; $4625: $00
	nop                                              ; $4626: $00
	nop                                              ; $4627: $00
	nop                                              ; $4628: $00
	nop                                              ; $4629: $00
	nop                                              ; $462a: $00
	nop                                              ; $462b: $00
	nop                                              ; $462c: $00
	nop                                              ; $462d: $00
	nop                                              ; $462e: $00
	nop                                              ; $462f: $00
	nop                                              ; $4630: $00
	nop                                              ; $4631: $00
	nop                                              ; $4632: $00
	nop                                              ; $4633: $00
	nop                                              ; $4634: $00
	nop                                              ; $4635: $00
	nop                                              ; $4636: $00
	nop                                              ; $4637: $00
	nop                                              ; $4638: $00
	nop                                              ; $4639: $00
	nop                                              ; $463a: $00
	nop                                              ; $463b: $00
	nop                                              ; $463c: $00
	nop                                              ; $463d: $00
	nop                                              ; $463e: $00
	nop                                              ; $463f: $00
	nop                                              ; $4640: $00
	nop                                              ; $4641: $00
	nop                                              ; $4642: $00
	nop                                              ; $4643: $00
	nop                                              ; $4644: $00
	nop                                              ; $4645: $00
	nop                                              ; $4646: $00
	nop                                              ; $4647: $00
	nop                                              ; $4648: $00
	nop                                              ; $4649: $00
	nop                                              ; $464a: $00
	nop                                              ; $464b: $00
	nop                                              ; $464c: $00
	nop                                              ; $464d: $00
	nop                                              ; $464e: $00
	nop                                              ; $464f: $00
	nop                                              ; $4650: $00
	nop                                              ; $4651: $00
	nop                                              ; $4652: $00
	nop                                              ; $4653: $00
	nop                                              ; $4654: $00
	nop                                              ; $4655: $00
	nop                                              ; $4656: $00
	nop                                              ; $4657: $00
	nop                                              ; $4658: $00
	nop                                              ; $4659: $00
	nop                                              ; $465a: $00
	nop                                              ; $465b: $00
	nop                                              ; $465c: $00
	nop                                              ; $465d: $00
	nop                                              ; $465e: $00
	nop                                              ; $465f: $00
	nop                                              ; $4660: $00
	nop                                              ; $4661: $00
	nop                                              ; $4662: $00
	nop                                              ; $4663: $00
	nop                                              ; $4664: $00
	nop                                              ; $4665: $00
	nop                                              ; $4666: $00
	nop                                              ; $4667: $00
	nop                                              ; $4668: $00
	nop                                              ; $4669: $00
	nop                                              ; $466a: $00
	nop                                              ; $466b: $00
	nop                                              ; $466c: $00
	nop                                              ; $466d: $00
	nop                                              ; $466e: $00
	nop                                              ; $466f: $00
	nop                                              ; $4670: $00
	nop                                              ; $4671: $00
	nop                                              ; $4672: $00
	nop                                              ; $4673: $00
	nop                                              ; $4674: $00
	nop                                              ; $4675: $00
	nop                                              ; $4676: $00
	nop                                              ; $4677: $00
	nop                                              ; $4678: $00
	nop                                              ; $4679: $00
	nop                                              ; $467a: $00
	nop                                              ; $467b: $00
	nop                                              ; $467c: $00
	nop                                              ; $467d: $00
	nop                                              ; $467e: $00
	nop                                              ; $467f: $00
	nop                                              ; $4680: $00
	nop                                              ; $4681: $00
	nop                                              ; $4682: $00
	nop                                              ; $4683: $00
	nop                                              ; $4684: $00
	nop                                              ; $4685: $00
	nop                                              ; $4686: $00
	nop                                              ; $4687: $00
	nop                                              ; $4688: $00
	nop                                              ; $4689: $00
	nop                                              ; $468a: $00
	nop                                              ; $468b: $00
	nop                                              ; $468c: $00
	nop                                              ; $468d: $00
	nop                                              ; $468e: $00
	nop                                              ; $468f: $00
	nop                                              ; $4690: $00
	nop                                              ; $4691: $00
	nop                                              ; $4692: $00
	nop                                              ; $4693: $00
	nop                                              ; $4694: $00
	nop                                              ; $4695: $00
	nop                                              ; $4696: $00
	nop                                              ; $4697: $00
	nop                                              ; $4698: $00
	nop                                              ; $4699: $00
	nop                                              ; $469a: $00
	nop                                              ; $469b: $00
	nop                                              ; $469c: $00
	nop                                              ; $469d: $00
	nop                                              ; $469e: $00
	nop                                              ; $469f: $00
	nop                                              ; $46a0: $00
	nop                                              ; $46a1: $00
	nop                                              ; $46a2: $00
	nop                                              ; $46a3: $00
	nop                                              ; $46a4: $00
	nop                                              ; $46a5: $00
	nop                                              ; $46a6: $00
	nop                                              ; $46a7: $00
	nop                                              ; $46a8: $00
	nop                                              ; $46a9: $00
	nop                                              ; $46aa: $00
	nop                                              ; $46ab: $00
	nop                                              ; $46ac: $00
	nop                                              ; $46ad: $00
	nop                                              ; $46ae: $00
	nop                                              ; $46af: $00
	nop                                              ; $46b0: $00
	nop                                              ; $46b1: $00
	nop                                              ; $46b2: $00
	nop                                              ; $46b3: $00
	nop                                              ; $46b4: $00
	nop                                              ; $46b5: $00
	nop                                              ; $46b6: $00
	nop                                              ; $46b7: $00
	nop                                              ; $46b8: $00
	nop                                              ; $46b9: $00
	nop                                              ; $46ba: $00
	nop                                              ; $46bb: $00
	nop                                              ; $46bc: $00
	nop                                              ; $46bd: $00
	nop                                              ; $46be: $00
	nop                                              ; $46bf: $00
	nop                                              ; $46c0: $00
	nop                                              ; $46c1: $00
	nop                                              ; $46c2: $00
	nop                                              ; $46c3: $00
	nop                                              ; $46c4: $00
	nop                                              ; $46c5: $00
	nop                                              ; $46c6: $00
	nop                                              ; $46c7: $00
	nop                                              ; $46c8: $00
	nop                                              ; $46c9: $00
	nop                                              ; $46ca: $00
	nop                                              ; $46cb: $00
	nop                                              ; $46cc: $00
	nop                                              ; $46cd: $00
	nop                                              ; $46ce: $00
	nop                                              ; $46cf: $00
	nop                                              ; $46d0: $00
	nop                                              ; $46d1: $00
	nop                                              ; $46d2: $00
	nop                                              ; $46d3: $00
	nop                                              ; $46d4: $00
	nop                                              ; $46d5: $00
	nop                                              ; $46d6: $00
	nop                                              ; $46d7: $00
	nop                                              ; $46d8: $00
	nop                                              ; $46d9: $00
	nop                                              ; $46da: $00
	nop                                              ; $46db: $00
	nop                                              ; $46dc: $00
	nop                                              ; $46dd: $00
	nop                                              ; $46de: $00
	nop                                              ; $46df: $00
	nop                                              ; $46e0: $00
	nop                                              ; $46e1: $00
	nop                                              ; $46e2: $00
	nop                                              ; $46e3: $00
	nop                                              ; $46e4: $00
	nop                                              ; $46e5: $00
	nop                                              ; $46e6: $00
	nop                                              ; $46e7: $00
	nop                                              ; $46e8: $00
	nop                                              ; $46e9: $00
	nop                                              ; $46ea: $00
	nop                                              ; $46eb: $00
	nop                                              ; $46ec: $00
	nop                                              ; $46ed: $00
	nop                                              ; $46ee: $00
	nop                                              ; $46ef: $00
	nop                                              ; $46f0: $00
	nop                                              ; $46f1: $00
	nop                                              ; $46f2: $00
	nop                                              ; $46f3: $00
	nop                                              ; $46f4: $00
	nop                                              ; $46f5: $00
	nop                                              ; $46f6: $00
	nop                                              ; $46f7: $00
	nop                                              ; $46f8: $00
	nop                                              ; $46f9: $00
	nop                                              ; $46fa: $00
	nop                                              ; $46fb: $00
	nop                                              ; $46fc: $00
	nop                                              ; $46fd: $00
	nop                                              ; $46fe: $00
	nop                                              ; $46ff: $00
	nop                                              ; $4700: $00
	nop                                              ; $4701: $00
	nop                                              ; $4702: $00
	nop                                              ; $4703: $00
	nop                                              ; $4704: $00
	nop                                              ; $4705: $00
	nop                                              ; $4706: $00
	nop                                              ; $4707: $00
	nop                                              ; $4708: $00
	nop                                              ; $4709: $00
	nop                                              ; $470a: $00
	nop                                              ; $470b: $00
	nop                                              ; $470c: $00
	nop                                              ; $470d: $00
	nop                                              ; $470e: $00
	nop                                              ; $470f: $00
	nop                                              ; $4710: $00
	nop                                              ; $4711: $00
	nop                                              ; $4712: $00
	nop                                              ; $4713: $00
	nop                                              ; $4714: $00
	nop                                              ; $4715: $00
	nop                                              ; $4716: $00
	nop                                              ; $4717: $00
	nop                                              ; $4718: $00
	nop                                              ; $4719: $00
	nop                                              ; $471a: $00
	nop                                              ; $471b: $00
	nop                                              ; $471c: $00
	nop                                              ; $471d: $00
	nop                                              ; $471e: $00
	nop                                              ; $471f: $00
	nop                                              ; $4720: $00
	nop                                              ; $4721: $00
	nop                                              ; $4722: $00
	nop                                              ; $4723: $00
	nop                                              ; $4724: $00
	nop                                              ; $4725: $00
	nop                                              ; $4726: $00
	nop                                              ; $4727: $00
	nop                                              ; $4728: $00
	nop                                              ; $4729: $00
	nop                                              ; $472a: $00
	nop                                              ; $472b: $00
	nop                                              ; $472c: $00
	nop                                              ; $472d: $00
	nop                                              ; $472e: $00
	nop                                              ; $472f: $00
	nop                                              ; $4730: $00
	nop                                              ; $4731: $00
	nop                                              ; $4732: $00
	nop                                              ; $4733: $00
	nop                                              ; $4734: $00
	nop                                              ; $4735: $00
	nop                                              ; $4736: $00
	nop                                              ; $4737: $00
	nop                                              ; $4738: $00
	nop                                              ; $4739: $00
	nop                                              ; $473a: $00
	nop                                              ; $473b: $00
	nop                                              ; $473c: $00
	nop                                              ; $473d: $00
	nop                                              ; $473e: $00
	nop                                              ; $473f: $00
	nop                                              ; $4740: $00
	nop                                              ; $4741: $00
	nop                                              ; $4742: $00
	nop                                              ; $4743: $00
	nop                                              ; $4744: $00
	nop                                              ; $4745: $00
	nop                                              ; $4746: $00
	nop                                              ; $4747: $00
	nop                                              ; $4748: $00
	nop                                              ; $4749: $00
	nop                                              ; $474a: $00
	nop                                              ; $474b: $00
	nop                                              ; $474c: $00
	nop                                              ; $474d: $00
	nop                                              ; $474e: $00
	nop                                              ; $474f: $00
	nop                                              ; $4750: $00
	nop                                              ; $4751: $00
	nop                                              ; $4752: $00
	nop                                              ; $4753: $00
	nop                                              ; $4754: $00
	nop                                              ; $4755: $00
	nop                                              ; $4756: $00
	nop                                              ; $4757: $00
	nop                                              ; $4758: $00
	nop                                              ; $4759: $00
	nop                                              ; $475a: $00
	nop                                              ; $475b: $00
	nop                                              ; $475c: $00
	nop                                              ; $475d: $00
	nop                                              ; $475e: $00
	nop                                              ; $475f: $00
	nop                                              ; $4760: $00
	nop                                              ; $4761: $00
	nop                                              ; $4762: $00
	nop                                              ; $4763: $00
	nop                                              ; $4764: $00
	nop                                              ; $4765: $00
	nop                                              ; $4766: $00
	nop                                              ; $4767: $00
	nop                                              ; $4768: $00
	nop                                              ; $4769: $00
	nop                                              ; $476a: $00
	nop                                              ; $476b: $00
	nop                                              ; $476c: $00
	nop                                              ; $476d: $00
	nop                                              ; $476e: $00
	nop                                              ; $476f: $00
	nop                                              ; $4770: $00
	nop                                              ; $4771: $00
	nop                                              ; $4772: $00
	nop                                              ; $4773: $00
	nop                                              ; $4774: $00
	nop                                              ; $4775: $00
	nop                                              ; $4776: $00
	nop                                              ; $4777: $00
	nop                                              ; $4778: $00
	nop                                              ; $4779: $00
	nop                                              ; $477a: $00
	nop                                              ; $477b: $00
	nop                                              ; $477c: $00
	nop                                              ; $477d: $00
	nop                                              ; $477e: $00
	nop                                              ; $477f: $00
	nop                                              ; $4780: $00
	nop                                              ; $4781: $00
	nop                                              ; $4782: $00
	nop                                              ; $4783: $00
	nop                                              ; $4784: $00
	nop                                              ; $4785: $00
	nop                                              ; $4786: $00
	nop                                              ; $4787: $00
	nop                                              ; $4788: $00
	nop                                              ; $4789: $00
	nop                                              ; $478a: $00
	nop                                              ; $478b: $00
	nop                                              ; $478c: $00
	nop                                              ; $478d: $00
	nop                                              ; $478e: $00
	nop                                              ; $478f: $00
	nop                                              ; $4790: $00
	nop                                              ; $4791: $00
	nop                                              ; $4792: $00
	nop                                              ; $4793: $00
	nop                                              ; $4794: $00
	nop                                              ; $4795: $00
	nop                                              ; $4796: $00
	nop                                              ; $4797: $00
	nop                                              ; $4798: $00
	nop                                              ; $4799: $00
	nop                                              ; $479a: $00
	nop                                              ; $479b: $00
	nop                                              ; $479c: $00
	nop                                              ; $479d: $00
	nop                                              ; $479e: $00
	nop                                              ; $479f: $00
	nop                                              ; $47a0: $00
	nop                                              ; $47a1: $00
	nop                                              ; $47a2: $00
	nop                                              ; $47a3: $00
	nop                                              ; $47a4: $00
	nop                                              ; $47a5: $00
	nop                                              ; $47a6: $00
	nop                                              ; $47a7: $00
	nop                                              ; $47a8: $00

jr_08f_47a9:
	nop                                              ; $47a9: $00
	nop                                              ; $47aa: $00
	nop                                              ; $47ab: $00
	nop                                              ; $47ac: $00
	nop                                              ; $47ad: $00
	nop                                              ; $47ae: $00
	nop                                              ; $47af: $00
	nop                                              ; $47b0: $00
	nop                                              ; $47b1: $00
	nop                                              ; $47b2: $00
	nop                                              ; $47b3: $00
	nop                                              ; $47b4: $00
	nop                                              ; $47b5: $00
	nop                                              ; $47b6: $00
	nop                                              ; $47b7: $00
	nop                                              ; $47b8: $00
	nop                                              ; $47b9: $00
	nop                                              ; $47ba: $00
	nop                                              ; $47bb: $00
	nop                                              ; $47bc: $00
	nop                                              ; $47bd: $00
	nop                                              ; $47be: $00
	nop                                              ; $47bf: $00
	nop                                              ; $47c0: $00
	nop                                              ; $47c1: $00
	nop                                              ; $47c2: $00
	nop                                              ; $47c3: $00
	nop                                              ; $47c4: $00
	nop                                              ; $47c5: $00
	nop                                              ; $47c6: $00
	nop                                              ; $47c7: $00
	nop                                              ; $47c8: $00
	nop                                              ; $47c9: $00
	nop                                              ; $47ca: $00
	nop                                              ; $47cb: $00
	nop                                              ; $47cc: $00
	nop                                              ; $47cd: $00
	nop                                              ; $47ce: $00
	nop                                              ; $47cf: $00
	nop                                              ; $47d0: $00
	nop                                              ; $47d1: $00
	nop                                              ; $47d2: $00
	nop                                              ; $47d3: $00
	nop                                              ; $47d4: $00
	nop                                              ; $47d5: $00
	nop                                              ; $47d6: $00
	nop                                              ; $47d7: $00
	nop                                              ; $47d8: $00
	nop                                              ; $47d9: $00
	nop                                              ; $47da: $00
	nop                                              ; $47db: $00
	nop                                              ; $47dc: $00
	nop                                              ; $47dd: $00
	nop                                              ; $47de: $00
	nop                                              ; $47df: $00
	nop                                              ; $47e0: $00
	nop                                              ; $47e1: $00
	nop                                              ; $47e2: $00
	nop                                              ; $47e3: $00
	nop                                              ; $47e4: $00
	nop                                              ; $47e5: $00
	nop                                              ; $47e6: $00
	nop                                              ; $47e7: $00
	nop                                              ; $47e8: $00
	nop                                              ; $47e9: $00
	nop                                              ; $47ea: $00
	nop                                              ; $47eb: $00
	nop                                              ; $47ec: $00
	nop                                              ; $47ed: $00
	nop                                              ; $47ee: $00
	nop                                              ; $47ef: $00
	nop                                              ; $47f0: $00
	nop                                              ; $47f1: $00
	nop                                              ; $47f2: $00
	nop                                              ; $47f3: $00
	nop                                              ; $47f4: $00
	nop                                              ; $47f5: $00
	nop                                              ; $47f6: $00
	nop                                              ; $47f7: $00
	nop                                              ; $47f8: $00
	nop                                              ; $47f9: $00
	nop                                              ; $47fa: $00
	nop                                              ; $47fb: $00
	nop                                              ; $47fc: $00
	nop                                              ; $47fd: $00
	nop                                              ; $47fe: $00
	nop                                              ; $47ff: $00
	ld   [bc], a                                     ; $4800: $02
	ld   [bc], a                                     ; $4801: $02
	dec  b                                           ; $4802: $05
	rlca                                             ; $4803: $07
	rst  $38                                         ; $4804: $ff
	db   $fd                                         ; $4805: $fd
	cp   $fc                                         ; $4806: $fe $fc
	ld   hl, sp-$80                                  ; $4808: $f8 $80
	ldh  [$80], a                                    ; $480a: $e0 $80
	ret  nz                                          ; $480c: $c0

	add  b                                           ; $480d: $80
	add  b                                           ; $480e: $80
	add  b                                           ; $480f: $80
	ld   bc, $0680                                   ; $4810: $01 $80 $06
	add  b                                           ; $4813: $80
	add  b                                           ; $4814: $80
	add  b                                           ; $4815: $80
	nop                                              ; $4816: $00
	add  b                                           ; $4817: $80
	ld   [bc], a                                     ; $4818: $02
	dec  bc                                          ; $4819: $0b
	db   $10                                         ; $481a: $10
	dec  d                                           ; $481b: $15
	ld   b, d                                        ; $481c: $42

jr_08f_481d:
	ld   d, a                                        ; $481d: $57
	ld   c, d                                        ; $481e: $4a
	ld   a, e                                        ; $481f: $7b
	or   $f4                                         ; $4820: $f6 $f4
	add  c                                           ; $4822: $81
	db   $e3                                         ; $4823: $e3
	ld   c, [hl]                                     ; $4824: $4e
	nop                                              ; $4825: $00
	add  b                                           ; $4826: $80
	jr   nz, jr_08f_47a9                             ; $4827: $20 $80

	and  b                                           ; $4829: $a0
	dec  b                                           ; $482a: $05
	jr   nc, jr_08f_481d                             ; $482b: $30 $f0

	nop                                              ; $482d: $00
	ldh  a, [rLCDC]                                  ; $482e: $f0 $40
	ld   [hl], b                                     ; $4830: $70
	add  b                                           ; $4831: $80
	or   b                                           ; $4832: $b0
	add  b                                           ; $4833: $80
	jr   nc, @+$07                                   ; $4834: $30 $05

	ldh  a, [rP1]                                    ; $4836: $f0 $00
	inc  bc                                          ; $4838: $03
	ld   [bc], a                                     ; $4839: $02
	ld   b, $0d                                      ; $483a: $06 $0d
	add  c                                           ; $483c: $81
	dec  b                                           ; $483d: $05
	add  l                                           ; $483e: $85
	dec  bc                                          ; $483f: $0b
	nop                                              ; $4840: $00
	ei                                               ; $4841: $fb
	add  d                                           ; $4842: $82
	db   $db                                         ; $4843: $db
	add  d                                           ; $4844: $82
	or   a                                           ; $4845: $b7
	add  b                                           ; $4846: $80
	halt                                             ; $4847: $76
	add  e                                           ; $4848: $83
	ld   l, [hl]                                     ; $4849: $6e
	inc  bc                                          ; $484a: $03
	ld   l, c                                        ; $484b: $69
	xor  [hl]                                        ; $484c: $ae
	xor  d                                           ; $484d: $aa
	ld   l, a                                        ; $484e: $6f
	add  b                                           ; $484f: $80
	ld   l, l                                        ; $4850: $6d
	ld   a, [bc]                                     ; $4851: $0a
	ld   l, h                                        ; $4852: $6c
	ld   l, l                                        ; $4853: $6d
	ld   h, e                                        ; $4854: $63
	pop  af                                          ; $4855: $f1
	xor  $e0                                         ; $4856: $ee $e0
	pop  de                                          ; $4858: $d1
	call nz, $e8e4                                   ; $4859: $c4 $e4 $e8
	rla                                              ; $485c: $17
	add  b                                           ; $485d: $80
	nop                                              ; $485e: $00
	add  b                                           ; $485f: $80
	ldh  [$80], a                                    ; $4860: $e0 $80
	cp   $09                                         ; $4862: $fe $09
	rst  $38                                         ; $4864: $ff
	ld   a, a                                        ; $4865: $7f
	rst  $38                                         ; $4866: $ff
	ccf                                              ; $4867: $3f
	ld   a, a                                        ; $4868: $7f
	rst  JumpTable                                         ; $4869: $df
	ld   a, a                                        ; $486a: $7f
	db   $ec                                         ; $486b: $ec
	ccf                                              ; $486c: $3f
	ld   c, h                                        ; $486d: $4c
	add  b                                           ; $486e: $80
	nop                                              ; $486f: $00
	add  b                                           ; $4870: $80
	inc  bc                                          ; $4871: $03
	add  b                                           ; $4872: $80
	rlca                                             ; $4873: $07
	dec  b                                           ; $4874: $05
	rst  $38                                         ; $4875: $ff
	ld   hl, sp-$01                                  ; $4876: $f8 $ff
	rst  $20                                         ; $4878: $e7
	ld   hl, sp+$18                                  ; $4879: $f8 $18
	add  b                                           ; $487b: $80
	rst  $20                                         ; $487c: $e7
	add  b                                           ; $487d: $80
	ld   e, $80                                      ; $487e: $1e $80
	and  b                                           ; $4880: $a0

Jump_08f_4881:
	add  b                                           ; $4881: $80
	xor  [hl]                                        ; $4882: $ae
	add  b                                           ; $4883: $80
	or   c                                           ; $4884: $b1
	ld   bc, $cfce                                   ; $4885: $01 $ce $cf
	add  b                                           ; $4888: $80
	ccf                                              ; $4889: $3f
	add  hl, de                                      ; $488a: $19
	pop  af                                          ; $488b: $f1
	cp   $8f                                         ; $488c: $fe $8f
	or   e                                           ; $488e: $b3
	ccf                                              ; $488f: $3f
	dec  a                                           ; $4890: $3d
	ccf                                              ; $4891: $3f
	rst  $38                                         ; $4892: $ff
	ld   hl, sp-$37                                  ; $4893: $f8 $c9
	add  $16                                         ; $4895: $c6 $16
	ld   e, $cf                                      ; $4897: $1e $cf
	call c, $93de                                    ; $4899: $dc $de $93
	rra                                              ; $489c: $1f
	adc  a                                           ; $489d: $8f
	rst  JumpTable                                         ; $489e: $df
	rra                                              ; $489f: $1f
	add  hl, de                                      ; $48a0: $19
	rra                                              ; $48a1: $1f
	and  a                                           ; $48a2: $a7
	cp   a                                           ; $48a3: $bf
	ld   e, a                                        ; $48a4: $5f
	add  b                                           ; $48a5: $80
	db   $fc                                         ; $48a6: $fc
	ld   de, $a3e0                                   ; $48a7: $11 $e0 $a3
	inc  bc                                          ; $48aa: $03
	sbc  h                                           ; $48ab: $9c
	sbc  a                                           ; $48ac: $9f
	and  e                                           ; $48ad: $a3
	cp   a                                           ; $48ae: $bf
	rst  JumpTable                                         ; $48af: $df
	db   $fc                                         ; $48b0: $fc
	inc  a                                           ; $48b1: $3c
	ldh  [$e7], a                                    ; $48b2: $e0 $e7
	rlca                                             ; $48b4: $07
	jr   jr_08f_48d6                                 ; $48b5: $18 $1f

	rst  $20                                         ; $48b7: $e7
	rst  $38                                         ; $48b8: $ff
	rra                                              ; $48b9: $1f
	add  b                                           ; $48ba: $80
	db   $fc                                         ; $48bb: $fc
	add  b                                           ; $48bc: $80
	ldh  [rTIMA], a                                  ; $48bd: $e0 $05
	add  b                                           ; $48bf: $80
	ret  nz                                          ; $48c0: $c0

	ld   a, b                                        ; $48c1: $78
	ld   hl, sp-$01                                  ; $48c2: $f8 $ff
	ccf                                              ; $48c4: $3f
	add  b                                           ; $48c5: $80
	db   $fc                                         ; $48c6: $fc
	add  b                                           ; $48c7: $80
	ldh  [$80], a                                    ; $48c8: $e0 $80
	add  b                                           ; $48ca: $80
	nop                                              ; $48cb: $00
	nop                                              ; $48cc: $00
	add  b                                           ; $48cd: $80
	inc  bc                                          ; $48ce: $03
	add  b                                           ; $48cf: $80
	rrca                                             ; $48d0: $0f
	add  b                                           ; $48d1: $80
	ld   a, a                                        ; $48d2: $7f
	nop                                              ; $48d3: $00
	nop                                              ; $48d4: $00
	add  b                                           ; $48d5: $80

jr_08f_48d6:
	rlca                                             ; $48d6: $07
	add  d                                           ; $48d7: $82
	rra                                              ; $48d8: $1f
	ld   c, $1c                                      ; $48d9: $0e $1c
	ld   a, a                                        ; $48db: $7f
	ld   [hl], e                                     ; $48dc: $73
	rst  $20                                         ; $48dd: $e7
	rst  $30                                         ; $48de: $f7
	rst  $20                                         ; $48df: $e7
	rst  $30                                         ; $48e0: $f7
	db   $eb                                         ; $48e1: $eb
	jp   $fc38                                       ; $48e2: $c3 $38 $fc


	rst  $38                                         ; $48e5: $ff
	db   $e3                                         ; $48e6: $e3
	rst  $38                                         ; $48e7: $ff
	rra                                              ; $48e8: $1f
	add  b                                           ; $48e9: $80
	rst  $38                                         ; $48ea: $ff
	add  b                                           ; $48eb: $80
	cp   $03                                         ; $48ec: $fe $03
	ldh  a, [$f6]                                    ; $48ee: $f0 $f6

jr_08f_48f0:
	jp   nz, $80c6                                   ; $48f0: $c2 $c6 $80

	ld   b, $01                                      ; $48f3: $06 $01
	db   $fd                                         ; $48f5: $fd
	rst  $38                                         ; $48f6: $ff
	add  b                                           ; $48f7: $80
	cp   $04                                         ; $48f8: $fe $04
	ldh  a, [$f8]                                    ; $48fa: $f0 $f8
	ret  z                                           ; $48fc: $c8

	ret  c                                           ; $48fd: $d8

	ld   [$1881], sp                                 ; $48fe: $08 $81 $18
	add  d                                           ; $4901: $82
	ld   [$c802], sp                                 ; $4902: $08 $02 $c8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4905: $cf
	ld   c, $80                                      ; $4906: $0e $80
	rlca                                             ; $4908: $07
	ld   [bc], a                                     ; $4909: $02
	inc  bc                                          ; $490a: $03
	nop                                              ; $490b: $00
	ld   [bc], a                                     ; $490c: $02
	add  d                                           ; $490d: $82
	nop                                              ; $490e: $00
	add  b                                           ; $490f: $80
	ld   [bc], a                                     ; $4910: $02
	add  b                                           ; $4911: $80
	inc  b                                           ; $4912: $04
	ld   bc, $eed1                                   ; $4913: $01 $d1 $ee
	add  b                                           ; $4916: $80
	db   $ed                                         ; $4917: $ed
	db   $10                                         ; $4918: $10
	ld   a, [de]                                     ; $4919: $1a
	ld   a, [hl-]                                    ; $491a: $3a

jr_08f_491b:
	dec  b                                           ; $491b: $05
	dec  a                                           ; $491c: $3d
	ld   a, [hl+]                                    ; $491d: $2a
	ld   a, [hl-]                                    ; $491e: $3a
	inc  a                                           ; $491f: $3c
	dec  a                                           ; $4920: $3d
	ld   a, b                                        ; $4921: $78
	ld   a, d                                        ; $4922: $7a
	cp   b                                           ; $4923: $b8
	cp   h                                           ; $4924: $bc
	ld   h, b                                        ; $4925: $60
	or   e                                           ; $4926: $b3
	ld   b, a                                        ; $4927: $47
	ld   h, a                                        ; $4928: $67
	adc  e                                           ; $4929: $8b
	add  c                                           ; $492a: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $492b: $cf
	inc  bc                                          ; $492c: $03
	dec  bc                                          ; $492d: $0b
	adc  a                                           ; $492e: $8f
	dec  e                                           ; $492f: $1d
	rra                                              ; $4930: $1f
	add  b                                           ; $4931: $80
	ccf                                              ; $4932: $3f
	dec  bc                                          ; $4933: $0b
	ld   a, a                                        ; $4934: $7f
	ld   a, [hl]                                     ; $4935: $7e
	dec  b                                           ; $4936: $05
	db   $fd                                         ; $4937: $fd
	ldh  a, [c]                                      ; $4938: $f2
	ld   a, [$f4e4]                                  ; $4939: $fa $e4 $f4
	ret  z                                           ; $493c: $c8

	add  sp, -$4c                                    ; $493d: $e8 $b4
	db   $f4                                         ; $493f: $f4
	add  b                                           ; $4940: $80
	db   $eb                                         ; $4941: $eb
	ld   bc, $d454                                   ; $4942: $01 $54 $d4
	add  b                                           ; $4945: $80
	and  h                                           ; $4946: $a4
	add  b                                           ; $4947: $80
	rlca                                             ; $4948: $07
	ld   bc, $0400                                   ; $4949: $01 $00 $04
	add  b                                           ; $494c: $80
	rlca                                             ; $494d: $07
	add  b                                           ; $494e: $80
	inc  c                                           ; $494f: $0c
	add  b                                           ; $4950: $80
	ld   [hl], a                                     ; $4951: $77
	ld   bc, $8680                                   ; $4952: $01 $80 $86
	add  b                                           ; $4955: $80
	rlca                                             ; $4956: $07
	ld   [bc], a                                     ; $4957: $02
	ld   b, $05                                      ; $4958: $06 $05
	and  c                                           ; $495a: $a1
	add  b                                           ; $495b: $80
	and  b                                           ; $495c: $a0
	add  b                                           ; $495d: $80
	ldh  [$0e], a                                    ; $495e: $e0 $0e
	and  b                                           ; $4960: $a0
	or   b                                           ; $4961: $b0
	ldh  a, [$df]                                    ; $4962: $f0 $df
	cp   a                                           ; $4964: $bf
	db   $e4                                         ; $4965: $e4
	rst  JumpTable                                         ; $4966: $df
	cp   e                                           ; $4967: $bb
	and  b                                           ; $4968: $a0
	ld   a, a                                        ; $4969: $7f
	rst  $38                                         ; $496a: $ff
	cp   a                                           ; $496b: $bf
	jr   nc, jr_08f_498e                             ; $496c: $30 $20

	jr   nc, jr_08f_48f0                             ; $496e: $30 $80

	ld   [hl], b                                     ; $4970: $70
	dec  b                                           ; $4971: $05
	ret  nc                                          ; $4972: $d0

	ldh  [$b0], a                                    ; $4973: $e0 $b0
	ret  nc                                          ; $4975: $d0

	ld   [hl], b                                     ; $4976: $70
	jr   nc, @-$7e                                   ; $4977: $30 $80

	ldh  [rSC], a                                    ; $4979: $e0 $02
	and  b                                           ; $497b: $a0
	or   b                                           ; $497c: $b0
	rst  $28                                         ; $497d: $ef
	add  b                                           ; $497e: $80
	dec  bc                                          ; $497f: $0b
	add  b                                           ; $4980: $80
	ld   [$0084], sp                                 ; $4981: $08 $84 $00
	add  b                                           ; $4984: $80
	ld   bc, $0703                                   ; $4985: $01 $03 $07
	ld   bc, $f90f                                   ; $4988: $01 $0f $f9
	add  b                                           ; $498b: $80
	ld   l, [hl]                                     ; $498c: $6e
	add  b                                           ; $498d: $80

jr_08f_498e:
	ld   l, $80                                      ; $498e: $2e $80
	add  d                                           ; $4990: $82
	add  d                                           ; $4991: $82
	add  b                                           ; $4992: $80
	dec  b                                           ; $4993: $05
	ret  nz                                          ; $4994: $c0

	nop                                              ; $4995: $00
	rst  $20                                         ; $4996: $e7
	and  a                                           ; $4997: $a7
	sbc  b                                           ; $4998: $98
	jr   jr_08f_491b                                 ; $4999: $18 $80

	ret  z                                           ; $499b: $c8

	add  b                                           ; $499c: $80
	add  sp, -$80                                    ; $499d: $e8 $80
	jp   hl                                          ; $499f: $e9


	add  b                                           ; $49a0: $80
	ld   l, $80                                      ; $49a1: $2e $80
	add  hl, sp                                      ; $49a3: $39
	add  b                                           ; $49a4: $80
	rst  ToBoot                                         ; $49a5: $c7
	inc  bc                                          ; $49a6: $03
	inc  a                                           ; $49a7: $3c
	ccf                                              ; $49a8: $3f
	di                                               ; $49a9: $f3
	ld   [hl], b                                     ; $49aa: $70
	add  b                                           ; $49ab: $80
	inc  e                                           ; $49ac: $1c
	ld   bc, $f373                                   ; $49ad: $01 $73 $f3
	add  b                                           ; $49b0: $80
	adc  [hl]                                        ; $49b1: $8e
	ld   de, $7f78                                   ; $49b2: $11 $78 $7f
	rst  ToBoot                                         ; $49b5: $c7
	ret  c                                           ; $49b6: $d8

	rra                                              ; $49b7: $1f
	rst  $20                                         ; $49b8: $e7
	rst  $38                                         ; $49b9: $ff
	rra                                              ; $49ba: $1f
	db   $fc                                         ; $49bb: $fc
	db   $fd                                         ; $49bc: $fd
	pop  af                                          ; $49bd: $f1
	or   $c7                                         ; $49be: $f6 $c7
	ld   sp, hl                                      ; $49c0: $f9
	ccf                                              ; $49c1: $3f
	rst  ToBoot                                         ; $49c2: $c7
	rst  $38                                         ; $49c3: $ff
	ccf                                              ; $49c4: $3f
	add  b                                           ; $49c5: $80
	ld   hl, sp+$07                                  ; $49c6: $f8 $07
	ldh  [$e6], a                                    ; $49c8: $e0 $e6
	rlca                                             ; $49ca: $07
	add  hl, de                                      ; $49cb: $19
	rra                                              ; $49cc: $1f
	push bc                                          ; $49cd: $c5
	cp   $3d                                         ; $49ce: $fe $3d
	add  b                                           ; $49d0: $80
	ld   sp, hl                                      ; $49d1: $f9
	dec  d                                           ; $49d2: $15
	pop  bc                                          ; $49d3: $c1
	add  $07                                         ; $49d4: $c6 $07
	inc  sp                                          ; $49d6: $33
	ccf                                              ; $49d7: $3f
	call $3cfc                                       ; $49d8: $cd $fc $3c
	ldh  a, [$f1]                                    ; $49db: $f0 $f1
	add  c                                           ; $49dd: $81
	dec  e                                           ; $49de: $1d
	sbc  $c2                                         ; $49df: $de $c2
	sbc  $9f                                         ; $49e1: $de $9f
	sub  b                                           ; $49e3: $90
	db   $10                                         ; $49e4: $10
	add  b                                           ; $49e5: $80
	add  $87                                         ; $49e6: $c6 $87
	sbc  a                                           ; $49e8: $9f
	add  c                                           ; $49e9: $81
	rra                                              ; $49ea: $1f
	add  hl, bc                                      ; $49eb: $09
	sbc  a                                           ; $49ec: $9f
	rst  JumpTable                                         ; $49ed: $df
	ld   bc, $a0e0                                   ; $49ee: $01 $e0 $a0
	add  b                                           ; $49f1: $80
	add  c                                           ; $49f2: $81
	ld   bc, $0706                                   ; $49f3: $01 $06 $07
	add  b                                           ; $49f6: $80
	rra                                              ; $49f7: $1f
	ld   [bc], a                                     ; $49f8: $02
	ld   a, b                                        ; $49f9: $78
	rst  $38                                         ; $49fa: $ff
	cp   $81                                         ; $49fb: $fe $81
	db   $fc                                         ; $49fd: $fc
	inc  b                                           ; $49fe: $04
	rlca                                             ; $49ff: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a00: $cf
	ld   c, a                                        ; $4a01: $4f
	add  a                                           ; $4a02: $87
	add  h                                           ; $4a03: $84
	add  b                                           ; $4a04: $80
	add  a                                           ; $4a05: $87
	add  b                                           ; $4a06: $80
	dec  b                                           ; $4a07: $05
	add  l                                           ; $4a08: $85
	ld   bc, $fe06                                   ; $4a09: $01 $06 $fe
	rst  $38                                         ; $4a0c: $ff
	db   $fc                                         ; $4a0d: $fc
	rst  $38                                         ; $4a0e: $ff
	db   $e3                                         ; $4a0f: $e3
	rst  $38                                         ; $4a10: $ff
	rra                                              ; $4a11: $1f
	add  e                                           ; $4a12: $83
	rst  $38                                         ; $4a13: $ff
	inc  bc                                          ; $4a14: $03
	db   $fc                                         ; $4a15: $fc
	rst  $38                                         ; $4a16: $ff
	inc  bc                                          ; $4a17: $03
	sbc  a                                           ; $4a18: $9f
	add  b                                           ; $4a19: $80
	ret  nc                                          ; $4a1a: $d0

	inc  bc                                          ; $4a1b: $03
	ld   d, b                                        ; $4a1c: $50
	ret  nc                                          ; $4a1d: $d0

	pop  de                                          ; $4a1e: $d1
	ret  nc                                          ; $4a1f: $d0

	add  b                                           ; $4a20: $80
	pop  de                                          ; $4a21: $d1
	inc  bc                                          ; $4a22: $03
	pop  af                                          ; $4a23: $f1
	ldh  a, [$30]                                    ; $4a24: $f0 $30
	ldh  a, [$80]                                    ; $4a26: $f0 $80
	pop  af                                          ; $4a28: $f1
	add  b                                           ; $4a29: $80
	ldh  a, [rSB]                                    ; $4a2a: $f0 $01
	jr   nz, jr_08f_4a30                             ; $4a2c: $20 $02

	add  d                                           ; $4a2e: $82
	inc  bc                                          ; $4a2f: $03

jr_08f_4a30:
	add  b                                           ; $4a30: $80
	add  e                                           ; $4a31: $83
	ld   bc, $4340                                   ; $4a32: $01 $40 $43
	add  b                                           ; $4a35: $80
	add  e                                           ; $4a36: $83
	add  b                                           ; $4a37: $80
	ld   b, e                                        ; $4a38: $43
	ld   [bc], a                                     ; $4a39: $02
	ld   h, e                                        ; $4a3a: $63
	db   $e3                                         ; $4a3b: $e3
	add  l                                           ; $4a3c: $85
	add  c                                           ; $4a3d: $81
	inc  c                                           ; $4a3e: $0c
	nop                                              ; $4a3f: $00
	nop                                              ; $4a40: $00
	add  l                                           ; $4a41: $85
	inc  c                                           ; $4a42: $0c
	add  b                                           ; $4a43: $80
	dec  c                                           ; $4a44: $0d
	add  b                                           ; $4a45: $80
	ld   l, $13                                      ; $4a46: $2e $13
	rrca                                             ; $4a48: $0f
	dec  bc                                          ; $4a49: $0b
	dec  c                                           ; $4a4a: $0d
	rrca                                             ; $4a4b: $0f
	jr   jr_08f_4a6d                                 ; $4a4c: $18 $1f

	add  hl, de                                      ; $4a4e: $19
	rra                                              ; $4a4f: $1f
	add  hl, sp                                      ; $4a50: $39
	ccf                                              ; $4a51: $3f
	ld   de, $333f                                   ; $4a52: $11 $3f $33
	ccf                                              ; $4a55: $3f
	or   e                                           ; $4a56: $b3
	cp   a                                           ; $4a57: $bf
	and  e                                           ; $4a58: $a3
	ld   hl, sp+$58                                  ; $4a59: $f8 $58
	ret  c                                           ; $4a5b: $d8

	add  b                                           ; $4a5c: $80
	reti                                             ; $4a5d: $d9


	nop                                              ; $4a5e: $00
	ret  z                                           ; $4a5f: $c8

	add  b                                           ; $4a60: $80
	ret                                              ; $4a61: $c9


	add  d                                           ; $4a62: $82
	res  0, c                                        ; $4a63: $cb $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a65: $cf
	nop                                              ; $4a66: $00

jr_08f_4a67:
	dec  bc                                          ; $4a67: $0b
	add  c                                           ; $4a68: $81
	db   $fc                                         ; $4a69: $fc
	add  b                                           ; $4a6a: $80
	ld   hl, sp+$02                                  ; $4a6b: $f8 $02

jr_08f_4a6d:
	jr   jr_08f_4a67                                 ; $4a6d: $18 $f8

	ldh  [$81], a                                    ; $4a6f: $e0 $81
	ldh  a, [rSB]                                    ; $4a71: $f0 $01
	pop  hl                                          ; $4a73: $e1
	pop  af                                          ; $4a74: $f1
	add  b                                           ; $4a75: $80
	ld   hl, sp+$01                                  ; $4a76: $f8 $01
	inc  [hl]                                        ; $4a78: $34
	call nc, $9480                                   ; $4a79: $d4 $80 $94
	add  d                                           ; $4a7c: $82
	inc  d                                           ; $4a7d: $14
	add  b                                           ; $4a7e: $80
	rla                                              ; $4a7f: $17
	add  b                                           ; $4a80: $80
	ld   [hl], h                                     ; $4a81: $74
	add  b                                           ; $4a82: $80
	sub  h                                           ; $4a83: $94
	add  b                                           ; $4a84: $80
	inc  d                                           ; $4a85: $14
	add  d                                           ; $4a86: $82
	inc  b                                           ; $4a87: $04
	add  b                                           ; $4a88: $80
	rlca                                             ; $4a89: $07
	add  b                                           ; $4a8a: $80
	ld   a, h                                        ; $4a8b: $7c
	add  b                                           ; $4a8c: $80
	add  h                                           ; $4a8d: $84
	add  b                                           ; $4a8e: $80
	inc  b                                           ; $4a8f: $04
	add  hl, bc                                      ; $4a90: $09
	nop                                              ; $4a91: $00
	rlca                                             ; $4a92: $07
	scf                                              ; $4a93: $37
	ld   e, h                                        ; $4a94: $5c
	ld   [hl], c                                     ; $4a95: $71
	ld   a, l                                        ; $4a96: $7d
	nop                                              ; $4a97: $00
	ld   a, a                                        ; $4a98: $7f
	sbc  d                                           ; $4a99: $9a
	add  l                                           ; $4a9a: $85
	add  b                                           ; $4a9b: $80
	dec  b                                           ; $4a9c: $05
	nop                                              ; $4a9d: $00
	nop                                              ; $4a9e: $00
	add  b                                           ; $4a9f: $80
	rlca                                             ; $4aa0: $07
	add  b                                           ; $4aa1: $80
	ld   a, h                                        ; $4aa2: $7c
	inc  bc                                          ; $4aa3: $03
	jp   $3ec1                                       ; $4aa4: $c3 $c1 $3e


	inc  sp                                          ; $4aa7: $33
	add  b                                           ; $4aa8: $80
	ldh  [$82], a                                    ; $4aa9: $e0 $82
	nop                                              ; $4aab: $00
	add  b                                           ; $4aac: $80
	ld   [hl], b                                     ; $4aad: $70
	add  b                                           ; $4aae: $80
	ret  nz                                          ; $4aaf: $c0

	rlca                                             ; $4ab0: $07
	jr   nc, jr_08f_4ab3                             ; $4ab1: $30 $00

jr_08f_4ab3:
	ldh  a, [$b0]                                    ; $4ab3: $f0 $b0
	ld   [hl], b                                     ; $4ab5: $70
	di                                               ; $4ab6: $f3
	ld   c, $02                                      ; $4ab7: $0e $02
	add  b                                           ; $4ab9: $80
	ld   bc, $0e80                                   ; $4aba: $01 $80 $0e
	add  hl, bc                                      ; $4abd: $09
	ld   bc, $0009                                   ; $4abe: $01 $09 $00
	dec  bc                                          ; $4ac1: $0b
	inc  bc                                          ; $4ac2: $03
	ld   b, $0f                                      ; $4ac3: $06 $0f
	dec  b                                           ; $4ac5: $05
	rlca                                             ; $4ac6: $07
	ei                                               ; $4ac7: $fb
	add  b                                           ; $4ac8: $80
	ld   h, a                                        ; $4ac9: $67
	dec  h                                           ; $4aca: $25
	sbc  h                                           ; $4acb: $9c
	sbc  a                                           ; $4acc: $9f
	ld   [hl], e                                     ; $4acd: $73
	ld   a, h                                        ; $4ace: $7c
	adc  a                                           ; $4acf: $8f
	di                                               ; $4ad0: $f3
	ld   a, a                                        ; $4ad1: $7f
	adc  a                                           ; $4ad2: $8f
	cp   $7e                                         ; $4ad3: $fe $7e
	ldh  a, [$f1]                                    ; $4ad5: $f0 $f1
	pop  bc                                          ; $4ad7: $c1
	call c, $e39f                                    ; $4ad8: $dc $9f $e3
	ld   a, a                                        ; $4adb: $7f
	sbc  a                                           ; $4adc: $9f
	cp   $7e                                         ; $4add: $fe $7e
	ldh  a, [$f1]                                    ; $4adf: $f0 $f1
	add  c                                           ; $4ae1: $81
	adc  h                                           ; $4ae2: $8c
	rrca                                             ; $4ae3: $0f
	ld   h, e                                        ; $4ae4: $63
	ld   a, [hl]                                     ; $4ae5: $7e
	sbc  [hl]                                        ; $4ae6: $9e
	pop  af                                          ; $4ae7: $f1
	ld   [hl], c                                     ; $4ae8: $71
	ldh  [$e3], a                                    ; $4ae9: $e0 $e3
	add  e                                           ; $4aeb: $83
	sbc  b                                           ; $4aec: $98
	rra                                              ; $4aed: $1f
	ld   h, a                                        ; $4aee: $67
	ld   a, h                                        ; $4aef: $7c
	inc  e                                           ; $4af0: $1c
	add  b                                           ; $4af1: $80
	ldh  a, [$0c]                                    ; $4af2: $f0 $0c
	add  b                                           ; $4af4: $80
	add  c                                           ; $4af5: $81
	ld   bc, $8f0f                                   ; $4af6: $01 $0f $8f
	ld   b, b                                        ; $4af9: $40
	db   $fc                                         ; $4afa: $fc
	ld   a, $f3                                      ; $4afb: $3e $f3
	push af                                          ; $4afd: $f5
	add  [hl]                                        ; $4afe: $86
	add  d                                           ; $4aff: $82
	inc  b                                           ; $4b00: $04
	add  b                                           ; $4b01: $80
	inc  c                                           ; $4b02: $0c
	ld   bc, $3c30                                   ; $4b03: $01 $30 $3c
	add  b                                           ; $4b06: $80
	db   $fc                                         ; $4b07: $fc
	inc  d                                           ; $4b08: $14
	ldh  [$f8], a                                    ; $4b09: $e0 $f8
	ld   de, $0f01                                   ; $4b0b: $11 $01 $0f
	adc  a                                           ; $4b0e: $8f
	ccf                                              ; $4b0f: $3f
	rst  $38                                         ; $4b10: $ff
	ld   a, [hl]                                     ; $4b11: $7e
	ld   a, a                                        ; $4b12: $7f
	ld   e, a                                        ; $4b13: $5f
	ld   a, a                                        ; $4b14: $7f
	inc  sp                                          ; $4b15: $33
	ld   a, a                                        ; $4b16: $7f
	cpl                                              ; $4b17: $2f
	ccf                                              ; $4b18: $3f
	ld   a, $3f                                      ; $4b19: $3e $3f
	and  c                                           ; $4b1b: $a1
	sbc  $c2                                         ; $4b1c: $de $c2
	add  c                                           ; $4b1e: $81
	sbc  $0c                                         ; $4b1f: $de $0c
	ld   a, $be                                      ; $4b21: $3e $be
	cp   b                                           ; $4b23: $b8
	cp   a                                           ; $4b24: $bf
	and  a                                           ; $4b25: $a7
	cp   a                                           ; $4b26: $bf
	sub  d                                           ; $4b27: $92
	sbc  l                                           ; $4b28: $9d
	dec  l                                           ; $4b29: $2d
	ldh  a, [c]                                      ; $4b2a: $f2
	ld   d, b                                        ; $4b2b: $50
	db   $fc                                         ; $4b2c: $fc
	inc  a                                           ; $4b2d: $3c
	add  c                                           ; $4b2e: $81
	ld   a, h                                        ; $4b2f: $7c
	inc  b                                           ; $4b30: $04
	ld   h, h                                        ; $4b31: $64
	ld   a, l                                        ; $4b32: $7d
	dec  d                                           ; $4b33: $15
	ld   a, [hl]                                     ; $4b34: $7e
	adc  [hl]                                        ; $4b35: $8e
	add  b                                           ; $4b36: $80
	ldh  a, [$80]                                    ; $4b37: $f0 $80
	add  a                                           ; $4b39: $87
	add  b                                           ; $4b3a: $80
	ccf                                              ; $4b3b: $3f
	add  b                                           ; $4b3c: $80
	ld   bc, $0280                                   ; $4b3d: $01 $80 $02
	add  b                                           ; $4b40: $80
	dec  e                                           ; $4b41: $1d
	add  b                                           ; $4b42: $80
	pop  hl                                          ; $4b43: $e1
	add  b                                           ; $4b44: $80
	ld   c, $80                                      ; $4b45: $0e $80
	ld   a, a                                        ; $4b47: $7f
	add  b                                           ; $4b48: $80
	pop  af                                          ; $4b49: $f1
	rlca                                             ; $4b4a: $07
	add  c                                           ; $4b4b: $81
	xor  $9f                                         ; $4b4c: $ee $9f
	sub  a                                           ; $4b4e: $97
	ld   a, a                                        ; $4b4f: $7f
	ld   a, e                                        ; $4b50: $7b
	adc  a                                           ; $4b51: $8f
	adc  h                                           ; $4b52: $8c
	add  b                                           ; $4b53: $80
	sub  a                                           ; $4b54: $97
	add  b                                           ; $4b55: $80
	ld   a, e                                        ; $4b56: $7b
	add  b                                           ; $4b57: $80
	xor  l                                           ; $4b58: $ad
	inc  h                                           ; $4b59: $24
	add  [hl]                                        ; $4b5a: $86
	sub  [hl]                                        ; $4b5b: $96
	sub  e                                           ; $4b5c: $93
	dec  a                                           ; $4b5d: $3d
	ld   sp, hl                                      ; $4b5e: $f9
	and  $f9                                         ; $4b5f: $e6 $f9
	ld   a, $e7                                      ; $4b61: $3e $e7
	ld   hl, sp-$07                                  ; $4b63: $f8 $f9
	ldh  [$f1], a                                    ; $4b65: $e0 $f1
	or   b                                           ; $4b67: $b0
	pop  af                                          ; $4b68: $f1
	ld   [hl], b                                     ; $4b69: $70
	pop  af                                          ; $4b6a: $f1
	ldh  a, [$f1]                                    ; $4b6b: $f0 $f1
	sub  d                                           ; $4b6d: $92

jr_08f_4b6e:
	db   $e3                                         ; $4b6e: $e3
	dec  bc                                          ; $4b6f: $0b
	db   $eb                                         ; $4b70: $eb
	rla                                              ; $4b71: $17
	rst  $30                                         ; $4b72: $f7
	dec  bc                                          ; $4b73: $0b
	db   $eb                                         ; $4b74: $eb
	ld   d, $f6                                      ; $4b75: $16 $f6
	rra                                              ; $4b77: $1f
	ldh  a, [rAUD3HIGH]                              ; $4b78: $f0 $1e
	ret  nz                                          ; $4b7a: $c0

	ld   [hl], b                                     ; $4b7b: $70
	pop  bc                                          ; $4b7c: $c1
	sbc  b                                           ; $4b7d: $98
	ld   e, l                                        ; $4b7e: $5d
	add  b                                           ; $4b7f: $80
	xor  [hl]                                        ; $4b80: $ae
	ld   b, $5f                                      ; $4b81: $06 $5f
	ld   e, h                                        ; $4b83: $5c
	cp   e                                           ; $4b84: $bb
	and  b                                           ; $4b85: $a0
	db   $fc                                         ; $4b86: $fc
	nop                                              ; $4b87: $00
	ldh  [$83], a                                    ; $4b88: $e0 $83
	inc  b                                           ; $4b8a: $04
	dec  bc                                          ; $4b8b: $0b
	inc  e                                           ; $4b8c: $1c
	ccf                                              ; $4b8d: $3f
	or   d                                           ; $4b8e: $b2
	cp   a                                           ; $4b8f: $bf
	cp   l                                           ; $4b90: $bd
	scf                                              ; $4b91: $37
	rst  $28                                         ; $4b92: $ef
	cpl                                              ; $4b93: $2f
	ld   d, a                                        ; $4b94: $57
	rla                                              ; $4b95: $17

jr_08f_4b96:
	cpl                                              ; $4b96: $2f
	rrca                                             ; $4b97: $0f
	add  b                                           ; $4b98: $80
	ld   d, a                                        ; $4b99: $57
	add  b                                           ; $4b9a: $80
	xor  a                                           ; $4b9b: $af
	dec  b                                           ; $4b9c: $05
	jr   c, jr_08f_4b6e                              ; $4b9d: $38 $cf

	add  hl, hl                                      ; $4b9f: $29
	rst  $28                                         ; $4ba0: $ef
	xor  $ef                                         ; $4ba1: $ee $ef
	add  b                                           ; $4ba3: $80
	rst  $38                                         ; $4ba4: $ff
	ld   bc, $fffe                                   ; $4ba5: $01 $fe $ff
	add  b                                           ; $4ba8: $80
	di                                               ; $4ba9: $f3
	add  b                                           ; $4baa: $80
	ld   sp, hl                                      ; $4bab: $f9
	ld   [bc], a                                     ; $4bac: $02
	cp   a                                           ; $4bad: $bf
	rst  $38                                         ; $4bae: $ff
	ld   c, c                                        ; $4baf: $49
	add  c                                           ; $4bb0: $81
	ld   hl, sp+$02                                  ; $4bb1: $f8 $02
	nop                                              ; $4bb3: $00
	rst  ToBoot                                         ; $4bb4: $c7
	add  a                                           ; $4bb5: $87
	add  b                                           ; $4bb6: $80
	db   $fc                                         ; $4bb7: $fc
	add  b                                           ; $4bb8: $80
	db   $e3                                         ; $4bb9: $e3
	rlca                                             ; $4bba: $07
	call c, $f9e5                                    ; $4bbb: $dc $e5 $f9
	db   $ed                                         ; $4bbe: $ed
	rst  $38                                         ; $4bbf: $ff
	ld   b, d                                        ; $4bc0: $42
	rla                                              ; $4bc1: $17
	rlca                                             ; $4bc2: $07
	add  b                                           ; $4bc3: $80
	ld   a, h                                        ; $4bc4: $7c
	inc  d                                           ; $4bc5: $14
	jp   $3fc0                                       ; $4bc6: $c3 $c0 $3f


	dec  sp                                          ; $4bc9: $3b
	rst  ToBoot                                         ; $4bca: $c7
	ld   b, c                                        ; $4bcb: $41
	sbc  c                                           ; $4bcc: $99
	ld   a, b                                        ; $4bcd: $78
	ld   a, h                                        ; $4bce: $7c
	sub  [hl]                                        ; $4bcf: $96
	cp   d                                           ; $4bd0: $ba
	inc  b                                           ; $4bd1: $04
	rst  JumpTable                                         ; $4bd2: $df
	call c, Call_08f_5d1f                            ; $4bd3: $dc $1f $5d
	rst  JumpTable                                         ; $4bd6: $df
	ld   e, a                                        ; $4bd7: $5f
	rst  JumpTable                                         ; $4bd8: $df
	ld   e, a                                        ; $4bd9: $5f
	rst  JumpTable                                         ; $4bda: $df

jr_08f_4bdb:
	add  h                                           ; $4bdb: $84
	sbc  $17                                         ; $4bdc: $de $17
	adc  e                                           ; $4bde: $8b
	push hl                                          ; $4bdf: $e5
	ld   c, $cb                                      ; $4be0: $0e $cb
	add  a                                           ; $4be2: $87
	or   a                                           ; $4be3: $b7
	or   l                                           ; $4be4: $b5
	cp   a                                           ; $4be5: $bf
	ld   l, d                                        ; $4be6: $6a
	ld   e, a                                        ; $4be7: $5f
	and  c                                           ; $4be8: $a1
	xor  c                                           ; $4be9: $a9
	ld   d, b                                        ; $4bea: $50
	ld   e, a                                        ; $4beb: $5f
	adc  e                                           ; $4bec: $8b
	cp   d                                           ; $4bed: $ba
	ld   [hl], a                                     ; $4bee: $77
	ldh  [$80], a                                    ; $4bef: $e0 $80
	ldh  [$90], a                                    ; $4bf1: $e0 $90
	ret  nc                                          ; $4bf3: $d0

	jr   nz, jr_08f_4b96                             ; $4bf4: $20 $a0

	add  b                                           ; $4bf6: $80
	ld   d, b                                        ; $4bf7: $50
	add  hl, bc                                      ; $4bf8: $09
	jr   nz, jr_08f_4bdb                             ; $4bf9: $20 $e0

	add  b                                           ; $4bfb: $80
	or   b                                           ; $4bfc: $b0
	ldh  [$f0], a                                    ; $4bfd: $e0 $f0
	inc  de                                          ; $4bff: $13
	ld   b, $0a                                      ; $4c00: $06 $0a
	nop                                              ; $4c02: $00
	add  b                                           ; $4c03: $80
	ld   bc, $0602                                   ; $4c04: $01 $02 $06
	rlca                                             ; $4c07: $07
	ld   bc, $0680                                   ; $4c08: $01 $80 $06
	add  c                                           ; $4c0b: $81
	nop                                              ; $4c0c: $00
	add  b                                           ; $4c0d: $80
	inc  bc                                          ; $4c0e: $03
	db   $10                                         ; $4c0f: $10
	db   $fc                                         ; $4c10: $fc
	rrca                                             ; $4c11: $0f
	inc  sp                                          ; $4c12: $33
	ld   a, $8e                                      ; $4c13: $3e $8e
	ldh  a, [rSVBK]                                  ; $4c15: $f0 $70
	add  b                                           ; $4c17: $80
	add  e                                           ; $4c18: $83
	ld   h, e                                        ; $4c19: $63
	ld   l, a                                        ; $4c1a: $6f
	sbc  a                                           ; $4c1b: $9f
	sub  a                                           ; $4c1c: $97
	sbc  a                                           ; $4c1d: $9f
	sbc  [hl]                                        ; $4c1e: $9e
	adc  a                                           ; $4c1f: $8f
	adc  e                                           ; $4c20: $8b
	add  b                                           ; $4c21: $80
	add  [hl]                                        ; $4c22: $86
	nop                                              ; $4c23: $00
	ld   b, $80                                      ; $4c24: $06 $80
	ld   c, $80                                      ; $4c26: $0e $80
	ld   a, [hl]                                     ; $4c28: $7e
	nop                                              ; $4c29: $00
	db   $f4                                         ; $4c2a: $f4
	add  c                                           ; $4c2b: $81
	ld   hl, sp+$16                                  ; $4c2c: $f8 $16
	ret  z                                           ; $4c2e: $c8

	ld   hl, sp+$38                                  ; $4c2f: $f8 $38
	ld   hl, sp-$39                                  ; $4c31: $f8 $c7
	ld   a, a                                        ; $4c33: $7f
	ld   e, a                                        ; $4c34: $5f
	ld   a, a                                        ; $4c35: $7f
	ld   a, b                                        ; $4c36: $78
	ccf                                              ; $4c37: $3f
	daa                                              ; $4c38: $27
	ccf                                              ; $4c39: $3f
	ld   a, $3f                                      ; $4c3a: $3e $3f
	scf                                              ; $4c3c: $37
	ld   a, $26                                      ; $4c3d: $3e $26
	dec  a                                           ; $4c3f: $3d
	dec  l                                           ; $4c40: $2d
	ld   [hl], d                                     ; $4c41: $72
	sub  e                                           ; $4c42: $93
	ldh  a, [rAUD1SWEEP]                             ; $4c43: $f0 $10
	add  c                                           ; $4c45: $81
	ldh  a, [rDIV]                                   ; $4c46: $f0 $04
	ret  nc                                          ; $4c48: $d0

	di                                               ; $4c49: $f3
	inc  de                                          ; $4c4a: $13
	db   $fc                                         ; $4c4b: $fc
	inc  a                                           ; $4c4c: $3c
	add  b                                           ; $4c4d: $80
	pop  bc                                          ; $4c4e: $c1
	add  b                                           ; $4c4f: $80
	rrca                                             ; $4c50: $0f
	dec  b                                           ; $4c51: $05
	ld   a, [hl]                                     ; $4c52: $7e
	ld   [hl], b                                     ; $4c53: $70
	ccf                                              ; $4c54: $3f
	ld   hl, $2e3e                                   ; $4c55: $21 $3e $2e
	add  b                                           ; $4c58: $80
	ld   [hl], b                                     ; $4c59: $70
	add  b                                           ; $4c5a: $80
	add  e                                           ; $4c5b: $83
	add  b                                           ; $4c5c: $80
	ccf                                              ; $4c5d: $3f
	add  b                                           ; $4c5e: $80
	db   $fc                                         ; $4c5f: $fc
	inc  bc                                          ; $4c60: $03
	ret  nz                                          ; $4c61: $c0

	add  $06                                         ; $4c62: $c6 $06
	ld   [bc], a                                     ; $4c64: $02
	add  b                                           ; $4c65: $80
	db   $ed                                         ; $4c66: $ed
	add  b                                           ; $4c67: $80
	dec  e                                           ; $4c68: $1d
	add  b                                           ; $4c69: $80
	ld   [hl], d                                     ; $4c6a: $72
	add  b                                           ; $4c6b: $80
	ldh  [c], a                                      ; $4c6c: $e2
	add  b                                           ; $4c6d: $80
	adc  h                                           ; $4c6e: $8c
	nop                                              ; $4c6f: $00
	inc  e                                           ; $4c70: $1c
	add  b                                           ; $4c71: $80
	db   $dd                                         ; $4c72: $dd
	ld   [bc], a                                     ; $4c73: $02
	dec  e                                           ; $4c74: $1d
	db   $dd                                         ; $4c75: $dd
	sbc  $80                                         ; $4c76: $de $80
	ld   hl, sp+$08                                  ; $4c78: $f8 $08
	ret  nz                                          ; $4c7a: $c0

	jp   $1803                                       ; $4c7b: $c3 $03 $18


	dec  de                                          ; $4c7e: $1b
	rst  ToBoot                                         ; $4c7f: $c7
	rst  JumpTable                                         ; $4c80: $df
	ccf                                              ; $4c81: $3f
	rst  $38                                         ; $4c82: $ff
	add  b                                           ; $4c83: $80
	db   $fc                                         ; $4c84: $fc
	rlca                                             ; $4c85: $07
	rst  $20                                         ; $4c86: $e7
	ret  nz                                          ; $4c87: $c0

	ldh  a, [$0d]                                    ; $4c88: $f0 $0d
	ld   h, c                                        ; $4c8a: $61
	ld   l, l                                        ; $4c8b: $6d
	rrca                                             ; $4c8c: $0f
	ld   l, a                                        ; $4c8d: $6f
	add  b                                           ; $4c8e: $80
	ld   a, a                                        ; $4c8f: $7f
	ld   [$f9fb], sp                                 ; $4c90: $08 $fb $f9
	db   $d3                                         ; $4c93: $d3
	ret  nz                                          ; $4c94: $c0

	cp   h                                           ; $4c95: $bc
	inc  bc                                          ; $4c96: $03
	jp   Jump_08f_5f3f                               ; $4c97: $c3 $3f $5f


	add  b                                           ; $4c9a: $80
	sbc  c                                           ; $4c9b: $99
	dec  b                                           ; $4c9c: $05
	sbc  h                                           ; $4c9d: $9c
	sbc  l                                           ; $4c9e: $9d
	sub  a                                           ; $4c9f: $97
	sub  [hl]                                        ; $4ca0: $96
	sub  a                                           ; $4ca1: $97
	sbc  a                                           ; $4ca2: $9f
	add  b                                           ; $4ca3: $80
	sbc  l                                           ; $4ca4: $9d
	dec  b                                           ; $4ca5: $05
	dec  e                                           ; $4ca6: $1d
	ld   e, a                                        ; $4ca7: $5f
	sbc  a                                           ; $4ca8: $9f

jr_08f_4ca9:
	rst  $38                                         ; $4ca9: $ff
	adc  a                                           ; $4caa: $8f
	sub  l                                           ; $4cab: $95
	add  b                                           ; $4cac: $80
	ld   [hl], c                                     ; $4cad: $71
	ld   [bc], a                                     ; $4cae: $02
	ldh  a, [$f1]                                    ; $4caf: $f0 $f1
	ld   [hl], c                                     ; $4cb1: $71
	add  b                                           ; $4cb2: $80
	ld   [hl], b                                     ; $4cb3: $70
	add  b                                           ; $4cb4: $80
	ld   [hl], c                                     ; $4cb5: $71
	add  c                                           ; $4cb6: $81
	ld   [hl], b                                     ; $4cb7: $70
	inc  b                                           ; $4cb8: $04
	ld   [hl], c                                     ; $4cb9: $71
	halt                                             ; $4cba: $76
	ld   [hl], c                                     ; $4cbb: $71
	ld   h, [hl]                                     ; $4cbc: $66
	ld   b, c                                        ; $4cbd: $41
	add  b                                           ; $4cbe: $80
	and  c                                           ; $4cbf: $a1
	ld   bc, $5657                                   ; $4cc0: $01 $57 $56
	add  b                                           ; $4cc3: $80
	xor  d                                           ; $4cc4: $aa
	add  hl, bc                                      ; $4cc5: $09
	ld   e, d                                        ; $4cc6: $5a
	ld   e, a                                        ; $4cc7: $5f
	sub  b                                           ; $4cc8: $90
	rst  $38                                         ; $4cc9: $ff
	ret  nz                                          ; $4cca: $c0

	rst  $38                                         ; $4ccb: $ff
	nop                                              ; $4ccc: $00
	rst  $38                                         ; $4ccd: $ff
	cp   e                                           ; $4cce: $bb
	ld   de, $aa80                                   ; $4ccf: $11 $80 $aa
	inc  e                                           ; $4cd2: $1c
	ld   d, d                                        ; $4cd3: $52
	ld   d, a                                        ; $4cd4: $57
	sub  b                                           ; $4cd5: $90
	rst  $38                                         ; $4cd6: $ff
	ret  nz                                          ; $4cd7: $c0

	rst  $38                                         ; $4cd8: $ff
	nop                                              ; $4cd9: $00
	rst  $38                                         ; $4cda: $ff
	nop                                              ; $4cdb: $00
	rst  $38                                         ; $4cdc: $ff
	nop                                              ; $4cdd: $00
	rst  $38                                         ; $4cde: $ff
	ldh  a, [c]                                      ; $4cdf: $f2
	ld   e, a                                        ; $4ce0: $5f
	rst  $10                                         ; $4ce1: $d7
	rst  $38                                         ; $4ce2: $ff
	adc  a                                           ; $4ce3: $8f
	rst  $38                                         ; $4ce4: $ff
	rrca                                             ; $4ce5: $0f
	rst  $38                                         ; $4ce6: $ff
	rrca                                             ; $4ce7: $0f
	rst  $38                                         ; $4ce8: $ff
	rrca                                             ; $4ce9: $0f
	rst  $38                                         ; $4cea: $ff
	rrca                                             ; $4ceb: $0f
	rst  $38                                         ; $4cec: $ff
	ld   [$86ff], sp                                 ; $4ced: $08 $ff $86
	add  c                                           ; $4cf0: $81
	rst  JumpTable                                         ; $4cf1: $df
	add  d                                           ; $4cf2: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cf3: $cf
	nop                                              ; $4cf4: $00
	ret                                              ; $4cf5: $c9


	add  c                                           ; $4cf6: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cf7: $cf
	jr   nz, jr_08f_4ca9                             ; $4cf8: $20 $af

	rst  $28                                         ; $4cfa: $ef
	ld   l, a                                        ; $4cfb: $6f
	rst  $28                                         ; $4cfc: $ef
	sub  a                                           ; $4cfd: $97
	rst  $30                                         ; $4cfe: $f7
	di                                               ; $4cff: $f3
	push af                                          ; $4d00: $f5
	ei                                               ; $4d01: $fb
	ld   a, [$f5f4]                                  ; $4d02: $fa $f4 $f5
	pop  af                                          ; $4d05: $f1
	di                                               ; $4d06: $f3
	db   $fd                                         ; $4d07: $fd
	rst  $38                                         ; $4d08: $ff
	db   $fd                                         ; $4d09: $fd
	db   $fc                                         ; $4d0a: $fc
	ldh  [rIE], a                                    ; $4d0b: $e0 $ff
	ld   e, d                                        ; $4d0d: $5a
	ld   [hl], l                                     ; $4d0e: $75
	adc  d                                           ; $4d0f: $8a
	ld   a, [hl+]                                    ; $4d10: $2a
	dec  d                                           ; $4d11: $15
	db   $ed                                         ; $4d12: $ed
	add  hl, sp                                      ; $4d13: $39
	cp   c                                           ; $4d14: $b9
	or   e                                           ; $4d15: $b3
	dec  sp                                          ; $4d16: $3b
	or   b                                           ; $4d17: $b0
	add  a                                           ; $4d18: $87
	rlca                                             ; $4d19: $07
	add  b                                           ; $4d1a: $80
	ld   hl, sp+$01                                  ; $4d1b: $f8 $01
	inc  bc                                          ; $4d1d: $03
	halt                                             ; $4d1e: $76
	add  e                                           ; $4d1f: $83
	rst  JumpTable                                         ; $4d20: $df
	inc  b                                           ; $4d21: $04
	db   $dd                                         ; $4d22: $dd
	rst  JumpTable                                         ; $4d23: $df
	ld   e, h                                        ; $4d24: $5c
	rst  JumpTable                                         ; $4d25: $df
	ld   e, e                                        ; $4d26: $5b
	add  b                                           ; $4d27: $80
	ret  c                                           ; $4d28: $d8

	dec  bc                                          ; $4d29: $0b
	ld   e, a                                        ; $4d2a: $5f
	rla                                              ; $4d2b: $17
	ld   hl, sp-$3b                                  ; $4d2c: $f8 $c5
	ld   [hl], l                                     ; $4d2e: $75
	ldh  a, [c]                                      ; $4d2f: $f2
	or   d                                           ; $4d30: $b2
	db   $f4                                         ; $4d31: $f4
	push bc                                          ; $4d32: $c5
	add  c                                           ; $4d33: $81
	cp   $7e                                         ; $4d34: $fe $7e
	add  b                                           ; $4d36: $80
	add  c                                           ; $4d37: $81
	add  b                                           ; $4d38: $80
	ld   a, [hl]                                     ; $4d39: $7e
	add  b                                           ; $4d3a: $80
	ret  nz                                          ; $4d3b: $c0

	dec  b                                           ; $4d3c: $05
	nop                                              ; $4d3d: $00
	rrca                                             ; $4d3e: $0f
	ld   h, b                                        ; $4d3f: $60
	ldh  a, [$90]                                    ; $4d40: $f0 $90
	nop                                              ; $4d42: $00
	add  b                                           ; $4d43: $80
	ldh  a, [$80]                                    ; $4d44: $f0 $80
	nop                                              ; $4d46: $00
	add  b                                           ; $4d47: $80
	ldh  a, [$83]                                    ; $4d48: $f0 $83
	nop                                              ; $4d4a: $00
	nop                                              ; $4d4b: $00
	ld   sp, hl                                      ; $4d4c: $f9
	add  c                                           ; $4d4d: $81
	rrca                                             ; $4d4e: $0f
	ld   [$0f0d], sp                                 ; $4d4f: $08 $0d $0f
	inc  bc                                          ; $4d52: $03
	rlca                                             ; $4d53: $07
	ld   bc, $0107                                   ; $4d54: $01 $07 $01
	rlca                                             ; $4d57: $07
	rrca                                             ; $4d58: $0f
	add  b                                           ; $4d59: $80
	ld   [$0109], sp                                 ; $4d5a: $08 $09 $01
	pop  af                                          ; $4d5d: $f1
	adc  a                                           ; $4d5e: $8f
	adc  [hl]                                        ; $4d5f: $8e
	rrca                                             ; $4d60: $0f
	ld   [$090f], sp                                 ; $4d61: $08 $0f $09
	ld   a, $36                                      ; $4d64: $3e $36
	add  b                                           ; $4d66: $80
	ld   l, b                                        ; $4d67: $68
	add  b                                           ; $4d68: $80
	sbc  e                                           ; $4d69: $9b
	add  b                                           ; $4d6a: $80
	scf                                              ; $4d6b: $37
	dec  b                                           ; $4d6c: $05
	db   $f4                                         ; $4d6d: $f4
	call z, $0fff                                    ; $4d6e: $cc $ff $0f
	ld   hl, sp+$38                                  ; $4d71: $f8 $38
	add  b                                           ; $4d73: $80
	pop  bc                                          ; $4d74: $c1
	add  b                                           ; $4d75: $80
	rrca                                             ; $4d76: $0f
	add  b                                           ; $4d77: $80
	ld   a, [hl]                                     ; $4d78: $7e
	dec  b                                           ; $4d79: $05
	ldh  a, [$f1]                                    ; $4d7a: $f0 $f1
	add  c                                           ; $4d7c: $81
	adc  h                                           ; $4d7d: $8c
	dec  c                                           ; $4d7e: $0d
	nop                                              ; $4d7f: $00
	add  b                                           ; $4d80: $80
	add  [hl]                                        ; $4d81: $86
	add  b                                           ; $4d82: $80
	ld   a, $80                                      ; $4d83: $3e $80
	ld   sp, hl                                      ; $4d85: $f9
	add  b                                           ; $4d86: $80
	jp   nz, $0600                                   ; $4d87: $c2 $00 $06

	add  b                                           ; $4d8a: $80
	ld   [hl], $1e                                   ; $4d8b: $36 $1e
	adc  [hl]                                        ; $4d8d: $8e
	cp   [hl]                                        ; $4d8e: $be
	ld   a, [hl]                                     ; $4d8f: $7e
	cp   $b7                                         ; $4d90: $fe $b7
	ldh  a, [$f1]                                    ; $4d92: $f0 $f1
	add  c                                           ; $4d94: $81
	adc  h                                           ; $4d95: $8c
	dec  c                                           ; $4d96: $0d
	ld   h, e                                        ; $4d97: $63
	ld   l, a                                        ; $4d98: $6f
	rra                                              ; $4d99: $1f
	ld   a, a                                        ; $4d9a: $7f
	ldh  a, [c]                                      ; $4d9b: $f2
	ldh  a, [$9f]                                    ; $4d9c: $f0 $9f
	nop                                              ; $4d9e: $00
	ldh  a, [rIF]                                    ; $4d9f: $f0 $0f
	ccf                                              ; $4da1: $3f
	ld   [hl], $8f                                   ; $4da2: $36 $8f
	cp   a                                           ; $4da4: $bf
	ld   a, a                                        ; $4da5: $7f
	cp   $e9                                         ; $4da6: $fe $e9
	ldh  [$5e], a                                    ; $4da8: $e0 $5e
	ld   bc, $80e1                                   ; $4daa: $01 $e1 $80
	rra                                              ; $4dad: $1f
	add  b                                           ; $4dae: $80
	cp   $0d                                         ; $4daf: $fe $0d
	ldh  [$c3], a                                    ; $4db1: $e0 $c3
	db   $fc                                         ; $4db3: $fc
	db   $fd                                         ; $4db4: $fd
	db   $fc                                         ; $4db5: $fc
	inc  a                                           ; $4db6: $3c
	dec  e                                           ; $4db7: $1d
	db   $fd                                         ; $4db8: $fd
	dec  e                                           ; $4db9: $1d
	dec  a                                           ; $4dba: $3d
	db   $fc                                         ; $4dbb: $fc
	cp   $e0                                         ; $4dbc: $fe $e0
	ret  nz                                          ; $4dbe: $c0

	add  c                                           ; $4dbf: $81
	nop                                              ; $4dc0: $00
	ld   [bc], a                                     ; $4dc1: $02
	ret  nz                                          ; $4dc2: $c0

	inc  bc                                          ; $4dc3: $03
	jp   $3f80                                       ; $4dc4: $c3 $80 $3f


	add  b                                           ; $4dc7: $80
	db   $fc                                         ; $4dc8: $fc
	add  b                                           ; $4dc9: $80
	ret  nz                                          ; $4dca: $c0

	add  d                                           ; $4dcb: $82
	nop                                              ; $4dcc: $00
	add  b                                           ; $4dcd: $80
	rlca                                             ; $4dce: $07
	add  b                                           ; $4dcf: $80
	ld   a, a                                        ; $4dd0: $7f
	add  b                                           ; $4dd1: $80
	db   $fc                                         ; $4dd2: $fc
	add  b                                           ; $4dd3: $80
	ret  nz                                          ; $4dd4: $c0

	add  d                                           ; $4dd5: $82
	nop                                              ; $4dd6: $00
	add  b                                           ; $4dd7: $80
	rlca                                             ; $4dd8: $07
	add  b                                           ; $4dd9: $80
	ld   a, a                                        ; $4dda: $7f
	add  b                                           ; $4ddb: $80
	ldh  a, [$09]                                    ; $4ddc: $f0 $09
	nop                                              ; $4dde: $00
	ld   h, d                                        ; $4ddf: $62
	rlca                                             ; $4de0: $07
	ld   a, a                                        ; $4de1: $7f
	inc  bc                                          ; $4de2: $03
	dec  d                                           ; $4de3: $15

jr_08f_4de4:
	ld   bc, $c10e                                   ; $4de4: $01 $0e $c1
	jp   $e180                                       ; $4de7: $c3 $80 $e1


	ld   [de], a                                     ; $4dea: $12
	add  hl, sp                                      ; $4deb: $39
	jr   c, jr_08f_4dfa                              ; $4dec: $38 $0c

	dec  c                                           ; $4dee: $0d
	rlca                                             ; $4def: $07
	ld   e, [hl]                                     ; $4df0: $5e
	ld   h, a                                        ; $4df1: $67
	ld   a, [hl]                                     ; $4df2: $7e
	ld   a, a                                        ; $4df3: $7f
	ld   a, [hl]                                     ; $4df4: $7e
	pop  af                                          ; $4df5: $f1
	ldh  a, [c]                                      ; $4df6: $f2
	jp   $cfce                                       ; $4df7: $c3 $ce $cf


jr_08f_4dfa:
	rst  $38                                         ; $4dfa: $ff
	cp   $7f                                         ; $4dfb: $fe $7f
	rst  $38                                         ; $4dfd: $ff
	add  b                                           ; $4dfe: $80
	cp   $09                                         ; $4dff: $fe $09
	xor  d                                           ; $4e01: $aa
	rst  $38                                         ; $4e02: $ff
	nop                                              ; $4e03: $00
	rst  $38                                         ; $4e04: $ff
	ld   bc, $0eff                                   ; $4e05: $01 $ff $0e
	ld   a, [$55f5]                                  ; $4e08: $fa $f5 $55
	add  b                                           ; $4e0b: $80
	xor  d                                           ; $4e0c: $aa
	add  b                                           ; $4e0d: $80
	ld   d, l                                        ; $4e0e: $55
	add  c                                           ; $4e0f: $81
	xor  d                                           ; $4e10: $aa
	db   $10                                         ; $4e11: $10
	rst  $38                                         ; $4e12: $ff
	nop                                              ; $4e13: $00
	rst  $38                                         ; $4e14: $ff
	nop                                              ; $4e15: $00
	rst  $38                                         ; $4e16: $ff
	nop                                              ; $4e17: $00
	rst  $38                                         ; $4e18: $ff
	nop                                              ; $4e19: $00
	rst  $38                                         ; $4e1a: $ff
	nop                                              ; $4e1b: $00
	rst  $38                                         ; $4e1c: $ff
	nop                                              ; $4e1d: $00
	rst  $38                                         ; $4e1e: $ff
	dec  d                                           ; $4e1f: $15
	rst  $38                                         ; $4e20: $ff
	ldh  [$5f], a                                    ; $4e21: $e0 $5f
	add  b                                           ; $4e23: $80
	cp   a                                           ; $4e24: $bf
	add  b                                           ; $4e25: $80
	ld   e, a                                        ; $4e26: $5f
	add  b                                           ; $4e27: $80
	cp   a                                           ; $4e28: $bf
	add  b                                           ; $4e29: $80
	ld   e, a                                        ; $4e2a: $5f
	ld   b, $b8                                      ; $4e2b: $06 $b8
	cp   a                                           ; $4e2d: $bf
	add  a                                           ; $4e2e: $87
	rst  $38                                         ; $4e2f: $ff
	ld   a, a                                        ; $4e30: $7f
	rst  $38                                         ; $4e31: $ff
	scf                                              ; $4e32: $37
	add  c                                           ; $4e33: $81
	rst  $38                                         ; $4e34: $ff
	nop                                              ; $4e35: $00
	ld   sp, hl                                      ; $4e36: $f9
	add  c                                           ; $4e37: $81
	rst  $38                                         ; $4e38: $ff
	inc  bc                                          ; $4e39: $03
	cp   $ff                                         ; $4e3a: $fe $ff
	ccf                                              ; $4e3c: $3f
	rst  $38                                         ; $4e3d: $ff
	add  b                                           ; $4e3e: $80
	rst  JumpTable                                         ; $4e3f: $df
	add  b                                           ; $4e40: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e41: $cf
	ld   [bc], a                                     ; $4e42: $02
	ld   d, b                                        ; $4e43: $50
	ldh  a, [$d0]                                    ; $4e44: $f0 $d0
	add  b                                           ; $4e46: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e47: $cf
	add  b                                           ; $4e48: $80
	ldh  a, [rSB]                                    ; $4e49: $f0 $01
	add  b                                           ; $4e4b: $80
	nop                                              ; $4e4c: $00
	add  b                                           ; $4e4d: $80
	add  b                                           ; $4e4e: $80
	add  b                                           ; $4e4f: $80
	add  a                                           ; $4e50: $87
	add  b                                           ; $4e51: $80
	ld   hl, sp-$80                                  ; $4e52: $f8 $80
	add  b                                           ; $4e54: $80
	add  b                                           ; $4e55: $80
	cp   $80                                         ; $4e56: $fe $80
	ret  nz                                          ; $4e58: $c0

	add  d                                           ; $4e59: $82
	nop                                              ; $4e5a: $00
	add  b                                           ; $4e5b: $80
	ccf                                              ; $4e5c: $3f
	add  b                                           ; $4e5d: $80
	ret  nz                                          ; $4e5e: $c0

	add  e                                           ; $4e5f: $83
	nop                                              ; $4e60: $00
	nop                                              ; $4e61: $00
	jr   jr_08f_4de4                                 ; $4e62: $18 $80

	nop                                              ; $4e64: $00
	inc  bc                                          ; $4e65: $03
	daa                                              ; $4e66: $27
	ccf                                              ; $4e67: $3f
	ld   hl, sp-$20                                  ; $4e68: $f8 $e0
	add  e                                           ; $4e6a: $83
	jr   nz, @+$04                                   ; $4e6b: $20 $02

	ld   hl, $3920                                   ; $4e6d: $21 $20 $39
	add  b                                           ; $4e70: $80
	nop                                              ; $4e71: $00
	add  b                                           ; $4e72: $80
	ccf                                              ; $4e73: $3f
	add  b                                           ; $4e74: $80
	ret  nz                                          ; $4e75: $c0

	add  e                                           ; $4e76: $83
	nop                                              ; $4e77: $00
	inc  bc                                          ; $4e78: $03
	rrca                                             ; $4e79: $0f
	nop                                              ; $4e7a: $00
	rst  $38                                         ; $4e7b: $ff
	rrca                                             ; $4e7c: $0f
	add  c                                           ; $4e7d: $81
	ldh  a, [$85]                                    ; $4e7e: $f0 $85
	nop                                              ; $4e80: $00
	inc  bc                                          ; $4e81: $03
	jr   nc, jr_08f_4e84                             ; $4e82: $30 $00

jr_08f_4e84:
	ldh  a, [$30]                                    ; $4e84: $f0 $30
	add  b                                           ; $4e86: $80
	ldh  a, [$81]                                    ; $4e87: $f0 $81
	rrca                                             ; $4e89: $0f
	add  b                                           ; $4e8a: $80
	ld   c, $00                                      ; $4e8b: $0e $00
	nop                                              ; $4e8d: $00
	add  b                                           ; $4e8e: $80
	dec  b                                           ; $4e8f: $05
	dec  c                                           ; $4e90: $0d
	ld   [$060d], sp                                 ; $4e91: $08 $0d $06
	inc  c                                           ; $4e94: $0c
	inc  bc                                          ; $4e95: $03
	nop                                              ; $4e96: $00
	inc  c                                           ; $4e97: $0c
	inc  bc                                          ; $4e98: $03
	ld   a, [$cac9]                                  ; $4e99: $fa $c9 $ca
	inc  de                                          ; $4e9c: $13
	ld   de, $8033                                   ; $4e9d: $11 $33 $80
	or   h                                           ; $4ea0: $b4
	db   $10                                         ; $4ea1: $10
	ld   [hl], a                                     ; $4ea2: $77
	ldh  a, [$74]                                    ; $4ea3: $f0 $74
	inc  sp                                          ; $4ea5: $33
	di                                               ; $4ea6: $f3
	scf                                              ; $4ea7: $37
	ld   [hl], a                                     ; $4ea8: $77
	db   $f4                                         ; $4ea9: $f4
	sbc  $6f                                         ; $4eaa: $de $6f
	ld   a, [de]                                     ; $4eac: $1a
	ld   a, b                                        ; $4ead: $78
	sub  a                                           ; $4eae: $97
	add  b                                           ; $4eaf: $80
	ld   hl, sp+$07                                  ; $4eb0: $f8 $07
	add  a                                           ; $4eb2: $87
	add  b                                           ; $4eb3: $80
	ld   a, a                                        ; $4eb4: $7f
	add  b                                           ; $4eb5: $80
	ld   hl, sp-$80                                  ; $4eb6: $f8 $80
	add  b                                           ; $4eb8: $80
	add  hl, bc                                      ; $4eb9: $09
	nop                                              ; $4eba: $00
	ld   a, c                                        ; $4ebb: $79
	add  [hl]                                        ; $4ebc: $86
	ld   a, [hl]                                     ; $4ebd: $7e
	ld   b, $8e                                      ; $4ebe: $06 $8e
	ld   a, [hl]                                     ; $4ec0: $7e
	ld   a, a                                        ; $4ec1: $7f
	ld   hl, sp-$10                                  ; $4ec2: $f8 $f0
	add  b                                           ; $4ec4: $80
	add  b                                           ; $4ec5: $80
	add  b                                           ; $4ec6: $80
	nop                                              ; $4ec7: $00
	inc  bc                                          ; $4ec8: $03
	rlca                                             ; $4ec9: $07
	ld   b, $7f                                      ; $4eca: $06 $7f
	ld   a, [hl]                                     ; $4ecc: $7e
	add  b                                           ; $4ecd: $80
	rst  $38                                         ; $4ece: $ff
	add  b                                           ; $4ecf: $80
	ldh  a, [$82]                                    ; $4ed0: $f0 $82
	nop                                              ; $4ed2: $00
	add  b                                           ; $4ed3: $80
	rlca                                             ; $4ed4: $07
	add  b                                           ; $4ed5: $80
	ld   a, a                                        ; $4ed6: $7f
	add  b                                           ; $4ed7: $80
	ldh  [$84], a                                    ; $4ed8: $e0 $84
	nop                                              ; $4eda: $00
	add  b                                           ; $4edb: $80
	rlca                                             ; $4edc: $07
	add  b                                           ; $4edd: $80
	ld   a, a                                        ; $4ede: $7f
	add  b                                           ; $4edf: $80
	ldh  a, [$84]                                    ; $4ee0: $f0 $84
	nop                                              ; $4ee2: $00
	add  b                                           ; $4ee3: $80
	rlca                                             ; $4ee4: $07
	inc  b                                           ; $4ee5: $04
	ld   a, a                                        ; $4ee6: $7f
	ld   a, e                                        ; $4ee7: $7b
	db   $f4                                         ; $4ee8: $f4
	di                                               ; $4ee9: $f3
	inc  bc                                          ; $4eea: $03
	add  a                                           ; $4eeb: $87
	nop                                              ; $4eec: $00
	add  b                                           ; $4eed: $80
	ldh  a, [$83]                                    ; $4eee: $f0 $83

jr_08f_4ef0:
	nop                                              ; $4ef0: $00
	add  b                                           ; $4ef1: $80

jr_08f_4ef2:
	ret  nz                                          ; $4ef2: $c0

	add  c                                           ; $4ef3: $81
	nop                                              ; $4ef4: $00
	ld   [bc], a                                     ; $4ef5: $02
	inc  bc                                          ; $4ef6: $03
	dec  a                                           ; $4ef7: $3d
	ld   a, $89                                      ; $4ef8: $3e $89
	nop                                              ; $4efa: $00
	add  b                                           ; $4efb: $80
	rrca                                             ; $4efc: $0f
	add  b                                           ; $4efd: $80
	ld   hl, sp+$02                                  ; $4efe: $f8 $02
	ld   bc, $0100                                   ; $4f00: $01 $00 $01
	add  e                                           ; $4f03: $83
	nop                                              ; $4f04: $00
	add  b                                           ; $4f05: $80
	ld   bc, $7e80                                   ; $4f06: $01 $80 $7e
	add  b                                           ; $4f09: $80
	ret  nz                                          ; $4f0a: $c0

	add  b                                           ; $4f0b: $80
	rrca                                             ; $4f0c: $0f
	add  hl, bc                                      ; $4f0d: $09
	db   $fc                                         ; $4f0e: $fc
	inc  bc                                          ; $4f0f: $03
	rst  $38                                         ; $4f10: $ff
	or   $f8                                         ; $4f11: $f6 $f8
	or   b                                           ; $4f13: $b0
	pop  bc                                          ; $4f14: $c1
	rrca                                             ; $4f15: $0f
	sub  c                                           ; $4f16: $91
	pop  hl                                          ; $4f17: $e1
	add  b                                           ; $4f18: $80
	ld   bc, $3f80                                   ; $4f19: $01 $80 $3f
	add  b                                           ; $4f1c: $80
	pop  af                                          ; $4f1d: $f1
	nop                                              ; $4f1e: $00
	ld   bc, $5580                                   ; $4f1f: $01 $80 $55
	ld   [bc], a                                     ; $4f22: $02
	and  c                                           ; $4f23: $a1
	cp   a                                           ; $4f24: $bf
	rra                                              ; $4f25: $1f
	add  a                                           ; $4f26: $87
	rst  $38                                         ; $4f27: $ff
	ld   [bc], a                                     ; $4f28: $02
	pop  af                                          ; $4f29: $f1
	rst  $38                                         ; $4f2a: $ff
	pop  af                                          ; $4f2b: $f1
	add  l                                           ; $4f2c: $85
	rst  $38                                         ; $4f2d: $ff
	ld   [bc], a                                     ; $4f2e: $02
	ld   hl, sp-$01                                  ; $4f2f: $f8 $ff
	add  a                                           ; $4f31: $87

jr_08f_4f32:
	add  e                                           ; $4f32: $83
	rst  $38                                         ; $4f33: $ff
	ld   [bc], a                                     ; $4f34: $02
	cp   a                                           ; $4f35: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f36: $cf
	ret  z                                           ; $4f37: $c8

	add  e                                           ; $4f38: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f39: $cf
	nop                                              ; $4f3a: $00
	ld   l, $81                                      ; $4f3b: $2e $81
	xor  $04                                         ; $4f3d: $ee $04
	db   $fc                                         ; $4f3f: $fc
	rst  $38                                         ; $4f40: $ff
	db   $fc                                         ; $4f41: $fc
	rst  $38                                         ; $4f42: $ff
	scf                                              ; $4f43: $37
	add  c                                           ; $4f44: $81
	add  b                                           ; $4f45: $80
	inc  bc                                          ; $4f46: $03
	add  a                                           ; $4f47: $87
	add  b                                           ; $4f48: $80
	ld   a, a                                        ; $4f49: $7f
	rlca                                             ; $4f4a: $07
	add  c                                           ; $4f4b: $81
	rst  $38                                         ; $4f4c: $ff
	inc  bc                                          ; $4f4d: $03
	ld   hl, sp+$78                                  ; $4f4e: $f8 $78
	add  b                                           ; $4f50: $80
	nop                                              ; $4f51: $00
	add  b                                           ; $4f52: $80
	add  b                                           ; $4f53: $80
	inc  b                                           ; $4f54: $04
	nop                                              ; $4f55: $00
	rra                                              ; $4f56: $1f
	nop                                              ; $4f57: $00
	rst  $38                                         ; $4f58: $ff
	rra                                              ; $4f59: $1f
	add  c                                           ; $4f5a: $81
	rst  $38                                         ; $4f5b: $ff
	add  b                                           ; $4f5c: $80
	ldh  [$83], a                                    ; $4f5d: $e0 $83
	nop                                              ; $4f5f: $00
	inc  bc                                          ; $4f60: $03
	ld   a, [hl]                                     ; $4f61: $7e
	ld   bc, $7fff                                   ; $4f62: $01 $ff $7f
	add  c                                           ; $4f65: $81
	rst  $38                                         ; $4f66: $ff
	add  b                                           ; $4f67: $80
	add  b                                           ; $4f68: $80
	add  b                                           ; $4f69: $80
	nop                                              ; $4f6a: $00
	nop                                              ; $4f6b: $00
	jr   c, jr_08f_4ef0                              ; $4f6c: $38 $82

	jr   z, jr_08f_4f70                              ; $4f6e: $28 $00

jr_08f_4f70:
	jr   c, jr_08f_4ef2                              ; $4f70: $38 $80

	rst  $38                                         ; $4f72: $ff
	add  b                                           ; $4f73: $80
	db   $fc                                         ; $4f74: $fc
	adc  c                                           ; $4f75: $89
	nop                                              ; $4f76: $00
	nop                                              ; $4f77: $00
	rrca                                             ; $4f78: $0f
	add  b                                           ; $4f79: $80
	ldh  a, [$8b]                                    ; $4f7a: $f0 $8b
	nop                                              ; $4f7c: $00
	nop                                              ; $4f7d: $00
	rst  $38                                         ; $4f7e: $ff
	add  b                                           ; $4f7f: $80
	rrca                                             ; $4f80: $0f
	add  b                                           ; $4f81: $80
	ld   c, $82                                      ; $4f82: $0e $82
	nop                                              ; $4f84: $00
	add  b                                           ; $4f85: $80
	rlca                                             ; $4f86: $07
	add  b                                           ; $4f87: $80
	ld   c, $81                                      ; $4f88: $0e $81
	nop                                              ; $4f8a: $00
	ld   [bc], a                                     ; $4f8b: $02
	or   b                                           ; $4f8c: $b0
	ret  nz                                          ; $4f8d: $c0

	add  b                                           ; $4f8e: $80
	add  b                                           ; $4f8f: $80
	nop                                              ; $4f90: $00
	add  b                                           ; $4f91: $80
	rlca                                             ; $4f92: $07
	inc  b                                           ; $4f93: $04
	ld   a, [hl]                                     ; $4f94: $7e
	ld   [hl], d                                     ; $4f95: $72
	db   $ec                                         ; $4f96: $ec
	db   $e3                                         ; $4f97: $e3
	inc  bc                                          ; $4f98: $03
	add  e                                           ; $4f99: $83
	nop                                              ; $4f9a: $00
	add  b                                           ; $4f9b: $80
	rlca                                             ; $4f9c: $07
	add  b                                           ; $4f9d: $80
	ld   a, [hl]                                     ; $4f9e: $7e
	add  b                                           ; $4f9f: $80
	ldh  [$88], a                                    ; $4fa0: $e0 $88
	nop                                              ; $4fa2: $00
	add  b                                           ; $4fa3: $80
	ldh  [$85], a                                    ; $4fa4: $e0 $85
	nop                                              ; $4fa6: $00
	add  b                                           ; $4fa7: $80
	ld   a, [bc]                                     ; $4fa8: $0a
	add  b                                           ; $4fa9: $80
	nop                                              ; $4faa: $00
	add  b                                           ; $4fab: $80
	rlca                                             ; $4fac: $07
	add  b                                           ; $4fad: $80
	ret  nz                                          ; $4fae: $c0

	add  b                                           ; $4faf: $80
	jr   nc, jr_08f_4f32                             ; $4fb0: $30 $80

	nop                                              ; $4fb2: $00
	add  b                                           ; $4fb3: $80
	inc  bc                                          ; $4fb4: $03
	add  b                                           ; $4fb5: $80
	ld   a, h                                        ; $4fb6: $7c
	ld   [bc], a                                     ; $4fb7: $02
	add  b                                           ; $4fb8: $80
	add  c                                           ; $4fb9: $81
	ld   bc, $3f80                                   ; $4fba: $01 $80 $3f
	add  b                                           ; $4fbd: $80
	ldh  [$81], a                                    ; $4fbe: $e0 $81
	nop                                              ; $4fc0: $00
	add  b                                           ; $4fc1: $80
	rra                                              ; $4fc2: $1f
	add  b                                           ; $4fc3: $80
	ldh  [rTIMA], a                                  ; $4fc4: $e0 $05
	nop                                              ; $4fc6: $00
	inc  bc                                          ; $4fc7: $03
	rrca                                             ; $4fc8: $0f
	db   $fc                                         ; $4fc9: $fc
	ldh  a, [rP1]                                    ; $4fca: $f0 $00
	add  b                                           ; $4fcc: $80
	ld   bc, $0000                                   ; $4fcd: $01 $00 $00
	rst  $38                                         ; $4fd0: $ff
	rst  $38                                         ; $4fd1: $ff
	add  b                                           ; $4fd2: $80
	add  b                                           ; $4fd3: $80
	add  b                                           ; $4fd4: $80
	add  b                                           ; $4fd5: $80
	add  b                                           ; $4fd6: $80
	add  b                                           ; $4fd7: $80
	add  b                                           ; $4fd8: $80
	add  b                                           ; $4fd9: $80
	add  b                                           ; $4fda: $80
	add  b                                           ; $4fdb: $80
	add  b                                           ; $4fdc: $80
	add  b                                           ; $4fdd: $80
	add  b                                           ; $4fde: $80
	add  b                                           ; $4fdf: $80
	rst  $38                                         ; $4fe0: $ff
	rst  $38                                         ; $4fe1: $ff
	nop                                              ; $4fe2: $00
	nop                                              ; $4fe3: $00
	nop                                              ; $4fe4: $00
	nop                                              ; $4fe5: $00
	nop                                              ; $4fe6: $00
	nop                                              ; $4fe7: $00
	nop                                              ; $4fe8: $00
	nop                                              ; $4fe9: $00
	nop                                              ; $4fea: $00
	nop                                              ; $4feb: $00
	nop                                              ; $4fec: $00
	nop                                              ; $4fed: $00
	nop                                              ; $4fee: $00
	nop                                              ; $4fef: $00
	rst  $38                                         ; $4ff0: $ff
	rst  $38                                         ; $4ff1: $ff
	nop                                              ; $4ff2: $00
	nop                                              ; $4ff3: $00
	nop                                              ; $4ff4: $00
	nop                                              ; $4ff5: $00
	ld   a, a                                        ; $4ff6: $7f
	ld   a, a                                        ; $4ff7: $7f
	ld   h, b                                        ; $4ff8: $60
	ld   h, b                                        ; $4ff9: $60
	ld   h, b                                        ; $4ffa: $60
	ld   h, b                                        ; $4ffb: $60
	ld   h, b                                        ; $4ffc: $60
	ld   h, b                                        ; $4ffd: $60
	ld   h, b                                        ; $4ffe: $60
	ld   h, b                                        ; $4fff: $60
	rst  $38                                         ; $5000: $ff
	rst  $38                                         ; $5001: $ff
	nop                                              ; $5002: $00
	nop                                              ; $5003: $00
	nop                                              ; $5004: $00
	nop                                              ; $5005: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5006: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5007: $cf
	call z, $cccc                                    ; $5008: $cc $cc $cc
	call z, $cfcf                                    ; $500b: $cc $cf $cf
	call z, $ffcc                                    ; $500e: $cc $cc $ff
	rst  $38                                         ; $5011: $ff
	nop                                              ; $5012: $00
	nop                                              ; $5013: $00
	nop                                              ; $5014: $00
	nop                                              ; $5015: $00
	ld   hl, sp-$08                                  ; $5016: $f8 $f8
	jr   @+$1a                                       ; $5018: $18 $18

	jr   jr_08f_5034                                 ; $501a: $18 $18

	ld   hl, sp-$08                                  ; $501c: $f8 $f8
	jr   @+$1a                                       ; $501e: $18 $18

	ld   a, a                                        ; $5020: $7f
	ld   a, a                                        ; $5021: $7f
	ld   h, b                                        ; $5022: $60
	ld   h, b                                        ; $5023: $60
	ld   h, b                                        ; $5024: $60
	ld   h, b                                        ; $5025: $60
	ld   h, b                                        ; $5026: $60
	ld   h, b                                        ; $5027: $60
	ld   h, b                                        ; $5028: $60
	ld   h, b                                        ; $5029: $60
	ld   a, a                                        ; $502a: $7f
	ld   a, a                                        ; $502b: $7f
	nop                                              ; $502c: $00
	nop                                              ; $502d: $00
	rst  $38                                         ; $502e: $ff
	rst  $38                                         ; $502f: $ff
	call z, $cfcc                                    ; $5030: $cc $cc $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5033: $cf

jr_08f_5034:
	call z, $cccc                                    ; $5034: $cc $cc $cc
	call z, $cccc                                    ; $5037: $cc $cc $cc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $503a: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $503b: $cf
	nop                                              ; $503c: $00
	nop                                              ; $503d: $00
	rst  $38                                         ; $503e: $ff
	rst  $38                                         ; $503f: $ff
	jr   @+$1a                                       ; $5040: $18 $18

	ld   hl, sp-$08                                  ; $5042: $f8 $f8
	jr   jr_08f_505e                                 ; $5044: $18 $18

	jr   jr_08f_5060                                 ; $5046: $18 $18

	jr   jr_08f_5062                                 ; $5048: $18 $18

	ld   hl, sp-$08                                  ; $504a: $f8 $f8
	nop                                              ; $504c: $00
	nop                                              ; $504d: $00
	rst  $38                                         ; $504e: $ff
	rst  $38                                         ; $504f: $ff
	rst  $38                                         ; $5050: $ff
	rst  $38                                         ; $5051: $ff
	nop                                              ; $5052: $00
	nop                                              ; $5053: $00
	inc  b                                           ; $5054: $04
	inc  b                                           ; $5055: $04
	inc  b                                           ; $5056: $04
	inc  b                                           ; $5057: $04
	ld   [$0808], sp                                 ; $5058: $08 $08 $08
	ld   [$1010], sp                                 ; $505b: $08 $10 $10

jr_08f_505e:
	db   $10                                         ; $505e: $10
	db   $10                                         ; $505f: $10

jr_08f_5060:
	jr   nz, jr_08f_5082                             ; $5060: $20 $20

jr_08f_5062:
	jr   nz, jr_08f_5084                             ; $5062: $20 $20

	ld   b, b                                        ; $5064: $40
	ld   b, b                                        ; $5065: $40
	ld   b, b                                        ; $5066: $40
	ld   b, b                                        ; $5067: $40
	add  b                                           ; $5068: $80
	add  b                                           ; $5069: $80
	add  b                                           ; $506a: $80
	add  b                                           ; $506b: $80
	nop                                              ; $506c: $00
	nop                                              ; $506d: $00
	rst  $38                                         ; $506e: $ff
	rst  $38                                         ; $506f: $ff
	nop                                              ; $5070: $00
	nop                                              ; $5071: $00
	nop                                              ; $5072: $00
	nop                                              ; $5073: $00
	nop                                              ; $5074: $00
	nop                                              ; $5075: $00
	nop                                              ; $5076: $00
	nop                                              ; $5077: $00
	nop                                              ; $5078: $00
	nop                                              ; $5079: $00
	nop                                              ; $507a: $00
	nop                                              ; $507b: $00
	nop                                              ; $507c: $00
	nop                                              ; $507d: $00
	nop                                              ; $507e: $00
	nop                                              ; $507f: $00
	nop                                              ; $5080: $00
	nop                                              ; $5081: $00

jr_08f_5082:
	nop                                              ; $5082: $00
	nop                                              ; $5083: $00

jr_08f_5084:
	nop                                              ; $5084: $00
	nop                                              ; $5085: $00
	nop                                              ; $5086: $00
	nop                                              ; $5087: $00
	nop                                              ; $5088: $00
	nop                                              ; $5089: $00
	nop                                              ; $508a: $00
	nop                                              ; $508b: $00
	nop                                              ; $508c: $00
	nop                                              ; $508d: $00
	nop                                              ; $508e: $00
	nop                                              ; $508f: $00
	nop                                              ; $5090: $00
	nop                                              ; $5091: $00
	nop                                              ; $5092: $00
	nop                                              ; $5093: $00
	nop                                              ; $5094: $00
	nop                                              ; $5095: $00
	nop                                              ; $5096: $00
	nop                                              ; $5097: $00
	nop                                              ; $5098: $00
	nop                                              ; $5099: $00
	nop                                              ; $509a: $00
	nop                                              ; $509b: $00
	nop                                              ; $509c: $00
	nop                                              ; $509d: $00
	nop                                              ; $509e: $00
	nop                                              ; $509f: $00
	nop                                              ; $50a0: $00
	nop                                              ; $50a1: $00
	nop                                              ; $50a2: $00
	nop                                              ; $50a3: $00
	nop                                              ; $50a4: $00
	nop                                              ; $50a5: $00
	nop                                              ; $50a6: $00
	nop                                              ; $50a7: $00
	nop                                              ; $50a8: $00
	nop                                              ; $50a9: $00
	nop                                              ; $50aa: $00
	nop                                              ; $50ab: $00
	nop                                              ; $50ac: $00
	nop                                              ; $50ad: $00
	nop                                              ; $50ae: $00
	nop                                              ; $50af: $00
	nop                                              ; $50b0: $00
	nop                                              ; $50b1: $00
	nop                                              ; $50b2: $00
	nop                                              ; $50b3: $00
	nop                                              ; $50b4: $00
	nop                                              ; $50b5: $00
	nop                                              ; $50b6: $00
	nop                                              ; $50b7: $00
	nop                                              ; $50b8: $00
	nop                                              ; $50b9: $00
	nop                                              ; $50ba: $00
	nop                                              ; $50bb: $00
	nop                                              ; $50bc: $00
	nop                                              ; $50bd: $00
	nop                                              ; $50be: $00
	nop                                              ; $50bf: $00
	nop                                              ; $50c0: $00
	nop                                              ; $50c1: $00
	nop                                              ; $50c2: $00
	nop                                              ; $50c3: $00
	nop                                              ; $50c4: $00
	nop                                              ; $50c5: $00
	nop                                              ; $50c6: $00
	nop                                              ; $50c7: $00
	nop                                              ; $50c8: $00
	nop                                              ; $50c9: $00
	nop                                              ; $50ca: $00
	nop                                              ; $50cb: $00
	nop                                              ; $50cc: $00
	nop                                              ; $50cd: $00
	nop                                              ; $50ce: $00
	nop                                              ; $50cf: $00
	rst  $38                                         ; $50d0: $ff
	rst  $38                                         ; $50d1: $ff
	nop                                              ; $50d2: $00
	nop                                              ; $50d3: $00
	ld   a, h                                        ; $50d4: $7c
	ld   a, h                                        ; $50d5: $7c
	cp   $fe                                         ; $50d6: $fe $fe
	add  $c6                                         ; $50d8: $c6 $c6
	add  $c6                                         ; $50da: $c6 $c6
	add  $c6                                         ; $50dc: $c6 $c6
	add  $c6                                         ; $50de: $c6 $c6
	add  $c6                                         ; $50e0: $c6 $c6
	add  $c6                                         ; $50e2: $c6 $c6
	add  $c6                                         ; $50e4: $c6 $c6
	add  $c6                                         ; $50e6: $c6 $c6
	cp   $fe                                         ; $50e8: $fe $fe
	ld   a, h                                        ; $50ea: $7c
	ld   a, h                                        ; $50eb: $7c
	nop                                              ; $50ec: $00
	nop                                              ; $50ed: $00
	rst  $38                                         ; $50ee: $ff
	rst  $38                                         ; $50ef: $ff
	rst  $38                                         ; $50f0: $ff
	rst  $38                                         ; $50f1: $ff
	nop                                              ; $50f2: $00
	nop                                              ; $50f3: $00
	jr   jr_08f_510e                                 ; $50f4: $18 $18

	jr   c, jr_08f_5130                              ; $50f6: $38 $38

	jr   c, jr_08f_5132                              ; $50f8: $38 $38

	jr   jr_08f_5114                                 ; $50fa: $18 $18

	jr   jr_08f_5116                                 ; $50fc: $18 $18

	jr   jr_08f_5118                                 ; $50fe: $18 $18

	jr   jr_08f_511a                                 ; $5100: $18 $18

	jr   jr_08f_511c                                 ; $5102: $18 $18

	jr   jr_08f_511e                                 ; $5104: $18 $18

	jr   jr_08f_5120                                 ; $5106: $18 $18

	ld   a, [hl]                                     ; $5108: $7e
	ld   a, [hl]                                     ; $5109: $7e
	ld   a, [hl]                                     ; $510a: $7e
	ld   a, [hl]                                     ; $510b: $7e
	nop                                              ; $510c: $00
	nop                                              ; $510d: $00

jr_08f_510e:
	rst  $38                                         ; $510e: $ff
	rst  $38                                         ; $510f: $ff
	rst  $38                                         ; $5110: $ff
	rst  $38                                         ; $5111: $ff
	nop                                              ; $5112: $00
	nop                                              ; $5113: $00

jr_08f_5114:
	ld   a, h                                        ; $5114: $7c
	ld   a, h                                        ; $5115: $7c

jr_08f_5116:
	cp   $fe                                         ; $5116: $fe $fe

jr_08f_5118:
	add  $c6                                         ; $5118: $c6 $c6

jr_08f_511a:
	add  $c6                                         ; $511a: $c6 $c6

jr_08f_511c:
	ld   b, $06                                      ; $511c: $06 $06

jr_08f_511e:
	inc  c                                           ; $511e: $0c
	inc  c                                           ; $511f: $0c

jr_08f_5120:
	jr   jr_08f_513a                                 ; $5120: $18 $18

	jr   nc, jr_08f_5154                             ; $5122: $30 $30

	ld   h, b                                        ; $5124: $60
	ld   h, b                                        ; $5125: $60
	ret  nz                                          ; $5126: $c0

	ret  nz                                          ; $5127: $c0

	cp   $fe                                         ; $5128: $fe $fe
	cp   $fe                                         ; $512a: $fe $fe
	nop                                              ; $512c: $00
	nop                                              ; $512d: $00
	rst  $38                                         ; $512e: $ff
	rst  $38                                         ; $512f: $ff

jr_08f_5130:
	rst  $38                                         ; $5130: $ff
	rst  $38                                         ; $5131: $ff

jr_08f_5132:
	nop                                              ; $5132: $00
	nop                                              ; $5133: $00
	ld   a, h                                        ; $5134: $7c
	ld   a, h                                        ; $5135: $7c
	cp   $fe                                         ; $5136: $fe $fe
	add  $c6                                         ; $5138: $c6 $c6

jr_08f_513a:
	ld   b, $06                                      ; $513a: $06 $06
	ld   b, $06                                      ; $513c: $06 $06
	inc  a                                           ; $513e: $3c
	inc  a                                           ; $513f: $3c
	inc  a                                           ; $5140: $3c
	inc  a                                           ; $5141: $3c
	ld   b, $06                                      ; $5142: $06 $06
	ld   b, $06                                      ; $5144: $06 $06
	add  $c6                                         ; $5146: $c6 $c6
	cp   $fe                                         ; $5148: $fe $fe
	ld   a, h                                        ; $514a: $7c
	ld   a, h                                        ; $514b: $7c
	nop                                              ; $514c: $00
	nop                                              ; $514d: $00
	rst  $38                                         ; $514e: $ff
	rst  $38                                         ; $514f: $ff
	rst  $38                                         ; $5150: $ff
	rst  $38                                         ; $5151: $ff
	nop                                              ; $5152: $00
	nop                                              ; $5153: $00

jr_08f_5154:
	inc  e                                           ; $5154: $1c
	inc  e                                           ; $5155: $1c
	inc  a                                           ; $5156: $3c
	inc  a                                           ; $5157: $3c
	inc  a                                           ; $5158: $3c
	inc  a                                           ; $5159: $3c
	ld   l, h                                        ; $515a: $6c
	ld   l, h                                        ; $515b: $6c
	ld   l, h                                        ; $515c: $6c
	ld   l, h                                        ; $515d: $6c
	call z, $cccc                                    ; $515e: $cc $cc $cc
	call z, $fefe                                    ; $5161: $cc $fe $fe
	cp   $fe                                         ; $5164: $fe $fe
	inc  c                                           ; $5166: $0c
	inc  c                                           ; $5167: $0c
	inc  c                                           ; $5168: $0c
	inc  c                                           ; $5169: $0c
	inc  c                                           ; $516a: $0c
	inc  c                                           ; $516b: $0c
	nop                                              ; $516c: $00
	nop                                              ; $516d: $00
	rst  $38                                         ; $516e: $ff
	rst  $38                                         ; $516f: $ff
	rst  $38                                         ; $5170: $ff
	rst  $38                                         ; $5171: $ff
	nop                                              ; $5172: $00
	nop                                              ; $5173: $00
	cp   $fe                                         ; $5174: $fe $fe
	cp   $fe                                         ; $5176: $fe $fe
	ret  nz                                          ; $5178: $c0

	ret  nz                                          ; $5179: $c0

	ret  nz                                          ; $517a: $c0

	ret  nz                                          ; $517b: $c0

	db   $fc                                         ; $517c: $fc
	db   $fc                                         ; $517d: $fc
	cp   $fe                                         ; $517e: $fe $fe
	add  $c6                                         ; $5180: $c6 $c6
	ld   b, $06                                      ; $5182: $06 $06
	ld   b, $06                                      ; $5184: $06 $06
	add  $c6                                         ; $5186: $c6 $c6
	cp   $fe                                         ; $5188: $fe $fe
	ld   a, h                                        ; $518a: $7c
	ld   a, h                                        ; $518b: $7c
	nop                                              ; $518c: $00
	nop                                              ; $518d: $00
	rst  $38                                         ; $518e: $ff
	rst  $38                                         ; $518f: $ff
	rst  $38                                         ; $5190: $ff
	rst  $38                                         ; $5191: $ff
	nop                                              ; $5192: $00
	nop                                              ; $5193: $00
	ld   a, h                                        ; $5194: $7c
	ld   a, h                                        ; $5195: $7c
	cp   $fe                                         ; $5196: $fe $fe
	add  $c6                                         ; $5198: $c6 $c6
	add  $c6                                         ; $519a: $c6 $c6
	ret  nz                                          ; $519c: $c0

	ret  nz                                          ; $519d: $c0

	db   $fc                                         ; $519e: $fc
	db   $fc                                         ; $519f: $fc
	cp   $fe                                         ; $51a0: $fe $fe
	add  $c6                                         ; $51a2: $c6 $c6
	add  $c6                                         ; $51a4: $c6 $c6
	add  $c6                                         ; $51a6: $c6 $c6
	cp   $fe                                         ; $51a8: $fe $fe
	ld   a, h                                        ; $51aa: $7c
	ld   a, h                                        ; $51ab: $7c
	nop                                              ; $51ac: $00
	nop                                              ; $51ad: $00
	rst  $38                                         ; $51ae: $ff
	rst  $38                                         ; $51af: $ff
	rst  $38                                         ; $51b0: $ff
	rst  $38                                         ; $51b1: $ff
	nop                                              ; $51b2: $00
	nop                                              ; $51b3: $00
	cp   $fe                                         ; $51b4: $fe $fe
	cp   $fe                                         ; $51b6: $fe $fe
	add  $c6                                         ; $51b8: $c6 $c6
	add  $c6                                         ; $51ba: $c6 $c6
	ld   c, $0e                                      ; $51bc: $0e $0e
	inc  c                                           ; $51be: $0c
	inc  c                                           ; $51bf: $0c
	inc  e                                           ; $51c0: $1c
	inc  e                                           ; $51c1: $1c
	jr   jr_08f_51dc                                 ; $51c2: $18 $18

	jr   jr_08f_51de                                 ; $51c4: $18 $18

	jr   jr_08f_51e0                                 ; $51c6: $18 $18

	jr   jr_08f_51e2                                 ; $51c8: $18 $18

	jr   jr_08f_51e4                                 ; $51ca: $18 $18

	nop                                              ; $51cc: $00
	nop                                              ; $51cd: $00
	rst  $38                                         ; $51ce: $ff
	rst  $38                                         ; $51cf: $ff
	rst  $38                                         ; $51d0: $ff
	rst  $38                                         ; $51d1: $ff
	nop                                              ; $51d2: $00
	nop                                              ; $51d3: $00
	ld   a, h                                        ; $51d4: $7c
	ld   a, h                                        ; $51d5: $7c
	cp   $fe                                         ; $51d6: $fe $fe
	add  $c6                                         ; $51d8: $c6 $c6
	add  $c6                                         ; $51da: $c6 $c6

jr_08f_51dc:
	add  $c6                                         ; $51dc: $c6 $c6

jr_08f_51de:
	ld   a, h                                        ; $51de: $7c
	ld   a, h                                        ; $51df: $7c

jr_08f_51e0:
	ld   a, h                                        ; $51e0: $7c
	ld   a, h                                        ; $51e1: $7c

jr_08f_51e2:
	add  $c6                                         ; $51e2: $c6 $c6

jr_08f_51e4:
	add  $c6                                         ; $51e4: $c6 $c6
	add  $c6                                         ; $51e6: $c6 $c6
	cp   $fe                                         ; $51e8: $fe $fe
	ld   a, h                                        ; $51ea: $7c
	ld   a, h                                        ; $51eb: $7c
	nop                                              ; $51ec: $00
	nop                                              ; $51ed: $00
	rst  $38                                         ; $51ee: $ff
	rst  $38                                         ; $51ef: $ff
	rst  $38                                         ; $51f0: $ff
	rst  $38                                         ; $51f1: $ff
	nop                                              ; $51f2: $00
	nop                                              ; $51f3: $00
	ld   a, h                                        ; $51f4: $7c
	ld   a, h                                        ; $51f5: $7c
	cp   $fe                                         ; $51f6: $fe $fe
	add  $c6                                         ; $51f8: $c6 $c6
	add  $c6                                         ; $51fa: $c6 $c6
	add  $c6                                         ; $51fc: $c6 $c6
	cp   $fe                                         ; $51fe: $fe $fe
	ld   a, [hl]                                     ; $5200: $7e
	ld   a, [hl]                                     ; $5201: $7e
	ld   b, $06                                      ; $5202: $06 $06
	ld   b, $06                                      ; $5204: $06 $06
	add  $c6                                         ; $5206: $c6 $c6
	cp   $fe                                         ; $5208: $fe $fe
	ld   a, h                                        ; $520a: $7c
	ld   a, h                                        ; $520b: $7c
	nop                                              ; $520c: $00
	nop                                              ; $520d: $00
	rst  $38                                         ; $520e: $ff
	rst  $38                                         ; $520f: $ff
	nop                                              ; $5210: $00
	nop                                              ; $5211: $00
	nop                                              ; $5212: $00
	nop                                              ; $5213: $00
	nop                                              ; $5214: $00
	nop                                              ; $5215: $00
	nop                                              ; $5216: $00
	nop                                              ; $5217: $00
	nop                                              ; $5218: $00
	nop                                              ; $5219: $00
	nop                                              ; $521a: $00
	nop                                              ; $521b: $00
	nop                                              ; $521c: $00
	nop                                              ; $521d: $00
	nop                                              ; $521e: $00
	nop                                              ; $521f: $00
	nop                                              ; $5220: $00
	nop                                              ; $5221: $00
	nop                                              ; $5222: $00
	nop                                              ; $5223: $00
	nop                                              ; $5224: $00
	nop                                              ; $5225: $00
	nop                                              ; $5226: $00
	nop                                              ; $5227: $00
	nop                                              ; $5228: $00
	nop                                              ; $5229: $00
	nop                                              ; $522a: $00
	nop                                              ; $522b: $00
	nop                                              ; $522c: $00
	nop                                              ; $522d: $00
	nop                                              ; $522e: $00
	nop                                              ; $522f: $00
	nop                                              ; $5230: $00
	nop                                              ; $5231: $00
	nop                                              ; $5232: $00
	nop                                              ; $5233: $00
	nop                                              ; $5234: $00
	nop                                              ; $5235: $00
	nop                                              ; $5236: $00
	nop                                              ; $5237: $00
	nop                                              ; $5238: $00
	nop                                              ; $5239: $00
	nop                                              ; $523a: $00
	nop                                              ; $523b: $00
	nop                                              ; $523c: $00
	nop                                              ; $523d: $00
	nop                                              ; $523e: $00
	nop                                              ; $523f: $00
	nop                                              ; $5240: $00
	nop                                              ; $5241: $00
	nop                                              ; $5242: $00
	nop                                              ; $5243: $00
	nop                                              ; $5244: $00
	nop                                              ; $5245: $00
	nop                                              ; $5246: $00
	nop                                              ; $5247: $00
	nop                                              ; $5248: $00
	nop                                              ; $5249: $00
	nop                                              ; $524a: $00
	nop                                              ; $524b: $00
	nop                                              ; $524c: $00
	nop                                              ; $524d: $00
	nop                                              ; $524e: $00
	nop                                              ; $524f: $00
	nop                                              ; $5250: $00
	nop                                              ; $5251: $00
	nop                                              ; $5252: $00
	nop                                              ; $5253: $00
	nop                                              ; $5254: $00
	nop                                              ; $5255: $00
	nop                                              ; $5256: $00
	nop                                              ; $5257: $00
	nop                                              ; $5258: $00
	nop                                              ; $5259: $00
	nop                                              ; $525a: $00
	nop                                              ; $525b: $00
	nop                                              ; $525c: $00
	nop                                              ; $525d: $00
	nop                                              ; $525e: $00
	nop                                              ; $525f: $00
	nop                                              ; $5260: $00
	nop                                              ; $5261: $00
	nop                                              ; $5262: $00
	nop                                              ; $5263: $00
	nop                                              ; $5264: $00
	nop                                              ; $5265: $00
	nop                                              ; $5266: $00
	nop                                              ; $5267: $00
	nop                                              ; $5268: $00
	nop                                              ; $5269: $00
	nop                                              ; $526a: $00
	nop                                              ; $526b: $00
	nop                                              ; $526c: $00
	nop                                              ; $526d: $00
	nop                                              ; $526e: $00
	nop                                              ; $526f: $00
	nop                                              ; $5270: $00
	nop                                              ; $5271: $00
	nop                                              ; $5272: $00
	nop                                              ; $5273: $00
	nop                                              ; $5274: $00
	nop                                              ; $5275: $00
	nop                                              ; $5276: $00
	nop                                              ; $5277: $00
	nop                                              ; $5278: $00
	nop                                              ; $5279: $00
	nop                                              ; $527a: $00
	nop                                              ; $527b: $00
	nop                                              ; $527c: $00
	nop                                              ; $527d: $00
	nop                                              ; $527e: $00
	nop                                              ; $527f: $00
	nop                                              ; $5280: $00
	nop                                              ; $5281: $00
	nop                                              ; $5282: $00
	nop                                              ; $5283: $00
	nop                                              ; $5284: $00
	nop                                              ; $5285: $00
	nop                                              ; $5286: $00
	nop                                              ; $5287: $00
	nop                                              ; $5288: $00
	nop                                              ; $5289: $00
	nop                                              ; $528a: $00
	nop                                              ; $528b: $00
	nop                                              ; $528c: $00
	nop                                              ; $528d: $00
	nop                                              ; $528e: $00
	nop                                              ; $528f: $00
	nop                                              ; $5290: $00
	nop                                              ; $5291: $00
	nop                                              ; $5292: $00
	nop                                              ; $5293: $00
	nop                                              ; $5294: $00
	nop                                              ; $5295: $00
	nop                                              ; $5296: $00
	nop                                              ; $5297: $00
	nop                                              ; $5298: $00
	nop                                              ; $5299: $00
	nop                                              ; $529a: $00
	nop                                              ; $529b: $00
	nop                                              ; $529c: $00
	nop                                              ; $529d: $00
	nop                                              ; $529e: $00
	nop                                              ; $529f: $00
	nop                                              ; $52a0: $00
	nop                                              ; $52a1: $00
	nop                                              ; $52a2: $00
	nop                                              ; $52a3: $00
	nop                                              ; $52a4: $00
	nop                                              ; $52a5: $00
	nop                                              ; $52a6: $00
	nop                                              ; $52a7: $00
	nop                                              ; $52a8: $00
	nop                                              ; $52a9: $00
	nop                                              ; $52aa: $00
	nop                                              ; $52ab: $00
	nop                                              ; $52ac: $00
	nop                                              ; $52ad: $00
	nop                                              ; $52ae: $00
	nop                                              ; $52af: $00
	nop                                              ; $52b0: $00
	nop                                              ; $52b1: $00
	nop                                              ; $52b2: $00
	nop                                              ; $52b3: $00
	nop                                              ; $52b4: $00
	nop                                              ; $52b5: $00
	nop                                              ; $52b6: $00
	nop                                              ; $52b7: $00
	nop                                              ; $52b8: $00
	nop                                              ; $52b9: $00
	nop                                              ; $52ba: $00
	nop                                              ; $52bb: $00
	nop                                              ; $52bc: $00
	nop                                              ; $52bd: $00
	nop                                              ; $52be: $00
	nop                                              ; $52bf: $00
	nop                                              ; $52c0: $00
	nop                                              ; $52c1: $00
	nop                                              ; $52c2: $00
	nop                                              ; $52c3: $00
	nop                                              ; $52c4: $00
	nop                                              ; $52c5: $00
	nop                                              ; $52c6: $00
	nop                                              ; $52c7: $00
	nop                                              ; $52c8: $00
	nop                                              ; $52c9: $00
	nop                                              ; $52ca: $00
	nop                                              ; $52cb: $00
	nop                                              ; $52cc: $00
	nop                                              ; $52cd: $00
	nop                                              ; $52ce: $00
	nop                                              ; $52cf: $00
	rst  $38                                         ; $52d0: $ff
	rst  $38                                         ; $52d1: $ff
	nop                                              ; $52d2: $00
	nop                                              ; $52d3: $00
	ccf                                              ; $52d4: $3f
	ccf                                              ; $52d5: $3f
	jr   nc, jr_08f_5308                             ; $52d6: $30 $30

	jr   nc, jr_08f_530a                             ; $52d8: $30 $30

	jr   nc, jr_08f_530c                             ; $52da: $30 $30

	jr   nc, jr_08f_530e                             ; $52dc: $30 $30

	jr   nc, jr_08f_5310                             ; $52de: $30 $30

	rst  $38                                         ; $52e0: $ff
	rst  $38                                         ; $52e1: $ff
	nop                                              ; $52e2: $00
	nop                                              ; $52e3: $00
	ldh  a, [$f0]                                    ; $52e4: $f0 $f0
	jr   nc, jr_08f_5318                             ; $52e6: $30 $30

	jr   nc, jr_08f_531a                             ; $52e8: $30 $30

	jr   nc, jr_08f_531c                             ; $52ea: $30 $30

	jr   nc, jr_08f_531e                             ; $52ec: $30 $30

	jr   nc, jr_08f_5320                             ; $52ee: $30 $30

	ccf                                              ; $52f0: $3f
	ccf                                              ; $52f1: $3f
	jr   nc, jr_08f_5324                             ; $52f2: $30 $30

	jr   nc, jr_08f_5326                             ; $52f4: $30 $30

	jr   nc, jr_08f_5328                             ; $52f6: $30 $30

	jr   nc, jr_08f_532a                             ; $52f8: $30 $30

	ccf                                              ; $52fa: $3f
	ccf                                              ; $52fb: $3f
	nop                                              ; $52fc: $00
	nop                                              ; $52fd: $00
	rst  $38                                         ; $52fe: $ff
	rst  $38                                         ; $52ff: $ff
	ldh  a, [$f0]                                    ; $5300: $f0 $f0
	jr   nc, jr_08f_5334                             ; $5302: $30 $30

	jr   nc, jr_08f_5336                             ; $5304: $30 $30

	jr   nc, jr_08f_5338                             ; $5306: $30 $30

jr_08f_5308:
	jr   nc, jr_08f_533a                             ; $5308: $30 $30

jr_08f_530a:
	ldh  a, [$f0]                                    ; $530a: $f0 $f0

jr_08f_530c:
	nop                                              ; $530c: $00
	nop                                              ; $530d: $00

jr_08f_530e:
	rst  $38                                         ; $530e: $ff
	rst  $38                                         ; $530f: $ff

jr_08f_5310:
	rst  $38                                         ; $5310: $ff
	rst  $38                                         ; $5311: $ff
	nop                                              ; $5312: $00
	nop                                              ; $5313: $00
	ccf                                              ; $5314: $3f
	ccf                                              ; $5315: $3f
	jr   nc, jr_08f_5348                             ; $5316: $30 $30

jr_08f_5318:
	jr   nc, jr_08f_534a                             ; $5318: $30 $30

jr_08f_531a:
	ccf                                              ; $531a: $3f
	ccf                                              ; $531b: $3f

jr_08f_531c:
	jr   nc, jr_08f_534e                             ; $531c: $30 $30

jr_08f_531e:
	jr   nc, jr_08f_5350                             ; $531e: $30 $30

jr_08f_5320:
	rst  $38                                         ; $5320: $ff
	rst  $38                                         ; $5321: $ff
	nop                                              ; $5322: $00
	nop                                              ; $5323: $00

jr_08f_5324:
	ldh  a, [$f0]                                    ; $5324: $f0 $f0

jr_08f_5326:
	jr   nc, jr_08f_5358                             ; $5326: $30 $30

jr_08f_5328:
	jr   nc, jr_08f_535a                             ; $5328: $30 $30

jr_08f_532a:
	ldh  a, [$f0]                                    ; $532a: $f0 $f0
	jr   nc, jr_08f_535e                             ; $532c: $30 $30

	jr   nc, jr_08f_5360                             ; $532e: $30 $30

	ccf                                              ; $5330: $3f
	ccf                                              ; $5331: $3f
	jr   nc, jr_08f_5364                             ; $5332: $30 $30

jr_08f_5334:
	jr   nc, jr_08f_5366                             ; $5334: $30 $30

jr_08f_5336:
	jr   nc, jr_08f_5368                             ; $5336: $30 $30

jr_08f_5338:
	jr   nc, jr_08f_536a                             ; $5338: $30 $30

jr_08f_533a:
	ld   h, b                                        ; $533a: $60
	ld   h, b                                        ; $533b: $60
	nop                                              ; $533c: $00
	nop                                              ; $533d: $00
	rst  $38                                         ; $533e: $ff
	rst  $38                                         ; $533f: $ff
	ldh  a, [$f0]                                    ; $5340: $f0 $f0
	jr   nc, jr_08f_5374                             ; $5342: $30 $30

	jr   nc, jr_08f_5376                             ; $5344: $30 $30

	ldh  a, [$f0]                                    ; $5346: $f0 $f0

jr_08f_5348:
	ld   [hl], b                                     ; $5348: $70
	ld   [hl], b                                     ; $5349: $70

jr_08f_534a:
	jr   nc, jr_08f_537c                             ; $534a: $30 $30

	nop                                              ; $534c: $00
	nop                                              ; $534d: $00

jr_08f_534e:
	rst  $38                                         ; $534e: $ff
	rst  $38                                         ; $534f: $ff

jr_08f_5350:
	rst  $38                                         ; $5350: $ff
	rst  $38                                         ; $5351: $ff
	nop                                              ; $5352: $00
	nop                                              ; $5353: $00
	inc  bc                                          ; $5354: $03
	inc  bc                                          ; $5355: $03
	inc  bc                                          ; $5356: $03
	inc  bc                                          ; $5357: $03

jr_08f_5358:
	inc  sp                                          ; $5358: $33
	inc  sp                                          ; $5359: $33

jr_08f_535a:
	inc  sp                                          ; $535a: $33
	inc  sp                                          ; $535b: $33
	inc  sp                                          ; $535c: $33
	inc  sp                                          ; $535d: $33

jr_08f_535e:
	inc  hl                                          ; $535e: $23
	inc  hl                                          ; $535f: $23

jr_08f_5360:
	rst  $38                                         ; $5360: $ff
	rst  $38                                         ; $5361: $ff
	nop                                              ; $5362: $00
	nop                                              ; $5363: $00

jr_08f_5364:
	nop                                              ; $5364: $00
	nop                                              ; $5365: $00

jr_08f_5366:
	nop                                              ; $5366: $00
	nop                                              ; $5367: $00

jr_08f_5368:
	jr   jr_08f_5382                                 ; $5368: $18 $18

jr_08f_536a:
	jr   jr_08f_5384                                 ; $536a: $18 $18

	jr   c, jr_08f_53a6                              ; $536c: $38 $38

	jr   nc, jr_08f_53a0                             ; $536e: $30 $30

	rlca                                             ; $5370: $07
	rlca                                             ; $5371: $07
	rlca                                             ; $5372: $07
	rlca                                             ; $5373: $07

jr_08f_5374:
	ld   c, $0e                                      ; $5374: $0e $0e

jr_08f_5376:
	inc  e                                           ; $5376: $1c
	inc  e                                           ; $5377: $1c
	jr   c, jr_08f_53b2                              ; $5378: $38 $38

	ld   [hl], b                                     ; $537a: $70
	ld   [hl], b                                     ; $537b: $70

jr_08f_537c:
	nop                                              ; $537c: $00
	nop                                              ; $537d: $00
	rst  $38                                         ; $537e: $ff
	rst  $38                                         ; $537f: $ff
	nop                                              ; $5380: $00
	nop                                              ; $5381: $00

jr_08f_5382:
	add  b                                           ; $5382: $80
	add  b                                           ; $5383: $80

jr_08f_5384:
	ret  nz                                          ; $5384: $c0

	ret  nz                                          ; $5385: $c0

	ldh  [$e0], a                                    ; $5386: $e0 $e0
	ld   [hl], b                                     ; $5388: $70
	ld   [hl], b                                     ; $5389: $70
	jr   c, jr_08f_53c4                              ; $538a: $38 $38

	nop                                              ; $538c: $00
	nop                                              ; $538d: $00
	rst  $38                                         ; $538e: $ff
	rst  $38                                         ; $538f: $ff
	rst  $38                                         ; $5390: $ff
	rst  $38                                         ; $5391: $ff
	nop                                              ; $5392: $00
	nop                                              ; $5393: $00
	ld   bc, $0101                                   ; $5394: $01 $01 $01
	ld   bc, $0101                                   ; $5397: $01 $01 $01
	dec  a                                           ; $539a: $3d
	dec  a                                           ; $539b: $3d
	dec  c                                           ; $539c: $0d
	dec  c                                           ; $539d: $0d
	dec  c                                           ; $539e: $0d
	dec  c                                           ; $539f: $0d

jr_08f_53a0:
	rst  $38                                         ; $53a0: $ff
	rst  $38                                         ; $53a1: $ff
	nop                                              ; $53a2: $00
	nop                                              ; $53a3: $00
	add  b                                           ; $53a4: $80
	add  b                                           ; $53a5: $80

jr_08f_53a6:
	add  b                                           ; $53a6: $80
	add  b                                           ; $53a7: $80
	sbc  b                                           ; $53a8: $98
	sbc  b                                           ; $53a9: $98
	or   b                                           ; $53aa: $b0
	or   b                                           ; $53ab: $b0
	ldh  [$e0], a                                    ; $53ac: $e0 $e0
	ret  nz                                          ; $53ae: $c0

	ret  nz                                          ; $53af: $c0

	dec  e                                           ; $53b0: $1d
	dec  e                                           ; $53b1: $1d

jr_08f_53b2:
	add  hl, de                                      ; $53b2: $19
	add  hl, de                                      ; $53b3: $19
	ld   sp, $6131                                   ; $53b4: $31 $31 $61
	ld   h, c                                        ; $53b7: $61
	inc  bc                                          ; $53b8: $03
	inc  bc                                          ; $53b9: $03
	inc  bc                                          ; $53ba: $03
	inc  bc                                          ; $53bb: $03
	nop                                              ; $53bc: $00
	nop                                              ; $53bd: $00
	rst  $38                                         ; $53be: $ff
	rst  $38                                         ; $53bf: $ff
	ldh  [$e0], a                                    ; $53c0: $e0 $e0
	or   b                                           ; $53c2: $b0
	or   b                                           ; $53c3: $b0

jr_08f_53c4:
	sbc  b                                           ; $53c4: $98
	sbc  b                                           ; $53c5: $98
	sbc  h                                           ; $53c6: $9c
	sbc  h                                           ; $53c7: $9c
	adc  h                                           ; $53c8: $8c
	adc  h                                           ; $53c9: $8c
	nop                                              ; $53ca: $00
	nop                                              ; $53cb: $00
	nop                                              ; $53cc: $00
	nop                                              ; $53cd: $00
	rst  $38                                         ; $53ce: $ff
	rst  $38                                         ; $53cf: $ff
	rst  $38                                         ; $53d0: $ff
	rst  $38                                         ; $53d1: $ff
	nop                                              ; $53d2: $00
	nop                                              ; $53d3: $00
	inc  bc                                          ; $53d4: $03
	inc  bc                                          ; $53d5: $03
	inc  bc                                          ; $53d6: $03
	inc  bc                                          ; $53d7: $03
	inc  bc                                          ; $53d8: $03
	inc  bc                                          ; $53d9: $03
	inc  bc                                          ; $53da: $03
	inc  bc                                          ; $53db: $03
	ccf                                              ; $53dc: $3f
	ccf                                              ; $53dd: $3f
	inc  bc                                          ; $53de: $03
	inc  bc                                          ; $53df: $03
	rst  $38                                         ; $53e0: $ff
	rst  $38                                         ; $53e1: $ff
	nop                                              ; $53e2: $00
	nop                                              ; $53e3: $00
	nop                                              ; $53e4: $00
	nop                                              ; $53e5: $00
	nop                                              ; $53e6: $00
	nop                                              ; $53e7: $00
	nop                                              ; $53e8: $00
	nop                                              ; $53e9: $00
	nop                                              ; $53ea: $00
	nop                                              ; $53eb: $00
	ldh  a, [$f0]                                    ; $53ec: $f0 $f0
	nop                                              ; $53ee: $00
	nop                                              ; $53ef: $00
	rlca                                             ; $53f0: $07
	rlca                                             ; $53f1: $07
	rlca                                             ; $53f2: $07
	rlca                                             ; $53f3: $07
	rrca                                             ; $53f4: $0f
	rrca                                             ; $53f5: $0f
	dec  de                                          ; $53f6: $1b
	dec  de                                          ; $53f7: $1b
	inc  sp                                          ; $53f8: $33
	inc  sp                                          ; $53f9: $33
	ld   h, e                                        ; $53fa: $63
	ld   h, e                                        ; $53fb: $63
	nop                                              ; $53fc: $00
	nop                                              ; $53fd: $00
	rst  $38                                         ; $53fe: $ff
	rst  $38                                         ; $53ff: $ff
	add  b                                           ; $5400: $80
	add  b                                           ; $5401: $80
	add  b                                           ; $5402: $80
	add  b                                           ; $5403: $80
	ret  nz                                          ; $5404: $c0

	ret  nz                                          ; $5405: $c0

	ld   h, b                                        ; $5406: $60
	ld   h, b                                        ; $5407: $60
	jr   nc, jr_08f_543a                             ; $5408: $30 $30

	jr   jr_08f_5424                                 ; $540a: $18 $18

	nop                                              ; $540c: $00
	nop                                              ; $540d: $00
	rst  $38                                         ; $540e: $ff
	rst  $38                                         ; $540f: $ff
	rst  $38                                         ; $5410: $ff
	rst  $38                                         ; $5411: $ff
	nop                                              ; $5412: $00
	nop                                              ; $5413: $00
	inc  bc                                          ; $5414: $03
	inc  bc                                          ; $5415: $03
	rlca                                             ; $5416: $07
	rlca                                             ; $5417: $07
	inc  c                                           ; $5418: $0c
	inc  c                                           ; $5419: $0c
	jr   jr_08f_5434                                 ; $541a: $18 $18

	ccf                                              ; $541c: $3f
	ccf                                              ; $541d: $3f
	ld   h, e                                        ; $541e: $63
	ld   h, e                                        ; $541f: $63
	rst  $38                                         ; $5420: $ff
	rst  $38                                         ; $5421: $ff
	nop                                              ; $5422: $00
	nop                                              ; $5423: $00

jr_08f_5424:
	nop                                              ; $5424: $00
	nop                                              ; $5425: $00
	add  b                                           ; $5426: $80
	add  b                                           ; $5427: $80
	ret  nz                                          ; $5428: $c0

	ret  nz                                          ; $5429: $c0

	ld   h, b                                        ; $542a: $60
	ld   h, b                                        ; $542b: $60
	ldh  a, [$f0]                                    ; $542c: $f0 $f0
	jr   jr_08f_5448                                 ; $542e: $18 $18

	inc  bc                                          ; $5430: $03
	inc  bc                                          ; $5431: $03
	rra                                              ; $5432: $1f
	rra                                              ; $5433: $1f

jr_08f_5434:
	inc  bc                                          ; $5434: $03
	inc  bc                                          ; $5435: $03
	dec  de                                          ; $5436: $1b
	dec  de                                          ; $5437: $1b
	rrca                                             ; $5438: $0f
	rrca                                             ; $5439: $0f

jr_08f_543a:
	ld   a, a                                        ; $543a: $7f
	ld   a, a                                        ; $543b: $7f
	nop                                              ; $543c: $00
	nop                                              ; $543d: $00
	rst  $38                                         ; $543e: $ff
	rst  $38                                         ; $543f: $ff
	nop                                              ; $5440: $00
	nop                                              ; $5441: $00
	ldh  [$e0], a                                    ; $5442: $e0 $e0
	nop                                              ; $5444: $00
	nop                                              ; $5445: $00
	ld   h, b                                        ; $5446: $60
	ld   h, b                                        ; $5447: $60

jr_08f_5448:
	ret  nz                                          ; $5448: $c0

	ret  nz                                          ; $5449: $c0

	ld   hl, sp-$08                                  ; $544a: $f8 $f8
	nop                                              ; $544c: $00
	nop                                              ; $544d: $00
	rst  $38                                         ; $544e: $ff
	rst  $38                                         ; $544f: $ff
	rst  $38                                         ; $5450: $ff
	rst  $38                                         ; $5451: $ff
	nop                                              ; $5452: $00
	nop                                              ; $5453: $00
	inc  bc                                          ; $5454: $03
	inc  bc                                          ; $5455: $03
	inc  bc                                          ; $5456: $03
	inc  bc                                          ; $5457: $03
	inc  bc                                          ; $5458: $03
	inc  bc                                          ; $5459: $03
	inc  bc                                          ; $545a: $03
	inc  bc                                          ; $545b: $03
	inc  bc                                          ; $545c: $03
	inc  bc                                          ; $545d: $03
	ccf                                              ; $545e: $3f
	ccf                                              ; $545f: $3f
	rst  $38                                         ; $5460: $ff
	rst  $38                                         ; $5461: $ff
	nop                                              ; $5462: $00
	nop                                              ; $5463: $00
	nop                                              ; $5464: $00
	nop                                              ; $5465: $00
	nop                                              ; $5466: $00
	nop                                              ; $5467: $00
	nop                                              ; $5468: $00
	nop                                              ; $5469: $00
	nop                                              ; $546a: $00
	nop                                              ; $546b: $00
	nop                                              ; $546c: $00
	nop                                              ; $546d: $00
	ldh  a, [$f0]                                    ; $546e: $f0 $f0
	inc  bc                                          ; $5470: $03
	inc  bc                                          ; $5471: $03
	inc  bc                                          ; $5472: $03
	inc  bc                                          ; $5473: $03
	inc  bc                                          ; $5474: $03
	inc  bc                                          ; $5475: $03
	inc  bc                                          ; $5476: $03
	inc  bc                                          ; $5477: $03
	inc  bc                                          ; $5478: $03
	inc  bc                                          ; $5479: $03
	ld   a, a                                        ; $547a: $7f
	ld   a, a                                        ; $547b: $7f
	nop                                              ; $547c: $00
	nop                                              ; $547d: $00
	rst  $38                                         ; $547e: $ff
	rst  $38                                         ; $547f: $ff
	nop                                              ; $5480: $00
	nop                                              ; $5481: $00
	nop                                              ; $5482: $00
	nop                                              ; $5483: $00
	nop                                              ; $5484: $00
	nop                                              ; $5485: $00
	nop                                              ; $5486: $00
	nop                                              ; $5487: $00
	nop                                              ; $5488: $00
	nop                                              ; $5489: $00
	ld   hl, sp-$08                                  ; $548a: $f8 $f8
	nop                                              ; $548c: $00
	nop                                              ; $548d: $00
	rst  $38                                         ; $548e: $ff
	rst  $38                                         ; $548f: $ff
	nop                                              ; $5490: $00
	nop                                              ; $5491: $00
	nop                                              ; $5492: $00
	nop                                              ; $5493: $00
	nop                                              ; $5494: $00
	nop                                              ; $5495: $00
	nop                                              ; $5496: $00
	nop                                              ; $5497: $00
	nop                                              ; $5498: $00
	nop                                              ; $5499: $00
	nop                                              ; $549a: $00
	nop                                              ; $549b: $00
	nop                                              ; $549c: $00
	nop                                              ; $549d: $00
	nop                                              ; $549e: $00
	nop                                              ; $549f: $00
	nop                                              ; $54a0: $00
	nop                                              ; $54a1: $00
	nop                                              ; $54a2: $00
	nop                                              ; $54a3: $00
	nop                                              ; $54a4: $00
	nop                                              ; $54a5: $00
	nop                                              ; $54a6: $00
	nop                                              ; $54a7: $00
	nop                                              ; $54a8: $00
	nop                                              ; $54a9: $00
	nop                                              ; $54aa: $00
	nop                                              ; $54ab: $00
	nop                                              ; $54ac: $00
	nop                                              ; $54ad: $00
	nop                                              ; $54ae: $00
	nop                                              ; $54af: $00
	nop                                              ; $54b0: $00
	nop                                              ; $54b1: $00
	nop                                              ; $54b2: $00
	nop                                              ; $54b3: $00
	nop                                              ; $54b4: $00
	nop                                              ; $54b5: $00
	nop                                              ; $54b6: $00
	nop                                              ; $54b7: $00
	nop                                              ; $54b8: $00
	nop                                              ; $54b9: $00
	nop                                              ; $54ba: $00
	nop                                              ; $54bb: $00
	nop                                              ; $54bc: $00
	nop                                              ; $54bd: $00
	nop                                              ; $54be: $00
	nop                                              ; $54bf: $00
	nop                                              ; $54c0: $00
	nop                                              ; $54c1: $00
	nop                                              ; $54c2: $00
	nop                                              ; $54c3: $00
	nop                                              ; $54c4: $00
	nop                                              ; $54c5: $00
	nop                                              ; $54c6: $00
	nop                                              ; $54c7: $00
	nop                                              ; $54c8: $00
	nop                                              ; $54c9: $00
	nop                                              ; $54ca: $00
	nop                                              ; $54cb: $00
	nop                                              ; $54cc: $00
	nop                                              ; $54cd: $00
	nop                                              ; $54ce: $00
	nop                                              ; $54cf: $00
	rst  $38                                         ; $54d0: $ff
	rst  $38                                         ; $54d1: $ff
	nop                                              ; $54d2: $00
	nop                                              ; $54d3: $00
	jr   jr_08f_54ee                                 ; $54d4: $18 $18

	ld   a, [hl]                                     ; $54d6: $7e
	ld   a, [hl]                                     ; $54d7: $7e
	jr   jr_08f_54f2                                 ; $54d8: $18 $18

	ld   a, [hl]                                     ; $54da: $7e
	ld   a, [hl]                                     ; $54db: $7e
	ld   h, [hl]                                     ; $54dc: $66
	ld   h, [hl]                                     ; $54dd: $66
	ld   a, [hl]                                     ; $54de: $7e
	ld   a, [hl]                                     ; $54df: $7e
	rst  $38                                         ; $54e0: $ff
	rst  $38                                         ; $54e1: $ff
	nop                                              ; $54e2: $00
	nop                                              ; $54e3: $00
	nop                                              ; $54e4: $00
	nop                                              ; $54e5: $00
	db   $fc                                         ; $54e6: $fc
	db   $fc                                         ; $54e7: $fc
	call z, $cccc                                    ; $54e8: $cc $cc $cc
	call z, $fcfc                                    ; $54eb: $cc $fc $fc

jr_08f_54ee:
	call z, Call_08f_66cc                            ; $54ee: $cc $cc $66
	ld   h, [hl]                                     ; $54f1: $66

jr_08f_54f2:
	ld   a, [hl]                                     ; $54f2: $7e
	ld   a, [hl]                                     ; $54f3: $7e
	jr   jr_08f_550e                                 ; $54f4: $18 $18

	ld   a, [hl]                                     ; $54f6: $7e
	ld   a, [hl]                                     ; $54f7: $7e
	jr   jr_08f_5512                                 ; $54f8: $18 $18

	add  hl, de                                      ; $54fa: $19
	add  hl, de                                      ; $54fb: $19
	nop                                              ; $54fc: $00
	nop                                              ; $54fd: $00
	rst  $38                                         ; $54fe: $ff
	rst  $38                                         ; $54ff: $ff
	call z, $fccc                                    ; $5500: $cc $cc $fc
	db   $fc                                         ; $5503: $fc
	call z, $cccc                                    ; $5504: $cc $cc $cc
	call z, $dcdc                                    ; $5507: $cc $dc $dc
	adc  h                                           ; $550a: $8c
	adc  h                                           ; $550b: $8c
	nop                                              ; $550c: $00
	nop                                              ; $550d: $00

jr_08f_550e:
	rst  $38                                         ; $550e: $ff
	rst  $38                                         ; $550f: $ff
	rst  $38                                         ; $5510: $ff
	rst  $38                                         ; $5511: $ff

jr_08f_5512:
	nop                                              ; $5512: $00
	nop                                              ; $5513: $00
	rra                                              ; $5514: $1f
	rra                                              ; $5515: $1f
	jr   jr_08f_5530                                 ; $5516: $18 $18

	jr   jr_08f_5532                                 ; $5518: $18 $18

	rra                                              ; $551a: $1f
	rra                                              ; $551b: $1f
	jr   c, jr_08f_5556                              ; $551c: $38 $38

	ccf                                              ; $551e: $3f
	ccf                                              ; $551f: $3f
	rst  $38                                         ; $5520: $ff
	rst  $38                                         ; $5521: $ff
	nop                                              ; $5522: $00
	nop                                              ; $5523: $00
	ld   hl, sp-$08                                  ; $5524: $f8 $f8
	jr   jr_08f_5540                                 ; $5526: $18 $18

	jr   jr_08f_5542                                 ; $5528: $18 $18

	ld   hl, sp-$08                                  ; $552a: $f8 $f8
	jr   nc, jr_08f_555e                             ; $552c: $30 $30

	ld   hl, sp-$08                                  ; $552e: $f8 $f8

jr_08f_5530:
	ld   l, h                                        ; $5530: $6c
	ld   l, h                                        ; $5531: $6c

jr_08f_5532:
	ld   c, a                                        ; $5532: $4f
	ld   c, a                                        ; $5533: $4f
	inc  c                                           ; $5534: $0c
	inc  c                                           ; $5535: $0c
	rrca                                             ; $5536: $0f
	rrca                                             ; $5537: $0f
	nop                                              ; $5538: $00
	nop                                              ; $5539: $00
	ccf                                              ; $553a: $3f
	ccf                                              ; $553b: $3f
	nop                                              ; $553c: $00
	nop                                              ; $553d: $00
	rst  $38                                         ; $553e: $ff
	rst  $38                                         ; $553f: $ff

jr_08f_5540:
	ld   l, h                                        ; $5540: $6c
	ld   l, h                                        ; $5541: $6c

jr_08f_5542:
	db   $ec                                         ; $5542: $ec
	db   $ec                                         ; $5543: $ec
	ld   h, b                                        ; $5544: $60
	ld   h, b                                        ; $5545: $60
	ldh  [$e0], a                                    ; $5546: $e0 $e0
	nop                                              ; $5548: $00
	nop                                              ; $5549: $00
	ld   hl, sp-$08                                  ; $554a: $f8 $f8
	nop                                              ; $554c: $00
	nop                                              ; $554d: $00
	rst  $38                                         ; $554e: $ff
	rst  $38                                         ; $554f: $ff
	rst  $38                                         ; $5550: $ff
	rst  $38                                         ; $5551: $ff
	nop                                              ; $5552: $00
	nop                                              ; $5553: $00
	inc  bc                                          ; $5554: $03
	inc  bc                                          ; $5555: $03

jr_08f_5556:
	inc  bc                                          ; $5556: $03
	inc  bc                                          ; $5557: $03
	ld   a, a                                        ; $5558: $7f
	ld   a, a                                        ; $5559: $7f
	dec  c                                           ; $555a: $0d
	dec  c                                           ; $555b: $0d
	dec  e                                           ; $555c: $1d
	dec  e                                           ; $555d: $1d

jr_08f_555e:
	dec  de                                          ; $555e: $1b
	dec  de                                          ; $555f: $1b
	rst  $38                                         ; $5560: $ff
	rst  $38                                         ; $5561: $ff
	nop                                              ; $5562: $00
	nop                                              ; $5563: $00
	nop                                              ; $5564: $00
	nop                                              ; $5565: $00
	nop                                              ; $5566: $00
	nop                                              ; $5567: $00
	db   $fc                                         ; $5568: $fc
	db   $fc                                         ; $5569: $fc
	add  b                                           ; $556a: $80
	add  b                                           ; $556b: $80
	ld   hl, sp-$08                                  ; $556c: $f8 $f8
	jr   jr_08f_5588                                 ; $556e: $18 $18

	ld   a, [hl-]                                    ; $5570: $3a
	ld   a, [hl-]                                    ; $5571: $3a
	ld   e, h                                        ; $5572: $5c
	ld   e, h                                        ; $5573: $5c
	add  hl, de                                      ; $5574: $19
	add  hl, de                                      ; $5575: $19
	jr   jr_08f_5590                                 ; $5576: $18 $18

	jr   jr_08f_5592                                 ; $5578: $18 $18

	dec  de                                          ; $557a: $1b
	dec  de                                          ; $557b: $1b
	nop                                              ; $557c: $00
	nop                                              ; $557d: $00
	rst  $38                                         ; $557e: $ff
	rst  $38                                         ; $557f: $ff
	ret  c                                           ; $5580: $d8

	ret  c                                           ; $5581: $d8

	ld   a, b                                        ; $5582: $78
	ld   a, b                                        ; $5583: $78
	jr   nc, jr_08f_55b6                             ; $5584: $30 $30

	ldh  [$e0], a                                    ; $5586: $e0 $e0

jr_08f_5588:
	ldh  a, [$f0]                                    ; $5588: $f0 $f0
	sbc  h                                           ; $558a: $9c
	sbc  h                                           ; $558b: $9c
	nop                                              ; $558c: $00
	nop                                              ; $558d: $00
	rst  $38                                         ; $558e: $ff
	rst  $38                                         ; $558f: $ff

jr_08f_5590:
	nop                                              ; $5590: $00
	nop                                              ; $5591: $00

jr_08f_5592:
	nop                                              ; $5592: $00
	nop                                              ; $5593: $00
	nop                                              ; $5594: $00
	nop                                              ; $5595: $00
	nop                                              ; $5596: $00
	nop                                              ; $5597: $00
	nop                                              ; $5598: $00
	nop                                              ; $5599: $00
	nop                                              ; $559a: $00
	nop                                              ; $559b: $00
	nop                                              ; $559c: $00
	nop                                              ; $559d: $00
	nop                                              ; $559e: $00
	nop                                              ; $559f: $00
	nop                                              ; $55a0: $00
	nop                                              ; $55a1: $00
	nop                                              ; $55a2: $00
	nop                                              ; $55a3: $00
	nop                                              ; $55a4: $00
	nop                                              ; $55a5: $00
	nop                                              ; $55a6: $00
	nop                                              ; $55a7: $00
	nop                                              ; $55a8: $00
	nop                                              ; $55a9: $00
	nop                                              ; $55aa: $00
	nop                                              ; $55ab: $00
	nop                                              ; $55ac: $00
	nop                                              ; $55ad: $00
	nop                                              ; $55ae: $00
	nop                                              ; $55af: $00
	nop                                              ; $55b0: $00
	nop                                              ; $55b1: $00
	nop                                              ; $55b2: $00
	nop                                              ; $55b3: $00
	nop                                              ; $55b4: $00
	nop                                              ; $55b5: $00

jr_08f_55b6:
	nop                                              ; $55b6: $00
	nop                                              ; $55b7: $00
	nop                                              ; $55b8: $00
	nop                                              ; $55b9: $00
	nop                                              ; $55ba: $00
	nop                                              ; $55bb: $00
	nop                                              ; $55bc: $00
	nop                                              ; $55bd: $00
	nop                                              ; $55be: $00
	nop                                              ; $55bf: $00
	nop                                              ; $55c0: $00
	nop                                              ; $55c1: $00
	nop                                              ; $55c2: $00
	nop                                              ; $55c3: $00
	nop                                              ; $55c4: $00
	nop                                              ; $55c5: $00
	nop                                              ; $55c6: $00
	nop                                              ; $55c7: $00
	nop                                              ; $55c8: $00
	nop                                              ; $55c9: $00
	nop                                              ; $55ca: $00
	nop                                              ; $55cb: $00
	nop                                              ; $55cc: $00
	nop                                              ; $55cd: $00
	nop                                              ; $55ce: $00
	nop                                              ; $55cf: $00
	sub  $01                                         ; $55d0: $d6 $01
	ld   [bc], a                                     ; $55d2: $02
	nop                                              ; $55d3: $00
	ld   [$83ff], sp                                 ; $55d4: $08 $ff $83
	nop                                              ; $55d7: $00
	nop                                              ; $55d8: $00
	rst  $30                                         ; $55d9: $f7
	add  b                                           ; $55da: $80
	nop                                              ; $55db: $00
	rlca                                             ; $55dc: $07
	ld   [$00ff], sp                                 ; $55dd: $08 $ff $00
	inc  bc                                          ; $55e0: $03
	nop                                              ; $55e1: $00
	db   $f4                                         ; $55e2: $f4
	ld   b, d                                        ; $55e3: $42
	rst  $38                                         ; $55e4: $ff
	add  e                                           ; $55e5: $83
	nop                                              ; $55e6: $00
	nop                                              ; $55e7: $00
	cp   l                                           ; $55e8: $bd
	add  b                                           ; $55e9: $80
	nop                                              ; $55ea: $00
	rlca                                             ; $55eb: $07
	ld   b, d                                        ; $55ec: $42
	rst  $38                                         ; $55ed: $ff
	nop                                              ; $55ee: $00
	cp   l                                           ; $55ef: $bd
	nop                                              ; $55f0: $00
	ld   c, $1e                                      ; $55f1: $0e $1e
	rst  $38                                         ; $55f3: $ff
	add  e                                           ; $55f4: $83
	nop                                              ; $55f5: $00
	nop                                              ; $55f6: $00
	rst  $28                                         ; $55f7: $ef
	add  b                                           ; $55f8: $80
	nop                                              ; $55f9: $00
	dec  b                                           ; $55fa: $05
	db   $10                                         ; $55fb: $10
	rst  $38                                         ; $55fc: $ff
	nop                                              ; $55fd: $00
	add  b                                           ; $55fe: $80
	nop                                              ; $55ff: $00
	ld   l, e                                        ; $5600: $6b
	adc  b                                           ; $5601: $88
	inc  b                                           ; $5602: $04
	ld   bc, $0484                                   ; $5603: $01 $84 $04
	add  c                                           ; $5606: $81
	add  h                                           ; $5607: $84
	add  h                                           ; $5608: $84
	nop                                              ; $5609: $00
	add  b                                           ; $560a: $80
	rst  $38                                         ; $560b: $ff
	add  d                                           ; $560c: $82
	nop                                              ; $560d: $00
	add  b                                           ; $560e: $80
	rst  $38                                         ; $560f: $ff
	add  [hl]                                        ; $5610: $86
	nop                                              ; $5611: $00
	add  b                                           ; $5612: $80
	rst  $38                                         ; $5613: $ff
	add  d                                           ; $5614: $82
	nop                                              ; $5615: $00
	add  b                                           ; $5616: $80
	rst  $38                                         ; $5617: $ff
	add  [hl]                                        ; $5618: $86
	nop                                              ; $5619: $00
	add  b                                           ; $561a: $80
	rst  $38                                         ; $561b: $ff
	add  d                                           ; $561c: $82
	nop                                              ; $561d: $00
	add  b                                           ; $561e: $80
	rst  $38                                         ; $561f: $ff
	add  [hl]                                        ; $5620: $86
	nop                                              ; $5621: $00
	add  b                                           ; $5622: $80
	db   $fc                                         ; $5623: $fc
	add  d                                           ; $5624: $82
	inc  b                                           ; $5625: $04
	add  b                                           ; $5626: $80
	call nz, $0480                                   ; $5627: $c4 $80 $04
	nop                                              ; $562a: $00
	ld   [$f78a], sp                                 ; $562b: $08 $8a $f7
	rlca                                             ; $562e: $07
	scf                                              ; $562f: $37
	rst  $30                                         ; $5630: $f7
	rst  ToBoot                                         ; $5631: $c7
	ldh  a, [rP1]                                    ; $5632: $f0 $00
	db   $10                                         ; $5634: $10
	jp   z, $800a                                    ; $5635: $ca $0a $80

	ret  nz                                          ; $5638: $c0

	dec  b                                           ; $5639: $05
	jp   z, $cac0                                    ; $563a: $ca $c0 $ca

	adc  $c0                                         ; $563d: $ce $c0
	sbc  $80                                         ; $563f: $de $80
	ret  nz                                          ; $5641: $c0

	ld   bc, $01ff                                   ; $5642: $01 $ff $01
	add  b                                           ; $5645: $80
	ld   a, $01                                      ; $5646: $3e $01
	cp   $bf                                         ; $5648: $fe $bf
	add  [hl]                                        ; $564a: $86
	rst  $38                                         ; $564b: $ff
	add  b                                           ; $564c: $80
	ld   a, a                                        ; $564d: $7f
	add  b                                           ; $564e: $80
	rst  $38                                         ; $564f: $ff
	add  c                                           ; $5650: $81
	ldh  [rSB], a                                    ; $5651: $e0 $01
	rst  $38                                         ; $5653: $ff
	ldh  a, [$84]                                    ; $5654: $f0 $84
	rst  $30                                         ; $5656: $f7
	ld   [$c7e7], sp                                 ; $5657: $08 $e7 $c7
	ld   [hl], a                                     ; $565a: $77
	scf                                              ; $565b: $37
	rrca                                             ; $565c: $0f
	nop                                              ; $565d: $00
	rrca                                             ; $565e: $0f
	nop                                              ; $565f: $00
	rla                                              ; $5660: $17
	add  a                                           ; $5661: $87
	rst  $30                                         ; $5662: $f7
	inc  c                                           ; $5663: $0c
	ldh  a, [$f7]                                    ; $5664: $f0 $f7
	add  sp, $00                                     ; $5666: $e8 $00
	ld   [bc], a                                     ; $5668: $02
	nop                                              ; $5669: $00
	ld   l, d                                        ; $566a: $6a
	ld   [hl], b                                     ; $566b: $70
	ld   [hl], d                                     ; $566c: $72
	ld   [hl], b                                     ; $566d: $70
	ld   [hl], d                                     ; $566e: $72
	ld   [hl], b                                     ; $566f: $70
	ld   [hl], a                                     ; $5670: $77
	add  b                                           ; $5671: $80
	ld   [hl], b                                     ; $5672: $70
	dec  c                                           ; $5673: $0d
	ld   a, a                                        ; $5674: $7f
	ld   [hl], b                                     ; $5675: $70
	ld   a, a                                        ; $5676: $7f
	rra                                              ; $5677: $1f
	nop                                              ; $5678: $00
	add  a                                           ; $5679: $87
	nop                                              ; $567a: $00
	srl  e                                           ; $567b: $cb $3b
	sbc  e                                           ; $567d: $9b
	dec  sp                                          ; $567e: $3b
	cp   e                                           ; $567f: $bb
	dec  sp                                          ; $5680: $3b

jr_08f_5681:
	cp   e                                           ; $5681: $bb
	add  b                                           ; $5682: $80

jr_08f_5683:
	dec  sp                                          ; $5683: $3b
	rlca                                             ; $5684: $07
	ei                                               ; $5685: $fb
	jr   jr_08f_5683                                 ; $5686: $18 $fb

	db   $f4                                         ; $5688: $f4
	nop                                              ; $5689: $00
	add  b                                           ; $568a: $80
	nop                                              ; $568b: $00
	or   b                                           ; $568c: $b0
	add  a                                           ; $568d: $87
	cp   a                                           ; $568e: $bf
	ld   [$bf3f], sp                                 ; $568f: $08 $3f $bf
	rst  $28                                         ; $5692: $ef
	ldh  [$03], a                                    ; $5693: $e0 $03
	nop                                              ; $5695: $00
	rrca                                             ; $5696: $0f
	ld   [bc], a                                     ; $5697: $02
	ld   e, $80                                      ; $5698: $1e $80
	add  hl, bc                                      ; $569a: $09
	ld   b, $00                                      ; $569b: $06 $00
	stop                                             ; $569d: $10 $00
	ld   [hl], a                                     ; $569f: $77
	inc  c                                           ; $56a0: $0c
	ld   b, h                                        ; $56a1: $44
	ccf                                              ; $56a2: $3f
	add  b                                           ; $56a3: $80
	nop                                              ; $56a4: $00
	inc  b                                           ; $56a5: $04
	ld   a, l                                        ; $56a6: $7d
	xor  d                                           ; $56a7: $aa
	add  hl, sp                                      ; $56a8: $39
	jr   c, jr_08f_5681                              ; $56a9: $38 $d6

	add  b                                           ; $56ab: $80
	rst  $38                                         ; $56ac: $ff
	add  c                                           ; $56ad: $81
	nop                                              ; $56ae: $00
	nop                                              ; $56af: $00
	rst  $38                                         ; $56b0: $ff
	add  b                                           ; $56b1: $80
	nop                                              ; $56b2: $00
	nop                                              ; $56b3: $00
	rst  $38                                         ; $56b4: $ff
	add  b                                           ; $56b5: $80
	rrca                                             ; $56b6: $0f
	inc  b                                           ; $56b7: $04
	add  b                                           ; $56b8: $80
	nop                                              ; $56b9: $00
	ldh  [$80], a                                    ; $56ba: $e0 $80
	rst  $30                                         ; $56bc: $f7
	add  b                                           ; $56bd: $80
	ld   hl, $0706                                   ; $56be: $21 $06 $07
	stop                                             ; $56c1: $10 $00
	ld   a, b                                        ; $56c3: $78
	ret  nz                                          ; $56c4: $c0

	ld   b, b                                        ; $56c5: $40
	ld   hl, sp-$78                                  ; $56c6: $f8 $88
	add  h                                           ; $56c8: $84
	add  h                                           ; $56c9: $84
	nop                                              ; $56ca: $00
	inc  bc                                          ; $56cb: $03
	ld   a, [$0a08]                                  ; $56cc: $fa $08 $0a
	ld   hl, sp-$80                                  ; $56cf: $f8 $80
	ei                                               ; $56d1: $fb
	add  b                                           ; $56d2: $80
	rst  $30                                         ; $56d3: $f7
	add  b                                           ; $56d4: $80
	nop                                              ; $56d5: $00
	add  hl, bc                                      ; $56d6: $09
	ret  c                                           ; $56d7: $d8

	rlca                                             ; $56d8: $07
	ld   h, b                                        ; $56d9: $60
	sbc  a                                           ; $56da: $9f
	jr   nz, jr_08f_56dd                             ; $56db: $20 $00

jr_08f_56dd:
	ld   e, a                                        ; $56dd: $5f
	db   $10                                         ; $56de: $10
	ld   d, b                                        ; $56df: $50
	rra                                              ; $56e0: $1f
	add  b                                           ; $56e1: $80
	rst  JumpTable                                         ; $56e2: $df
	add  b                                           ; $56e3: $80
	rst  $28                                         ; $56e4: $ef
	add  b                                           ; $56e5: $80
	nop                                              ; $56e6: $00
	inc  bc                                          ; $56e7: $03
	dec  de                                          ; $56e8: $1b
	ldh  [rTMA], a                                   ; $56e9: $e0 $06
	db   $fd                                         ; $56eb: $fd
	add  b                                           ; $56ec: $80
	nop                                              ; $56ed: $00
	nop                                              ; $56ee: $00
	cp   a                                           ; $56ef: $bf
	add  b                                           ; $56f0: $80
	and  c                                           ; $56f1: $a1
	add  c                                           ; $56f2: $81
	cp   a                                           ; $56f3: $bf
	add  b                                           ; $56f4: $80
	cp   [hl]                                        ; $56f5: $be
	add  b                                           ; $56f6: $80
	nop                                              ; $56f7: $00

jr_08f_56f8:
	inc  bc                                          ; $56f8: $03
	cp   e                                           ; $56f9: $bb
	nop                                              ; $56fa: $00
	inc  c                                           ; $56fb: $0c
	or   a                                           ; $56fc: $b7
	add  b                                           ; $56fd: $80
	nop                                              ; $56fe: $00
	add  d                                           ; $56ff: $82
	inc  b                                           ; $5700: $04
	add  b                                           ; $5701: $80
	ld   b, h                                        ; $5702: $44
	add  b                                           ; $5703: $80
	call nz, $0481                                   ; $5704: $c4 $81 $04
	ld   [bc], a                                     ; $5707: $02
	call nz, $c404                                   ; $5708: $c4 $04 $c4
	add  b                                           ; $570b: $80
	inc  b                                           ; $570c: $04
	add  b                                           ; $570d: $80
	jr   nc, @-$7e                                   ; $570e: $30 $80

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5710: $cf
	add  b                                           ; $5711: $80
	jr   nc, @-$7e                                   ; $5712: $30 $80

	rrca                                             ; $5714: $0f
	adc  b                                           ; $5715: $88
	nop                                              ; $5716: $00
	add  b                                           ; $5717: $80
	rst  $38                                         ; $5718: $ff
	add  b                                           ; $5719: $80
	nop                                              ; $571a: $00
	add  b                                           ; $571b: $80
	rst  $38                                         ; $571c: $ff
	adc  b                                           ; $571d: $88
	nop                                              ; $571e: $00
	add  b                                           ; $571f: $80
	rst  $38                                         ; $5720: $ff
	add  b                                           ; $5721: $80
	nop                                              ; $5722: $00
	add  b                                           ; $5723: $80
	rst  $38                                         ; $5724: $ff
	add  [hl]                                        ; $5725: $86
	nop                                              ; $5726: $00
	inc  bc                                          ; $5727: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5728: $cf
	ret  nz                                          ; $5729: $c0

	jr   nc, jr_08f_576b                             ; $572a: $30 $3f

	add  b                                           ; $572c: $80
	ret  nc                                          ; $572d: $d0

	add  b                                           ; $572e: $80
	rra                                              ; $572f: $1f
	add  [hl]                                        ; $5730: $86
	nop                                              ; $5731: $00
	inc  bc                                          ; $5732: $03
	add  sp, $17                                     ; $5733: $e8 $17
	ld   [$80f7], sp                                 ; $5735: $08 $f7 $80
	nop                                              ; $5738: $00
	add  b                                           ; $5739: $80
	rst  $38                                         ; $573a: $ff
	add  [hl]                                        ; $573b: $86
	nop                                              ; $573c: $00
	inc  bc                                          ; $573d: $03
	sbc  a                                           ; $573e: $9f
	ldh  [$80], a                                    ; $573f: $e0 $80
	rst  $38                                         ; $5741: $ff
	add  b                                           ; $5742: $80
	nop                                              ; $5743: $00
	add  b                                           ; $5744: $80
	rst  $38                                         ; $5745: $ff
	add  [hl]                                        ; $5746: $86
	nop                                              ; $5747: $00
	inc  bc                                          ; $5748: $03
	db   $f4                                         ; $5749: $f4
	dec  bc                                          ; $574a: $0b
	inc  b                                           ; $574b: $04
	ei                                               ; $574c: $fb
	add  b                                           ; $574d: $80
	nop                                              ; $574e: $00
	add  b                                           ; $574f: $80
	rst  $38                                         ; $5750: $ff
	add  [hl]                                        ; $5751: $86
	nop                                              ; $5752: $00
	inc  bc                                          ; $5753: $03
	ld   c, a                                        ; $5754: $4f
	ldh  a, [rLCDC]                                  ; $5755: $f0 $40
	rst  $38                                         ; $5757: $ff
	add  b                                           ; $5758: $80
	nop                                              ; $5759: $00
	add  b                                           ; $575a: $80
	rst  $38                                         ; $575b: $ff
	add  [hl]                                        ; $575c: $86
	nop                                              ; $575d: $00
	dec  b                                           ; $575e: $05
	ld   [$c73f], sp                                 ; $575f: $08 $3f $c7
	or   b                                           ; $5762: $b0
	add  h                                           ; $5763: $84
	or   h                                           ; $5764: $b4
	add  h                                           ; $5765: $84
	or   l                                           ; $5766: $b5
	add  b                                           ; $5767: $80
	or   a                                           ; $5768: $b7
	add  b                                           ; $5769: $80
	or   h                                           ; $576a: $b4

jr_08f_576b:
	nop                                              ; $576b: $00
	ld   [hl], b                                     ; $576c: $70
	add  b                                           ; $576d: $80
	rst  $38                                         ; $576e: $ff
	nop                                              ; $576f: $00
	nop                                              ; $5770: $00
	add  b                                           ; $5771: $80
	jr   z, jr_08f_56f8                              ; $5772: $28 $84

	db   $eb                                         ; $5774: $eb
	add  b                                           ; $5775: $80
	rst  $28                                         ; $5776: $ef
	ld   a, [bc]                                     ; $5777: $0a
	jr   z, jr_08f_577a                              ; $5778: $28 $00

jr_08f_577a:
	ld   [$e0f8], sp                                 ; $577a: $08 $f8 $e0
	dec  de                                          ; $577d: $1b
	ld   b, e                                        ; $577e: $43
	ld   e, e                                        ; $577f: $5b
	db   $db                                         ; $5780: $db
	jp   c, $81db                                    ; $5781: $da $db $81

	jp   c, $db80                                    ; $5784: $da $80 $db

	add  b                                           ; $5787: $80
	ld   e, e                                        ; $5788: $5b
	ld   [bc], a                                     ; $5789: $02
	dec  h                                           ; $578a: $25
	nop                                              ; $578b: $00
	ld   l, $80                                      ; $578c: $2e $80
	xor  $80                                         ; $578e: $ee $80
	ld   l, [hl]                                     ; $5790: $6e
	ld   bc, $ee2e                                   ; $5791: $01 $2e $ee
	add  c                                           ; $5794: $81
	ld   l, $80                                      ; $5795: $2e $80
	ld   l, [hl]                                     ; $5797: $6e
	add  b                                           ; $5798: $80
	xor  $0c                                         ; $5799: $ee $0c
	ld   a, [hl]                                     ; $579b: $7e
	nop                                              ; $579c: $00
	ld   b, b                                        ; $579d: $40
	nop                                              ; $579e: $00
	and  b                                           ; $579f: $a0
	nop                                              ; $57a0: $00
	and  b                                           ; $57a1: $a0
	nop                                              ; $57a2: $00
	stop                                             ; $57a3: $10 $00
	ldh  a, [rP1]                                    ; $57a5: $f0 $00
	rst  $38                                         ; $57a7: $ff
	add  c                                           ; $57a8: $81
	nop                                              ; $57a9: $00
	rra                                              ; $57aa: $1f
	push af                                          ; $57ab: $f5
	nop                                              ; $57ac: $00
	ld   c, $00                                      ; $57ad: $0e $00
	ld   [$1000], sp                                 ; $57af: $08 $00 $10
	nop                                              ; $57b2: $00
	jr   nz, jr_08f_57b5                             ; $57b3: $20 $00

jr_08f_57b5:
	jr   c, jr_08f_57b7                              ; $57b5: $38 $00

jr_08f_57b7:
	db   $fc                                         ; $57b7: $fc
	ld   [$000f], sp                                 ; $57b8: $08 $0f $00
	dec  de                                          ; $57bb: $1b
	nop                                              ; $57bc: $00
	db   $ec                                         ; $57bd: $ec
	nop                                              ; $57be: $00
	jr   jr_08f_57c1                                 ; $57bf: $18 $00

jr_08f_57c1:
	jr   nz, jr_08f_57c3                             ; $57c1: $20 $00

jr_08f_57c3:
	ld   b, b                                        ; $57c3: $40
	nop                                              ; $57c4: $00
	add  b                                           ; $57c5: $80
	nop                                              ; $57c6: $00
	add  b                                           ; $57c7: $80
	nop                                              ; $57c8: $00
	ldh  a, [$80]                                    ; $57c9: $f0 $80
	adc  [hl]                                        ; $57cb: $8e
	inc  b                                           ; $57cc: $04

jr_08f_57cd:
	add  b                                           ; $57cd: $80
	nop                                              ; $57ce: $00
	ld   [$0014], sp                                 ; $57cf: $08 $14 $00
	ld   d, [hl]                                     ; $57d2: $56
	add  c                                           ; $57d3: $81
	sub  h                                           ; $57d4: $94
	add  c                                           ; $57d5: $81
	sub  l                                           ; $57d6: $95
	add  c                                           ; $57d7: $81
	cp   l                                           ; $57d8: $bd
	add  b                                           ; $57d9: $80
	add  c                                           ; $57da: $81
	ld   bc, $80ff                                   ; $57db: $01 $ff $80
	add  b                                           ; $57de: $80
	rst  $38                                         ; $57df: $ff
	add  d                                           ; $57e0: $82
	nop                                              ; $57e1: $00
	adc  d                                           ; $57e2: $8a
	rst  $38                                         ; $57e3: $ff
	add  hl, bc                                      ; $57e4: $09
	nop                                              ; $57e5: $00
	jr   z, jr_08f_57e8                              ; $57e6: $28 $00

jr_08f_57e8:
	xor  h                                           ; $57e8: $ac
	inc  bc                                          ; $57e9: $03
	add  hl, hl                                      ; $57ea: $29
	inc  bc                                          ; $57eb: $03
	dec  hl                                          ; $57ec: $2b
	inc  bc                                          ; $57ed: $03
	ld   a, e                                        ; $57ee: $7b
	add  b                                           ; $57ef: $80
	inc  bc                                          ; $57f0: $03
	ld   bc, $01ff                                   ; $57f1: $01 $ff $01
	add  b                                           ; $57f4: $80
	rst  $38                                         ; $57f5: $ff
	inc  bc                                          ; $57f6: $03
	nop                                              ; $57f7: $00
	rlca                                             ; $57f8: $07
	nop                                              ; $57f9: $00
	dec  bc                                          ; $57fa: $0b
	add  a                                           ; $57fb: $87
	ei                                               ; $57fc: $fb
	ld   b, $f8                                      ; $57fd: $06 $f8
	ei                                               ; $57ff: $fb
	db   $f4                                         ; $5800: $f4
	nop                                              ; $5801: $00
	and  e                                           ; $5802: $a3
	jr   nz, @-$5d                                   ; $5803: $20 $a1

	adc  c                                           ; $5805: $89
	cp   l                                           ; $5806: $bd
	inc  bc                                          ; $5807: $03
	and  e                                           ; $5808: $a3
	nop                                              ; $5809: $00
	sbc  h                                           ; $580a: $9c
	dec  e                                           ; $580b: $1d
	add  b                                           ; $580c: $80
	sbc  l                                           ; $580d: $9d
	nop                                              ; $580e: $00
	sbc  h                                           ; $580f: $9c
	add  a                                           ; $5810: $87
	sbc  l                                           ; $5811: $9d
	ld   bc, $20f1                                   ; $5812: $01 $f1 $20
	add  b                                           ; $5815: $80
	ldh  [rSC], a                                    ; $5816: $e0 $02
	db   $ed                                         ; $5818: $ed
	ldh  [$6d], a                                    ; $5819: $e0 $6d
	add  l                                           ; $581b: $85
	ld   h, b                                        ; $581c: $60
	ld   [de], a                                     ; $581d: $12
	ld   l, l                                        ; $581e: $6d
	ld   h, b                                        ; $581f: $60
	xor  l                                           ; $5820: $ad
	nop                                              ; $5821: $00
	rla                                              ; $5822: $17
	nop                                              ; $5823: $00
	db   $dd                                         ; $5824: $dd
	nop                                              ; $5825: $00
	db   $dd                                         ; $5826: $dd
	nop                                              ; $5827: $00
	rla                                              ; $5828: $17
	nop                                              ; $5829: $00
	jr   jr_08f_582c                                 ; $582a: $18 $00

jr_08f_582c:
	dec  c                                           ; $582c: $0d
	nop                                              ; $582d: $00
	ret  c                                           ; $582e: $d8

	nop                                              ; $582f: $00
	push bc                                          ; $5830: $c5
	add  e                                           ; $5831: $83
	or   l                                           ; $5832: $b5
	add  b                                           ; $5833: $80
	or   a                                           ; $5834: $b7
	add  b                                           ; $5835: $80
	or   h                                           ; $5836: $b4
	ld   [bc], a                                     ; $5837: $02
	add  l                                           ; $5838: $85
	push af                                          ; $5839: $f5
	push bc                                          ; $583a: $c5
	add  c                                           ; $583b: $81
	or   l                                           ; $583c: $b5
	ld   bc, $ebb3                                   ; $583d: $01 $b3 $eb
	add  c                                           ; $5840: $81
	jp   $eb00                                       ; $5841: $c3 $00 $eb


	add  b                                           ; $5844: $80
	rst  $28                                         ; $5845: $ef
	add  b                                           ; $5846: $80
	jr   z, jr_08f_57cd                              ; $5847: $28 $84

	db   $eb                                         ; $5849: $eb
	nop                                              ; $584a: $00
	ldh  [$85], a                                    ; $584b: $e0 $85
	db   $db                                         ; $584d: $db
	add  b                                           ; $584e: $80
	ld   e, e                                        ; $584f: $5b
	ld   b, $c3                                      ; $5850: $06 $c3
	ei                                               ; $5852: $fb
	db   $e3                                         ; $5853: $e3
	db   $db                                         ; $5854: $db
	db   $e3                                         ; $5855: $e3
	ei                                               ; $5856: $fb
	inc  de                                          ; $5857: $13
	add  b                                           ; $5858: $80
	xor  $85                                         ; $5859: $ee $85
	add  sp, $02                                     ; $585b: $e8 $02
	ldh  [$e8], a                                    ; $585d: $e0 $e8
	ldh  [$81], a                                    ; $585f: $e0 $81
	add  sp, $01                                     ; $5861: $e8 $01
	ret  c                                           ; $5863: $d8

	nop                                              ; $5864: $00
	add  b                                           ; $5865: $80
	push de                                          ; $5866: $d5
	nop                                              ; $5867: $00
	nop                                              ; $5868: $00
	add  b                                           ; $5869: $80
	ld   [$f503], a                                  ; $586a: $ea $03 $f5
	ld   a, [bc]                                     ; $586d: $0a
	rst  $38                                         ; $586e: $ff
	nop                                              ; $586f: $00
	add  b                                           ; $5870: $80
	rst  $38                                         ; $5871: $ff
	nop                                              ; $5872: $00
	nop                                              ; $5873: $00
	add  b                                           ; $5874: $80
	rst  $38                                         ; $5875: $ff
	inc  bc                                          ; $5876: $03
	rlca                                             ; $5877: $07
	nop                                              ; $5878: $00
	rlca                                             ; $5879: $07
	nop                                              ; $587a: $00
	add  b                                           ; $587b: $80
	add  b                                           ; $587c: $80
	rlca                                             ; $587d: $07
	nop                                              ; $587e: $00

jr_08f_587f:
	ld   b, b                                        ; $587f: $40
	or   b                                           ; $5880: $b0
	ldh  a, [$0c]                                    ; $5881: $f0 $0c
	db   $fc                                         ; $5883: $fc
	ldh  a, [rP1]                                    ; $5884: $f0 $00
	add  b                                           ; $5886: $80
	rst  $38                                         ; $5887: $ff
	ld   [$00f0], sp                                 ; $5888: $08 $f0 $00
	adc  [hl]                                        ; $588b: $8e
	nop                                              ; $588c: $00
	ld   a, c                                        ; $588d: $79
	nop                                              ; $588e: $00
	ld   b, $00                                      ; $588f: $06 $00
	ld   bc, $0083                                   ; $5891: $01 $83 $00
	ld   [bc], a                                     ; $5894: $02
	ret  nz                                          ; $5895: $c0

	call nz, $8100                                   ; $5896: $c4 $00 $81

jr_08f_5899:
	inc  b                                           ; $5899: $04
	inc  c                                           ; $589a: $0c
	add  h                                           ; $589b: $84
	inc  b                                           ; $589c: $04
	ld   h, h                                        ; $589d: $64
	inc  b                                           ; $589e: $04
	sub  h                                           ; $589f: $94
	inc  b                                           ; $58a0: $04
	ld   l, h                                        ; $58a1: $6c
	inc  b                                           ; $58a2: $04
	ld   d, $02                                      ; $58a3: $16 $02
	ld   [$fb00], sp                                 ; $58a5: $08 $00 $fb
	add  b                                           ; $58a8: $80
	nop                                              ; $58a9: $00
	nop                                              ; $58aa: $00
	rst  $38                                         ; $58ab: $ff
	add  b                                           ; $58ac: $80
	nop                                              ; $58ad: $00
	add  b                                           ; $58ae: $80
	rst  $38                                         ; $58af: $ff
	add  [hl]                                        ; $58b0: $86
	nop                                              ; $58b1: $00
	nop                                              ; $58b2: $00
	rst  $38                                         ; $58b3: $ff
	add  b                                           ; $58b4: $80
	nop                                              ; $58b5: $00
	nop                                              ; $58b6: $00
	rst  $38                                         ; $58b7: $ff
	add  b                                           ; $58b8: $80
	nop                                              ; $58b9: $00
	add  b                                           ; $58ba: $80
	rst  $38                                         ; $58bb: $ff
	add  [hl]                                        ; $58bc: $86
	nop                                              ; $58bd: $00
	nop                                              ; $58be: $00
	rst  $38                                         ; $58bf: $ff
	add  b                                           ; $58c0: $80
	nop                                              ; $58c1: $00
	nop                                              ; $58c2: $00
	rst  $38                                         ; $58c3: $ff
	add  b                                           ; $58c4: $80
	nop                                              ; $58c5: $00
	add  b                                           ; $58c6: $80
	rst  $38                                         ; $58c7: $ff
	add  [hl]                                        ; $58c8: $86
	nop                                              ; $58c9: $00
	inc  bc                                          ; $58ca: $03
	db   $f4                                         ; $58cb: $f4
	dec  bc                                          ; $58cc: $0b
	nop                                              ; $58cd: $00
	rst  $38                                         ; $58ce: $ff
	add  b                                           ; $58cf: $80
	nop                                              ; $58d0: $00
	add  b                                           ; $58d1: $80
	rst  $38                                         ; $58d2: $ff
	add  [hl]                                        ; $58d3: $86
	nop                                              ; $58d4: $00
	inc  bc                                          ; $58d5: $03
	ld   a, $a1                                      ; $58d6: $3e $a1
	jr   nz, jr_08f_5899                             ; $58d8: $20 $bf

	add  b                                           ; $58da: $80
	nop                                              ; $58db: $00
	add  b                                           ; $58dc: $80
	rst  $38                                         ; $58dd: $ff
	add  [hl]                                        ; $58de: $86
	nop                                              ; $58df: $00
	inc  bc                                          ; $58e0: $03
	jr   nz, jr_08f_587f                             ; $58e1: $20 $9c

	inc  e                                           ; $58e3: $1c
	sbc  h                                           ; $58e4: $9c
	add  b                                           ; $58e5: $80
	inc  e                                           ; $58e6: $1c
	add  b                                           ; $58e7: $80
	call c, $5c80                                    ; $58e8: $dc $80 $5c
	ld   bc, $407c                                   ; $58eb: $01 $7c $40
	add  b                                           ; $58ee: $80
	ld   a, a                                        ; $58ef: $7f
	add  b                                           ; $58f0: $80
	nop                                              ; $58f1: $00
	nop                                              ; $58f2: $00
	dec  c                                           ; $58f3: $0d
	add  c                                           ; $58f4: $81
	ld   h, b                                        ; $58f5: $60
	add  b                                           ; $58f6: $80
	ld   l, l                                        ; $58f7: $6d
	dec  b                                           ; $58f8: $05

jr_08f_58f9:
	ld   [hl], d                                     ; $58f9: $72
	ld   h, b                                        ; $58fa: $60
	ld   b, b                                        ; $58fb: $40
	ld   a, a                                        ; $58fc: $7f
	ld   b, b                                        ; $58fd: $40
	nop                                              ; $58fe: $00
	add  b                                           ; $58ff: $80

jr_08f_5900:
	rst  $38                                         ; $5900: $ff
	add  b                                           ; $5901: $80
	nop                                              ; $5902: $00
	nop                                              ; $5903: $00
	db   $dd                                         ; $5904: $dd
	add  c                                           ; $5905: $81
	nop                                              ; $5906: $00
	add  b                                           ; $5907: $80
	db   $dd                                         ; $5908: $dd
	nop                                              ; $5909: $00
	ld   [hl+], a                                    ; $590a: $22
	add  b                                           ; $590b: $80
	nop                                              ; $590c: $00
	nop                                              ; $590d: $00
	rst  $38                                         ; $590e: $ff
	add  b                                           ; $590f: $80
	nop                                              ; $5910: $00
	add  b                                           ; $5911: $80
	rst  $38                                         ; $5912: $ff
	adc  b                                           ; $5913: $88
	nop                                              ; $5914: $00
	inc  bc                                          ; $5915: $03
	ld   d, l                                        ; $5916: $55
	nop                                              ; $5917: $00
	rst  $38                                         ; $5918: $ff
	xor  d                                           ; $5919: $aa
	add  c                                           ; $591a: $81
	cp   $01                                         ; $591b: $fe $01
	rst  $38                                         ; $591d: $ff
	ld   bc, $0085                                   ; $591e: $01 $85 $00
	inc  bc                                          ; $5921: $03
	ld   d, l                                        ; $5922: $55
	nop                                              ; $5923: $00
	rst  $38                                         ; $5924: $ff
	xor  d                                           ; $5925: $aa
	add  c                                           ; $5926: $81
	ccf                                              ; $5927: $3f
	ld   bc, $80bf                                   ; $5928: $01 $bf $80
	add  l                                           ; $592b: $85
	nop                                              ; $592c: $00
	inc  bc                                          ; $592d: $03
	ld   d, l                                        ; $592e: $55
	nop                                              ; $592f: $00
	rst  $38                                         ; $5930: $ff
	xor  d                                           ; $5931: $aa
	add  c                                           ; $5932: $81
	rra                                              ; $5933: $1f
	ld   bc, $c0df                                   ; $5934: $01 $df $c0
	add  a                                           ; $5937: $87
	nop                                              ; $5938: $00
	add  b                                           ; $5939: $80
	and  b                                           ; $593a: $a0
	add  b                                           ; $593b: $80
	ret  nz                                          ; $593c: $c0

	add  b                                           ; $593d: $80
	and  b                                           ; $593e: $a0
	add  b                                           ; $593f: $80
	inc  bc                                          ; $5940: $03
	ld   [bc], a                                     ; $5941: $02
	dec  de                                          ; $5942: $1b
	inc  bc                                          ; $5943: $03
	and  e                                           ; $5944: $a3
	add  c                                           ; $5945: $81
	nop                                              ; $5946: $00
	nop                                              ; $5947: $00
	ld   b, h                                        ; $5948: $44
	add  b                                           ; $5949: $80
	rst  $38                                         ; $594a: $ff
	add  b                                           ; $594b: $80
	ld   d, l                                        ; $594c: $55
	rlca                                             ; $594d: $07
	rst  $38                                         ; $594e: $ff
	ld   d, l                                        ; $594f: $55
	rst  $38                                         ; $5950: $ff
	xor  e                                           ; $5951: $ab
	ld   bc, $0193                                   ; $5952: $01 $93 $01
	dec  h                                           ; $5955: $25
	add  c                                           ; $5956: $81
	ld   bc, $4900                                   ; $5957: $01 $00 $49
	add  b                                           ; $595a: $80
	rst  $38                                         ; $595b: $ff
	add  b                                           ; $595c: $80
	ld   d, l                                        ; $595d: $55
	inc  b                                           ; $595e: $04
	rst  $38                                         ; $595f: $ff
	ld   d, l                                        ; $5960: $55
	rst  $38                                         ; $5961: $ff
	xor  a                                           ; $5962: $af
	push af                                          ; $5963: $f5
	add  b                                           ; $5964: $80
	pop  af                                          ; $5965: $f1
	add  b                                           ; $5966: $80
	db   $f4                                         ; $5967: $f4
	add  c                                           ; $5968: $81
	ld   [hl], l                                     ; $5969: $75
	nop                                              ; $596a: $00
	push af                                          ; $596b: $f5
	add  c                                           ; $596c: $81
	or   l                                           ; $596d: $b5
	nop                                              ; $596e: $00
	push af                                          ; $596f: $f5
	add  b                                           ; $5970: $80
	push de                                          ; $5971: $d5
	ld   [bc], a                                     ; $5972: $02
	inc  [hl]                                        ; $5973: $34
	nop                                              ; $5974: $00
	jr   nz, jr_08f_58f9                             ; $5975: $20 $82

	ld   h, b                                        ; $5977: $60
	add  b                                           ; $5978: $80
	jr   nz, jr_08f_5900                             ; $5979: $20 $85

	and  b                                           ; $597b: $a0
	db   $10                                         ; $597c: $10
	add  hl, de                                      ; $597d: $19
	nop                                              ; $597e: $00
	ld   b, b                                        ; $597f: $40
	nop                                              ; $5980: $00
	db   $dd                                         ; $5981: $dd
	nop                                              ; $5982: $00
	db   $dd                                         ; $5983: $dd
	nop                                              ; $5984: $00
	ld   b, b                                        ; $5985: $40
	nop                                              ; $5986: $00
	ret  nz                                          ; $5987: $c0

	nop                                              ; $5988: $00
	add  b                                           ; $5989: $80
	nop                                              ; $598a: $00
	db   $dd                                         ; $598b: $dd
	nop                                              ; $598c: $00
	and  c                                           ; $598d: $a1
	add  b                                           ; $598e: $80
	db   $10                                         ; $598f: $10
	inc  bc                                          ; $5990: $03
	inc  d                                           ; $5991: $14
	sub  h                                           ; $5992: $94

jr_08f_5993:
	inc  d                                           ; $5993: $14
	sub  b                                           ; $5994: $90
	add  l                                           ; $5995: $85
	inc  d                                           ; $5996: $14
	dec  b                                           ; $5997: $05
	sub  h                                           ; $5998: $94
	inc  d                                           ; $5999: $14
	pop  de                                          ; $599a: $d1
	nop                                              ; $599b: $00
	xor  $e0                                         ; $599c: $ee $e0
	adc  e                                           ; $599e: $8b
	xor  $00                                         ; $599f: $ee $00
	nop                                              ; $59a1: $00
	add  c                                           ; $59a2: $81
	add  b                                           ; $59a3: $80
	adc  c                                           ; $59a4: $89
	xor  $00                                         ; $59a5: $ee $00
	ld   l, [hl]                                     ; $59a7: $6e
	cp   l                                           ; $59a8: $bd
	nop                                              ; $59a9: $00
	rlca                                             ; $59aa: $07
	ld   bc, $fd00                                   ; $59ab: $01 $00 $fd
	ld   [bc], a                                     ; $59ae: $02
	rst  $38                                         ; $59af: $ff
	nop                                              ; $59b0: $00
	sub  d                                           ; $59b1: $92
	jp   c, Jump_08f_4881                            ; $59b2: $da $81 $48

	add  b                                           ; $59b5: $80
	cp   $03                                         ; $59b6: $fe $03
	nop                                              ; $59b8: $00
	ld   bc, $3f00                                   ; $59b9: $01 $00 $3f
	add  b                                           ; $59bc: $80
	cp   a                                           ; $59bd: $bf
	add  b                                           ; $59be: $80
	ccf                                              ; $59bf: $3f
	add  c                                           ; $59c0: $81
	cp   a                                           ; $59c1: $bf
	add  b                                           ; $59c2: $80
	adc  e                                           ; $59c3: $8b
	add  b                                           ; $59c4: $80
	add  a                                           ; $59c5: $87
	add  b                                           ; $59c6: $80
	adc  e                                           ; $59c7: $8b
	add  hl, bc                                      ; $59c8: $09
	add  a                                           ; $59c9: $87
	rlca                                             ; $59ca: $07
	add  b                                           ; $59cb: $80
	ld   b, b                                        ; $59cc: $40
	rst  JumpTable                                         ; $59cd: $df
	nop                                              ; $59ce: $00
	sbc  a                                           ; $59cf: $9f
	ld   b, b                                        ; $59d0: $40
	ld   c, c                                        ; $59d1: $49
	ld   c, l                                        ; $59d2: $4d
	add  c                                           ; $59d3: $81
	ld   b, h                                        ; $59d4: $44
	add  b                                           ; $59d5: $80
	ld   e, a                                        ; $59d6: $5f
	ld   bc, $c040                                   ; $59d7: $01 $40 $c0
	add  c                                           ; $59da: $81
	nop                                              ; $59db: $00
	dec  b                                           ; $59dc: $05
	ld   hl, sp+$00                                  ; $59dd: $f8 $00
	ld   hl, sp+$00                                  ; $59df: $f8 $00
	jr   nz, jr_08f_5993                             ; $59e1: $20 $b0

	add  c                                           ; $59e3: $81
	sub  b                                           ; $59e4: $90
	add  b                                           ; $59e5: $80
	ld   hl, sp-$7f                                  ; $59e6: $f8 $81
	nop                                              ; $59e8: $00
	dec  c                                           ; $59e9: $0d
	ld   d, l                                        ; $59ea: $55
	rst  $38                                         ; $59eb: $ff
	cp   [hl]                                        ; $59ec: $be
	rst  $38                                         ; $59ed: $ff
	db   $eb                                         ; $59ee: $eb
	rst  $38                                         ; $59ef: $ff
	ccf                                              ; $59f0: $3f
	rst  $38                                         ; $59f1: $ff
	ld   h, d                                        ; $59f2: $62
	rst  $38                                         ; $59f3: $ff
	ld   h, d                                        ; $59f4: $62
	rst  $38                                         ; $59f5: $ff
	nop                                              ; $59f6: $00
	ccf                                              ; $59f7: $3f
	add  b                                           ; $59f8: $80
	nop                                              ; $59f9: $00
	inc  b                                           ; $59fa: $04
	ld   d, l                                        ; $59fb: $55
	rst  $38                                         ; $59fc: $ff
	db   $eb                                         ; $59fd: $eb
	rst  $38                                         ; $59fe: $ff
	cp   [hl]                                        ; $59ff: $be
	add  l                                           ; $5a00: $85
	rst  $38                                         ; $5a01: $ff
	dec  b                                           ; $5a02: $05
	inc  d                                           ; $5a03: $14
	rst  $38                                         ; $5a04: $ff
	inc  d                                           ; $5a05: $14
	nop                                              ; $5a06: $00
	push hl                                          ; $5a07: $e5
	push de                                          ; $5a08: $d5
	add  c                                           ; $5a09: $81
	push bc                                          ; $5a0a: $c5
	nop                                              ; $5a0b: $00
	push hl                                          ; $5a0c: $e5
	add  b                                           ; $5a0d: $80
	push af                                          ; $5a0e: $f5
	ld   [$f5d5], sp                                 ; $5a0f: $08 $d5 $f5
	db   $f4                                         ; $5a12: $f4
	ld   [hl], h                                     ; $5a13: $74
	or   c                                           ; $5a14: $b1
	ld   de, $f010                                   ; $5a15: $11 $10 $f0
	call nc, $a48a                                   ; $5a18: $d4 $8a $a4
	add  b                                           ; $5a1b: $80
	inc  h                                           ; $5a1c: $24
	ld   bc, $9d64                                   ; $5a1d: $01 $64 $9d
	add  c                                           ; $5a20: $81
	nop                                              ; $5a21: $00
	add  b                                           ; $5a22: $80
	db   $dd                                         ; $5a23: $dd
	nop                                              ; $5a24: $00
	ld   [hl+], a                                    ; $5a25: $22

jr_08f_5a26:
	add  b                                           ; $5a26: $80
	nop                                              ; $5a27: $00
	nop                                              ; $5a28: $00
	rst  $38                                         ; $5a29: $ff
	add  b                                           ; $5a2a: $80
	nop                                              ; $5a2b: $00
	add  b                                           ; $5a2c: $80
	rst  $38                                         ; $5a2d: $ff
	add  b                                           ; $5a2e: $80
	nop                                              ; $5a2f: $00
	nop                                              ; $5a30: $00
	and  c                                           ; $5a31: $a1
	add  c                                           ; $5a32: $81
	db   $10                                         ; $5a33: $10
	add  b                                           ; $5a34: $80
	sub  b                                           ; $5a35: $90
	nop                                              ; $5a36: $00
	ld   d, b                                        ; $5a37: $50
	add  b                                           ; $5a38: $80
	db   $10                                         ; $5a39: $10
	ld   [bc], a                                     ; $5a3a: $02
	ldh  a, [rAUD1LEN]                               ; $5a3b: $f0 $11
	nop                                              ; $5a3d: $00
	add  b                                           ; $5a3e: $80
	rst  $38                                         ; $5a3f: $ff
	add  c                                           ; $5a40: $81
	nop                                              ; $5a41: $00
	ld   [bc], a                                     ; $5a42: $02
	xor  $e0                                         ; $5a43: $ee $e0
	xor  $80                                         ; $5a45: $ee $80
	ldh  [$80], a                                    ; $5a47: $e0 $80
	rst  $28                                         ; $5a49: $ef
	add  c                                           ; $5a4a: $81
	add  sp, $00                                     ; $5a4b: $e8 $00
	ld   [$f880], sp                                 ; $5a4d: $08 $80 $f8
	add  b                                           ; $5a50: $80
	nop                                              ; $5a51: $00
	inc  bc                                          ; $5a52: $03
	ldh  a, [$8e]                                    ; $5a53: $f0 $8e
	add  d                                           ; $5a55: $82
	db   $fc                                         ; $5a56: $fc
	add  b                                           ; $5a57: $80
	nop                                              ; $5a58: $00
	add  b                                           ; $5a59: $80
	rst  $38                                         ; $5a5a: $ff
	add  $00                                         ; $5a5b: $c6 $00
	ld   bc, $feff                                   ; $5a5d: $01 $ff $fe
	add  b                                           ; $5a60: $80
	nop                                              ; $5a61: $00
	dec  c                                           ; $5a62: $0d
	ld   bc, $fd00                                   ; $5a63: $01 $00 $fd
	ld   [bc], a                                     ; $5a66: $02
	cp   $00                                         ; $5a67: $fe $00
	ld   [bc], a                                     ; $5a69: $02
	ld   a, [bc]                                     ; $5a6a: $0a
	ld   [$e000], sp                                 ; $5a6b: $08 $00 $e0
	nop                                              ; $5a6e: $00
	ld   [$808b], a                                  ; $5a6f: $ea $8b $80
	add  a                                           ; $5a72: $87
	inc  bc                                          ; $5a73: $03
	adc  e                                           ; $5a74: $8b
	dec  bc                                          ; $5a75: $0b
	rlca                                             ; $5a76: $07
	add  a                                           ; $5a77: $87
	add  b                                           ; $5a78: $80
	adc  e                                           ; $5a79: $8b
	add  b                                           ; $5a7a: $80
	add  a                                           ; $5a7b: $87
	add  b                                           ; $5a7c: $80
	adc  e                                           ; $5a7d: $8b
	add  b                                           ; $5a7e: $80
	add  a                                           ; $5a7f: $87
	ld   bc, $5f1f                                   ; $5a80: $01 $1f $5f
	add  b                                           ; $5a83: $80
	ld   b, b                                        ; $5a84: $40
	ld   [bc], a                                     ; $5a85: $02
	ret  nz                                          ; $5a86: $c0

	nop                                              ; $5a87: $00
	add  b                                           ; $5a88: $80
	add  b                                           ; $5a89: $80
	ld   b, c                                        ; $5a8a: $41
	add  hl, bc                                      ; $5a8b: $09
	ld   b, [hl]                                     ; $5a8c: $46
	ld   [hl], a                                     ; $5a8d: $77
	ld   b, c                                        ; $5a8e: $41
	ld   a, h                                        ; $5a8f: $7c
	ld   b, b                                        ; $5a90: $40
	ld   c, a                                        ; $5a91: $4f
	ld   b, b                                        ; $5a92: $40
	inc  hl                                          ; $5a93: $23
	ldh  [rP1], a                                    ; $5a94: $e0 $00
	add  b                                           ; $5a96: $80
	jr   @+$09                                       ; $5a97: $18 $07

	ld   h, b                                        ; $5a99: $60
	ld   l, b                                        ; $5a9a: $68
	sbc  b                                           ; $5a9b: $98
	or   b                                           ; $5a9c: $b0
	ld   a, b                                        ; $5a9d: $78
	ret  nc                                          ; $5a9e: $d0

	add  sp, $48                                     ; $5a9f: $e8 $48
	add  b                                           ; $5aa1: $80
	xor  b                                           ; $5aa2: $a8
	nop                                              ; $5aa3: $00
	jr   z, jr_08f_5a26                              ; $5aa4: $28 $80

	nop                                              ; $5aa6: $00
	add  d                                           ; $5aa7: $82
	ccf                                              ; $5aa8: $3f
	nop                                              ; $5aa9: $00
	call z, $0083                                    ; $5aaa: $cc $83 $00
	nop                                              ; $5aad: $00
	call z, $0083                                    ; $5aae: $cc $83 $00
	add  b                                           ; $5ab1: $80
	db   $fc                                         ; $5ab2: $fc
	add  b                                           ; $5ab3: $80
	rst  $38                                         ; $5ab4: $ff
	nop                                              ; $5ab5: $00
	call z, $0083                                    ; $5ab6: $cc $83 $00
	nop                                              ; $5ab9: $00
	call z, $0085                                    ; $5aba: $cc $85 $00
	add  b                                           ; $5abd: $80
	add  b                                           ; $5abe: $80
	nop                                              ; $5abf: $00
	ret  nz                                          ; $5ac0: $c0

	add  e                                           ; $5ac1: $83
	nop                                              ; $5ac2: $00
	nop                                              ; $5ac3: $00
	ret  nz                                          ; $5ac4: $c0

	add  c                                           ; $5ac5: $81
	nop                                              ; $5ac6: $00
	add  b                                           ; $5ac7: $80
	inc  h                                           ; $5ac8: $24
	adc  h                                           ; $5ac9: $8c
	inc  b                                           ; $5aca: $04
	call c, $0200                                    ; $5acb: $dc $00 $02
	ccf                                              ; $5ace: $3f
	nop                                              ; $5acf: $00
	ccf                                              ; $5ad0: $3f
	adc  e                                           ; $5ad1: $8b
	nop                                              ; $5ad2: $00
	ld   [bc], a                                     ; $5ad3: $02
	ldh  [rP1], a                                    ; $5ad4: $e0 $00
	ldh  [$8d], a                                    ; $5ad6: $e0 $8d
	nop                                              ; $5ad8: $00
	ld   [bc], a                                     ; $5ad9: $02
	jr   @-$1e                                       ; $5ada: $18 $e0

	ld   hl, sp-$80                                  ; $5adc: $f8 $80
	inc  e                                           ; $5ade: $1c
	add  b                                           ; $5adf: $80
	rst  ToBoot                                         ; $5ae0: $c7
	add  b                                           ; $5ae1: $80
	reti                                             ; $5ae2: $d9


	add  c                                           ; $5ae3: $81
	nop                                              ; $5ae4: $00
	dec  b                                           ; $5ae5: $05
	db   $dd                                         ; $5ae6: $dd
	nop                                              ; $5ae7: $00
	add  b                                           ; $5ae8: $80
	nop                                              ; $5ae9: $00
	ld   d, [hl]                                     ; $5aea: $56
	dec  bc                                          ; $5aeb: $0b
	add  b                                           ; $5aec: $80
	rlca                                             ; $5aed: $07
	add  b                                           ; $5aee: $80
	dec  bc                                          ; $5aef: $0b
	ld   [bc], a                                     ; $5af0: $02
	rla                                              ; $5af1: $17
	sub  a                                           ; $5af2: $97
	adc  a                                           ; $5af3: $8f
	add  b                                           ; $5af4: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5af5: $cf
	nop                                              ; $5af6: $00
	ld   l, a                                        ; $5af7: $6f
	add  b                                           ; $5af8: $80
	ld   l, h                                        ; $5af9: $6c
	add  hl, bc                                      ; $5afa: $09
	ldh  [$30], a                                    ; $5afb: $e0 $30
	or   b                                           ; $5afd: $b0
	nop                                              ; $5afe: $00
	sbc  b                                           ; $5aff: $98
	ret  c                                           ; $5b00: $d8

	sub  e                                           ; $5b01: $93
	sbc  e                                           ; $5b02: $9b
	sub  d                                           ; $5b03: $92
	sub  e                                           ; $5b04: $93
	add  d                                           ; $5b05: $82
	sub  d                                           ; $5b06: $92
	dec  c                                           ; $5b07: $0d
	ld   b, d                                        ; $5b08: $42
	ld   [bc], a                                     ; $5b09: $02
	add  hl, bc                                      ; $5b0a: $09
	nop                                              ; $5b0b: $00
	ret  z                                           ; $5b0c: $c8

	ld   [$00f0], sp                                 ; $5b0d: $08 $f0 $00
	jr   c, jr_08f_5b12                              ; $5b10: $38 $00

jr_08f_5b12:
	ld   l, b                                        ; $5b12: $68
	ld   h, b                                        ; $5b13: $60
	ld   b, b                                        ; $5b14: $40
	ld   h, b                                        ; $5b15: $60
	add  d                                           ; $5b16: $82
	ld   c, b                                        ; $5b17: $48
	ld   [bc], a                                     ; $5b18: $02
	ld   b, b                                        ; $5b19: $40
	ld   h, b                                        ; $5b1a: $60
	nop                                              ; $5b1b: $00
	add  b                                           ; $5b1c: $80
	rst  $38                                         ; $5b1d: $ff
	add  e                                           ; $5b1e: $83
	nop                                              ; $5b1f: $00
	ld   bc, $08ff                                   ; $5b20: $01 $ff $08
	add  d                                           ; $5b23: $82
	nop                                              ; $5b24: $00
	nop                                              ; $5b25: $00
	rst  $30                                         ; $5b26: $f7
	add  b                                           ; $5b27: $80
	nop                                              ; $5b28: $00
	add  b                                           ; $5b29: $80
	rst  $38                                         ; $5b2a: $ff
	add  e                                           ; $5b2b: $83
	nop                                              ; $5b2c: $00
	ld   bc, $42ff                                   ; $5b2d: $01 $ff $42
	add  d                                           ; $5b30: $82
	nop                                              ; $5b31: $00
	nop                                              ; $5b32: $00
	cp   l                                           ; $5b33: $bd
	add  b                                           ; $5b34: $80
	nop                                              ; $5b35: $00
	add  b                                           ; $5b36: $80
	cp   $80                                         ; $5b37: $fe $80
	ld   bc, $0081                                   ; $5b39: $01 $81 $00
	ld   bc, $00e0                                   ; $5b3c: $01 $e0 $00
	add  b                                           ; $5b3f: $80
	ld   [$0c80], sp                                 ; $5b40: $08 $80 $0c
	ld   bc, $0cec                                   ; $5b43: $01 $ec $0c
	add  c                                           ; $5b46: $81
	inc  b                                           ; $5b47: $04
	add  b                                           ; $5b48: $80
	add  h                                           ; $5b49: $84
	add  b                                           ; $5b4a: $80
	ld   b, h                                        ; $5b4b: $44
	add  b                                           ; $5b4c: $80
	inc  h                                           ; $5b4d: $24
	add  h                                           ; $5b4e: $84
	inc  d                                           ; $5b4f: $14
	nop                                              ; $5b50: $00
	inc  b                                           ; $5b51: $04
	ret  nz                                          ; $5b52: $c0

	nop                                              ; $5b53: $00
	inc  b                                           ; $5b54: $04
	inc  bc                                          ; $5b55: $03
	nop                                              ; $5b56: $00
	rrca                                             ; $5b57: $0f
	inc  bc                                          ; $5b58: $03
	rra                                              ; $5b59: $1f
	add  b                                           ; $5b5a: $80
	inc  c                                           ; $5b5b: $0c
	add  hl, bc                                      ; $5b5c: $09
	ld   [$1038], sp                                 ; $5b5d: $08 $38 $10
	dec  d                                           ; $5b60: $15
	db   $10                                         ; $5b61: $10
	ld   a, b                                        ; $5b62: $78
	jr   nz, jr_08f_5b12                             ; $5b63: $20 $ad

	ccf                                              ; $5b65: $3f
	rst  $38                                         ; $5b66: $ff
	add  b                                           ; $5b67: $80
	ret  nz                                          ; $5b68: $c0

	add  b                                           ; $5b69: $80
	dec  e                                           ; $5b6a: $1d
	add  b                                           ; $5b6b: $80
	db   $dd                                         ; $5b6c: $dd
	add  c                                           ; $5b6d: $81
	nop                                              ; $5b6e: $00
	ld   b, $d8                                      ; $5b6f: $06 $d8
	ld   [bc], a                                     ; $5b71: $02
	rrca                                             ; $5b72: $0f
	nop                                              ; $5b73: $00
	call $f8e0                                       ; $5b74: $cd $e0 $f8
	add  b                                           ; $5b77: $80
	inc  e                                           ; $5b78: $1c
	add  b                                           ; $5b79: $80
	rst  ToBoot                                         ; $5b7a: $c7
	add  b                                           ; $5b7b: $80
	reti                                             ; $5b7c: $d9


	add  c                                           ; $5b7d: $81
	nop                                              ; $5b7e: $00
	inc  b                                           ; $5b7f: $04
	db   $dd                                         ; $5b80: $dd
	nop                                              ; $5b81: $00
	add  b                                           ; $5b82: $80
	nop                                              ; $5b83: $00
	ld   e, l                                        ; $5b84: $5d
	add  h                                           ; $5b85: $84
	nop                                              ; $5b86: $00
	add  b                                           ; $5b87: $80
	add  b                                           ; $5b88: $80
	add  b                                           ; $5b89: $80
	ret  nz                                          ; $5b8a: $c0

	add  c                                           ; $5b8b: $81
	ld   h, b                                        ; $5b8c: $60
	ld   bc, $30e0                                   ; $5b8d: $01 $e0 $30
	db   $dd                                         ; $5b90: $dd
	ld   bc, $0403                                   ; $5b91: $01 $03 $04
	ld   [$e71c], sp                                 ; $5b94: $08 $1c $e7
	add  h                                           ; $5b97: $84
	nop                                              ; $5b98: $00
	add  hl, bc                                      ; $5b99: $09
	rst  $30                                         ; $5b9a: $f7
	ld   [$e718], sp                                 ; $5b9b: $08 $18 $e7
	inc  bc                                          ; $5b9e: $03
	nop                                              ; $5b9f: $00
	db   $f4                                         ; $5ba0: $f4
	ld   b, d                                        ; $5ba1: $42
	add  $39                                         ; $5ba2: $c6 $39
	add  h                                           ; $5ba4: $84
	nop                                              ; $5ba5: $00
	add  hl, bc                                      ; $5ba6: $09
	cp   l                                           ; $5ba7: $bd
	ld   b, d                                        ; $5ba8: $42
	jp   nz, $b939                                   ; $5ba9: $c2 $39 $b9

	nop                                              ; $5bac: $00
	rrca                                             ; $5bad: $0f
	rra                                              ; $5bae: $1f
	ld   sp, $84ce                                   ; $5baf: $31 $ce $84
	nop                                              ; $5bb2: $00
	ld   b, $ef                                      ; $5bb3: $06 $ef
	db   $10                                         ; $5bb5: $10
	ld   sp, $80ce                                   ; $5bb6: $31 $ce $80
	nop                                              ; $5bb9: $00
	ld   [$848d], a                                  ; $5bba: $ea $8d $84
	nop                                              ; $5bbd: $00
	cp   $85                                         ; $5bbe: $fe $85
	nop                                              ; $5bc0: $00
	nop                                              ; $5bc1: $00
	rst  $38                                         ; $5bc2: $ff
	add  c                                           ; $5bc3: $81
	nop                                              ; $5bc4: $00
	add  b                                           ; $5bc5: $80
	rst  $38                                         ; $5bc6: $ff
	add  b                                           ; $5bc7: $80
	nop                                              ; $5bc8: $00
	nop                                              ; $5bc9: $00
	rst  $38                                         ; $5bca: $ff
	add  l                                           ; $5bcb: $85
	nop                                              ; $5bcc: $00
	nop                                              ; $5bcd: $00
	rst  $38                                         ; $5bce: $ff
	add  c                                           ; $5bcf: $81
	nop                                              ; $5bd0: $00
	add  b                                           ; $5bd1: $80
	rst  $38                                         ; $5bd2: $ff
	add  b                                           ; $5bd3: $80
	nop                                              ; $5bd4: $00
	nop                                              ; $5bd5: $00
	rst  $38                                         ; $5bd6: $ff
	add  l                                           ; $5bd7: $85
	nop                                              ; $5bd8: $00
	nop                                              ; $5bd9: $00
	rst  $38                                         ; $5bda: $ff
	add  c                                           ; $5bdb: $81
	nop                                              ; $5bdc: $00
	add  b                                           ; $5bdd: $80
	rst  $38                                         ; $5bde: $ff
	add  b                                           ; $5bdf: $80
	nop                                              ; $5be0: $00
	nop                                              ; $5be1: $00
	rst  $38                                         ; $5be2: $ff
	add  l                                           ; $5be3: $85
	nop                                              ; $5be4: $00
	nop                                              ; $5be5: $00
	ld   hl, sp-$7f                                  ; $5be6: $f8 $81
	nop                                              ; $5be8: $00
	add  b                                           ; $5be9: $80
	ldh  [$80], a                                    ; $5bea: $e0 $80
	jr   nz, jr_08f_5bee                             ; $5bec: $20 $00

jr_08f_5bee:
	rrca                                             ; $5bee: $0f
	adc  d                                           ; $5bef: $8a
	rst  $30                                         ; $5bf0: $f7
	rlca                                             ; $5bf1: $07
	scf                                              ; $5bf2: $37
	rst  $30                                         ; $5bf3: $f7
	rst  ToBoot                                         ; $5bf4: $c7
	ldh  a, [rP1]                                    ; $5bf5: $f0 $00
	db   $10                                         ; $5bf7: $10
	jp   z, $800a                                    ; $5bf8: $ca $0a $80

	ret  nz                                          ; $5bfb: $c0

	dec  b                                           ; $5bfc: $05
	jp   z, $cac0                                    ; $5bfd: $ca $c0 $ca

	adc  $c0                                         ; $5c00: $ce $c0
	sbc  $80                                         ; $5c02: $de $80
	ret  nz                                          ; $5c04: $c0

	ld   bc, $01ff                                   ; $5c05: $01 $ff $01
	add  b                                           ; $5c08: $80
	ld   a, $01                                      ; $5c09: $3e $01
	cp   $bf                                         ; $5c0b: $fe $bf
	add  [hl]                                        ; $5c0d: $86
	rst  $38                                         ; $5c0e: $ff
	add  b                                           ; $5c0f: $80
	ld   a, a                                        ; $5c10: $7f
	add  b                                           ; $5c11: $80
	rst  $38                                         ; $5c12: $ff
	add  c                                           ; $5c13: $81
	ldh  [rSB], a                                    ; $5c14: $e0 $01
	rst  $38                                         ; $5c16: $ff
	ldh  a, [$84]                                    ; $5c17: $f0 $84
	rst  $30                                         ; $5c19: $f7
	add  hl, bc                                      ; $5c1a: $09
	rst  $20                                         ; $5c1b: $e7
	rst  ToBoot                                         ; $5c1c: $c7
	ld   [hl], a                                     ; $5c1d: $77
	scf                                              ; $5c1e: $37
	rrca                                             ; $5c1f: $0f
	nop                                              ; $5c20: $00
	rrca                                             ; $5c21: $0f
	nop                                              ; $5c22: $00
	rst  $30                                         ; $5c23: $f7
	rlca                                             ; $5c24: $07
	adc  b                                           ; $5c25: $88
	rst  $30                                         ; $5c26: $f7
	nop                                              ; $5c27: $00
	cp   a                                           ; $5c28: $bf
	add  b                                           ; $5c29: $80
	ld   b, b                                        ; $5c2a: $40
	ld   [bc], a                                     ; $5c2b: $02
	ld   b, e                                        ; $5c2c: $43
	ld   a, e                                        ; $5c2d: $7b
	ld   b, e                                        ; $5c2e: $43
	add  c                                           ; $5c2f: $81
	ld   [hl], e                                     ; $5c30: $73
	ld   bc, $7770                                   ; $5c31: $01 $70 $77
	add  b                                           ; $5c34: $80
	ld   [hl], b                                     ; $5c35: $70
	add  hl, bc                                      ; $5c36: $09
	ld   a, a                                        ; $5c37: $7f
	ld   [hl], b                                     ; $5c38: $70
	ld   a, a                                        ; $5c39: $7f
	ccf                                              ; $5c3a: $3f
	nop                                              ; $5c3b: $00

Call_08f_5c3c:
	rlca                                             ; $5c3c: $07
	add  b                                           ; $5c3d: $80
	ei                                               ; $5c3e: $fb
	add  e                                           ; $5c3f: $83
	sbc  e                                           ; $5c40: $9b
	add  b                                           ; $5c41: $80
	cp   e                                           ; $5c42: $bb

jr_08f_5c43:
	ld   bc, $bb3b                                   ; $5c43: $01 $3b $bb
	add  b                                           ; $5c46: $80
	dec  sp                                          ; $5c47: $3b
	ld   [$1bfb], sp                                 ; $5c48: $08 $fb $1b
	ei                                               ; $5c4b: $fb
	rst  $38                                         ; $5c4c: $ff
	nop                                              ; $5c4d: $00
	add  b                                           ; $5c4e: $80
	nop                                              ; $5c4f: $00
	cp   a                                           ; $5c50: $bf
	and  b                                           ; $5c51: $a0
	adc  b                                           ; $5c52: $88
	cp   a                                           ; $5c53: $bf
	rrca                                             ; $5c54: $0f
	ld   a, a                                        ; $5c55: $7f
	ldh  [$c3], a                                    ; $5c56: $e0 $c3
	ret  nz                                          ; $5c58: $c0

	ld   c, $03                                      ; $5c59: $0e $03
	ret  c                                           ; $5c5b: $d8

	rrca                                             ; $5c5c: $0f
	pop  bc                                          ; $5c5d: $c1
	rrca                                             ; $5c5e: $0f
	rla                                              ; $5c5f: $17
	nop                                              ; $5c60: $00
	ld   [hl], a                                     ; $5c61: $77
	inc  c                                           ; $5c62: $0c
	ld   b, h                                        ; $5c63: $44
	ccf                                              ; $5c64: $3f
	add  b                                           ; $5c65: $80
	nop                                              ; $5c66: $00
	inc  b                                           ; $5c67: $04
	ld   a, l                                        ; $5c68: $7d
	xor  d                                           ; $5c69: $aa
	jr   c, jr_08f_5ca5                              ; $5c6a: $38 $39

	sub  $82                                         ; $5c6c: $d6 $82
	rst  $38                                         ; $5c6e: $ff
	ld   bc, $ff00                                   ; $5c6f: $01 $00 $ff
	add  b                                           ; $5c72: $80
	nop                                              ; $5c73: $00
	nop                                              ; $5c74: $00
	rst  $38                                         ; $5c75: $ff
	add  b                                           ; $5c76: $80
	rrca                                             ; $5c77: $0f
	ld   c, $87                                      ; $5c78: $0e $87
	rlca                                             ; $5c7a: $07
	ldh  [$80], a                                    ; $5c7b: $e0 $80
	scf                                              ; $5c7d: $37
	pop  hl                                          ; $5c7e: $e1
	ld   bc, $d0e7                                   ; $5c7f: $01 $e7 $d0
	nop                                              ; $5c82: $00
	ld   a, b                                        ; $5c83: $78
	ret  nz                                          ; $5c84: $c0

	ld   b, b                                        ; $5c85: $40
	ld   hl, sp-$7b                                  ; $5c86: $f8 $85
	add  a                                           ; $5c88: $87
	add  h                                           ; $5c89: $84
	add  h                                           ; $5c8a: $84
	nop                                              ; $5c8b: $00
	ld   [bc], a                                     ; $5c8c: $02
	di                                               ; $5c8d: $f3
	ld   [$80fa], sp                                 ; $5c8e: $08 $fa $80
	ld   hl, sp-$80                                  ; $5c91: $f8 $80
	ei                                               ; $5c93: $fb
	add  b                                           ; $5c94: $80
	rst  $30                                         ; $5c95: $f7
	add  hl, bc                                      ; $5c96: $09
	nop                                              ; $5c97: $00
	ret  c                                           ; $5c98: $d8

	rlca                                             ; $5c99: $07
	ld   h, b                                        ; $5c9a: $60
	sbc  a                                           ; $5c9b: $9f
	sub  b                                           ; $5c9c: $90
	db   $10                                         ; $5c9d: $10
	rst  $28                                         ; $5c9e: $ef
	db   $10                                         ; $5c9f: $10
	ld   e, a                                        ; $5ca0: $5f

jr_08f_5ca1:
	add  b                                           ; $5ca1: $80
	rra                                              ; $5ca2: $1f
	add  b                                           ; $5ca3: $80
	rst  JumpTable                                         ; $5ca4: $df

jr_08f_5ca5:
	add  b                                           ; $5ca5: $80
	rst  $28                                         ; $5ca6: $ef
	ld   [$1b00], sp                                 ; $5ca7: $08 $00 $1b
	ldh  [rTMA], a                                   ; $5caa: $e0 $06
	db   $fd                                         ; $5cac: $fd
	rlca                                             ; $5cad: $07
	ld   [bc], a                                     ; $5cae: $02
	dec  de                                          ; $5caf: $1b
	and  c                                           ; $5cb0: $a1
	add  e                                           ; $5cb1: $83
	cp   a                                           ; $5cb2: $bf
	add  b                                           ; $5cb3: $80
	cp   [hl]                                        ; $5cb4: $be
	add  hl, bc                                      ; $5cb5: $09
	nop                                              ; $5cb6: $00
	cp   e                                           ; $5cb7: $bb
	nop                                              ; $5cb8: $00
	inc  c                                           ; $5cb9: $0c
	or   a                                           ; $5cba: $b7
	cp   b                                           ; $5cbb: $b8
	xor  b                                           ; $5cbc: $a8
	ld   [hl], a                                     ; $5cbd: $77

jr_08f_5cbe:
	jr   nz, jr_08f_5d20                             ; $5cbe: $20 $60

	add  b                                           ; $5cc0: $80
	jr   nz, jr_08f_5c43                             ; $5cc1: $20 $80

	ld   h, b                                        ; $5cc3: $60
	add  b                                           ; $5cc4: $80
	ldh  [$80], a                                    ; $5cc5: $e0 $80
	jr   nz, jr_08f_5ccb                             ; $5cc7: $20 $02

	ldh  [rAUD4LEN], a                               ; $5cc9: $e0 $20

jr_08f_5ccb:
	ldh  [$80], a                                    ; $5ccb: $e0 $80
	jr   nz, jr_08f_5cd5                             ; $5ccd: $20 $06

	scf                                              ; $5ccf: $37
	jr   nc, jr_08f_5ca1                             ; $5cd0: $30 $cf

	rrca                                             ; $5cd2: $0f
	jr   nc, jr_08f_5cd5                             ; $5cd3: $30 $00

jr_08f_5cd5:
	rrca                                             ; $5cd5: $0f
	add  a                                           ; $5cd6: $87
	nop                                              ; $5cd7: $00
	ld   bc, $00ff                                   ; $5cd8: $01 $ff $00
	add  b                                           ; $5cdb: $80
	rst  $38                                         ; $5cdc: $ff
	add  b                                           ; $5cdd: $80

jr_08f_5cde:
	nop                                              ; $5cde: $00
	nop                                              ; $5cdf: $00
	rst  $38                                         ; $5ce0: $ff
	add  a                                           ; $5ce1: $87
	nop                                              ; $5ce2: $00
	ld   bc, $00ff                                   ; $5ce3: $01 $ff $00
	add  b                                           ; $5ce6: $80
	rst  $38                                         ; $5ce7: $ff
	add  b                                           ; $5ce8: $80
	nop                                              ; $5ce9: $00
	nop                                              ; $5cea: $00
	rst  $38                                         ; $5ceb: $ff
	add  a                                           ; $5cec: $87
	nop                                              ; $5ced: $00
	ld   b, $30                                      ; $5cee: $06 $30
	ret  nz                                          ; $5cf0: $c0

	jr   nc, jr_08f_5d02                             ; $5cf1: $30 $0f

	ret  nz                                          ; $5cf3: $c0

	nop                                              ; $5cf4: $00
	rrca                                             ; $5cf5: $0f
	add  a                                           ; $5cf6: $87
	nop                                              ; $5cf7: $00
	add  b                                           ; $5cf8: $80
	rlca                                             ; $5cf9: $07
	ld   bc, $f708                                   ; $5cfa: $01 $08 $f7
	add  b                                           ; $5cfd: $80
	nop                                              ; $5cfe: $00
	nop                                              ; $5cff: $00
	rst  $38                                         ; $5d00: $ff
	add  a                                           ; $5d01: $87

jr_08f_5d02:
	nop                                              ; $5d02: $00
	nop                                              ; $5d03: $00
	add  b                                           ; $5d04: $80
	add  b                                           ; $5d05: $80
	ld   b, b                                        ; $5d06: $40
	nop                                              ; $5d07: $00
	ld   a, a                                        ; $5d08: $7f
	add  b                                           ; $5d09: $80
	nop                                              ; $5d0a: $00
	nop                                              ; $5d0b: $00
	rst  $38                                         ; $5d0c: $ff
	add  a                                           ; $5d0d: $87
	nop                                              ; $5d0e: $00
	add  b                                           ; $5d0f: $80
	inc  bc                                          ; $5d10: $03
	ld   bc, $fb04                                   ; $5d11: $01 $04 $fb
	add  b                                           ; $5d14: $80
	nop                                              ; $5d15: $00
	nop                                              ; $5d16: $00
	rst  $38                                         ; $5d17: $ff

jr_08f_5d18:
	add  a                                           ; $5d18: $87
	nop                                              ; $5d19: $00
	inc  bc                                          ; $5d1a: $03
	ret  nz                                          ; $5d1b: $c0

	and  b                                           ; $5d1c: $a0
	jr   nz, jr_08f_5cde                             ; $5d1d: $20 $bf

Call_08f_5d1f:
	add  b                                           ; $5d1f: $80

jr_08f_5d20:
	nop                                              ; $5d20: $00
	nop                                              ; $5d21: $00
	rst  $38                                         ; $5d22: $ff
	add  a                                           ; $5d23: $87
	nop                                              ; $5d24: $00
	dec  b                                           ; $5d25: $05
	rst  $30                                         ; $5d26: $f7
	ccf                                              ; $5d27: $3f
	ld   b, b                                        ; $5d28: $40
	or   a                                           ; $5d29: $b7
	add  h                                           ; $5d2a: $84
	or   h                                           ; $5d2b: $b4
	add  h                                           ; $5d2c: $84
	or   l                                           ; $5d2d: $b5
	add  b                                           ; $5d2e: $80
	or   a                                           ; $5d2f: $b7
	add  b                                           ; $5d30: $80
	or   h                                           ; $5d31: $b4
	inc  bc                                          ; $5d32: $03
	ldh  a, [rIE]                                    ; $5d33: $f0 $ff
	db   $10                                         ; $5d35: $10
	rst  $28                                         ; $5d36: $ef
	add  b                                           ; $5d37: $80
	jr   z, jr_08f_5cbe                              ; $5d38: $28 $84

	db   $eb                                         ; $5d3a: $eb
	add  b                                           ; $5d3b: $80
	rst  $28                                         ; $5d3c: $ef
	ld   a, [bc]                                     ; $5d3d: $0a
	jr   z, jr_08f_5d40                              ; $5d3e: $28 $00

jr_08f_5d40:
	ld   [$20f8], sp                                 ; $5d40: $08 $f8 $20
	db   $db                                         ; $5d43: $db
	ld   b, e                                        ; $5d44: $43
	ld   e, e                                        ; $5d45: $5b
	db   $db                                         ; $5d46: $db
	jp   c, $81db                                    ; $5d47: $da $db $81

	jp   c, $db80                                    ; $5d4a: $da $80 $db

	add  b                                           ; $5d4d: $80
	ld   e, e                                        ; $5d4e: $5b
	ld   [bc], a                                     ; $5d4f: $02
	inc  h                                           ; $5d50: $24
	nop                                              ; $5d51: $00
	ld   c, $80                                      ; $5d52: $0e $80
	xor  $80                                         ; $5d54: $ee $80
	ld   l, [hl]                                     ; $5d56: $6e
	ld   bc, $ee2e                                   ; $5d57: $01 $2e $ee
	add  c                                           ; $5d5a: $81
	ld   l, $80                                      ; $5d5b: $2e $80
	ld   l, [hl]                                     ; $5d5d: $6e
	add  b                                           ; $5d5e: $80
	xor  $06                                         ; $5d5f: $ee $06
	ld   c, a                                        ; $5d61: $4f
	db   $10                                         ; $5d62: $10

jr_08f_5d63:
	ld   d, b                                        ; $5d63: $50
	db   $10                                         ; $5d64: $10
	sub  b                                           ; $5d65: $90
	jr   nc, jr_08f_5d18                             ; $5d66: $30 $b0

	add  b                                           ; $5d68: $80
	db   $10                                         ; $5d69: $10
	ld   bc, $0f00                                   ; $5d6a: $01 $00 $0f
	add  b                                           ; $5d6d: $80
	rst  $38                                         ; $5d6e: $ff
	add  c                                           ; $5d6f: $81
	nop                                              ; $5d70: $00
	jr   jr_08f_5d63                                 ; $5d71: $18 $f0

	dec  b                                           ; $5d73: $05

jr_08f_5d74:
	ld   b, $08                                      ; $5d74: $06 $08

jr_08f_5d76:
	jr   jr_08f_5d88                                 ; $5d76: $18 $10

	jr   nc, jr_08f_5d9a                             ; $5d78: $30 $20

	ld   h, b                                        ; $5d7a: $60
	ld   b, b                                        ; $5d7b: $40
	pop  bc                                          ; $5d7c: $c1
	ld   sp, hl                                      ; $5d7d: $f9
	di                                               ; $5d7e: $f3
	rrca                                             ; $5d7f: $0f
	rlca                                             ; $5d80: $07
	nop                                              ; $5d81: $00
	dec  bc                                          ; $5d82: $0b
	db   $10                                         ; $5d83: $10
	inc  e                                           ; $5d84: $1c
	ret  nc                                          ; $5d85: $d0

	jr   @+$22                                       ; $5d86: $18 $20

jr_08f_5d88:
	ld   h, b                                        ; $5d88: $60
	ld   b, b                                        ; $5d89: $40
	ret  nz                                          ; $5d8a: $c0

	add  b                                           ; $5d8b: $80
	add  b                                           ; $5d8c: $80
	add  b                                           ; $5d8d: $80
	nop                                              ; $5d8e: $00
	inc  bc                                          ; $5d8f: $03
	add  b                                           ; $5d90: $80
	nop                                              ; $5d91: $00
	ldh  a, [$a7]                                    ; $5d92: $f0 $a7
	adc  l                                           ; $5d94: $8d
	jr   nz, jr_08f_5d97                             ; $5d95: $20 $00

jr_08f_5d97:
	rlca                                             ; $5d97: $07
	add  b                                           ; $5d98: $80
	nop                                              ; $5d99: $00

jr_08f_5d9a:
	inc  bc                                          ; $5d9a: $03

jr_08f_5d9b:
	inc  e                                           ; $5d9b: $1c
	rst  JumpTable                                         ; $5d9c: $df
	inc  e                                           ; $5d9d: $1c
	sbc  h                                           ; $5d9e: $9c
	add  b                                           ; $5d9f: $80
	sbc  l                                           ; $5da0: $9d
	ld   bc, $bd81                                   ; $5da1: $01 $81 $bd
	add  b                                           ; $5da4: $80
	add  c                                           ; $5da5: $81
	ld   bc, $80ff                                   ; $5da6: $01 $ff $80
	add  b                                           ; $5da9: $80
	rst  $38                                         ; $5daa: $ff
	add  c                                           ; $5dab: $81
	nop                                              ; $5dac: $00
	ld   bc, $00ff                                   ; $5dad: $01 $ff $00
	adc  c                                           ; $5db0: $89
	rst  $38                                         ; $5db1: $ff
	add  b                                           ; $5db2: $80
	nop                                              ; $5db3: $00
	inc  bc                                          ; $5db4: $03
	jr   c, jr_08f_5d76                              ; $5db5: $38 $bf

	jr   c, jr_08f_5df2                              ; $5db7: $38 $39

	add  b                                           ; $5db9: $80
	dec  sp                                          ; $5dba: $3b
	ld   bc, $7b03                                   ; $5dbb: $01 $03 $7b
	add  b                                           ; $5dbe: $80
	inc  bc                                          ; $5dbf: $03
	ld   bc, $01ff                                   ; $5dc0: $01 $ff $01
	add  b                                           ; $5dc3: $80
	rst  $38                                         ; $5dc4: $ff
	inc  b                                           ; $5dc5: $04
	nop                                              ; $5dc6: $00
	rlca                                             ; $5dc7: $07
	nop                                              ; $5dc8: $00
	ei                                               ; $5dc9: $fb
	inc  bc                                          ; $5dca: $03
	adc  b                                           ; $5dcb: $88
	ei                                               ; $5dcc: $fb
	inc  b                                           ; $5dcd: $04
	rst  $38                                         ; $5dce: $ff
	nop                                              ; $5dcf: $00
	and  e                                           ; $5dd0: $a3
	jr   nz, jr_08f_5d74                             ; $5dd1: $20 $a1

	adc  c                                           ; $5dd3: $89
	cp   l                                           ; $5dd4: $bd
	inc  bc                                          ; $5dd5: $03
	and  e                                           ; $5dd6: $a3
	nop                                              ; $5dd7: $00
	sbc  h                                           ; $5dd8: $9c
	dec  e                                           ; $5dd9: $1d
	add  b                                           ; $5dda: $80
	sbc  l                                           ; $5ddb: $9d
	nop                                              ; $5ddc: $00
	sbc  h                                           ; $5ddd: $9c
	add  a                                           ; $5dde: $87
	sbc  l                                           ; $5ddf: $9d
	ld   bc, $22f3                                   ; $5de0: $01 $f3 $22
	add  b                                           ; $5de3: $80
	ldh  [c], a                                      ; $5de4: $e2
	ld   [bc], a                                     ; $5de5: $02
	db   $e3                                         ; $5de6: $e3
	rst  $28                                         ; $5de7: $ef
	ld   l, h                                        ; $5de8: $6c
	add  l                                           ; $5de9: $85
	ld   h, b                                        ; $5dea: $60
	ld   [de], a                                     ; $5deb: $12
	ld   h, e                                        ; $5dec: $63
	ld   l, a                                        ; $5ded: $6f
	sbc  [hl]                                        ; $5dee: $9e
	ld   [hl-], a                                    ; $5def: $32
	inc  sp                                          ; $5df0: $33
	inc  h                                           ; $5df1: $24

jr_08f_5df2:
	dec  b                                           ; $5df2: $05
	ld   hl, sp-$24                                  ; $5df3: $f8 $dc
	ld   hl, $2037                                   ; $5df5: $21 $37 $20
	jr   c, @+$22                                    ; $5df8: $38 $20

	inc  l                                           ; $5dfa: $2c
	ld   hl, $dd05                                   ; $5dfb: $21 $05 $dd
	ld   b, l                                        ; $5dfe: $45
	add  e                                           ; $5dff: $83
	or   l                                           ; $5e00: $b5
	add  b                                           ; $5e01: $80
	or   a                                           ; $5e02: $b7
	add  b                                           ; $5e03: $80
	or   h                                           ; $5e04: $b4
	ld   [bc], a                                     ; $5e05: $02
	add  l                                           ; $5e06: $85
	push af                                          ; $5e07: $f5
	push bc                                          ; $5e08: $c5
	add  c                                           ; $5e09: $81
	or   l                                           ; $5e0a: $b5
	ld   bc, $eb33                                   ; $5e0b: $01 $33 $eb
	add  c                                           ; $5e0e: $81
	jp   $eb00                                       ; $5e0f: $c3 $00 $eb


	add  b                                           ; $5e12: $80
	rst  $28                                         ; $5e13: $ef
	add  b                                           ; $5e14: $80
	jr   z, jr_08f_5d9b                              ; $5e15: $28 $84

	db   $eb                                         ; $5e17: $eb
	nop                                              ; $5e18: $00
	ldh  [$85], a                                    ; $5e19: $e0 $85
	db   $db                                         ; $5e1b: $db
	add  b                                           ; $5e1c: $80
	ld   e, e                                        ; $5e1d: $5b
	ld   [bc], a                                     ; $5e1e: $02
	jp   $e3fb                                       ; $5e1f: $c3 $fb $e3


	add  c                                           ; $5e22: $81
	db   $db                                         ; $5e23: $db
	nop                                              ; $5e24: $00
	ld   a, [hl+]                                    ; $5e25: $2a
	add  b                                           ; $5e26: $80
	xor  $85                                         ; $5e27: $ee $85
	add  sp, $02                                     ; $5e29: $e8 $02
	ldh  [$e8], a                                    ; $5e2b: $e0 $e8
	ldh  [$81], a                                    ; $5e2d: $e0 $81
	add  sp, $00                                     ; $5e2f: $e8 $00
	ld   sp, hl                                      ; $5e31: $f9
	add  b                                           ; $5e32: $80
	nop                                              ; $5e33: $00
	add  b                                           ; $5e34: $80
	push de                                          ; $5e35: $d5
	add  b                                           ; $5e36: $80
	ld   [$f503], a                                  ; $5e37: $ea $03 $f5
	ld   a, [bc]                                     ; $5e3a: $0a
	rst  $38                                         ; $5e3b: $ff
	nop                                              ; $5e3c: $00
	add  b                                           ; $5e3d: $80
	rst  $38                                         ; $5e3e: $ff
	add  b                                           ; $5e3f: $80
	nop                                              ; $5e40: $00
	inc  bc                                          ; $5e41: $03
	rst  $38                                         ; $5e42: $ff
	ld   hl, sp+$00                                  ; $5e43: $f8 $00
	rlca                                             ; $5e45: $07
	add  b                                           ; $5e46: $80
	ld   d, b                                        ; $5e47: $50
	add  b                                           ; $5e48: $80
	and  b                                           ; $5e49: $a0
	inc  bc                                          ; $5e4a: $03
	ld   d, b                                        ; $5e4b: $50
	xor  a                                           ; $5e4c: $af
	rst  $38                                         ; $5e4d: $ff
	nop                                              ; $5e4e: $00
	add  b                                           ; $5e4f: $80
	rst  $38                                         ; $5e50: $ff
	add  b                                           ; $5e51: $80
	nop                                              ; $5e52: $00
	dec  bc                                          ; $5e53: $0b
	rst  $38                                         ; $5e54: $ff
	rrca                                             ; $5e55: $0f
	nop                                              ; $5e56: $00
	adc  [hl]                                        ; $5e57: $8e
	nop                                              ; $5e58: $00
	ld   a, c                                        ; $5e59: $79
	nop                                              ; $5e5a: $00
	ld   b, $00                                      ; $5e5b: $06 $00
	pop  af                                          ; $5e5d: $f1
	db   $f4                                         ; $5e5e: $f4
	inc  b                                           ; $5e5f: $04

jr_08f_5e60:
	add  b                                           ; $5e60: $80
	db   $fc                                         ; $5e61: $fc
	inc  bc                                          ; $5e62: $03
	inc  b                                           ; $5e63: $04
	ld   [bc], a                                     ; $5e64: $02
	ldh  a, [$d1]                                    ; $5e65: $f0 $d1
	add  c                                           ; $5e67: $81
	jr   nz, @+$0e                                   ; $5e68: $20 $0c

	and  b                                           ; $5e6a: $a0
	jr   nz, jr_08f_5ecd                             ; $5e6b: $20 $60

	nop                                              ; $5e6d: $00
	sub  b                                           ; $5e6e: $90
	nop                                              ; $5e6f: $00
	ld   l, b                                        ; $5e70: $68
	inc  b                                           ; $5e71: $04
	inc  d                                           ; $5e72: $14
	ld   [bc], a                                     ; $5e73: $02
	ld   [$fa00], sp                                 ; $5e74: $08 $00 $fa
	add  b                                           ; $5e77: $80
	nop                                              ; $5e78: $00
	nop                                              ; $5e79: $00
	rst  $38                                         ; $5e7a: $ff
	add  b                                           ; $5e7b: $80
	nop                                              ; $5e7c: $00
	nop                                              ; $5e7d: $00
	rst  $38                                         ; $5e7e: $ff
	adc  d                                           ; $5e7f: $8a
	nop                                              ; $5e80: $00
	nop                                              ; $5e81: $00
	rst  $38                                         ; $5e82: $ff
	add  b                                           ; $5e83: $80
	nop                                              ; $5e84: $00
	nop                                              ; $5e85: $00
	rst  $38                                         ; $5e86: $ff
	adc  d                                           ; $5e87: $8a
	nop                                              ; $5e88: $00
	nop                                              ; $5e89: $00
	rst  $38                                         ; $5e8a: $ff
	add  b                                           ; $5e8b: $80
	nop                                              ; $5e8c: $00
	nop                                              ; $5e8d: $00
	rst  $38                                         ; $5e8e: $ff
	add  a                                           ; $5e8f: $87
	nop                                              ; $5e90: $00
	add  b                                           ; $5e91: $80
	inc  bc                                          ; $5e92: $03
	ld   bc, $ff00                                   ; $5e93: $01 $00 $ff
	add  b                                           ; $5e96: $80
	nop                                              ; $5e97: $00
	nop                                              ; $5e98: $00
	rst  $38                                         ; $5e99: $ff
	add  a                                           ; $5e9a: $87
	nop                                              ; $5e9b: $00
	inc  bc                                          ; $5e9c: $03
	pop  bc                                          ; $5e9d: $c1
	and  c                                           ; $5e9e: $a1
	jr   nz, jr_08f_5e60                             ; $5e9f: $20 $bf

	add  b                                           ; $5ea1: $80
	nop                                              ; $5ea2: $00
	nop                                              ; $5ea3: $00
	rst  $38                                         ; $5ea4: $ff
	add  a                                           ; $5ea5: $87
	nop                                              ; $5ea6: $00
	inc  bc                                          ; $5ea7: $03
	rst  JumpTable                                         ; $5ea8: $df
	sbc  h                                           ; $5ea9: $9c
	inc  e                                           ; $5eaa: $1c
	sbc  h                                           ; $5eab: $9c
	add  b                                           ; $5eac: $80
	inc  e                                           ; $5ead: $1c
	nop                                              ; $5eae: $00
	call c, $1c81                                    ; $5eaf: $dc $81 $1c
	ld   [bc], a                                     ; $5eb2: $02
	inc  a                                           ; $5eb3: $3c
	nop                                              ; $5eb4: $00
	ccf                                              ; $5eb5: $3f
	add  c                                           ; $5eb6: $81
	nop                                              ; $5eb7: $00
	nop                                              ; $5eb8: $00
	ldh  a, [c]                                      ; $5eb9: $f2
	add  c                                           ; $5eba: $81
	ld   h, b                                        ; $5ebb: $60
	add  b                                           ; $5ebc: $80
	ld   l, l                                        ; $5ebd: $6d
	ld   b, $72                                      ; $5ebe: $06 $72
	ld   h, b                                        ; $5ec0: $60
	ld   b, b                                        ; $5ec1: $40
	ld   a, a                                        ; $5ec2: $7f
	ld   b, b                                        ; $5ec3: $40
	nop                                              ; $5ec4: $00
	rst  $38                                         ; $5ec5: $ff
	add  d                                           ; $5ec6: $82
	nop                                              ; $5ec7: $00
	add  c                                           ; $5ec8: $81
	ld   [hl+], a                                    ; $5ec9: $22
	add  b                                           ; $5eca: $80
	db   $dd                                         ; $5ecb: $dd
	nop                                              ; $5ecc: $00

jr_08f_5ecd:
	ld   [hl+], a                                    ; $5ecd: $22
	add  b                                           ; $5ece: $80
	nop                                              ; $5ecf: $00
	nop                                              ; $5ed0: $00
	rst  $38                                         ; $5ed1: $ff
	add  b                                           ; $5ed2: $80
	nop                                              ; $5ed3: $00
	nop                                              ; $5ed4: $00
	rst  $38                                         ; $5ed5: $ff
	add  c                                           ; $5ed6: $81
	nop                                              ; $5ed7: $00
	nop                                              ; $5ed8: $00
	rst  $38                                         ; $5ed9: $ff
	add  l                                           ; $5eda: $85
	nop                                              ; $5edb: $00
	add  d                                           ; $5edc: $82
	rst  $38                                         ; $5edd: $ff
	add  c                                           ; $5ede: $81
	cp   $01                                         ; $5edf: $fe $01
	rst  $38                                         ; $5ee1: $ff
	ld   bc, $0085                                   ; $5ee2: $01 $85 $00
	add  d                                           ; $5ee5: $82
	rst  $38                                         ; $5ee6: $ff
	add  c                                           ; $5ee7: $81
	ccf                                              ; $5ee8: $3f
	ld   bc, $80bf                                   ; $5ee9: $01 $bf $80
	add  l                                           ; $5eec: $85
	nop                                              ; $5eed: $00
	add  d                                           ; $5eee: $82
	rst  $38                                         ; $5eef: $ff
	add  b                                           ; $5ef0: $80
	rra                                              ; $5ef1: $1f
	ld   [bc], a                                     ; $5ef2: $02
	sbc  a                                           ; $5ef3: $9f
	ld   e, a                                        ; $5ef4: $5f
	ld   hl, $e08d                                   ; $5ef5: $21 $8d $e0
	inc  b                                           ; $5ef8: $04
	ld   [bc], a                                     ; $5ef9: $02
	inc  bc                                          ; $5efa: $03
	dec  de                                          ; $5efb: $1b
	inc  bc                                          ; $5efc: $03
	and  e                                           ; $5efd: $a3
	add  c                                           ; $5efe: $81
	nop                                              ; $5eff: $00
	nop                                              ; $5f00: $00
	ld   b, h                                        ; $5f01: $44
	add  b                                           ; $5f02: $80
	rst  $38                                         ; $5f03: $ff
	add  b                                           ; $5f04: $80
	ld   d, l                                        ; $5f05: $55
	rlca                                             ; $5f06: $07
	rst  $38                                         ; $5f07: $ff
	ld   d, l                                        ; $5f08: $55
	rst  $38                                         ; $5f09: $ff
	xor  e                                           ; $5f0a: $ab
	ld   bc, $0193                                   ; $5f0b: $01 $93 $01
	dec  h                                           ; $5f0e: $25
	add  c                                           ; $5f0f: $81
	ld   bc, $4900                                   ; $5f10: $01 $00 $49
	add  b                                           ; $5f13: $80
	rst  $38                                         ; $5f14: $ff
	add  b                                           ; $5f15: $80
	ld   d, l                                        ; $5f16: $55
	ld   b, $ff                                      ; $5f17: $06 $ff
	ld   d, l                                        ; $5f19: $55
	rst  $38                                         ; $5f1a: $ff
	xor  a                                           ; $5f1b: $af
	ldh  a, [$f4]                                    ; $5f1c: $f0 $f4
	pop  af                                          ; $5f1e: $f1
	add  b                                           ; $5f1f: $80
	db   $f4                                         ; $5f20: $f4
	add  c                                           ; $5f21: $81
	ld   [hl], l                                     ; $5f22: $75
	nop                                              ; $5f23: $00
	push af                                          ; $5f24: $f5
	add  c                                           ; $5f25: $81
	or   l                                           ; $5f26: $b5
	nop                                              ; $5f27: $00
	push af                                          ; $5f28: $f5
	add  b                                           ; $5f29: $80
	push de                                          ; $5f2a: $d5
	inc  bc                                          ; $5f2b: $03
	or   l                                           ; $5f2c: $b5
	nop                                              ; $5f2d: $00
	ld   [hl], b                                     ; $5f2e: $70
	sub  b                                           ; $5f2f: $90
	add  c                                           ; $5f30: $81
	ld   d, b                                        ; $5f31: $50
	add  b                                           ; $5f32: $80
	db   $10                                         ; $5f33: $10
	add  l                                           ; $5f34: $85
	sub  b                                           ; $5f35: $90
	ld   b, $3a                                      ; $5f36: $06 $3a
	ld   [bc], a                                     ; $5f38: $02
	ld   b, d                                        ; $5f39: $42
	ld   [bc], a                                     ; $5f3a: $02
	ld   b, $df                                      ; $5f3b: $06 $df
	db   $db                                         ; $5f3d: $db
	add  b                                           ; $5f3e: $80

Jump_08f_5f3f:
	ld   [bc], a                                     ; $5f3f: $02
	add  b                                           ; $5f40: $80
	ld   b, d                                        ; $5f41: $42
	add  b                                           ; $5f42: $80
	add  d                                           ; $5f43: $82
	inc  bc                                          ; $5f44: $03
	ld   [bc], a                                     ; $5f45: $02
	ld   b, $df                                      ; $5f46: $06 $df
	push hl                                          ; $5f48: $e5
	add  b                                           ; $5f49: $80
	ld   d, b                                        ; $5f4a: $50
	add  b                                           ; $5f4b: $80
	ld   d, h                                        ; $5f4c: $54
	ld   bc, $d0d4                                   ; $5f4d: $01 $d4 $d0
	add  [hl]                                        ; $5f50: $86
	ld   d, h                                        ; $5f51: $54
	inc  b                                           ; $5f52: $04
	call nc, $00d1                                   ; $5f53: $d4 $d1 $00
	xor  $e0                                         ; $5f56: $ee $e0
	adc  d                                           ; $5f58: $8a
	xor  $04                                         ; $5f59: $ee $04
	rst  $28                                         ; $5f5b: $ef
	nop                                              ; $5f5c: $00
	sbc  [hl]                                        ; $5f5d: $9e
	add  b                                           ; $5f5e: $80
	adc  [hl]                                        ; $5f5f: $8e
	adc  c                                           ; $5f60: $89
	xor  $00                                         ; $5f61: $ee $00
	ld   a, a                                        ; $5f63: $7f
	cp   l                                           ; $5f64: $bd
	nop                                              ; $5f65: $00
	rlca                                             ; $5f66: $07
	ld   bc, $fd00                                   ; $5f67: $01 $00 $fd
	ld   [bc], a                                     ; $5f6a: $02
	rst  $38                                         ; $5f6b: $ff
	cp   $6c                                         ; $5f6c: $fe $6c
	jp   c, Jump_08f_4881                            ; $5f6e: $da $81 $48

	add  b                                           ; $5f71: $80
	cp   $03                                         ; $5f72: $fe $03
	nop                                              ; $5f74: $00
	ld   bc, $3f00                                   ; $5f75: $01 $00 $3f
	add  b                                           ; $5f78: $80
	cp   a                                           ; $5f79: $bf
	add  b                                           ; $5f7a: $80
	ccf                                              ; $5f7b: $3f
	add  c                                           ; $5f7c: $81
	cp   a                                           ; $5f7d: $bf
	add  l                                           ; $5f7e: $85
	add  a                                           ; $5f7f: $87
	ld   [$8007], sp                                 ; $5f80: $08 $07 $80
	ld   b, b                                        ; $5f83: $40
	rst  JumpTable                                         ; $5f84: $df
	nop                                              ; $5f85: $00
	sbc  a                                           ; $5f86: $9f
	ld   e, a                                        ; $5f87: $5f
	ld   d, [hl]                                     ; $5f88: $56
	ld   c, l                                        ; $5f89: $4d
	add  c                                           ; $5f8a: $81
	ld   b, h                                        ; $5f8b: $44
	add  b                                           ; $5f8c: $80
	ld   e, a                                        ; $5f8d: $5f
	ld   b, $40                                      ; $5f8e: $06 $40
	ret  nz                                          ; $5f90: $c0

	nop                                              ; $5f91: $00
	ld   bc, $f800                                   ; $5f92: $01 $00 $f8
	nop                                              ; $5f95: $00
	add  b                                           ; $5f96: $80
	ld   hl, sp+$01                                  ; $5f97: $f8 $01
	ret  c                                           ; $5f99: $d8

	or   b                                           ; $5f9a: $b0
	add  c                                           ; $5f9b: $81
	sub  b                                           ; $5f9c: $90
	add  b                                           ; $5f9d: $80
	ld   hl, sp-$7f                                  ; $5f9e: $f8 $81
	nop                                              ; $5fa0: $00
	dec  c                                           ; $5fa1: $0d
	ld   d, h                                        ; $5fa2: $54
	rst  $38                                         ; $5fa3: $ff
	cp   [hl]                                        ; $5fa4: $be
	rst  $38                                         ; $5fa5: $ff
	db   $eb                                         ; $5fa6: $eb
	rst  $38                                         ; $5fa7: $ff
	ccf                                              ; $5fa8: $3f
	rst  $38                                         ; $5fa9: $ff
	ld   h, d                                        ; $5faa: $62
	rst  $38                                         ; $5fab: $ff
	ld   h, d                                        ; $5fac: $62
	rst  $38                                         ; $5fad: $ff
	nop                                              ; $5fae: $00
	ccf                                              ; $5faf: $3f
	add  b                                           ; $5fb0: $80
	nop                                              ; $5fb1: $00
	inc  b                                           ; $5fb2: $04
	ld   d, l                                        ; $5fb3: $55
	rst  $38                                         ; $5fb4: $ff
	db   $eb                                         ; $5fb5: $eb
	rst  $38                                         ; $5fb6: $ff
	cp   [hl]                                        ; $5fb7: $be
	add  l                                           ; $5fb8: $85
	rst  $38                                         ; $5fb9: $ff
	dec  b                                           ; $5fba: $05
	inc  d                                           ; $5fbb: $14
	rst  $38                                         ; $5fbc: $ff
	inc  d                                           ; $5fbd: $14
	nop                                              ; $5fbe: $00
	push hl                                          ; $5fbf: $e5
	push de                                          ; $5fc0: $d5
	add  c                                           ; $5fc1: $81
	push bc                                          ; $5fc2: $c5
	nop                                              ; $5fc3: $00
	push hl                                          ; $5fc4: $e5
	add  b                                           ; $5fc5: $80
	push af                                          ; $5fc6: $f5
	ld   [$f5d5], sp                                 ; $5fc7: $08 $d5 $f5
	db   $f4                                         ; $5fca: $f4
	ld   [hl], h                                     ; $5fcb: $74
	or   c                                           ; $5fcc: $b1
	ld   de, $f010                                   ; $5fcd: $11 $10 $f0
	push bc                                          ; $5fd0: $c5
	adc  d                                           ; $5fd1: $8a
	sub  h                                           ; $5fd2: $94
	add  b                                           ; $5fd3: $80
	inc  d                                           ; $5fd4: $14
	ld   bc, $9e54                                   ; $5fd5: $01 $54 $9e
	add  c                                           ; $5fd8: $81
	ld   [hl+], a                                    ; $5fd9: $22
	add  b                                           ; $5fda: $80
	db   $dd                                         ; $5fdb: $dd
	nop                                              ; $5fdc: $00
	ld   [hl+], a                                    ; $5fdd: $22
	add  b                                           ; $5fde: $80
	nop                                              ; $5fdf: $00
	nop                                              ; $5fe0: $00
	rst  $38                                         ; $5fe1: $ff
	add  b                                           ; $5fe2: $80
	nop                                              ; $5fe3: $00
	nop                                              ; $5fe4: $00
	rst  $38                                         ; $5fe5: $ff
	add  c                                           ; $5fe6: $81
	nop                                              ; $5fe7: $00
	nop                                              ; $5fe8: $00
	ld   e, $81                                      ; $5fe9: $1e $81
	ld   d, b                                        ; $5feb: $50
	add  b                                           ; $5fec: $80
	ret  nc                                          ; $5fed: $d0

	nop                                              ; $5fee: $00
	ld   d, b                                        ; $5fef: $50
	add  b                                           ; $5ff0: $80
	db   $10                                         ; $5ff1: $10
	inc  bc                                          ; $5ff2: $03
	ldh  a, [rAUD1LEN]                               ; $5ff3: $f0 $11
	nop                                              ; $5ff5: $00
	rst  $38                                         ; $5ff6: $ff
	add  c                                           ; $5ff7: $81
	nop                                              ; $5ff8: $00
	inc  bc                                          ; $5ff9: $03
	rst  $38                                         ; $5ffa: $ff
	xor  $e0                                         ; $5ffb: $ee $e0
	xor  $80                                         ; $5ffd: $ee $80
	ldh  [rP1], a                                    ; $5fff: $e0 $00
	rst  $28                                         ; $6001: $ef
	add  d                                           ; $6002: $82
	ldh  [rSB], a                                    ; $6003: $e0 $01
	nop                                              ; $6005: $00
	ldh  a, [$81]                                    ; $6006: $f0 $81
	nop                                              ; $6008: $00
	inc  bc                                          ; $6009: $03
	ld   c, $8e                                      ; $600a: $0e $8e
	add  d                                           ; $600c: $82
	db   $fc                                         ; $600d: $fc
	add  b                                           ; $600e: $80
	nop                                              ; $600f: $00
	nop                                              ; $6010: $00
	cp   $87                                         ; $6011: $fe $87
	nop                                              ; $6013: $00
	nop                                              ; $6014: $00
	rst  $38                                         ; $6015: $ff
	cp   l                                           ; $6016: $bd
	nop                                              ; $6017: $00
	ld   bc, $feff                                   ; $6018: $01 $ff $fe
	add  b                                           ; $601b: $80
	nop                                              ; $601c: $00
	inc  bc                                          ; $601d: $03
	ld   bc, $fd00                                   ; $601e: $01 $00 $fd
	ld   [bc], a                                     ; $6021: $02
	add  b                                           ; $6022: $80
	cp   $06                                         ; $6023: $fe $06
	db   $fc                                         ; $6025: $fc
	ld   a, [bc]                                     ; $6026: $0a
	ld   [$e000], sp                                 ; $6027: $08 $00 $e0
	nop                                              ; $602a: $00
	and  $82                                         ; $602b: $e6 $82
	add  a                                           ; $602d: $87
	add  b                                           ; $602e: $80
	rlca                                             ; $602f: $07
	add  a                                           ; $6030: $87
	add  a                                           ; $6031: $87
	ld   bc, $5f1f                                   ; $6032: $01 $1f $5f
	add  b                                           ; $6035: $80
	ld   b, b                                        ; $6036: $40
	ld   [bc], a                                     ; $6037: $02
	ret  nz                                          ; $6038: $c0

	nop                                              ; $6039: $00
	add  b                                           ; $603a: $80
	add  b                                           ; $603b: $80
	ld   b, c                                        ; $603c: $41
	add  hl, bc                                      ; $603d: $09
	ld   b, [hl]                                     ; $603e: $46
	ld   [hl], a                                     ; $603f: $77
	ld   b, c                                        ; $6040: $41
	ld   a, h                                        ; $6041: $7c
	ld   b, b                                        ; $6042: $40
	ld   c, a                                        ; $6043: $4f
	ld   b, b                                        ; $6044: $40
	ld   [hl+], a                                    ; $6045: $22
	ldh  [rP1], a                                    ; $6046: $e0 $00
	add  b                                           ; $6048: $80
	jr   @+$09                                       ; $6049: $18 $07

	ld   h, b                                        ; $604b: $60
	ld   l, b                                        ; $604c: $68
	sbc  b                                           ; $604d: $98
	or   b                                           ; $604e: $b0
	ld   a, b                                        ; $604f: $78
	ret  nc                                          ; $6050: $d0

	add  sp, $48                                     ; $6051: $e8 $48
	add  b                                           ; $6053: $80
	xor  b                                           ; $6054: $a8
	ld   [bc], a                                     ; $6055: $02
	jr   z, jr_08f_6059                              ; $6056: $28 $01

	nop                                              ; $6058: $00

jr_08f_6059:
	add  d                                           ; $6059: $82
	ccf                                              ; $605a: $3f
	nop                                              ; $605b: $00
	call z, $0083                                    ; $605c: $cc $83 $00
	nop                                              ; $605f: $00
	call z, $0083                                    ; $6060: $cc $83 $00
	add  d                                           ; $6063: $82
	rst  $38                                         ; $6064: $ff
	nop                                              ; $6065: $00
	call z, $0083                                    ; $6066: $cc $83 $00
	nop                                              ; $6069: $00
	call z, $0083                                    ; $606a: $cc $83 $00
	add  b                                           ; $606d: $80
	add  b                                           ; $606e: $80
	add  c                                           ; $606f: $81
	ret  nz                                          ; $6070: $c0

	nop                                              ; $6071: $00
	nop                                              ; $6072: $00
	add  d                                           ; $6073: $82

jr_08f_6074:
	stop                                             ; $6074: $10 $00
	ret  nc                                          ; $6076: $d0

	add  c                                           ; $6077: $81
	stop                                             ; $6078: $10 $00
	dec  d                                           ; $607a: $15
	add  b                                           ; $607b: $80
	inc  [hl]                                        ; $607c: $34
	nop                                              ; $607d: $00
	inc  d                                           ; $607e: $14
	adc  d                                           ; $607f: $8a
	inc  b                                           ; $6080: $04
	nop                                              ; $6081: $00
	ld   bc, $00db                                   ; $6082: $01 $db $00
	ld   [bc], a                                     ; $6085: $02
	ccf                                              ; $6086: $3f
	nop                                              ; $6087: $00
	ccf                                              ; $6088: $3f
	adc  e                                           ; $6089: $8b
	nop                                              ; $608a: $00
	ld   [bc], a                                     ; $608b: $02
	ldh  [rP1], a                                    ; $608c: $e0 $00
	ldh  [$8d], a                                    ; $608e: $e0 $8d
	nop                                              ; $6090: $00
	ld   [bc], a                                     ; $6091: $02
	jr   jr_08f_6074                                 ; $6092: $18 $e0

	ld   hl, sp-$80                                  ; $6094: $f8 $80
	inc  e                                           ; $6096: $1c
	add  b                                           ; $6097: $80
	rst  ToBoot                                         ; $6098: $c7
	add  b                                           ; $6099: $80
	reti                                             ; $609a: $d9


	add  c                                           ; $609b: $81
	nop                                              ; $609c: $00
	inc  b                                           ; $609d: $04
	db   $dd                                         ; $609e: $dd
	nop                                              ; $609f: $00
	add  b                                           ; $60a0: $80
	nop                                              ; $60a1: $00
	ld   e, d                                        ; $60a2: $5a
	add  e                                           ; $60a3: $83
	rlca                                             ; $60a4: $07
	ld   [bc], a                                     ; $60a5: $02
	rra                                              ; $60a6: $1f
	sbc  a                                           ; $60a7: $9f
	adc  a                                           ; $60a8: $8f
	add  b                                           ; $60a9: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60aa: $cf
	nop                                              ; $60ab: $00
	ld   l, a                                        ; $60ac: $6f
	add  b                                           ; $60ad: $80
	ld   l, h                                        ; $60ae: $6c
	add  hl, bc                                      ; $60af: $09
	ldh  [$30], a                                    ; $60b0: $e0 $30
	or   b                                           ; $60b2: $b0
	nop                                              ; $60b3: $00
	sbc  b                                           ; $60b4: $98
	ret  c                                           ; $60b5: $d8

	sub  e                                           ; $60b6: $93
	sbc  e                                           ; $60b7: $9b
	sub  d                                           ; $60b8: $92
	sub  e                                           ; $60b9: $93
	add  d                                           ; $60ba: $82
	sub  d                                           ; $60bb: $92
	dec  c                                           ; $60bc: $0d

jr_08f_60bd:
	ld   b, d                                        ; $60bd: $42
	ld   [bc], a                                     ; $60be: $02
	add  hl, bc                                      ; $60bf: $09
	nop                                              ; $60c0: $00
	ret                                              ; $60c1: $c9


	ld   [$00f0], sp                                 ; $60c2: $08 $f0 $00
	jr   c, jr_08f_60c7                              ; $60c5: $38 $00

jr_08f_60c7:
	ld   l, b                                        ; $60c7: $68
	ld   h, b                                        ; $60c8: $60
	ld   b, b                                        ; $60c9: $40
	ld   h, b                                        ; $60ca: $60
	add  d                                           ; $60cb: $82
	ld   c, b                                        ; $60cc: $48
	ld   [bc], a                                     ; $60cd: $02

jr_08f_60ce:
	ld   b, b                                        ; $60ce: $40
	ld   h, b                                        ; $60cf: $60
	ld   bc, $ff80                                   ; $60d0: $01 $80 $ff
	add  c                                           ; $60d3: $81
	nop                                              ; $60d4: $00
	add  b                                           ; $60d5: $80
	rst  $38                                         ; $60d6: $ff
	ld   bc, $ef18                                   ; $60d7: $01 $18 $ef
	add  h                                           ; $60da: $84
	nop                                              ; $60db: $00
	nop                                              ; $60dc: $00
	rst  $30                                         ; $60dd: $f7
	add  b                                           ; $60de: $80
	rst  $38                                         ; $60df: $ff
	add  c                                           ; $60e0: $81
	nop                                              ; $60e1: $00
	add  b                                           ; $60e2: $80
	rst  $38                                         ; $60e3: $ff
	ld   bc, $7bc6                                   ; $60e4: $01 $c6 $7b
	add  h                                           ; $60e7: $84
	nop                                              ; $60e8: $00
	nop                                              ; $60e9: $00
	cp   l                                           ; $60ea: $bd
	add  b                                           ; $60eb: $80
	cp   $80                                         ; $60ec: $fe $80
	ld   bc, $0000                                   ; $60ee: $01 $00 $00
	add  b                                           ; $60f1: $80
	ldh  a, [rSB]                                    ; $60f2: $f0 $01
	jr   c, jr_08f_60ce                              ; $60f4: $38 $d8

	add  b                                           ; $60f6: $80
	inc  c                                           ; $60f7: $0c
	add  b                                           ; $60f8: $80
	ld   c, $80                                      ; $60f9: $0e $80
	rrca                                             ; $60fb: $0f
	nop                                              ; $60fc: $00
	push hl                                          ; $60fd: $e5
	add  b                                           ; $60fe: $80
	inc  b                                           ; $60ff: $04
	add  b                                           ; $6100: $80
	add  h                                           ; $6101: $84
	add  b                                           ; $6102: $80
	ld   b, h                                        ; $6103: $44
	add  b                                           ; $6104: $80
	inc  h                                           ; $6105: $24
	add  h                                           ; $6106: $84
	inc  d                                           ; $6107: $14
	ld   bc, $0104                              ; $6108: $01 $04 $01
	cp   a                                           ; $610b: $bf
	nop                                              ; $610c: $00
	inc  b                                           ; $610d: $04
	inc  bc                                          ; $610e: $03
	nop                                              ; $610f: $00
	rrca                                             ; $6110: $0f
	inc  bc                                          ; $6111: $03
	rra                                              ; $6112: $1f
	add  b                                           ; $6113: $80
	inc  c                                           ; $6114: $0c
	ld   bc, $3f08                                   ; $6115: $01 $08 $3f
	add  b                                           ; $6118: $80
	rla                                              ; $6119: $17
	rlca                                             ; $611a: $07
	ld   [de], a                                     ; $611b: $12
	ld   a, d                                        ; $611c: $7a
	ld   [hl+], a                                    ; $611d: $22
	xor  l                                           ; $611e: $ad
	ccf                                              ; $611f: $3f
	rst  $38                                         ; $6120: $ff
	ret  nz                                          ; $6121: $c0

	ldh  [c], a                                      ; $6122: $e2
	add  b                                           ; $6123: $80
	ccf                                              ; $6124: $3f
	add  b                                           ; $6125: $80
	rst  $38                                         ; $6126: $ff
	nop                                              ; $6127: $00
	ld   [hl+], a                                    ; $6128: $22
	add  b                                           ; $6129: $80
	rst  $38                                         ; $612a: $ff
	ld   [$27fd], sp                                 ; $612b: $08 $fd $27
	dec  h                                           ; $612e: $25
	ld   a, [hl+]                                    ; $612f: $2a
	call $f8e0                                       ; $6130: $cd $e0 $f8
	inc  e                                           ; $6133: $1c
	inc  a                                           ; $6134: $3c
	add  b                                           ; $6135: $80
	rst  $20                                         ; $6136: $e7
	add  b                                           ; $6137: $80
	ld   sp, hl                                      ; $6138: $f9
	nop                                              ; $6139: $00
	jr   nz, jr_08f_60bd                             ; $613a: $20 $81

	rst  $38                                         ; $613c: $ff
	inc  bc                                          ; $613d: $03
	ld   [hl+], a                                    ; $613e: $22
	and  d                                           ; $613f: $a2
	ld   [hl+], a                                    ; $6140: $22
	ld   e, l                                        ; $6141: $5d
	add  h                                           ; $6142: $84
	nop                                              ; $6143: $00
	add  b                                           ; $6144: $80
	add  b                                           ; $6145: $80
	add  b                                           ; $6146: $80
	ret  nz                                          ; $6147: $c0

	add  c                                           ; $6148: $81
	ld   h, b                                        ; $6149: $60
	ld   bc, $30e0                                   ; $614a: $01 $e0 $30
	nop                                              ; $614d: $00
	nop                                              ; $614e: $00
	nop                                              ; $614f: $00
	and  l                                           ; $6150: $a5
	ld   bc, $f700                                   ; $6151: $01 $00 $f7
	add  c                                           ; $6154: $81
	nop                                              ; $6155: $00
	inc  bc                                          ; $6156: $03
	rst  $30                                         ; $6157: $f7
	ld   [$e718], sp                                 ; $6158: $08 $18 $e7
	add  d                                           ; $615b: $82
	nop                                              ; $615c: $00
	inc  b                                           ; $615d: $04
	ldh  [rP1], a                                    ; $615e: $e0 $00
	stop                                             ; $6160: $10 $00
	cp   d                                           ; $6162: $ba
	add  c                                           ; $6163: $81
	nop                                              ; $6164: $00
	inc  bc                                          ; $6165: $03
	cp   l                                           ; $6166: $bd
	ld   b, d                                        ; $6167: $42
	add  $39                                         ; $6168: $c6 $39
	add  d                                           ; $616a: $82
	nop                                              ; $616b: $00
	inc  b                                           ; $616c: $04
	dec  c                                           ; $616d: $0d
	nop                                              ; $616e: $00
	ld   [hl], b                                     ; $616f: $70
	nop                                              ; $6170: $00
	cpl                                              ; $6171: $2f
	add  c                                           ; $6172: $81
	nop                                              ; $6173: $00
	inc  bc                                          ; $6174: $03
	rst  $28                                         ; $6175: $ef
	db   $10                                         ; $6176: $10
	ld   sp, $82ce                                   ; $6177: $31 $ce $82
	nop                                              ; $617a: $00
	inc  b                                           ; $617b: $04
	xor  $00                                         ; $617c: $ee $00
	ld   bc, $e500                                   ; $617e: $01 $00 $e5
	add  d                                           ; $6181: $82
	db   $e4                                         ; $6182: $e4
	add  b                                           ; $6183: $80
	ld   h, h                                        ; $6184: $64
	add  l                                           ; $6185: $85
	db   $e4                                         ; $6186: $e4
	add  b                                           ; $6187: $80
	ld   h, h                                        ; $6188: $64
	nop                                              ; $6189: $00
	cp   $85                                         ; $618a: $fe $85
	nop                                              ; $618c: $00
	nop                                              ; $618d: $00
	rst  $38                                         ; $618e: $ff
	add  c                                           ; $618f: $81
	nop                                              ; $6190: $00
	ld   bc, $00ff                                   ; $6191: $01 $ff $00
	add  b                                           ; $6194: $80
	rst  $38                                         ; $6195: $ff
	add  [hl]                                        ; $6196: $86
	nop                                              ; $6197: $00
	nop                                              ; $6198: $00
	rst  $38                                         ; $6199: $ff
	add  c                                           ; $619a: $81
	nop                                              ; $619b: $00
	ld   bc, $00ff                                   ; $619c: $01 $ff $00
	add  b                                           ; $619f: $80
	rst  $38                                         ; $61a0: $ff
	add  [hl]                                        ; $61a1: $86
	nop                                              ; $61a2: $00
	nop                                              ; $61a3: $00
	rst  $38                                         ; $61a4: $ff
	add  c                                           ; $61a5: $81
	nop                                              ; $61a6: $00
	ld   bc, $00ff                                   ; $61a7: $01 $ff $00
	add  b                                           ; $61aa: $80
	rst  $38                                         ; $61ab: $ff
	add  [hl]                                        ; $61ac: $86
	nop                                              ; $61ad: $00
	nop                                              ; $61ae: $00
	ld   hl, sp-$7f                                  ; $61af: $f8 $81
	nop                                              ; $61b1: $00
	ld   bc, $00e0                                   ; $61b2: $01 $e0 $00
	add  b                                           ; $61b5: $80
	ldh  [rSC], a                                    ; $61b6: $e0 $02
	db   $ed                                         ; $61b8: $ed
	or   $f7                                         ; $61b9: $f6 $f7
	adc  b                                           ; $61bb: $88
	or   $03                                         ; $61bc: $f6 $03
	ld   [hl], $f6                                   ; $61be: $36 $f6
	rst  ToBoot                                         ; $61c0: $c7
	inc  c                                           ; $61c1: $0c
	add  b                                           ; $61c2: $80
	nop                                              ; $61c3: $00
	add  e                                           ; $61c4: $83
	add  b                                           ; $61c5: $80
	add  b                                           ; $61c6: $80
	xor  d                                           ; $61c7: $aa
	add  b                                           ; $61c8: $80
	sub  l                                           ; $61c9: $95
	add  c                                           ; $61ca: $81
	cp   a                                           ; $61cb: $bf
	inc  bc                                          ; $61cc: $03
	ccf                                              ; $61cd: $3f
	nop                                              ; $61ce: $00
	dec  bc                                          ; $61cf: $0b
	dec  de                                          ; $61d0: $1b
	add  e                                           ; $61d1: $83
	dec  bc                                          ; $61d2: $0b
	add  b                                           ; $61d3: $80
	adc  e                                           ; $61d4: $8b
	add  b                                           ; $61d5: $80
	ld   c, e                                        ; $61d6: $4b
	add  b                                           ; $61d7: $80
	rlc  d                                           ; $61d8: $cb $02
	db   $d3                                         ; $61da: $d3
	res  0, e                                        ; $61db: $cb $83
	add  c                                           ; $61dd: $81
	ldh  a, [rSB]                                    ; $61de: $f0 $01
	rst  $28                                         ; $61e0: $ef
	ldh  a, [$84]                                    ; $61e1: $f0 $84
	rst  $30                                         ; $61e3: $f7
	add  hl, bc                                      ; $61e4: $09
	rst  $20                                         ; $61e5: $e7
	rst  ToBoot                                         ; $61e6: $c7
	ld   [hl], a                                     ; $61e7: $77
	scf                                              ; $61e8: $37
	rrca                                             ; $61e9: $0f
	nop                                              ; $61ea: $00
	rrca                                             ; $61eb: $0f
	nop                                              ; $61ec: $00
	rst  $30                                         ; $61ed: $f7
	rlca                                             ; $61ee: $07
	add  [hl]                                        ; $61ef: $86
	rst  $30                                         ; $61f0: $f7
	ld   [bc], a                                     ; $61f1: $02
	ldh  a, [$f7]                                    ; $61f2: $f0 $f7
	cp   b                                           ; $61f4: $b8
	add  b                                           ; $61f5: $80
	ld   b, b                                        ; $61f6: $40
	inc  bc                                          ; $61f7: $03
	ld   b, d                                        ; $61f8: $42
	ld   a, d                                        ; $61f9: $7a
	ld   b, b                                        ; $61fa: $40
	ld   [hl], b                                     ; $61fb: $70
	add  b                                           ; $61fc: $80
	ld   [hl], d                                     ; $61fd: $72
	ld   bc, $7770                                   ; $61fe: $01 $70 $77
	add  b                                           ; $6201: $80
	ld   [hl], b                                     ; $6202: $70
	add  hl, bc                                      ; $6203: $09
	ld   a, a                                        ; $6204: $7f
	ld   [hl], b                                     ; $6205: $70
	ld   a, a                                        ; $6206: $7f
	ccf                                              ; $6207: $3f
	nop                                              ; $6208: $00
	rlca                                             ; $6209: $07
	add  b                                           ; $620a: $80
	ei                                               ; $620b: $fb
	inc  bc                                          ; $620c: $03
	dec  de                                          ; $620d: $1b
	add  b                                           ; $620e: $80
	cp   e                                           ; $620f: $bb
	ld   bc, $bb3b                                   ; $6210: $01 $3b $bb
	add  b                                           ; $6213: $80
	dec  sp                                          ; $6214: $3b
	ld   [$18fb], sp                                 ; $6215: $08 $fb $18
	ei                                               ; $6218: $fb
	db   $fc                                         ; $6219: $fc
	nop                                              ; $621a: $00
	add  b                                           ; $621b: $80
	nop                                              ; $621c: $00
	cp   a                                           ; $621d: $bf
	and  b                                           ; $621e: $a0
	add  [hl]                                        ; $621f: $86
	cp   a                                           ; $6220: $bf
	ld   a, [hl+]                                    ; $6221: $2a
	ccf                                              ; $6222: $3f
	cp   a                                           ; $6223: $bf
	sbc  h                                           ; $6224: $9c
	inc  bc                                          ; $6225: $03

jr_08f_6226:
	pop  hl                                          ; $6226: $e1
	add  c                                           ; $6227: $81
	add  hl, sp                                      ; $6228: $39
	ld   h, c                                        ; $6229: $61
	adc  l                                           ; $622a: $8d
	ld   sp, hl                                      ; $622b: $f9
	pop  bc                                          ; $622c: $c1
	ld   sp, hl                                      ; $622d: $f9
	db   $f4                                         ; $622e: $f4
	nop                                              ; $622f: $00
	rst  JumpTable                                         ; $6230: $df
	jr   nc, jr_08f_6244                             ; $6231: $30 $11

	cp   $83                                         ; $6233: $fe $83
	add  b                                           ; $6235: $80
	ld   c, $02                                      ; $6236: $0e $02
	jr   c, jr_08f_6246                              ; $6238: $38 $0c

	ld   h, e                                        ; $623a: $63
	ccf                                              ; $623b: $3f
	rlca                                             ; $623c: $07
	ccf                                              ; $623d: $3f
	ld   e, a                                        ; $623e: $5f
	nop                                              ; $623f: $00
	rst  $30                                         ; $6240: $f7
	jr   jr_08f_6253                                 ; $6241: $18 $10

	rst  $38                                         ; $6243: $ff

jr_08f_6244:
	ld   hl, sp-$60                                  ; $6244: $f8 $a0

jr_08f_6246:
	xor  [hl]                                        ; $6246: $ae
	xor  b                                           ; $6247: $a8
	db   $e3                                         ; $6248: $e3
	and  $58                                         ; $6249: $e6 $58
	rst  $38                                         ; $624b: $ff
	db   $fc                                         ; $624c: $fc
	add  b                                           ; $624d: $80
	rst  $38                                         ; $624e: $ff
	ld   b, $00                                      ; $624f: $06 $00
	db   $fd                                         ; $6251: $fd
	inc  bc                                          ; $6252: $03

jr_08f_6253:
	ld   bc, $25ff                                   ; $6253: $01 $ff $25
	inc  h                                           ; $6256: $24
	add  b                                           ; $6257: $80
	inc  b                                           ; $6258: $04
	dec  c                                           ; $6259: $0d
	add  h                                           ; $625a: $84
	inc  b                                           ; $625b: $04
	call nz, $0484                                   ; $625c: $c4 $84 $04
	add  h                                           ; $625f: $84
	ld   b, h                                        ; $6260: $44
	inc  b                                           ; $6261: $04
	db   $f4                                         ; $6262: $f4
	inc  b                                           ; $6263: $04
	inc  d                                           ; $6264: $14
	db   $e4                                         ; $6265: $e4
	ld   bc, $80ff                                   ; $6266: $01 $ff $80
	ret  nz                                          ; $6269: $c0

	dec  bc                                          ; $626a: $0b
	cp   a                                           ; $626b: $bf
	add  b                                           ; $626c: $80
	ld   b, b                                        ; $626d: $40
	add  b                                           ; $626e: $80
	adc  a                                           ; $626f: $8f
	ld   a, $02                                      ; $6270: $3e $02
	ld   a, $30                                      ; $6272: $3e $30
	ld   a, $7c                                      ; $6274: $3e $7c
	nop                                              ; $6276: $00

jr_08f_6277:
	add  b                                           ; $6277: $80
	rst  $38                                         ; $6278: $ff
	add  b                                           ; $6279: $80
	ld   a, a                                        ; $627a: $7f
	add  b                                           ; $627b: $80
	rst  $38                                         ; $627c: $ff
	ld   [bc], a                                     ; $627d: $02
	ld   a, a                                        ; $627e: $7f
	rst  $38                                         ; $627f: $ff
	add  b                                           ; $6280: $80
	add  c                                           ; $6281: $81
	rst  $38                                         ; $6282: $ff
	add  b                                           ; $6283: $80
	add  b                                           ; $6284: $80
	add  b                                           ; $6285: $80
	ld   [hl], $00                                   ; $6286: $36 $00
	nop                                              ; $6288: $00
	add  e                                           ; $6289: $83
	rst  $38                                         ; $628a: $ff
	add  b                                           ; $628b: $80
	ld   hl, sp+$05                                  ; $628c: $f8 $05
	ld   b, $f1                                      ; $628e: $06 $f1
	db   $f4                                         ; $6290: $f4
	or   $05                                         ; $6291: $f6 $05
	nop                                              ; $6293: $00
	add  b                                           ; $6294: $80
	pop  de                                          ; $6295: $d1
	nop                                              ; $6296: $00
	ld   [$e080], sp                                 ; $6297: $08 $80 $e0

jr_08f_629a:
	add  d                                           ; $629a: $82
	and  b                                           ; $629b: $a0
	ld   bc, $0060                                   ; $629c: $01 $60 $00
	add  b                                           ; $629f: $80
	jr   nz, jr_08f_62a2                             ; $62a0: $20 $00

jr_08f_62a2:
	and  b                                           ; $62a2: $a0
	add  b                                           ; $62a3: $80
	jr   nz, jr_08f_6226                             ; $62a4: $20 $80

	nop                                              ; $62a6: $00
	ld   b, $f6                                      ; $62a7: $06 $f6
	jr   nc, jr_08f_6277                             ; $62a9: $30 $cc

	inc  c                                           ; $62ab: $0c
	jr   nc, jr_08f_62ae                             ; $62ac: $30 $00

jr_08f_62ae:
	inc  c                                           ; $62ae: $0c
	add  e                                           ; $62af: $83
	nop                                              ; $62b0: $00
	dec  b                                           ; $62b1: $05
	ld   bc, $0300                                   ; $62b2: $01 $00 $03
	nop                                              ; $62b5: $00
	ld   a, a                                        ; $62b6: $7f
	rst  $38                                         ; $62b7: $ff
	add  b                                           ; $62b8: $80
	ret  nz                                          ; $62b9: $c0

	dec  c                                           ; $62ba: $0d
	rst  $38                                         ; $62bb: $ff
	add  b                                           ; $62bc: $80
	cp   a                                           ; $62bd: $bf
	ret  nz                                          ; $62be: $c0

	rst  $38                                         ; $62bf: $ff
	add  b                                           ; $62c0: $80
	cp   a                                           ; $62c1: $bf
	ret  nz                                          ; $62c2: $c0

	ld   a, a                                        ; $62c3: $7f
	nop                                              ; $62c4: $00
	rst  $38                                         ; $62c5: $ff
	nop                                              ; $62c6: $00
	rst  $20                                         ; $62c7: $e7
	ldh  a, [$80]                                    ; $62c8: $f0 $80
	inc  de                                          ; $62ca: $13
	ld   [de], a                                     ; $62cb: $12
	ldh  a, [rAUD1SWEEP]                             ; $62cc: $f0 $10
	di                                               ; $62ce: $f3
	db   $10                                         ; $62cf: $10
	ldh  a, [rAUD1SWEEP]                             ; $62d0: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $62d2: $f0 $10
	add  sp, $00                                     ; $62d4: $e8 $00
	db   $fc                                         ; $62d6: $fc
	nop                                              ; $62d7: $00
	jr   nc, jr_08f_629a                             ; $62d8: $30 $c0

	jr   nc, jr_08f_62eb                             ; $62da: $30 $0f

	ret  nz                                          ; $62dc: $c0

	nop                                              ; $62dd: $00
	rrca                                             ; $62de: $0f
	add  a                                           ; $62df: $87
	nop                                              ; $62e0: $00
	add  b                                           ; $62e1: $80
	rlca                                             ; $62e2: $07
	ld   bc, $f708                                   ; $62e3: $01 $08 $f7
	add  b                                           ; $62e6: $80
	nop                                              ; $62e7: $00
	nop                                              ; $62e8: $00
	rst  $38                                         ; $62e9: $ff
	adc  b                                           ; $62ea: $88

jr_08f_62eb:
	nop                                              ; $62eb: $00
	add  b                                           ; $62ec: $80
	add  b                                           ; $62ed: $80
	nop                                              ; $62ee: $00
	rst  $38                                         ; $62ef: $ff
	add  b                                           ; $62f0: $80
	nop                                              ; $62f1: $00
	nop                                              ; $62f2: $00
	rst  $38                                         ; $62f3: $ff
	add  a                                           ; $62f4: $87
	nop                                              ; $62f5: $00
	add  b                                           ; $62f6: $80
	inc  bc                                          ; $62f7: $03
	ld   bc, $fb04                                   ; $62f8: $01 $04 $fb
	add  b                                           ; $62fb: $80
	nop                                              ; $62fc: $00
	nop                                              ; $62fd: $00
	rst  $38                                         ; $62fe: $ff
	add  a                                           ; $62ff: $87
	nop                                              ; $6300: $00
	inc  bc                                          ; $6301: $03
	add  b                                           ; $6302: $80
	ret  nz                                          ; $6303: $c0

	ld   b, b                                        ; $6304: $40
	rst  $38                                         ; $6305: $ff
	add  b                                           ; $6306: $80
	nop                                              ; $6307: $00
	nop                                              ; $6308: $00
	rst  $38                                         ; $6309: $ff
	add  a                                           ; $630a: $87
	nop                                              ; $630b: $00
	ld   b, $f7                                      ; $630c: $06 $f7
	cp   $08                                         ; $630e: $fe $08
	cp   $1c                                         ; $6310: $fe $1c
	ld   a, [de]                                     ; $6312: $1a
	ld   sp, hl                                      ; $6313: $f9
	add  b                                           ; $6314: $80
	ei                                               ; $6315: $fb
	add  c                                           ; $6316: $81
	ld   hl, sp+$0a                                  ; $6317: $f8 $0a

jr_08f_6319:
	ld   sp, hl                                      ; $6319: $f9
	ld   a, [$1a18]                                  ; $631a: $fa $18 $1a
	ld   h, $ff                                      ; $631d: $26 $ff
	nop                                              ; $631f: $00
	rst  JumpTable                                         ; $6320: $df
	sub  b                                           ; $6321: $90
	ld   d, b                                        ; $6322: $50
	ld   d, a                                        ; $6323: $57
	add  b                                           ; $6324: $80
	rst  $10                                         ; $6325: $d7
	add  c                                           ; $6326: $81
	ld   d, a                                        ; $6327: $57
	add  b                                           ; $6328: $80
	rst  JumpTable                                         ; $6329: $df
	add  b                                           ; $632a: $80
	ld   d, b                                        ; $632b: $50
	inc  bc                                          ; $632c: $03
	ret  nz                                          ; $632d: $c0

	rst  $38                                         ; $632e: $ff
	ld   b, b                                        ; $632f: $40
	cp   a                                           ; $6330: $bf
	add  b                                           ; $6331: $80
	and  c                                           ; $6332: $a1
	add  h                                           ; $6333: $84
	xor  a                                           ; $6334: $af
	add  b                                           ; $6335: $80
	cp   a                                           ; $6336: $bf
	ld   b, $a1                                      ; $6337: $06 $a1
	ld   bc, $f425                                   ; $6339: $01 $25 $f4
	inc  d                                           ; $633c: $14
	ld   h, h                                        ; $633d: $64
	call nz, $a489                                   ; $633e: $c4 $89 $a4
	inc  bc                                          ; $6341: $03
	sbc  a                                           ; $6342: $9f
	ld   a, a                                        ; $6343: $7f
	ld   b, e                                        ; $6344: $43
	ld   a, a                                        ; $6345: $7f
	add  b                                           ; $6346: $80
	rst  $38                                         ; $6347: $ff
	ld   bc, $00bd                                   ; $6348: $01 $bd $00
	add  b                                           ; $634b: $80
	ld   l, l                                        ; $634c: $6d
	add  c                                           ; $634d: $81
	rst  $38                                         ; $634e: $ff
	add  c                                           ; $634f: $81

jr_08f_6350:
	nop                                              ; $6350: $00
	nop                                              ; $6351: $00
	or   b                                           ; $6352: $b0
	add  b                                           ; $6353: $80
	ld   a, b                                        ; $6354: $78
	add  hl, bc                                      ; $6355: $09
	ld   [hl], a                                     ; $6356: $77
	ld   [hl], h                                     ; $6357: $74
	ld   [hl], a                                     ; $6358: $77
	ld   h, h                                        ; $6359: $64
	ld   h, b                                        ; $635a: $60
	or   [hl]                                        ; $635b: $b6
	cp   a                                           ; $635c: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $635d: $cf
	rst  $38                                         ; $635e: $ff
	ld   sp, hl                                      ; $635f: $f9
	add  b                                           ; $6360: $80
	rlca                                             ; $6361: $07
	ld   a, [de]                                     ; $6362: $1a
	nop                                              ; $6363: $00
	pop  bc                                          ; $6364: $c1
	pop  af                                          ; $6365: $f1
	ld   a, c                                        ; $6366: $79
	ld   [hl], c                                     ; $6367: $71
	ld   a, a                                        ; $6368: $7f
	ld   a, b                                        ; $6369: $78
	db   $eb                                         ; $636a: $eb
	ei                                               ; $636b: $fb
	inc  sp                                          ; $636c: $33

jr_08f_636d:
	dec  de                                          ; $636d: $1b
	call c, Call_08f_7fff                            ; $636e: $dc $ff $7f
	rst  $38                                         ; $6371: $ff
	xor  a                                           ; $6372: $af
	ld   a, a                                        ; $6373: $7f
	ld   l, h                                        ; $6374: $6c
	jr   nz, @+$62                                   ; $6375: $20 $60

	jr   nz, jr_08f_6319                             ; $6377: $20 $a0

	jr   nz, jr_08f_63bb                             ; $6379: $20 $40

	ld   h, b                                        ; $637b: $60
	jr   nz, jr_08f_63de                             ; $637c: $20 $60

	add  h                                           ; $637e: $84
	ldh  [rP1], a                                    ; $637f: $e0 $00
	ld   h, a                                        ; $6381: $67
	add  b                                           ; $6382: $80
	nop                                              ; $6383: $00
	inc  bc                                          ; $6384: $03
	inc  d                                           ; $6385: $14
	rst  $10                                         ; $6386: $d7
	nop                                              ; $6387: $00
	add  b                                           ; $6388: $80
	add  b                                           ; $6389: $80
	sub  l                                           ; $638a: $95

jr_08f_638b:
	ld   bc, $bd81                                   ; $638b: $01 $81 $bd
	add  b                                           ; $638e: $80
	add  c                                           ; $638f: $81
	ld   bc, $80ff                                   ; $6390: $01 $ff $80
	add  b                                           ; $6393: $80
	rst  $38                                         ; $6394: $ff
	add  c                                           ; $6395: $81
	nop                                              ; $6396: $00
	ld   bc, $00ff                                   ; $6397: $01 $ff $00
	adc  c                                           ; $639a: $89
	rst  $38                                         ; $639b: $ff
	add  b                                           ; $639c: $80
	nop                                              ; $639d: $00
	inc  bc                                          ; $639e: $03
	jr   z, jr_08f_6350                              ; $639f: $28 $af

	nop                                              ; $63a1: $00
	ld   bc, $2b80                                   ; $63a2: $01 $80 $2b
	ld   bc, $7b03                                   ; $63a5: $01 $03 $7b
	add  b                                           ; $63a8: $80
	inc  bc                                          ; $63a9: $03
	ld   bc, $01ff                                   ; $63aa: $01 $ff $01
	add  b                                           ; $63ad: $80
	rst  $38                                         ; $63ae: $ff
	inc  b                                           ; $63af: $04
	nop                                              ; $63b0: $00
	rlca                                             ; $63b1: $07
	nop                                              ; $63b2: $00
	ei                                               ; $63b3: $fb
	inc  bc                                          ; $63b4: $03
	add  [hl]                                        ; $63b5: $86
	ei                                               ; $63b6: $fb
	ld   [$fbf8], sp                                 ; $63b7: $08 $f8 $fb
	db   $fc                                         ; $63ba: $fc

jr_08f_63bb:
	nop                                              ; $63bb: $00
	and  b                                           ; $63bc: $a0
	ld   [hl+], a                                    ; $63bd: $22
	cp   d                                           ; $63be: $ba
	and  b                                           ; $63bf: $a0
	or   b                                           ; $63c0: $b0
	add  b                                           ; $63c1: $80
	or   d                                           ; $63c2: $b2
	ld   bc, $b7b0                                   ; $63c3: $01 $b0 $b7
	add  b                                           ; $63c6: $80
	or   b                                           ; $63c7: $b0
	add  hl, bc                                      ; $63c8: $09
	cp   a                                           ; $63c9: $bf
	jr   nc, jr_08f_638b                             ; $63ca: $30 $bf

	rra                                              ; $63cc: $1f
	nop                                              ; $63cd: $00
	rrca                                             ; $63ce: $0f
	add  b                                           ; $63cf: $80
	rst  $30                                         ; $63d0: $f7
	rlca                                             ; $63d1: $07
	rla                                              ; $63d2: $17
	add  b                                           ; $63d3: $80
	or   a                                           ; $63d4: $b7
	ld   bc, $b737                                   ; $63d5: $01 $37 $b7
	add  b                                           ; $63d8: $80
	scf                                              ; $63d9: $37
	rlca                                             ; $63da: $07
	rst  $30                                         ; $63db: $f7
	db   $10                                         ; $63dc: $10
	rst  $30                                         ; $63dd: $f7

jr_08f_63de:
	add  b                                           ; $63de: $80
	nop                                              ; $63df: $00
	add  hl, sp                                      ; $63e0: $39
	ld   a, [hl-]                                    ; $63e1: $3a
	jr   c, jr_08f_636d                              ; $63e2: $38 $89

	ld   a, [hl-]                                    ; $63e4: $3a
	nop                                              ; $63e5: $00
	add  [hl]                                        ; $63e6: $86
	add  a                                           ; $63e7: $87
	rst  $38                                         ; $63e8: $ff
	nop                                              ; $63e9: $00
	nop                                              ; $63ea: $00
	add  d                                           ; $63eb: $82
	ld   a, a                                        ; $63ec: $7f
	ld   bc, $fc00                                   ; $63ed: $01 $00 $fc
	add  l                                           ; $63f0: $85
	ld   a, [$1a80]                                  ; $63f1: $fa $80 $1a
	ld   b, $f8                                      ; $63f4: $06 $f8
	cp   $fc                                         ; $63f6: $fe $fc
	ld   a, [$f6f0]                                  ; $63f8: $fa $f0 $f6
	sub  a                                           ; $63fb: $97
	add  e                                           ; $63fc: $83
	ld   d, a                                        ; $63fd: $57
	add  b                                           ; $63fe: $80
	ld   e, a                                        ; $63ff: $5f
	add  b                                           ; $6400: $80
	ld   d, b                                        ; $6401: $50
	rlca                                             ; $6402: $07
	rla                                              ; $6403: $17
	rst  $10                                         ; $6404: $d7
	sub  a                                           ; $6405: $97
	ld   d, a                                        ; $6406: $57
	rla                                              ; $6407: $17
	rst  $10                                         ; $6408: $d7
	rrca                                             ; $6409: $0f
	xor  a                                           ; $640a: $af
	add  c                                           ; $640b: $81
	rrca                                             ; $640c: $0f
	nop                                              ; $640d: $00
	xor  a                                           ; $640e: $af
	add  b                                           ; $640f: $80
	cp   a                                           ; $6410: $bf
	add  b                                           ; $6411: $80
	and  c                                           ; $6412: $a1
	add  h                                           ; $6413: $84
	xor  a                                           ; $6414: $af
	nop                                              ; $6415: $00
	rst  ToBoot                                         ; $6416: $c7
	add  c                                           ; $6417: $81
	and  b                                           ; $6418: $a0
	nop                                              ; $6419: $00
	and  d                                           ; $641a: $a2
	add  e                                           ; $641b: $83
	and  b                                           ; $641c: $a0
	ld   b, $80                                      ; $641d: $06 $80
	ldh  [$c0], a                                    ; $641f: $e0 $c0
	and  b                                           ; $6421: $a0
	nop                                              ; $6422: $00
	ld   h, b                                        ; $6423: $60
	dec  b                                           ; $6424: $05
	add  b                                           ; $6425: $80
	nop                                              ; $6426: $00
	add  b                                           ; $6427: $80
	push de                                          ; $6428: $d5
	add  b                                           ; $6429: $80
	ld   [$f503], a                                  ; $642a: $ea $03 $f5
	ld   a, [bc]                                     ; $642d: $0a
	rst  $38                                         ; $642e: $ff
	nop                                              ; $642f: $00
	add  b                                           ; $6430: $80
	rst  $38                                         ; $6431: $ff
	add  b                                           ; $6432: $80
	nop                                              ; $6433: $00
	inc  bc                                          ; $6434: $03
	rst  $38                                         ; $6435: $ff
	ld   hl, sp+$06                                  ; $6436: $f8 $06
	ld   bc, $5080                                   ; $6438: $01 $80 $50
	add  b                                           ; $643b: $80
	and  b                                           ; $643c: $a0
	inc  bc                                          ; $643d: $03
	ld   d, b                                        ; $643e: $50
	xor  a                                           ; $643f: $af
	rst  $38                                         ; $6440: $ff
	nop                                              ; $6441: $00
	add  b                                           ; $6442: $80
	rst  $38                                         ; $6443: $ff
	add  b                                           ; $6444: $80
	nop                                              ; $6445: $00
	dec  bc                                          ; $6446: $0b
	rst  $38                                         ; $6447: $ff
	ld   bc, $ce0f                                   ; $6448: $01 $0f $ce
	ld   bc, $0039                                   ; $644b: $01 $39 $00
	ld   b, $00                                      ; $644e: $06 $00
	pop  af                                          ; $6450: $f1
	db   $f4                                         ; $6451: $f4
	inc  b                                           ; $6452: $04
	add  b                                           ; $6453: $80
	db   $fc                                         ; $6454: $fc
	inc  bc                                          ; $6455: $03
	inc  b                                           ; $6456: $04
	ld   [bc], a                                     ; $6457: $02
	ldh  a, [$71]                                    ; $6458: $f0 $71
	add  c                                           ; $645a: $81
	ldh  [rP1], a                                    ; $645b: $e0 $00
	add  b                                           ; $645d: $80
	add  b                                           ; $645e: $80
	ld   h, b                                        ; $645f: $60

jr_08f_6460:
	add  hl, bc                                      ; $6460: $09
	nop                                              ; $6461: $00
	sub  b                                           ; $6462: $90
	nop                                              ; $6463: $00
	ld   l, b                                        ; $6464: $68
	inc  b                                           ; $6465: $04
	inc  d                                           ; $6466: $14
	ld   [bc], a                                     ; $6467: $02
	ld   [$fa00], sp                                 ; $6468: $08 $00 $fa
	add  b                                           ; $646b: $80
	nop                                              ; $646c: $00
	nop                                              ; $646d: $00
	rst  $38                                         ; $646e: $ff
	add  b                                           ; $646f: $80
	nop                                              ; $6470: $00
	nop                                              ; $6471: $00
	rst  $38                                         ; $6472: $ff
	adc  d                                           ; $6473: $8a

jr_08f_6474:
	nop                                              ; $6474: $00
	nop                                              ; $6475: $00
	rst  $38                                         ; $6476: $ff
	add  b                                           ; $6477: $80
	nop                                              ; $6478: $00
	nop                                              ; $6479: $00
	rst  $38                                         ; $647a: $ff
	adc  d                                           ; $647b: $8a
	nop                                              ; $647c: $00
	nop                                              ; $647d: $00
	rst  $38                                         ; $647e: $ff
	add  b                                           ; $647f: $80
	nop                                              ; $6480: $00
	nop                                              ; $6481: $00
	rst  $38                                         ; $6482: $ff
	add  a                                           ; $6483: $87
	nop                                              ; $6484: $00
	add  b                                           ; $6485: $80
	inc  bc                                          ; $6486: $03
	ld   bc, $ff00                                   ; $6487: $01 $00 $ff
	add  b                                           ; $648a: $80
	nop                                              ; $648b: $00
	nop                                              ; $648c: $00
	rst  $38                                         ; $648d: $ff
	add  a                                           ; $648e: $87
	nop                                              ; $648f: $00
	inc  bc                                          ; $6490: $03
	and  b                                           ; $6491: $a0
	ldh  [rLCDC], a                                  ; $6492: $e0 $40
	rst  $38                                         ; $6494: $ff
	add  b                                           ; $6495: $80
	nop                                              ; $6496: $00
	nop                                              ; $6497: $00
	rst  $38                                         ; $6498: $ff
	add  a                                           ; $6499: $87
	nop                                              ; $649a: $00
	add  b                                           ; $649b: $80
	rlca                                             ; $649c: $07
	ld   bc, $ff00                                   ; $649d: $01 $00 $ff
	add  b                                           ; $64a0: $80
	nop                                              ; $64a1: $00
	nop                                              ; $64a2: $00
	rst  $38                                         ; $64a3: $ff
	add  a                                           ; $64a4: $87
	nop                                              ; $64a5: $00
	ld   [$3bbd], sp                                 ; $64a6: $08 $bd $3b
	dec  b                                           ; $64a9: $05
	inc  bc                                          ; $64aa: $03
	ld   [hl], a                                     ; $64ab: $77
	nop                                              ; $64ac: $00
	add  b                                           ; $64ad: $80
	rlca                                             ; $64ae: $07
	ld   h, a                                        ; $64af: $67
	add  b                                           ; $64b0: $80
	nop                                              ; $64b1: $00
	inc  b                                           ; $64b2: $04
	rlca                                             ; $64b3: $07
	rrca                                             ; $64b4: $0f
	nop                                              ; $64b5: $00
	rra                                              ; $64b6: $1f
	nop                                              ; $64b7: $00
	add  b                                           ; $64b8: $80
	rst  $38                                         ; $64b9: $ff
	add  b                                           ; $64ba: $80
	nop                                              ; $64bb: $00
	inc  c                                           ; $64bc: $0c
	rst  $38                                         ; $64bd: $ff
	nop                                              ; $64be: $00
	rst  $38                                         ; $64bf: $ff
	nop                                              ; $64c0: $00
	rst  $38                                         ; $64c1: $ff
	nop                                              ; $64c2: $00
	rst  $38                                         ; $64c3: $ff
	nop                                              ; $64c4: $00
	rst  $38                                         ; $64c5: $ff
	nop                                              ; $64c6: $00
	rst  $38                                         ; $64c7: $ff
	nop                                              ; $64c8: $00
	rst  $38                                         ; $64c9: $ff
	add  e                                           ; $64ca: $83
	nop                                              ; $64cb: $00
	adc  b                                           ; $64cc: $88
	rst  $38                                         ; $64cd: $ff
	add  h                                           ; $64ce: $84
	nop                                              ; $64cf: $00
	add  b                                           ; $64d0: $80
	ld   hl, sp-$7e                                  ; $64d1: $f8 $82
	rst  $38                                         ; $64d3: $ff
	add  b                                           ; $64d4: $80
	rst  ToBoot                                         ; $64d5: $c7
	ld   [bc], a                                     ; $64d6: $02
	ret  nc                                          ; $64d7: $d0

	ret  z                                           ; $64d8: $c8

	jr   jr_08f_6460                                 ; $64d9: $18 $85

	nop                                              ; $64db: $00
	add  b                                           ; $64dc: $80
	add  b                                           ; $64dd: $80
	ld   [$e0e3], sp                                 ; $64de: $08 $e3 $e0
	rra                                              ; $64e1: $1f
	nop                                              ; $64e2: $00
	db   $fc                                         ; $64e3: $fc
	ld   bc, $00e0                                   ; $64e4: $01 $e0 $00
	ld   b, b                                        ; $64e7: $40
	add  c                                           ; $64e8: $81
	jr   nz, jr_08f_64ee                             ; $64e9: $20 $03

	ld   h, b                                        ; $64eb: $60
	nop                                              ; $64ec: $00
	ld   l, b                                        ; $64ed: $68

jr_08f_64ee:
	nop                                              ; $64ee: $00
	add  b                                           ; $64ef: $80
	jr   z, jr_08f_6474                              ; $64f0: $28 $82

	ld   l, b                                        ; $64f2: $68
	inc  b                                           ; $64f3: $04
	ld   l, d                                        ; $64f4: $6a
	inc  bc                                          ; $64f5: $03
	dec  de                                          ; $64f6: $1b
	inc  bc                                          ; $64f7: $03
	and  e                                           ; $64f8: $a3
	add  c                                           ; $64f9: $81
	nop                                              ; $64fa: $00
	nop                                              ; $64fb: $00
	ld   b, h                                        ; $64fc: $44
	add  b                                           ; $64fd: $80
	rst  $38                                         ; $64fe: $ff
	add  b                                           ; $64ff: $80
	ld   d, l                                        ; $6500: $55
	rlca                                             ; $6501: $07
	rst  $38                                         ; $6502: $ff
	ld   d, l                                        ; $6503: $55
	rst  $38                                         ; $6504: $ff
	xor  e                                           ; $6505: $ab
	ld   bc, $0193                                   ; $6506: $01 $93 $01
	dec  h                                           ; $6509: $25
	add  c                                           ; $650a: $81
	ld   bc, $4900                                   ; $650b: $01 $00 $49
	add  b                                           ; $650e: $80
	rst  $38                                         ; $650f: $ff
	add  b                                           ; $6510: $80
	ld   d, l                                        ; $6511: $55
	ld   b, $ff                                      ; $6512: $06 $ff
	ld   d, l                                        ; $6514: $55

jr_08f_6515:
	rst  $38                                         ; $6515: $ff
	xor  a                                           ; $6516: $af
	ldh  a, [$f4]                                    ; $6517: $f0 $f4
	pop  af                                          ; $6519: $f1
	add  b                                           ; $651a: $80
	db   $f4                                         ; $651b: $f4
	add  c                                           ; $651c: $81
	ld   [hl], l                                     ; $651d: $75
	nop                                              ; $651e: $00
	push af                                          ; $651f: $f5
	add  c                                           ; $6520: $81
	or   l                                           ; $6521: $b5
	nop                                              ; $6522: $00
	push af                                          ; $6523: $f5
	add  b                                           ; $6524: $80
	push de                                          ; $6525: $d5
	inc  bc                                          ; $6526: $03
	or   l                                           ; $6527: $b5
	nop                                              ; $6528: $00
	ld   [hl], b                                     ; $6529: $70
	sub  b                                           ; $652a: $90
	add  c                                           ; $652b: $81
	ld   d, b                                        ; $652c: $50
	add  b                                           ; $652d: $80
	db   $10                                         ; $652e: $10
	add  l                                           ; $652f: $85
	sub  b                                           ; $6530: $90
	ld   [bc], a                                     ; $6531: $02
	ld   e, l                                        ; $6532: $5d
	ld   hl, sp-$04                                  ; $6533: $f8 $fc
	add  l                                           ; $6535: $85
	ld   a, [$0200]                                  ; $6536: $fa $00 $02
	add  d                                           ; $6539: $82
	ldh  a, [c]                                      ; $653a: $f2
	inc  b                                           ; $653b: $04
	ld   [bc], a                                     ; $653c: $02
	or   $00                                         ; $653d: $f6 $00
	ld   [hl], a                                     ; $653f: $77
	ld   [hl], b                                     ; $6540: $70
	adc  b                                           ; $6541: $88
	ld   [hl], a                                     ; $6542: $77
	ld   [$7770], sp                                 ; $6543: $08 $70 $77
	ldh  a, [rP1]                                    ; $6546: $f0 $00
	ld   b, b                                        ; $6548: $40
	ld   b, l                                        ; $6549: $45
	ld   [hl], l                                     ; $654a: $75
	ld   b, b                                        ; $654b: $40
	ld   h, b                                        ; $654c: $60
	add  b                                           ; $654d: $80
	ld   h, l                                        ; $654e: $65
	ld   bc, $6f60                                   ; $654f: $01 $60 $6f
	add  b                                           ; $6552: $80
	ld   h, b                                        ; $6553: $60
	add  hl, bc                                      ; $6554: $09
	ld   a, a                                        ; $6555: $7f
	ld   h, b                                        ; $6556: $60
	ld   a, a                                        ; $6557: $7f
	ld   a, $00                                      ; $6558: $3e $00
	ld   e, $00                                      ; $655a: $1e $00
	xor  $0e                                         ; $655c: $ee $0e
	ld   l, $84                                      ; $655e: $2e $84
	ld   l, [hl]                                     ; $6560: $6e
	inc  bc                                          ; $6561: $03
	xor  $20                                         ; $6562: $ee $20
	xor  $f1                                         ; $6564: $ee $f1
	cp   l                                           ; $6566: $bd
	nop                                              ; $6567: $00
	adc  [hl]                                        ; $6568: $8e
	rst  $38                                         ; $6569: $ff
	inc  b                                           ; $656a: $04
	db   $d3                                         ; $656b: $d3
	ret  z                                           ; $656c: $c8

	ei                                               ; $656d: $fb
	ldh  [$d0], a                                    ; $656e: $e0 $d0
	add  c                                           ; $6570: $81
	jp   z, $da05                                    ; $6571: $ca $05 $da

	ret  c                                           ; $6574: $d8

	jp   c, $d7d6                                    ; $6575: $da $d6 $d7

	rst  ToBoot                                         ; $6578: $c7
	add  b                                           ; $6579: $80
	jp   $0400                                       ; $657a: $c3 $00 $04


	add  b                                           ; $657d: $80
	add  hl, bc                                      ; $657e: $09
	ld   b, $48                                      ; $657f: $06 $48
	ld   c, c                                        ; $6581: $49
	ld   b, e                                        ; $6582: $43
	ld   c, e                                        ; $6583: $4b
	dec  de                                          ; $6584: $1b
	ld   e, l                                        ; $6585: $5d
	db   $dd                                         ; $6586: $dd
	add  b                                           ; $6587: $80
	db   $ed                                         ; $6588: $ed
	add  d                                           ; $6589: $82
	ld   l, l                                        ; $658a: $6d
	inc  bc                                          ; $658b: $03
	sub  e                                           ; $658c: $93
	nop                                              ; $658d: $00
	jr   c, jr_08f_6608                              ; $658e: $38 $78

	add  b                                           ; $6590: $80
	jr   c, jr_08f_6515                              ; $6591: $38 $82

	cp   b                                           ; $6593: $b8
	ld   [bc], a                                     ; $6594: $02
	ld   c, b                                        ; $6595: $48
	ld   [$8148], sp                                 ; $6596: $08 $48 $81
	jr   z, jr_08f_65a8                              ; $6599: $28 $0d

	inc  [hl]                                        ; $659b: $34
	rst  $38                                         ; $659c: $ff
	cp   [hl]                                        ; $659d: $be
	rst  $38                                         ; $659e: $ff
	db   $eb                                         ; $659f: $eb
	rst  $38                                         ; $65a0: $ff
	ccf                                              ; $65a1: $3f
	rst  $38                                         ; $65a2: $ff
	ld   h, d                                        ; $65a3: $62
	rst  $38                                         ; $65a4: $ff
	ld   h, d                                        ; $65a5: $62
	rst  $38                                         ; $65a6: $ff
	nop                                              ; $65a7: $00

jr_08f_65a8:
	ccf                                              ; $65a8: $3f
	add  b                                           ; $65a9: $80
	nop                                              ; $65aa: $00
	inc  b                                           ; $65ab: $04
	ld   d, l                                        ; $65ac: $55
	rst  $38                                         ; $65ad: $ff
	db   $eb                                         ; $65ae: $eb
	rst  $38                                         ; $65af: $ff
	cp   [hl]                                        ; $65b0: $be
	add  l                                           ; $65b1: $85
	rst  $38                                         ; $65b2: $ff
	dec  b                                           ; $65b3: $05
	inc  d                                           ; $65b4: $14
	rst  $38                                         ; $65b5: $ff
	inc  d                                           ; $65b6: $14

jr_08f_65b7:
	nop                                              ; $65b7: $00
	push hl                                          ; $65b8: $e5
	push de                                          ; $65b9: $d5
	add  c                                           ; $65ba: $81
	push bc                                          ; $65bb: $c5
	nop                                              ; $65bc: $00
	push hl                                          ; $65bd: $e5
	add  b                                           ; $65be: $80
	push af                                          ; $65bf: $f5
	inc  b                                           ; $65c0: $04
	push de                                          ; $65c1: $d5
	push af                                          ; $65c2: $f5
	db   $f4                                         ; $65c3: $f4
	ld   [hl], h                                     ; $65c4: $74
	or   l                                           ; $65c5: $b5
	add  b                                           ; $65c6: $80
	dec  d                                           ; $65c7: $15
	ld   bc, $c5f5                                   ; $65c8: $01 $f5 $c5
	adc  d                                           ; $65cb: $8a
	sub  h                                           ; $65cc: $94
	add  b                                           ; $65cd: $80
	inc  d                                           ; $65ce: $14
	add  hl, de                                      ; $65cf: $19
	ld   d, h                                        ; $65d0: $54
	ld   h, c                                        ; $65d1: $61
	cp   $02                                         ; $65d2: $fe $02
	inc  bc                                          ; $65d4: $03
	rst  $38                                         ; $65d5: $ff
	nop                                              ; $65d6: $00
	db   $fc                                         ; $65d7: $fc
	inc  bc                                          ; $65d8: $03
	rst  $38                                         ; $65d9: $ff
	nop                                              ; $65da: $00
	db   $fc                                         ; $65db: $fc
	inc  bc                                          ; $65dc: $03
	rst  $38                                         ; $65dd: $ff
	nop                                              ; $65de: $00
	rst  $38                                         ; $65df: $ff
	nop                                              ; $65e0: $00
	ld   a, a                                        ; $65e1: $7f
	ld   [hl], a                                     ; $65e2: $77
	nop                                              ; $65e3: $00
	rlca                                             ; $65e4: $07
	or   b                                           ; $65e5: $b0
	nop                                              ; $65e6: $00
	rlca                                             ; $65e7: $07
	add  b                                           ; $65e8: $80
	sbc  b                                           ; $65e9: $98
	add  b                                           ; $65ea: $80
	nop                                              ; $65eb: $00
	ld   [$c080], sp                                 ; $65ec: $08 $80 $c0
	nop                                              ; $65ef: $00
	ldh  [rP1], a                                    ; $65f0: $e0 $00
	ld   b, b                                        ; $65f2: $40
	ret  nz                                          ; $65f3: $c0

	add  b                                           ; $65f4: $80
	rst  $38                                         ; $65f5: $ff
	add  b                                           ; $65f6: $80
	nop                                              ; $65f7: $00
	nop                                              ; $65f8: $00
	rst  $38                                         ; $65f9: $ff
	add  a                                           ; $65fa: $87
	nop                                              ; $65fb: $00
	add  b                                           ; $65fc: $80
	ld   c, $01                                      ; $65fd: $0e $01
	ld   [bc], a                                     ; $65ff: $02
	db   $fc                                         ; $6600: $fc
	add  b                                           ; $6601: $80
	nop                                              ; $6602: $00
	nop                                              ; $6603: $00
	cp   $87                                         ; $6604: $fe $87
	nop                                              ; $6606: $00
	nop                                              ; $6607: $00

jr_08f_6608:
	rst  $38                                         ; $6608: $ff
	cp   l                                           ; $6609: $bd
	nop                                              ; $660a: $00
	adc  [hl]                                        ; $660b: $8e
	rst  $38                                         ; $660c: $ff
	nop                                              ; $660d: $00
	rst  $20                                         ; $660e: $e7
	add  e                                           ; $660f: $83
	db   $e3                                         ; $6610: $e3
	inc  d                                           ; $6611: $14
	rst  ToBoot                                         ; $6612: $c7
	jp   $c8d0                                       ; $6613: $c3 $d0 $c8


	set  1, b                                        ; $6616: $cb $c8
	ei                                               ; $6618: $fb
	ldh  [$d0], a                                    ; $6619: $e0 $d0
	jp   z, Jump_08f_6de5                            ; $661b: $ca $e5 $6d

	ld   l, [hl]                                     ; $661e: $6e
	ld   l, h                                        ; $661f: $6c
	ld   [hl], e                                     ; $6620: $73
	ld   h, b                                        ; $6621: $60
	sbc  a                                           ; $6622: $9f
	nop                                              ; $6623: $00
	db   $fc                                         ; $6624: $fc
	ld   bc, $80e1                                   ; $6625: $01 $e1 $80
	add  hl, bc                                      ; $6628: $09
	add  b                                           ; $6629: $80
	ld   c, b                                        ; $662a: $48
	inc  b                                           ; $662b: $04
	ld   b, b                                        ; $662c: $40
	ld   b, c                                        ; $662d: $41
	nop                                              ; $662e: $00
	ld   l, b                                        ; $662f: $68
	nop                                              ; $6630: $00
	add  b                                           ; $6631: $80
	jr   z, jr_08f_65b7                              ; $6632: $28 $83

	ld   l, b                                        ; $6634: $68
	add  b                                           ; $6635: $80
	nop                                              ; $6636: $00
	add  b                                           ; $6637: $80
	jr   z, jr_08f_663c                              ; $6638: $28 $02

	add  sp, -$17                                    ; $663a: $e8 $e9

jr_08f_663c:
	nop                                              ; $663c: $00
	add  h                                           ; $663d: $84
	ccf                                              ; $663e: $3f
	ld   bc, $ef18                                   ; $663f: $01 $18 $ef
	add  h                                           ; $6642: $84
	nop                                              ; $6643: $00
	ld   bc, $00f7                                   ; $6644: $01 $f7 $00
	add  h                                           ; $6647: $84
	rst  $38                                         ; $6648: $ff
	ld   bc, $7bc6                                   ; $6649: $01 $c6 $7b
	add  h                                           ; $664c: $84
	nop                                              ; $664d: $00
	inc  bc                                          ; $664e: $03
	cp   l                                           ; $664f: $bd
	ld   bc, $e0e1                                   ; $6650: $01 $e1 $e0
	add  b                                           ; $6653: $80
	ldh  a, [$80]                                    ; $6654: $f0 $80
	ld   hl, sp+$01                                  ; $6656: $f8 $01
	inc  a                                           ; $6658: $3c
	call c, $0e80                                    ; $6659: $dc $80 $0e
	add  d                                           ; $665c: $82
	rrca                                             ; $665d: $0f
	ld   bc, $54d5                                   ; $665e: $01 $d5 $54
	add  b                                           ; $6661: $80
	ld   [hl], h                                     ; $6662: $74
	nop                                              ; $6663: $00
	ld   h, h                                        ; $6664: $64
	add  a                                           ; $6665: $87
	inc  b                                           ; $6666: $04
	add  b                                           ; $6667: $80
	add  h                                           ; $6668: $84
	nop                                              ; $6669: $00
	ld   bc, $00fd                                   ; $666a: $01 $fd $00
	adc  h                                           ; $666d: $8c
	rst  $38                                         ; $666e: $ff
	add  b                                           ; $666f: $80
	ld   hl, sp+$02                                  ; $6670: $f8 $02
	ret  nc                                          ; $6672: $d0

	jp   z, $80da                                    ; $6673: $ca $da $80

	ret  c                                           ; $6676: $d8

	add  b                                           ; $6677: $80
	db   $db                                         ; $6678: $db
	nop                                              ; $6679: $00
	ret  nz                                          ; $667a: $c0

	add  b                                           ; $667b: $80
	ldh  a, [$82]                                    ; $667c: $f0 $82
	rlca                                             ; $667e: $07
	add  c                                           ; $667f: $81
	nop                                              ; $6680: $00
	add  b                                           ; $6681: $80
	rlca                                             ; $6682: $07
	add  b                                           ; $6683: $80
	nop                                              ; $6684: $00
	add  b                                           ; $6685: $80
	rst  $38                                         ; $6686: $ff
	add  c                                           ; $6687: $81
	nop                                              ; $6688: $00
	add  d                                           ; $6689: $82
	rst  $38                                         ; $668a: $ff
	add  b                                           ; $668b: $80
	ld   a, a                                        ; $668c: $7f
	nop                                              ; $668d: $00
	ld   bc, $e880                                   ; $668e: $01 $80 $e8
	add  b                                           ; $6691: $80
	ld   [$f880], sp                                 ; $6692: $08 $80 $f8
	add  c                                           ; $6695: $81
	nop                                              ; $6696: $00
	add  d                                           ; $6697: $82
	ld   hl, sp-$80                                  ; $6698: $f8 $80
	ldh  [$03], a                                    ; $669a: $e0 $03
	dec  b                                           ; $669c: $05
	ld   [$e71c], sp                                 ; $669d: $08 $1c $e7
	add  h                                           ; $66a0: $84

Jump_08f_66a1:
	nop                                              ; $66a1: $00
	inc  bc                                          ; $66a2: $03
	rst  $30                                         ; $66a3: $f7
	ld   [$e718], sp                                 ; $66a4: $08 $18 $e7
	add  b                                           ; $66a7: $80
	nop                                              ; $66a8: $00
	inc  bc                                          ; $66a9: $03
	rst  $30                                         ; $66aa: $f7
	ld   b, d                                        ; $66ab: $42
	add  $39                                         ; $66ac: $c6 $39
	add  h                                           ; $66ae: $84
	nop                                              ; $66af: $00
	inc  bc                                          ; $66b0: $03
	cp   l                                           ; $66b1: $bd
	ld   b, d                                        ; $66b2: $42
	add  $39                                         ; $66b3: $c6 $39
	add  b                                           ; $66b5: $80
	nop                                              ; $66b6: $00
	inc  bc                                          ; $66b7: $03
	or   d                                           ; $66b8: $b2
	rra                                              ; $66b9: $1f
	ld   sp, $84ce                                   ; $66ba: $31 $ce $84
	nop                                              ; $66bd: $00
	inc  bc                                          ; $66be: $03
	rst  $28                                         ; $66bf: $ef
	db   $10                                         ; $66c0: $10
	ld   sp, $80ce                                   ; $66c1: $31 $ce $80
	nop                                              ; $66c4: $00
	ld   bc, $c42a                                   ; $66c5: $01 $2a $c4
	add  a                                           ; $66c8: $87
	db   $e4                                         ; $66c9: $e4
	add  b                                           ; $66ca: $80
	ld   h, h                                        ; $66cb: $64

Call_08f_66cc:
	add  c                                           ; $66cc: $81
	db   $e4                                         ; $66cd: $e4
	nop                                              ; $66ce: $00
	ld   bc, $00bb                                   ; $66cf: $01 $bb $00
	ld   [bc], a                                     ; $66d2: $02
	ld   [$0800], sp                                 ; $66d3: $08 $00 $08
	adc  h                                           ; $66d6: $8c
	nop                                              ; $66d7: $00
	add  b                                           ; $66d8: $80
	ld   b, b                                        ; $66d9: $40
	sbc  e                                           ; $66da: $9b
	nop                                              ; $66db: $00
	ld   [bc], a                                     ; $66dc: $02
	jr   nz, @+$03                                   ; $66dd: $20 $01

	ld   hl, $008d                                   ; $66df: $21 $8d $00
	nop                                              ; $66e2: $00
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
	adc  c                                           ; $66f0: $89
	ld   bc, $f700                                   ; $66f1: $01 $00 $f7
	add  c                                           ; $66f4: $81
	nop                                              ; $66f5: $00
	ld   [bc], a                                     ; $66f6: $02
	rst  $30                                         ; $66f7: $f7
	ld   [$83ff], sp                                 ; $66f8: $08 $ff $83
	nop                                              ; $66fb: $00
	inc  b                                           ; $66fc: $04
	ldh  [rP1], a                                    ; $66fd: $e0 $00
	stop                                             ; $66ff: $10 $00
	cp   d                                           ; $6701: $ba
	add  c                                           ; $6702: $81
	nop                                              ; $6703: $00
	ld   [bc], a                                     ; $6704: $02
	cp   l                                           ; $6705: $bd
	ld   b, d                                        ; $6706: $42
	rst  $38                                         ; $6707: $ff
	add  e                                           ; $6708: $83
	nop                                              ; $6709: $00
	inc  b                                           ; $670a: $04
	dec  c                                           ; $670b: $0d
	nop                                              ; $670c: $00
	ld   [hl], b                                     ; $670d: $70
	nop                                              ; $670e: $00
	cpl                                              ; $670f: $2f
	add  c                                           ; $6710: $81
	nop                                              ; $6711: $00
	ld   [bc], a                                     ; $6712: $02
	rst  $28                                         ; $6713: $ef
	db   $10                                         ; $6714: $10
	rst  $38                                         ; $6715: $ff
	add  e                                           ; $6716: $83
	nop                                              ; $6717: $00
	inc  bc                                          ; $6718: $03
	xor  $00                                         ; $6719: $ee $00
	ld   bc, $8300                                   ; $671b: $01 $00 $83
	call nz, Call_08f_4480                           ; $671e: $c4 $80 $44
	add  l                                           ; $6721: $85
	call nz, Call_08f_4480                           ; $6722: $c4 $80 $44
	add  h                                           ; $6725: $84
	nop                                              ; $6726: $00
	add  b                                           ; $6727: $80
	rst  $38                                         ; $6728: $ff
	add  d                                           ; $6729: $82
	nop                                              ; $672a: $00
	ld   bc, $807f                                   ; $672b: $01 $7f $80
	add  c                                           ; $672e: $81
	rst  $38                                         ; $672f: $ff
	add  e                                           ; $6730: $83
	nop                                              ; $6731: $00
	add  b                                           ; $6732: $80
	rst  $38                                         ; $6733: $ff
	add  d                                           ; $6734: $82
	nop                                              ; $6735: $00
	ld   bc, $00ff                                   ; $6736: $01 $ff $00
	add  c                                           ; $6739: $81
	rst  $38                                         ; $673a: $ff
	add  e                                           ; $673b: $83
	nop                                              ; $673c: $00
	add  b                                           ; $673d: $80
	rst  $38                                         ; $673e: $ff
	add  d                                           ; $673f: $82
	nop                                              ; $6740: $00
	inc  b                                           ; $6741: $04
	add  b                                           ; $6742: $80
	ld   a, a                                        ; $6743: $7f
	xor  b                                           ; $6744: $a8
	rst  $38                                         ; $6745: $ff
	xor  b                                           ; $6746: $a8
	add  e                                           ; $6747: $83
	nop                                              ; $6748: $00
	add  b                                           ; $6749: $80
	db   $fc                                         ; $674a: $fc
	add  d                                           ; $674b: $82
	inc  b                                           ; $674c: $04
	add  b                                           ; $674d: $80
	db   $e4                                         ; $674e: $e4
	add  b                                           ; $674f: $80
	inc  b                                           ; $6750: $04
	ld   [bc], a                                     ; $6751: $02
	ld   a, [bc]                                     ; $6752: $0a
	or   $f7                                         ; $6753: $f6 $f7
	adc  b                                           ; $6755: $88
	or   $03                                         ; $6756: $f6 $03
	ld   [hl], $f6                                   ; $6758: $36 $f6
	rst  ToBoot                                         ; $675a: $c7
	inc  c                                           ; $675b: $0c
	add  b                                           ; $675c: $80
	nop                                              ; $675d: $00
	add  e                                           ; $675e: $83
	add  b                                           ; $675f: $80
	add  b                                           ; $6760: $80
	xor  d                                           ; $6761: $aa
	add  b                                           ; $6762: $80
	sub  l                                           ; $6763: $95
	add  c                                           ; $6764: $81
	cp   a                                           ; $6765: $bf
	inc  bc                                          ; $6766: $03
	ccf                                              ; $6767: $3f
	nop                                              ; $6768: $00
	dec  bc                                          ; $6769: $0b
	dec  de                                          ; $676a: $1b
	add  e                                           ; $676b: $83
	dec  bc                                          ; $676c: $0b
	add  b                                           ; $676d: $80
	adc  e                                           ; $676e: $8b
	add  b                                           ; $676f: $80
	ld   c, e                                        ; $6770: $4b
	add  b                                           ; $6771: $80
	rlc  d                                           ; $6772: $cb $02
	db   $d3                                         ; $6774: $d3
	set  4, e                                        ; $6775: $cb $e3
	add  d                                           ; $6777: $82
	ldh  [$85], a                                    ; $6778: $e0 $85
	rst  $28                                         ; $677a: $ef
	add  b                                           ; $677b: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $677c: $cf
	add  b                                           ; $677d: $80
	ccf                                              ; $677e: $3f
	inc  b                                           ; $677f: $04
	rrca                                             ; $6780: $0f
	nop                                              ; $6781: $00
	rrca                                             ; $6782: $0f
	nop                                              ; $6783: $00
	rla                                              ; $6784: $17
	add  a                                           ; $6785: $87
	rst  $30                                         ; $6786: $f7
	inc  c                                           ; $6787: $0c
	ldh  a, [$f7]                                    ; $6788: $f0 $f7
	add  sp, $00                                     ; $678a: $e8 $00
	ld   [bc], a                                     ; $678c: $02
	nop                                              ; $678d: $00
	ld   l, d                                        ; $678e: $6a
	ld   [hl], b                                     ; $678f: $70
	ld   [hl], d                                     ; $6790: $72
	ld   [hl], b                                     ; $6791: $70
	ld   [hl], d                                     ; $6792: $72
	ld   [hl], b                                     ; $6793: $70
	ld   [hl], a                                     ; $6794: $77
	add  b                                           ; $6795: $80
	ld   [hl], b                                     ; $6796: $70
	dec  c                                           ; $6797: $0d
	ld   a, a                                        ; $6798: $7f
	ld   [hl], b                                     ; $6799: $70
	ld   a, a                                        ; $679a: $7f
	rra                                              ; $679b: $1f
	nop                                              ; $679c: $00
	add  a                                           ; $679d: $87
	nop                                              ; $679e: $00
	srl  e                                           ; $679f: $cb $3b
	sbc  e                                           ; $67a1: $9b
	dec  sp                                          ; $67a2: $3b
	cp   e                                           ; $67a3: $bb
	dec  sp                                          ; $67a4: $3b
	cp   e                                           ; $67a5: $bb
	add  b                                           ; $67a6: $80

jr_08f_67a7:
	dec  sp                                          ; $67a7: $3b
	rlca                                             ; $67a8: $07
	ei                                               ; $67a9: $fb
	jr   jr_08f_67a7                                 ; $67aa: $18 $fb

	db   $f4                                         ; $67ac: $f4
	nop                                              ; $67ad: $00
	add  b                                           ; $67ae: $80
	nop                                              ; $67af: $00
	or   b                                           ; $67b0: $b0
	add  a                                           ; $67b1: $87
	cp   a                                           ; $67b2: $bf
	ld   [$bf3f], sp                                 ; $67b3: $08 $3f $bf
	adc  a                                           ; $67b6: $8f
	nop                                              ; $67b7: $00
	ldh  [$80], a                                    ; $67b8: $e0 $80
	ld   a, b                                        ; $67ba: $78
	jr   nz, @-$42                                   ; $67bb: $20 $bc

	add  b                                           ; $67bd: $80
	ret  z                                           ; $67be: $c8

	dec  c                                           ; $67bf: $0d
	nop                                              ; $67c0: $00
	inc  b                                           ; $67c1: $04
	nop                                              ; $67c2: $00
	rst  JumpTable                                         ; $67c3: $df
	jr   nc, jr_08f_67d7                             ; $67c4: $30 $11

	cp   $03                                         ; $67c6: $fe $03
	nop                                              ; $67c8: $00
	ld   c, $02                                      ; $67c9: $0e $02
	inc  a                                           ; $67cb: $3c
	ld   [$807b], sp                                 ; $67cc: $08 $7b $80
	daa                                              ; $67cf: $27
	dec  c                                           ; $67d0: $0d
	nop                                              ; $67d1: $00
	ld   b, b                                        ; $67d2: $40
	nop                                              ; $67d3: $00
	rst  $30                                         ; $67d4: $f7
	jr   @+$12                                       ; $67d5: $18 $10

jr_08f_67d7:
	rst  $38                                         ; $67d7: $ff
	ld   hl, sp-$60                                  ; $67d8: $f8 $a0
	xor  [hl]                                        ; $67da: $ae
	xor  b                                           ; $67db: $a8
	rst  $20                                         ; $67dc: $e7
	ldh  [c], a                                      ; $67dd: $e2
	ld   e, e                                        ; $67de: $5b
	add  b                                           ; $67df: $80
	db   $fc                                         ; $67e0: $fc
	add  c                                           ; $67e1: $81
	nop                                              ; $67e2: $00
	inc  bc                                          ; $67e3: $03
	db   $fd                                         ; $67e4: $fd
	inc  bc                                          ; $67e5: $03
	ld   bc, $82ff                                   ; $67e6: $01 $ff $82
	inc  b                                           ; $67e9: $04
	ld   [bc], a                                     ; $67ea: $02
	add  h                                           ; $67eb: $84
	inc  b                                           ; $67ec: $04
	call nz, $8480                                   ; $67ed: $c4 $80 $84
	ld   [$4404], sp                                 ; $67f0: $08 $04 $44
	inc  b                                           ; $67f3: $04
	db   $f4                                         ; $67f4: $f4
	inc  b                                           ; $67f5: $04
	inc  d                                           ; $67f6: $14
	db   $e4                                         ; $67f7: $e4
	nop                                              ; $67f8: $00
	rst  $38                                         ; $67f9: $ff
	add  b                                           ; $67fa: $80
	ret  nz                                          ; $67fb: $c0

	dec  bc                                          ; $67fc: $0b
	ccf                                              ; $67fd: $3f
	add  b                                           ; $67fe: $80
	ret  nz                                          ; $67ff: $c0

	add  b                                           ; $6800: $80
	ld   c, $bf                                      ; $6801: $0e $bf
	add  e                                           ; $6803: $83
	cp   a                                           ; $6804: $bf
	jr   nc, @+$40                                   ; $6805: $30 $3e

	ld   a, h                                        ; $6807: $7c
	nop                                              ; $6808: $00
	add  b                                           ; $6809: $80
	rst  $38                                         ; $680a: $ff
	add  b                                           ; $680b: $80
	ld   a, a                                        ; $680c: $7f
	inc  bc                                          ; $680d: $03
	add  b                                           ; $680e: $80
	rst  $38                                         ; $680f: $ff
	ld   a, a                                        ; $6810: $7f
	rst  $38                                         ; $6811: $ff
	add  h                                           ; $6812: $84
	nop                                              ; $6813: $00
	add  b                                           ; $6814: $80
	ld   [hl], $04                                   ; $6815: $36 $04
	cpl                                              ; $6817: $2f
	rst  $38                                         ; $6818: $ff
	add  a                                           ; $6819: $87
	rst  $38                                         ; $681a: $ff
	ld   e, b                                        ; $681b: $58
	add  b                                           ; $681c: $80
	ldh  a, [rSB]                                    ; $681d: $f0 $01
	rst  $30                                         ; $681f: $f7
	rrca                                             ; $6820: $0f
	add  b                                           ; $6821: $80
	ld   [bc], a                                     ; $6822: $02
	dec  b                                           ; $6823: $05
	nop                                              ; $6824: $00
	inc  b                                           ; $6825: $04
	inc  bc                                          ; $6826: $03
	adc  $cf                                         ; $6827: $ce $cf
	ld   a, [bc]                                     ; $6829: $0a
	add  b                                           ; $682a: $80
	inc  b                                           ; $682b: $04
	add  b                                           ; $682c: $80
	ld   b, h                                        ; $682d: $44
	inc  bc                                          ; $682e: $03
	add  h                                           ; $682f: $84
	call nz, $0444                                   ; $6830: $c4 $44 $04
	add  c                                           ; $6833: $81
	ld   b, h                                        ; $6834: $44
	dec  b                                           ; $6835: $05
	inc  b                                           ; $6836: $04
	call nz, $c444                                   ; $6837: $c4 $44 $c4
	ld   sp, $8030                                   ; $683a: $31 $30 $80
	inc  c                                           ; $683d: $0c
	add  [hl]                                        ; $683e: $86
	nop                                              ; $683f: $00
	nop                                              ; $6840: $00
	ld   bc, $0081                                   ; $6841: $01 $81 $00
	ld   bc, $ff80                                   ; $6844: $01 $80 $ff
	add  b                                           ; $6847: $80
	ret  nz                                          ; $6848: $c0

	ld   [$80ff], sp                                 ; $6849: $08 $ff $80
	cp   a                                           ; $684c: $bf
	ret  nz                                          ; $684d: $c0

	rst  $38                                         ; $684e: $ff
	add  b                                           ; $684f: $80
	cp   a                                           ; $6850: $bf
	ret  nz                                          ; $6851: $c0

	ld   a, a                                        ; $6852: $7f
	add  c                                           ; $6853: $81
	nop                                              ; $6854: $00

jr_08f_6855:
	ld   bc, $f018                                   ; $6855: $01 $18 $f0
	add  b                                           ; $6858: $80
	inc  de                                          ; $6859: $13
	ld   [$10f0], sp                                 ; $685a: $08 $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $685d: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $685f: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $6861: $f0 $10
	add  sp, -$7f                                    ; $6863: $e8 $81
	nop                                              ; $6865: $00
	inc  bc                                          ; $6866: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6867: $cf
	ret  nz                                          ; $6868: $c0

	jr   nc, jr_08f_68aa                             ; $6869: $30 $3f

	adc  d                                           ; $686b: $8a
	nop                                              ; $686c: $00
	inc  bc                                          ; $686d: $03
	add  sp, $17                                     ; $686e: $e8 $17
	ld   [$8af7], sp                                 ; $6870: $08 $f7 $8a
	nop                                              ; $6873: $00
	inc  bc                                          ; $6874: $03
	sbc  a                                           ; $6875: $9f
	ldh  [$80], a                                    ; $6876: $e0 $80
	rst  $38                                         ; $6878: $ff
	adc  d                                           ; $6879: $8a
	nop                                              ; $687a: $00
	inc  bc                                          ; $687b: $03
	db   $f4                                         ; $687c: $f4
	dec  bc                                          ; $687d: $0b
	inc  b                                           ; $687e: $04
	ei                                               ; $687f: $fb
	adc  d                                           ; $6880: $8a
	nop                                              ; $6881: $00
	inc  bc                                          ; $6882: $03
	ld   c, a                                        ; $6883: $4f
	ldh  a, [rLCDC]                                  ; $6884: $f0 $40
	rst  $38                                         ; $6886: $ff
	adc  d                                           ; $6887: $8a
	nop                                              ; $6888: $00

jr_08f_6889:
	ld   b, $08                                      ; $6889: $06 $08
	cp   $f6                                         ; $688b: $fe $f6
	nop                                              ; $688d: $00
	inc  e                                           ; $688e: $1c
	ld   a, [de]                                     ; $688f: $1a
	ld   sp, hl                                      ; $6890: $f9
	add  b                                           ; $6891: $80
	ei                                               ; $6892: $fb
	add  c                                           ; $6893: $81
	ld   hl, sp+$0a                                  ; $6894: $f8 $0a
	ld   sp, hl                                      ; $6896: $f9
	ld   a, [$1a18]                                  ; $6897: $fa $18 $1a
	ld   h, $ff                                      ; $689a: $26 $ff
	rst  JumpTable                                         ; $689c: $df
	nop                                              ; $689d: $00
	sub  b                                           ; $689e: $90
	ld   d, b                                        ; $689f: $50
	ld   d, a                                        ; $68a0: $57
	add  b                                           ; $68a1: $80
	rst  $10                                         ; $68a2: $d7
	add  c                                           ; $68a3: $81
	ld   d, a                                        ; $68a4: $57
	add  b                                           ; $68a5: $80
	rst  JumpTable                                         ; $68a6: $df
	add  b                                           ; $68a7: $80
	ld   d, b                                        ; $68a8: $50
	nop                                              ; $68a9: $00

jr_08f_68aa:
	ret  nz                                          ; $68aa: $c0

	add  b                                           ; $68ab: $80
	rst  $38                                         ; $68ac: $ff
	nop                                              ; $68ad: $00
	nop                                              ; $68ae: $00
	add  b                                           ; $68af: $80
	and  c                                           ; $68b0: $a1
	add  h                                           ; $68b1: $84
	xor  a                                           ; $68b2: $af
	add  b                                           ; $68b3: $80
	cp   a                                           ; $68b4: $bf
	ld   b, $a1                                      ; $68b5: $06 $a1
	ld   bc, $f424                                   ; $68b7: $01 $24 $f4
	inc  d                                           ; $68ba: $14
	ld   h, h                                        ; $68bb: $64
	call nz, $a489                                   ; $68bc: $c4 $89 $a4
	nop                                              ; $68bf: $00
	ld   h, b                                        ; $68c0: $60
	add  b                                           ; $68c1: $80
	pop  hl                                          ; $68c2: $e1
	add  b                                           ; $68c3: $80
	sbc  c                                           ; $68c4: $99
	add  b                                           ; $68c5: $80
	add  a                                           ; $68c6: $87
	nop                                              ; $68c7: $00
	nop                                              ; $68c8: $00
	add  d                                           ; $68c9: $82
	ld   l, l                                        ; $68ca: $6d
	nop                                              ; $68cb: $00
	rst  $38                                         ; $68cc: $ff
	add  c                                           ; $68cd: $81
	nop                                              ; $68ce: $00
	inc  bc                                          ; $68cf: $03
	ret  z                                           ; $68d0: $c8

	jr   nc, @+$41                                   ; $68d1: $30 $3f

	jr   nc, jr_08f_6855                             ; $68d3: $30 $80

	jr   c, jr_08f_68da                              ; $68d5: $38 $03

	scf                                              ; $68d7: $37
	jr   nz, jr_08f_6889                             ; $68d8: $20 $af

jr_08f_68da:
	or   b                                           ; $68da: $b0
	add  b                                           ; $68db: $80
	or   [hl]                                        ; $68dc: $b6
	rrca                                             ; $68dd: $0f
	cp   $06                                         ; $68de: $fe $06
	rlca                                             ; $68e0: $07
	nop                                              ; $68e1: $00
	ld   [hl], $cf                                   ; $68e2: $36 $cf
	rst  ToBoot                                         ; $68e4: $c7
	ld   b, a                                        ; $68e5: $47
	ld   b, [hl]                                     ; $68e6: $46
	ld   b, b                                        ; $68e7: $40
	ret  nc                                          ; $68e8: $d0

	ld   d, b                                        ; $68e9: $50
	ldh  a, [rAUD1SWEEP]                             ; $68ea: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $68ec: $f0 $10
	add  c                                           ; $68ee: $81
	ret  nc                                          ; $68ef: $d0

	ld   [bc], a                                     ; $68f0: $02
	ld   d, b                                        ; $68f1: $50
	ld   b, h                                        ; $68f2: $44
	call nz, $8480                                   ; $68f3: $c4 $80 $84
	adc  d                                           ; $68f6: $8a
	inc  b                                           ; $68f7: $04
	add  b                                           ; $68f8: $80
	nop                                              ; $68f9: $00
	ld   [$0014], sp                                 ; $68fa: $08 $14 $00
	ld   d, [hl]                                     ; $68fd: $56
	add  c                                           ; $68fe: $81
	sub  h                                           ; $68ff: $94
	add  c                                           ; $6900: $81
	sub  l                                           ; $6901: $95
	add  c                                           ; $6902: $81
	cp   l                                           ; $6903: $bd
	add  b                                           ; $6904: $80
	add  c                                           ; $6905: $81
	ld   bc, $80ff                                   ; $6906: $01 $ff $80
	add  b                                           ; $6909: $80
	rst  $38                                         ; $690a: $ff
	add  d                                           ; $690b: $82
	nop                                              ; $690c: $00
	adc  d                                           ; $690d: $8a
	rst  $38                                         ; $690e: $ff
	add  hl, bc                                      ; $690f: $09
	nop                                              ; $6910: $00
	jr   z, jr_08f_6913                              ; $6911: $28 $00

jr_08f_6913:
	xor  h                                           ; $6913: $ac
	inc  bc                                          ; $6914: $03
	add  hl, hl                                      ; $6915: $29
	inc  bc                                          ; $6916: $03
	dec  hl                                          ; $6917: $2b
	inc  bc                                          ; $6918: $03
	ld   a, e                                        ; $6919: $7b
	add  b                                           ; $691a: $80
	inc  bc                                          ; $691b: $03
	ld   bc, $01ff                                   ; $691c: $01 $ff $01
	add  b                                           ; $691f: $80
	rst  $38                                         ; $6920: $ff
	inc  bc                                          ; $6921: $03
	nop                                              ; $6922: $00
	rlca                                             ; $6923: $07
	nop                                              ; $6924: $00
	dec  bc                                          ; $6925: $0b
	add  a                                           ; $6926: $87
	ei                                               ; $6927: $fb
	inc  c                                           ; $6928: $0c
	ld   hl, sp-$05                                  ; $6929: $f8 $fb
	db   $f4                                         ; $692b: $f4
	nop                                              ; $692c: $00
	and  d                                           ; $692d: $a2
	jr   nz, jr_08f_68da                             ; $692e: $20 $aa

	or   b                                           ; $6930: $b0
	or   d                                           ; $6931: $b2
	or   b                                           ; $6932: $b0
	or   d                                           ; $6933: $b2
	or   b                                           ; $6934: $b0
	or   a                                           ; $6935: $b7
	add  b                                           ; $6936: $80
	or   b                                           ; $6937: $b0
	dec  c                                           ; $6938: $0d
	cp   a                                           ; $6939: $bf
	jr   nc, @-$3f                                   ; $693a: $30 $bf

	rra                                              ; $693c: $1f
	nop                                              ; $693d: $00
	adc  a                                           ; $693e: $8f
	nop                                              ; $693f: $00
	rst  ToBoot                                         ; $6940: $c7
	scf                                              ; $6941: $37
	sub  a                                           ; $6942: $97
	scf                                              ; $6943: $37
	or   a                                           ; $6944: $b7
	scf                                              ; $6945: $37
	or   a                                           ; $6946: $b7
	add  b                                           ; $6947: $80
	scf                                              ; $6948: $37
	dec  b                                           ; $6949: $05
	rst  $30                                         ; $694a: $f7
	db   $10                                         ; $694b: $10
	rst  $30                                         ; $694c: $f7
	add  b                                           ; $694d: $80
	nop                                              ; $694e: $00
	ld   a, [hl-]                                    ; $694f: $3a
	adc  e                                           ; $6950: $8b
	dec  sp                                          ; $6951: $3b
	nop                                              ; $6952: $00
	add  [hl]                                        ; $6953: $86
	add  a                                           ; $6954: $87
	rst  $38                                         ; $6955: $ff
	nop                                              ; $6956: $00
	rlca                                             ; $6957: $07
	add  c                                           ; $6958: $81
	ld   a, b                                        ; $6959: $78
	ld   [bc], a                                     ; $695a: $02
	ld   a, a                                        ; $695b: $7f
	nop                                              ; $695c: $00
	db   $fc                                         ; $695d: $fc
	add  l                                           ; $695e: $85
	ld   a, [$1a80]                                  ; $695f: $fa $80 $1a
	ld   b, $f8                                      ; $6962: $06 $f8
	cp   $fc                                         ; $6964: $fe $fc
	ld   a, [$f6f0]                                  ; $6966: $fa $f0 $f6
	sub  a                                           ; $6969: $97
	add  e                                           ; $696a: $83
	ld   d, a                                        ; $696b: $57
	add  b                                           ; $696c: $80
	ld   e, a                                        ; $696d: $5f
	add  b                                           ; $696e: $80
	ld   d, b                                        ; $696f: $50
	rlca                                             ; $6970: $07
	rla                                              ; $6971: $17
	rst  $10                                         ; $6972: $d7
	sub  a                                           ; $6973: $97
	ld   d, a                                        ; $6974: $57
	rla                                              ; $6975: $17
	rst  $10                                         ; $6976: $d7
	rrca                                             ; $6977: $0f
	xor  a                                           ; $6978: $af
	add  c                                           ; $6979: $81
	rrca                                             ; $697a: $0f
	nop                                              ; $697b: $00
	xor  a                                           ; $697c: $af
	add  b                                           ; $697d: $80
	cp   a                                           ; $697e: $bf
	add  b                                           ; $697f: $80
	and  c                                           ; $6980: $a1
	add  h                                           ; $6981: $84
	xor  a                                           ; $6982: $af
	nop                                              ; $6983: $00
	call nz, $a087                                   ; $6984: $c4 $87 $a0
	ld   b, $80                                      ; $6987: $06 $80
	ldh  [$c0], a                                    ; $6989: $e0 $c0
	and  b                                           ; $698b: $a0
	nop                                              ; $698c: $00
	ld   h, b                                        ; $698d: $60
	inc  b                                           ; $698e: $04
	add  b                                           ; $698f: $80
	nop                                              ; $6990: $00
	add  b                                           ; $6991: $80
	push de                                          ; $6992: $d5
	add  b                                           ; $6993: $80
	ld   [$f503], a                                  ; $6994: $ea $03 $f5
	ld   a, [bc]                                     ; $6997: $0a
	rst  $38                                         ; $6998: $ff
	nop                                              ; $6999: $00
	add  b                                           ; $699a: $80
	rst  $38                                         ; $699b: $ff
	add  b                                           ; $699c: $80
	nop                                              ; $699d: $00
	inc  bc                                          ; $699e: $03
	rst  $38                                         ; $699f: $ff
	ld   hl, sp+$06                                  ; $69a0: $f8 $06
	ld   bc, $0080                                   ; $69a2: $01 $80 $00
	add  b                                           ; $69a5: $80
	add  b                                           ; $69a6: $80
	ld   de, $a040                                   ; $69a7: $11 $40 $a0
	ldh  [$0e], a                                    ; $69aa: $e0 $0e
	cp   $f0                                         ; $69ac: $fe $f0
	nop                                              ; $69ae: $00
	rlca                                             ; $69af: $07
	rst  $38                                         ; $69b0: $ff
	ld   [$ce00], sp                                 ; $69b1: $08 $00 $ce
	nop                                              ; $69b4: $00
	add  hl, sp                                      ; $69b5: $39
	nop                                              ; $69b6: $00
	ld   b, $00                                      ; $69b7: $06 $00
	ld   bc, $0082                                   ; $69b9: $01 $82 $00

jr_08f_69bc:
	nop                                              ; $69bc: $00
	inc  b                                           ; $69bd: $04
	add  b                                           ; $69be: $80
	add  $00                                         ; $69bf: $c6 $00
	nop                                              ; $69c1: $00
	add  c                                           ; $69c2: $81
	inc  b                                           ; $69c3: $04
	inc  c                                           ; $69c4: $0c
	add  h                                           ; $69c5: $84
	inc  b                                           ; $69c6: $04
	ld   h, h                                        ; $69c7: $64
	inc  b                                           ; $69c8: $04
	sub  h                                           ; $69c9: $94
	inc  b                                           ; $69ca: $04
	ld   l, h                                        ; $69cb: $6c

jr_08f_69cc:
	inc  b                                           ; $69cc: $04
	inc  d                                           ; $69cd: $14
	nop                                              ; $69ce: $00
	ld   [$fb00], sp                                 ; $69cf: $08 $00 $fb
	add  b                                           ; $69d2: $80
	nop                                              ; $69d3: $00
	nop                                              ; $69d4: $00
	rst  $38                                         ; $69d5: $ff
	adc  d                                           ; $69d6: $8a
	nop                                              ; $69d7: $00
	nop                                              ; $69d8: $00
	rst  $38                                         ; $69d9: $ff
	add  b                                           ; $69da: $80
	nop                                              ; $69db: $00
	nop                                              ; $69dc: $00
	rst  $38                                         ; $69dd: $ff
	adc  d                                           ; $69de: $8a
	nop                                              ; $69df: $00
	nop                                              ; $69e0: $00

Jump_08f_69e1:
	rst  $38                                         ; $69e1: $ff
	add  b                                           ; $69e2: $80
	nop                                              ; $69e3: $00
	nop                                              ; $69e4: $00
	rst  $38                                         ; $69e5: $ff
	adc  d                                           ; $69e6: $8a
	nop                                              ; $69e7: $00
	inc  bc                                          ; $69e8: $03
	db   $f4                                         ; $69e9: $f4
	dec  bc                                          ; $69ea: $0b
	nop                                              ; $69eb: $00
	rst  $38                                         ; $69ec: $ff
	adc  d                                           ; $69ed: $8a
	nop                                              ; $69ee: $00
	inc  bc                                          ; $69ef: $03
	ld   e, a                                        ; $69f0: $5f
	ldh  [rLCDC], a                                  ; $69f1: $e0 $40
	rst  $38                                         ; $69f3: $ff
	adc  d                                           ; $69f4: $8a
	nop                                              ; $69f5: $00
	inc  bc                                          ; $69f6: $03
	add  sp, $17                                     ; $69f7: $e8 $17
	nop                                              ; $69f9: $00
	rst  $38                                         ; $69fa: $ff
	adc  d                                           ; $69fb: $8a
	nop                                              ; $69fc: $00
	ld   bc, $3840                                   ; $69fd: $01 $40 $38
	add  b                                           ; $6a00: $80
	nop                                              ; $6a01: $00
	ld   [$0078], sp                                 ; $6a02: $08 $78 $00
	ld   c, $0f                                      ; $6a05: $0e $0f
	ld   bc, $0e00                                   ; $6a07: $01 $00 $0e
	rrca                                             ; $6a0a: $0f
	ld   bc, $0081                                   ; $6a0b: $01 $81 $00
	add  b                                           ; $6a0e: $80
	rst  $38                                         ; $6a0f: $ff
	ld   a, [bc]                                     ; $6a10: $0a
	rlca                                             ; $6a11: $07
	ld   hl, sp-$01                                  ; $6a12: $f8 $ff
	nop                                              ; $6a14: $00
	rlca                                             ; $6a15: $07
	ld   hl, sp-$01                                  ; $6a16: $f8 $ff
	nop                                              ; $6a18: $00
	rlca                                             ; $6a19: $07
	ld   hl, sp-$01                                  ; $6a1a: $f8 $ff
	adc  c                                           ; $6a1c: $89
	nop                                              ; $6a1d: $00
	inc  bc                                          ; $6a1e: $03
	ld   d, l                                        ; $6a1f: $55
	nop                                              ; $6a20: $00
	rst  $38                                         ; $6a21: $ff
	xor  d                                           ; $6a22: $aa
	add  b                                           ; $6a23: $80
	ld   d, l                                        ; $6a24: $55
	add  b                                           ; $6a25: $80
	rst  $38                                         ; $6a26: $ff
	add  [hl]                                        ; $6a27: $86
	nop                                              ; $6a28: $00
	inc  bc                                          ; $6a29: $03
	ld   d, l                                        ; $6a2a: $55
	nop                                              ; $6a2b: $00
	rst  $38                                         ; $6a2c: $ff
	xor  d                                           ; $6a2d: $aa
	add  b                                           ; $6a2e: $80
	ld   b, l                                        ; $6a2f: $45
	ld   [bc], a                                     ; $6a30: $02
	ret  nz                                          ; $6a31: $c0

	ret  c                                           ; $6a32: $d8

	jr   jr_08f_69bc                                 ; $6a33: $18 $87

	nop                                              ; $6a35: $00
	ld   [$a0a3], sp                                 ; $6a36: $08 $a3 $a0
	rra                                              ; $6a39: $1f
	nop                                              ; $6a3a: $00
	db   $fc                                         ; $6a3b: $fc
	ld   bc, $00e1                                   ; $6a3c: $01 $e1 $00
	ld   b, b                                        ; $6a3f: $40
	add  c                                           ; $6a40: $81
	jr   nz, jr_08f_6a48                             ; $6a41: $20 $05

	ld   h, b                                        ; $6a43: $60
	nop                                              ; $6a44: $00
	ld   b, b                                        ; $6a45: $40
	jr   z, jr_08f_6a48                              ; $6a46: $28 $00

jr_08f_6a48:
	jr   z, jr_08f_69cc                              ; $6a48: $28 $82

	ld   l, b                                        ; $6a4a: $68
	inc  b                                           ; $6a4b: $04
	ld   b, e                                        ; $6a4c: $43
	inc  bc                                          ; $6a4d: $03
	dec  de                                          ; $6a4e: $1b
	inc  bc                                          ; $6a4f: $03
	and  e                                           ; $6a50: $a3
	add  c                                           ; $6a51: $81
	nop                                              ; $6a52: $00
	nop                                              ; $6a53: $00
	ld   b, h                                        ; $6a54: $44
	add  b                                           ; $6a55: $80
	rst  $38                                         ; $6a56: $ff
	add  b                                           ; $6a57: $80
	ld   d, l                                        ; $6a58: $55
	rlca                                             ; $6a59: $07
	rst  $38                                         ; $6a5a: $ff
	ld   d, l                                        ; $6a5b: $55
	rst  $38                                         ; $6a5c: $ff
	xor  e                                           ; $6a5d: $ab
	ld   bc, $0193                                   ; $6a5e: $01 $93 $01
	dec  h                                           ; $6a61: $25
	add  c                                           ; $6a62: $81
	ld   bc, $4900                                   ; $6a63: $01 $00 $49
	add  b                                           ; $6a66: $80
	rst  $38                                         ; $6a67: $ff
	add  b                                           ; $6a68: $80
	ld   d, l                                        ; $6a69: $55
	inc  b                                           ; $6a6a: $04
	rst  $38                                         ; $6a6b: $ff
	ld   d, l                                        ; $6a6c: $55
	rst  $38                                         ; $6a6d: $ff
	xor  a                                           ; $6a6e: $af
	push af                                          ; $6a6f: $f5
	add  b                                           ; $6a70: $80
	pop  af                                          ; $6a71: $f1
	add  b                                           ; $6a72: $80
	db   $f4                                         ; $6a73: $f4
	add  c                                           ; $6a74: $81
	ld   [hl], l                                     ; $6a75: $75
	nop                                              ; $6a76: $00
	push af                                          ; $6a77: $f5
	add  c                                           ; $6a78: $81
	or   l                                           ; $6a79: $b5
	nop                                              ; $6a7a: $00
	push af                                          ; $6a7b: $f5
	add  b                                           ; $6a7c: $80
	push de                                          ; $6a7d: $d5
	inc  bc                                          ; $6a7e: $03
	or   h                                           ; $6a7f: $b4
	add  b                                           ; $6a80: $80
	sub  b                                           ; $6a81: $90
	ldh  a, [$81]                                    ; $6a82: $f0 $81
	ld   [hl], b                                     ; $6a84: $70
	add  b                                           ; $6a85: $80
	jr   nc, @-$79                                   ; $6a86: $30 $85

	or   b                                           ; $6a88: $b0
	ld   [bc], a                                     ; $6a89: $02
	ld   e, h                                        ; $6a8a: $5c
	ld   hl, sp-$04                                  ; $6a8b: $f8 $fc
	add  l                                           ; $6a8d: $85
	ld   a, [$0200]                                  ; $6a8e: $fa $00 $02
	add  d                                           ; $6a91: $82
	ldh  a, [c]                                      ; $6a92: $f2
	dec  b                                           ; $6a93: $05
	ld   [bc], a                                     ; $6a94: $02
	or   $00                                         ; $6a95: $f6 $00
	ld   [hl], e                                     ; $6a97: $73
	ld   [hl], h                                     ; $6a98: $74
	ld   [hl], e                                     ; $6a99: $73
	add  a                                           ; $6a9a: $87
	ld   [hl], a                                     ; $6a9b: $77
	inc  c                                           ; $6a9c: $0c
	ld   [hl], h                                     ; $6a9d: $74
	ld   [hl], a                                     ; $6a9e: $77
	ldh  a, [rP1]                                    ; $6a9f: $f0 $00
	ld   b, l                                        ; $6aa1: $45
	ld   b, b                                        ; $6aa2: $40
	ld   d, l                                        ; $6aa3: $55
	ld   h, b                                        ; $6aa4: $60
	ld   h, l                                        ; $6aa5: $65
	ld   h, b                                        ; $6aa6: $60
	ld   h, l                                        ; $6aa7: $65
	ld   h, b                                        ; $6aa8: $60
	ld   l, a                                        ; $6aa9: $6f
	add  b                                           ; $6aaa: $80
	ld   h, b                                        ; $6aab: $60
	add  hl, bc                                      ; $6aac: $09
	ld   a, a                                        ; $6aad: $7f
	ld   h, b                                        ; $6aae: $60
	ld   a, a                                        ; $6aaf: $7f
	ld   a, $00                                      ; $6ab0: $3e $00
	ld   e, $00                                      ; $6ab2: $1e $00
	adc  [hl]                                        ; $6ab4: $8e
	ld   l, [hl]                                     ; $6ab5: $6e
	ld   l, $84                                      ; $6ab6: $2e $84
	ld   l, [hl]                                     ; $6ab8: $6e
	inc  bc                                          ; $6ab9: $03
	xor  $20                                         ; $6aba: $ee $20
	xor  $f1                                         ; $6abc: $ee $f1
	cp   l                                           ; $6abe: $bd
	nop                                              ; $6abf: $00
	adc  [hl]                                        ; $6ac0: $8e
	rst  $38                                         ; $6ac1: $ff
	inc  b                                           ; $6ac2: $04
	db   $d3                                         ; $6ac3: $d3
	ret  z                                           ; $6ac4: $c8

	ei                                               ; $6ac5: $fb
	ldh  [$d0], a                                    ; $6ac6: $e0 $d0
	add  c                                           ; $6ac8: $81
	jp   z, $da00                                    ; $6ac9: $ca $00 $da

	add  b                                           ; $6acc: $80
	ret  c                                           ; $6acd: $d8

	ld   [bc], a                                     ; $6ace: $02
	ret  nc                                          ; $6acf: $d0

	call nc, $80c4                                   ; $6ad0: $d4 $c4 $80
	add  $00                                         ; $6ad3: $c6 $00
	nop                                              ; $6ad5: $00
	add  b                                           ; $6ad6: $80
	add  hl, bc                                      ; $6ad7: $09
	add  b                                           ; $6ad8: $80
	ld   c, b                                        ; $6ad9: $48
	ld   [bc], a                                     ; $6ada: $02
	ld   b, b                                        ; $6adb: $40
	ld   b, d                                        ; $6adc: $42
	ld   [bc], a                                     ; $6add: $02
	add  b                                           ; $6ade: $80
	inc  de                                          ; $6adf: $13
	add  hl, bc                                      ; $6ae0: $09
	sbc  e                                           ; $6ae1: $9b
	sbc  c                                           ; $6ae2: $99
	reti                                             ; $6ae3: $d9


	ret                                              ; $6ae4: $c9


	call $924d                                       ; $6ae5: $cd $4d $92
	nop                                              ; $6ae8: $00
	jr   c, @+$7a                                    ; $6ae9: $38 $78

	add  h                                           ; $6aeb: $84
	jr   c, @+$04                                    ; $6aec: $38 $02

	ld   c, b                                        ; $6aee: $48
	ld   [$8148], sp                                 ; $6aef: $08 $48 $81
	jr   z, jr_08f_6b01                              ; $6af2: $28 $0d

	dec  [hl]                                        ; $6af4: $35
	rst  $38                                         ; $6af5: $ff
	cp   [hl]                                        ; $6af6: $be
	rst  $38                                         ; $6af7: $ff
	db   $eb                                         ; $6af8: $eb
	rst  $38                                         ; $6af9: $ff
	ccf                                              ; $6afa: $3f
	rst  $38                                         ; $6afb: $ff
	ld   h, d                                        ; $6afc: $62
	rst  $38                                         ; $6afd: $ff
	ld   h, d                                        ; $6afe: $62
	rst  $38                                         ; $6aff: $ff
	nop                                              ; $6b00: $00

jr_08f_6b01:
	ccf                                              ; $6b01: $3f
	add  b                                           ; $6b02: $80
	nop                                              ; $6b03: $00
	inc  b                                           ; $6b04: $04
	ld   d, l                                        ; $6b05: $55

jr_08f_6b06:
	rst  $38                                         ; $6b06: $ff
	db   $eb                                         ; $6b07: $eb
	rst  $38                                         ; $6b08: $ff
	cp   [hl]                                        ; $6b09: $be
	add  l                                           ; $6b0a: $85

jr_08f_6b0b:
	rst  $38                                         ; $6b0b: $ff
	dec  b                                           ; $6b0c: $05
	inc  d                                           ; $6b0d: $14
	rst  $38                                         ; $6b0e: $ff
	inc  d                                           ; $6b0f: $14
	nop                                              ; $6b10: $00
	push hl                                          ; $6b11: $e5
	push de                                          ; $6b12: $d5
	add  c                                           ; $6b13: $81
	push bc                                          ; $6b14: $c5
	nop                                              ; $6b15: $00
	push hl                                          ; $6b16: $e5
	add  b                                           ; $6b17: $80
	push af                                          ; $6b18: $f5
	inc  b                                           ; $6b19: $04
	push de                                          ; $6b1a: $d5
	push af                                          ; $6b1b: $f5
	db   $f4                                         ; $6b1c: $f4
	ld   [hl], h                                     ; $6b1d: $74
	or   l                                           ; $6b1e: $b5
	add  b                                           ; $6b1f: $80
	dec  d                                           ; $6b20: $15
	ld   bc, $e4f5                                   ; $6b21: $01 $f5 $e4
	adc  d                                           ; $6b24: $8a
	or   h                                           ; $6b25: $b4
	add  b                                           ; $6b26: $80
	inc  [hl]                                        ; $6b27: $34
	inc  bc                                          ; $6b28: $03
	ld   [hl], h                                     ; $6b29: $74
	sbc  b                                           ; $6b2a: $98
	ld   hl, sp+$00                                  ; $6b2b: $f8 $00
	add  b                                           ; $6b2d: $80
	ld   hl, sp+$07                                  ; $6b2e: $f8 $07
	nop                                              ; $6b30: $00
	inc  bc                                          ; $6b31: $03
	rst  $38                                         ; $6b32: $ff
	db   $fc                                         ; $6b33: $fc
	nop                                              ; $6b34: $00
	inc  bc                                          ; $6b35: $03
	rst  $38                                         ; $6b36: $ff
	db   $fc                                         ; $6b37: $fc
	add  c                                           ; $6b38: $81
	nop                                              ; $6b39: $00
	dec  b                                           ; $6b3a: $05
	add  h                                           ; $6b3b: $84
	ld   [hl], a                                     ; $6b3c: $77
	inc  b                                           ; $6b3d: $04
	rlca                                             ; $6b3e: $07
	ldh  a, [rP1]                                    ; $6b3f: $f0 $00
	add  b                                           ; $6b41: $80
	ret  nz                                          ; $6b42: $c0

	add  b                                           ; $6b43: $80
	nop                                              ; $6b44: $00
	add  b                                           ; $6b45: $80
	ret  nz                                          ; $6b46: $c0

	add  d                                           ; $6b47: $82
	nop                                              ; $6b48: $00
	inc  bc                                          ; $6b49: $03
	ccf                                              ; $6b4a: $3f
	ld   b, b                                        ; $6b4b: $40
	nop                                              ; $6b4c: $00
	ld   a, a                                        ; $6b4d: $7f
	adc  d                                           ; $6b4e: $8a
	nop                                              ; $6b4f: $00
	inc  b                                           ; $6b50: $04
	pop  af                                          ; $6b51: $f1
	ld   c, $02                                      ; $6b52: $0e $02
	db   $fc                                         ; $6b54: $fc
	ld   bc, $00c9                                   ; $6b55: $01 $c9 $00
	adc  [hl]                                        ; $6b58: $8e
	rst  $38                                         ; $6b59: $ff
	ld   bc, $e2e6                                   ; $6b5a: $01 $e6 $e2
	add  b                                           ; $6b5d: $80
	db   $e3                                         ; $6b5e: $e3
	add  b                                           ; $6b5f: $80
	ldh  [c], a                                      ; $6b60: $e2
	inc  d                                           ; $6b61: $14
	add  $c2                                         ; $6b62: $c6 $c2
	ret  nc                                          ; $6b64: $d0

	ret  z                                           ; $6b65: $c8

	set  1, b                                        ; $6b66: $cb $c8
	ei                                               ; $6b68: $fb
	ldh  [$d0], a                                    ; $6b69: $e0 $d0
	jp   z, Jump_08f_69e1                            ; $6b6b: $ca $e1 $69

	ld   c, d                                        ; $6b6e: $4a
	ld   c, b                                        ; $6b6f: $48
	ld   d, e                                        ; $6b70: $53
	ld   b, b                                        ; $6b71: $40
	sbc  a                                           ; $6b72: $9f
	nop                                              ; $6b73: $00
	db   $fc                                         ; $6b74: $fc
	ld   bc, $80e1                                   ; $6b75: $01 $e1 $80
	add  hl, bc                                      ; $6b78: $09
	add  b                                           ; $6b79: $80
	ld   c, b                                        ; $6b7a: $48
	add  b                                           ; $6b7b: $80
	ld   b, e                                        ; $6b7c: $43
	inc  b                                           ; $6b7d: $04
	nop                                              ; $6b7e: $00
	ld   b, b                                        ; $6b7f: $40
	jr   z, jr_08f_6b82                              ; $6b80: $28 $00

jr_08f_6b82:
	jr   z, jr_08f_6b06                              ; $6b82: $28 $82

	ld   l, b                                        ; $6b84: $68
	ld   bc, $0040                                   ; $6b85: $01 $40 $00
	add  b                                           ; $6b88: $80
	jr   c, jr_08f_6b0b                              ; $6b89: $38 $80

	ret  z                                           ; $6b8b: $c8

	add  b                                           ; $6b8c: $80
	nop                                              ; $6b8d: $00
	add  h                                           ; $6b8e: $84
	ccf                                              ; $6b8f: $3f
	nop                                              ; $6b90: $00
	rst  $30                                         ; $6b91: $f7
	add  l                                           ; $6b92: $85
	nop                                              ; $6b93: $00
	ld   bc, $00f7                                   ; $6b94: $01 $f7 $00
	add  h                                           ; $6b97: $84
	rst  $38                                         ; $6b98: $ff
	nop                                              ; $6b99: $00
	cp   l                                           ; $6b9a: $bd
	add  l                                           ; $6b9b: $85
	nop                                              ; $6b9c: $00
	ld   bc, $01bc                                   ; $6b9d: $01 $bc $01
	add  b                                           ; $6ba0: $80
	nop                                              ; $6ba1: $00
	add  b                                           ; $6ba2: $80
	ret  nz                                          ; $6ba3: $c0

	add  b                                           ; $6ba4: $80
	ldh  a, [rSB]                                    ; $6ba5: $f0 $01
	add  sp, $08                                     ; $6ba7: $e8 $08
	add  b                                           ; $6ba9: $80
	inc  c                                           ; $6baa: $0c
	add  b                                           ; $6bab: $80
	ld   c, $80                                      ; $6bac: $0e $80
	rrca                                             ; $6bae: $0f
	nop                                              ; $6baf: $00
	db   $f4                                         ; $6bb0: $f4
	add  c                                           ; $6bb1: $81
	ld   [hl], h                                     ; $6bb2: $74
	nop                                              ; $6bb3: $00
	ld   h, h                                        ; $6bb4: $64
	adc  c                                           ; $6bb5: $89
	inc  b                                           ; $6bb6: $04
	cp   $00                                         ; $6bb7: $fe $00
	adc  h                                           ; $6bb9: $8c
	rst  $38                                         ; $6bba: $ff
	add  b                                           ; $6bbb: $80
	ld   hl, sp+$02                                  ; $6bbc: $f8 $02
	ret  nc                                          ; $6bbe: $d0

	jp   z, $80da                                    ; $6bbf: $ca $da $80

	ret  c                                           ; $6bc2: $d8

	add  b                                           ; $6bc3: $80
	db   $db                                         ; $6bc4: $db
	nop                                              ; $6bc5: $00
	ret  nz                                          ; $6bc6: $c0

	add  b                                           ; $6bc7: $80
	ld   hl, sp-$80                                  ; $6bc8: $f8 $80
	ld   b, $80                                      ; $6bca: $06 $80
	dec  b                                           ; $6bcc: $05
	add  c                                           ; $6bcd: $81
	nop                                              ; $6bce: $00
	add  b                                           ; $6bcf: $80
	inc  a                                           ; $6bd0: $3c
	ld   [bc], a                                     ; $6bd1: $02
	ret  nz                                          ; $6bd2: $c0

	ccf                                              ; $6bd3: $3f
	rst  $38                                         ; $6bd4: $ff
	add  d                                           ; $6bd5: $82
	nop                                              ; $6bd6: $00
	add  b                                           ; $6bd7: $80
	xor  d                                           ; $6bd8: $aa
	add  b                                           ; $6bd9: $80
	ld   d, l                                        ; $6bda: $55
	add  b                                           ; $6bdb: $80
	xor  d                                           ; $6bdc: $aa
	add  d                                           ; $6bdd: $82
	ld   [$f880], sp                                 ; $6bde: $08 $80 $f8
	add  d                                           ; $6be1: $82
	nop                                              ; $6be2: $00
	add  b                                           ; $6be3: $80
	and  b                                           ; $6be4: $a0
	add  b                                           ; $6be5: $80
	ld   b, b                                        ; $6be6: $40
	add  b                                           ; $6be7: $80
	and  b                                           ; $6be8: $a0
	ld   [bc], a                                     ; $6be9: $02
	inc  b                                           ; $6bea: $04
	ld   [$85fb], sp                                 ; $6beb: $08 $fb $85
	nop                                              ; $6bee: $00
	ld   [bc], a                                     ; $6bef: $02
	rst  $30                                         ; $6bf0: $f7
	ld   [$81ff], sp                                 ; $6bf1: $08 $ff $81
	nop                                              ; $6bf4: $00
	ld   [bc], a                                     ; $6bf5: $02
	rst  $30                                         ; $6bf6: $f7
	ld   b, d                                        ; $6bf7: $42
	rst  $38                                         ; $6bf8: $ff
	add  l                                           ; $6bf9: $85
	nop                                              ; $6bfa: $00
	ld   [bc], a                                     ; $6bfb: $02
	cp   l                                           ; $6bfc: $bd
	ld   b, d                                        ; $6bfd: $42
	rst  $38                                         ; $6bfe: $ff
	add  c                                           ; $6bff: $81
	nop                                              ; $6c00: $00
	ld   [bc], a                                     ; $6c01: $02
	or   d                                           ; $6c02: $b2
	rra                                              ; $6c03: $1f
	rst  $38                                         ; $6c04: $ff
	add  l                                           ; $6c05: $85
	nop                                              ; $6c06: $00
	ld   [bc], a                                     ; $6c07: $02
	rst  $28                                         ; $6c08: $ef
	db   $10                                         ; $6c09: $10
	rst  $38                                         ; $6c0a: $ff
	add  c                                           ; $6c0b: $81
	nop                                              ; $6c0c: $00
	ld   bc, $04eb                                   ; $6c0d: $01 $eb $04
	add  d                                           ; $6c10: $82
	add  h                                           ; $6c11: $84
	add  e                                           ; $6c12: $83
	call nz, Call_08f_4480                           ; $6c13: $c4 $80 $44
	add  c                                           ; $6c16: $81
	call nz, $00bc                                   ; $6c17: $c4 $bc $00
	ld   [bc], a                                     ; $6c1a: $02
	ld   [$0800], sp                                 ; $6c1b: $08 $00 $08
	adc  h                                           ; $6c1e: $8c
	nop                                              ; $6c1f: $00
	add  b                                           ; $6c20: $80
	ld   b, b                                        ; $6c21: $40
	sbc  e                                           ; $6c22: $9b
	nop                                              ; $6c23: $00
	ld   [bc], a                                     ; $6c24: $02
	jr   nz, @+$03                                   ; $6c25: $20 $01

	ld   hl, $008d                                   ; $6c27: $21 $8d $00
	nop                                              ; $6c2a: $00
	nop                                              ; $6c2b: $00
	nop                                              ; $6c2c: $00
	nop                                              ; $6c2d: $00
	nop                                              ; $6c2e: $00
	nop                                              ; $6c2f: $00
	and  [hl]                                        ; $6c30: $a6
	ld   bc, $6003                                   ; $6c31: $01 $03 $60
	ld   [$282f], sp                                 ; $6c34: $08 $2f $28
	add  b                                           ; $6c37: $80
	dec  hl                                          ; $6c38: $2b
	rlca                                             ; $6c39: $07
	sub  a                                           ; $6c3a: $97
	nop                                              ; $6c3b: $00
	rst  $38                                         ; $6c3c: $ff
	rlca                                             ; $6c3d: $07
	sbc  b                                           ; $6c3e: $98
	ld   [hl], a                                     ; $6c3f: $77
	db   $10                                         ; $6c40: $10
	rla                                              ; $6c41: $17
	add  b                                           ; $6c42: $80
	ld   [hl], b                                     ; $6c43: $70
	db   $10                                         ; $6c44: $10
	add  sp, $1f                                     ; $6c45: $e8 $1f

jr_08f_6c47:
	rst  $38                                         ; $6c47: $ff
	rra                                              ; $6c48: $1f
	rst  $38                                         ; $6c49: $ff
	rst  JumpTable                                         ; $6c4a: $df
	ret  nz                                          ; $6c4b: $c0

	nop                                              ; $6c4c: $00
	rst  $38                                         ; $6c4d: $ff
	ldh  [$37], a                                    ; $6c4e: $e0 $37
	ldh  [rAUD4LEN], a                               ; $6c50: $e0 $20
	rst  $20                                         ; $6c52: $e7
	nop                                              ; $6c53: $00
	rlca                                             ; $6c54: $07
	cpl                                              ; $6c55: $2f

jr_08f_6c56:
	add  e                                           ; $6c56: $83
	ld   hl, sp+$04                                  ; $6c57: $f8 $04
	jr   c, jr_08f_6c5b                              ; $6c59: $38 $00

jr_08f_6c5b:
	ret  c                                           ; $6c5b: $d8

	jr   nz, jr_08f_6c56                             ; $6c5c: $20 $f8

	add  b                                           ; $6c5e: $80
	jr   c, @+$05                                    ; $6c5f: $38 $03

	ld   hl, sp+$38                                  ; $6c61: $f8 $38
	ld   hl, sp-$60                                  ; $6c63: $f8 $a0
	add  c                                           ; $6c65: $81
	ldh  [rP1], a                                    ; $6c66: $e0 $00
	add  b                                           ; $6c68: $80
	add  b                                           ; $6c69: $80
	nop                                              ; $6c6a: $00
	ld   bc, $00fc                                   ; $6c6b: $01 $fc $00
	add  h                                           ; $6c6e: $84
	db   $fc                                         ; $6c6f: $fc

jr_08f_6c70:
	ld   bc, $f3f0                                   ; $6c70: $01 $f0 $f3
	add  l                                           ; $6c73: $85

jr_08f_6c74:
	nop                                              ; $6c74: $00
	nop                                              ; $6c75: $00
	rst  $38                                         ; $6c76: $ff
	add  c                                           ; $6c77: $81
	nop                                              ; $6c78: $00
	add  b                                           ; $6c79: $80
	rst  $38                                         ; $6c7a: $ff
	add  b                                           ; $6c7b: $80
	nop                                              ; $6c7c: $00
	nop                                              ; $6c7d: $00
	rst  $38                                         ; $6c7e: $ff
	add  l                                           ; $6c7f: $85
	nop                                              ; $6c80: $00
	nop                                              ; $6c81: $00
	rst  $38                                         ; $6c82: $ff
	add  c                                           ; $6c83: $81
	nop                                              ; $6c84: $00
	add  b                                           ; $6c85: $80
	rst  $38                                         ; $6c86: $ff
	add  b                                           ; $6c87: $80
	nop                                              ; $6c88: $00
	nop                                              ; $6c89: $00
	rst  $38                                         ; $6c8a: $ff
	add  l                                           ; $6c8b: $85
	nop                                              ; $6c8c: $00
	nop                                              ; $6c8d: $00
	rst  $38                                         ; $6c8e: $ff
	add  c                                           ; $6c8f: $81
	nop                                              ; $6c90: $00
	add  b                                           ; $6c91: $80
	rst  $38                                         ; $6c92: $ff
	add  b                                           ; $6c93: $80
	nop                                              ; $6c94: $00
	nop                                              ; $6c95: $00
	rst  $38                                         ; $6c96: $ff
	add  l                                           ; $6c97: $85
	nop                                              ; $6c98: $00
	nop                                              ; $6c99: $00
	rst  $38                                         ; $6c9a: $ff
	add  c                                           ; $6c9b: $81
	nop                                              ; $6c9c: $00
	add  b                                           ; $6c9d: $80
	db   $fc                                         ; $6c9e: $fc
	add  b                                           ; $6c9f: $80
	inc  b                                           ; $6ca0: $04
	nop                                              ; $6ca1: $00
	rst  $38                                         ; $6ca2: $ff
	call $0000                                      ; $6ca3: $cd $00 $00
	ccf                                              ; $6ca6: $3f
	add  d                                           ; $6ca7: $82
	nop                                              ; $6ca8: $00
	add  l                                           ; $6ca9: $85
	ccf                                              ; $6caa: $3f
	ld   bc, $3f00                                   ; $6cab: $01 $00 $3f
	add  b                                           ; $6cae: $80
	nop                                              ; $6caf: $00
	ld   bc, $08c8                                   ; $6cb0: $01 $c8 $08
	add  b                                           ; $6cb3: $80
	nop                                              ; $6cb4: $00
	nop                                              ; $6cb5: $00
	inc  d                                           ; $6cb6: $14
	add  c                                           ; $6cb7: $81
	ld   h, c                                        ; $6cb8: $61
	ld   bc, $0160                                   ; $6cb9: $01 $60 $01
	add  b                                           ; $6cbc: $80
	ld   h, c                                        ; $6cbd: $61
	inc  b                                           ; $6cbe: $04
	ld   h, e                                        ; $6cbf: $63
	ld   h, b                                        ; $6cc0: $60
	ld   l, a                                        ; $6cc1: $6f
	ld   h, b                                        ; $6cc2: $60
	jr   jr_08f_6c47                                 ; $6cc3: $18 $82

	nop                                              ; $6cc5: $00
	add  b                                           ; $6cc6: $80
	rst  $38                                         ; $6cc7: $ff
	ld   bc, $00e0                                   ; $6cc8: $01 $e0 $00
	add  c                                           ; $6ccb: $81
	push hl                                          ; $6ccc: $e5
	ld   [bc], a                                     ; $6ccd: $02
	push af                                          ; $6cce: $f5
	dec  b                                           ; $6ccf: $05
	push af                                          ; $6cd0: $f5
	add  b                                           ; $6cd1: $80
	dec  b                                           ; $6cd2: $05
	inc  b                                           ; $6cd3: $04
	nop                                              ; $6cd4: $00
	rst  $38                                         ; $6cd5: $ff
	nop                                              ; $6cd6: $00
	rst  $38                                         ; $6cd7: $ff
	nop                                              ; $6cd8: $00
	add  b                                           ; $6cd9: $80
	ld   a, a                                        ; $6cda: $7f
	nop                                              ; $6cdb: $00
	ld   b, h                                        ; $6cdc: $44
	add  l                                           ; $6cdd: $85
	ld   a, e                                        ; $6cde: $7b
	dec  b                                           ; $6cdf: $05
	ccf                                              ; $6ce0: $3f
	nop                                              ; $6ce1: $00
	rst  $38                                         ; $6ce2: $ff
	nop                                              ; $6ce3: $00
	rst  $38                                         ; $6ce4: $ff
	nop                                              ; $6ce5: $00
	add  b                                           ; $6ce6: $80
	cp   $00                                         ; $6ce7: $fe $00
	jr   nz, jr_08f_6c70                             ; $6ce9: $20 $85

	sbc  $02                                         ; $6ceb: $de $02
	add  $78                                         ; $6ced: $c6 $78
	ld   hl, sp-$7d                                  ; $6cef: $f8 $83
	jr   c, jr_08f_6c74                              ; $6cf1: $38 $81

	nop                                              ; $6cf3: $00
	ld   [bc], a                                     ; $6cf4: $02
	ld   a, h                                        ; $6cf5: $7c
	db   $fc                                         ; $6cf6: $fc
	nop                                              ; $6cf7: $00
	add  b                                           ; $6cf8: $80
	ld   a, [hl]                                     ; $6cf9: $7e
	ld   bc, $e0f0                                   ; $6cfa: $01 $f0 $e0
	add  b                                           ; $6cfd: $80
	inc  b                                           ; $6cfe: $04
	ld   [bc], a                                     ; $6cff: $02
	add  h                                           ; $6d00: $84
	ld   h, h                                        ; $6d01: $64
	inc  b                                           ; $6d02: $04
	add  c                                           ; $6d03: $81
	db   $e4                                         ; $6d04: $e4
	add  b                                           ; $6d05: $80
	inc  h                                           ; $6d06: $24
	nop                                              ; $6d07: $00
	nop                                              ; $6d08: $00
	add  b                                           ; $6d09: $80
	db   $e4                                         ; $6d0a: $e4
	ld   bc, $1000                                   ; $6d0b: $01 $00 $10
	add  d                                           ; $6d0e: $82
	nop                                              ; $6d0f: $00
	ld   bc, $170f                                   ; $6d10: $01 $0f $17
	add  c                                           ; $6d13: $81
	daa                                              ; $6d14: $27
	ld   bc, $ffc0                                   ; $6d15: $01 $c0 $ff
	add  b                                           ; $6d18: $80
	sub  d                                           ; $6d19: $92
	ld   [bc], a                                     ; $6d1a: $02
	db   $10                                         ; $6d1b: $10
	or   l                                           ; $6d1c: $b5
	and  c                                           ; $6d1d: $a1
	add  e                                           ; $6d1e: $83
	ld   b, $0a                                      ; $6d1f: $06 $0a
	add  hl, bc                                      ; $6d21: $09
	call nz, $aa3a                                   ; $6d22: $c4 $3a $aa
	and  d                                           ; $6d25: $a2
	ret  nz                                          ; $6d26: $c0

	jp   Jump_08f_66a1                               ; $6d27: $c3 $a1 $66


	ld   b, [hl]                                     ; $6d2a: $46
	ld   a, a                                        ; $6d2b: $7f
	add  b                                           ; $6d2c: $80
	nop                                              ; $6d2d: $00
	dec  c                                           ; $6d2e: $0d
	ld   b, c                                        ; $6d2f: $41
	ld   b, b                                        ; $6d30: $40
	add  b                                           ; $6d31: $80
	adc  e                                           ; $6d32: $8b
	ld   hl, $00b4                                   ; $6d33: $21 $b4 $00
	sbc  b                                           ; $6d36: $98
	nop                                              ; $6d37: $00
	cp   b                                           ; $6d38: $b8
	nop                                              ; $6d39: $00
	ld   [$db8a], a                                  ; $6d3a: $ea $8a $db
	add  b                                           ; $6d3d: $80
	inc  b                                           ; $6d3e: $04
	add  c                                           ; $6d3f: $81
	ld   d, h                                        ; $6d40: $54
	ld   a, [bc]                                     ; $6d41: $0a
	call nc, $8454                                   ; $6d42: $d4 $54 $84
	nop                                              ; $6d45: $00
	ld   hl, sp+$04                                  ; $6d46: $f8 $04
	ld   e, h                                        ; $6d48: $5c
	inc  b                                           ; $6d49: $04
	adc  h                                           ; $6d4a: $8c
	add  h                                           ; $6d4b: $84
	rlca                                             ; $6d4c: $07
	call $8100                                       ; $6d4d: $cd $00 $81
	ccf                                              ; $6d50: $3f
	nop                                              ; $6d51: $00
	nop                                              ; $6d52: $00
	add  b                                           ; $6d53: $80
	rra                                              ; $6d54: $1f
	add  b                                           ; $6d55: $80
	nop                                              ; $6d56: $00
	nop                                              ; $6d57: $00
	ccf                                              ; $6d58: $3f
	add  l                                           ; $6d59: $85
	nop                                              ; $6d5a: $00
	inc  bc                                          ; $6d5b: $03
	db   $10                                         ; $6d5c: $10
	ldh  [rIF], a                                    ; $6d5d: $e0 $0f
	nop                                              ; $6d5f: $00
	add  b                                           ; $6d60: $80
	rst  $38                                         ; $6d61: $ff
	add  b                                           ; $6d62: $80
	nop                                              ; $6d63: $00
	nop                                              ; $6d64: $00
	rst  $38                                         ; $6d65: $ff
	add  l                                           ; $6d66: $85
	nop                                              ; $6d67: $00
	dec  b                                           ; $6d68: $05
	rlca                                             ; $6d69: $07
	dec  e                                           ; $6d6a: $1d
	db   $fd                                         ; $6d6b: $fd
	dec  e                                           ; $6d6c: $1d
	push hl                                          ; $6d6d: $e5
	ldh  [$80], a                                    ; $6d6e: $e0 $80
	nop                                              ; $6d70: $00
	ld   bc, $00e0                                   ; $6d71: $01 $e0 $00
	add  b                                           ; $6d74: $80
	rrca                                             ; $6d75: $0f
	add  b                                           ; $6d76: $80
	nop                                              ; $6d77: $00
	inc  b                                           ; $6d78: $04
	rra                                              ; $6d79: $1f
	nop                                              ; $6d7a: $00
	ret  nz                                          ; $6d7b: $c0

	ld   b, b                                        ; $6d7c: $40
	dec  sp                                          ; $6d7d: $3b
	adc  e                                           ; $6d7e: $8b
	ld   a, e                                        ; $6d7f: $7b
	ld   bc, $00c1                                   ; $6d80: $01 $c1 $00
	adc  h                                           ; $6d83: $8c
	sbc  $02                                         ; $6d84: $de $02
	adc  [hl]                                        ; $6d86: $8e
	halt                                             ; $6d87: $76
	ld   [bc], a                                     ; $6d88: $02
	add  b                                           ; $6d89: $80
	ld   [$1202], a                                  ; $6d8a: $ea $02 $12
	ld   [bc], a                                     ; $6d8d: $02
	jp   nz, $0280                                   ; $6d8e: $c2 $80 $02

	add  b                                           ; $6d91: $80
	ld   b, $03                                      ; $6d92: $06 $03
	ld   a, [de]                                     ; $6d94: $1a
	nop                                              ; $6d95: $00
	call c, $8200                                    ; $6d96: $dc $00 $82
	db   $e4                                         ; $6d99: $e4
	dec  b                                           ; $6d9a: $05
	db   $ec                                         ; $6d9b: $ec
	ret  nz                                          ; $6d9c: $c0

	db   $fc                                         ; $6d9d: $fc
	ret  nz                                          ; $6d9e: $c0

	db   $e4                                         ; $6d9f: $e4
	db   $f4                                         ; $6da0: $f4
	add  h                                           ; $6da1: $84
	db   $e4                                         ; $6da2: $e4
	dec  h                                           ; $6da3: $25
	nop                                              ; $6da4: $00
	dec  [hl]                                        ; $6da5: $35
	ld   l, $53                                      ; $6da6: $2e $53
	ld   a, [de]                                     ; $6da8: $1a
	dec  d                                           ; $6da9: $15
	jr   jr_08f_6dfc                                 ; $6daa: $18 $50

	ld   e, l                                        ; $6dac: $5d
	dec  [hl]                                        ; $6dad: $35
	ld   d, a                                        ; $6dae: $57
	jr   jr_08f_6e19                                 ; $6daf: $18 $68

	nop                                              ; $6db1: $00
	xor  a                                           ; $6db2: $af
	ld   e, a                                        ; $6db3: $5f
	and  $39                                         ; $6db4: $e6 $39
	or   $3e                                         ; $6db6: $f6 $3e
	cp   c                                           ; $6db8: $b9
	add  hl, sp                                      ; $6db9: $39
	cp   c                                           ; $6dba: $b9
	add  hl, sp                                      ; $6dbb: $39
	cp   d                                           ; $6dbc: $ba
	ld   a, [hl-]                                    ; $6dbd: $3a
	cp   l                                           ; $6dbe: $bd
	dec  a                                           ; $6dbf: $3d
	add  d                                           ; $6dc0: $82
	nop                                              ; $6dc1: $00
	jp   z, $e8ff                                    ; $6dc2: $ca $ff $e8

	db   $10                                         ; $6dc5: $10
	inc  bc                                          ; $6dc6: $03
	nop                                              ; $6dc7: $00
	ld   c, $0a                                      ; $6dc8: $0e $0a
	add  b                                           ; $6dca: $80
	nop                                              ; $6dcb: $00
	add  b                                           ; $6dcc: $80
	ld   d, b                                        ; $6dcd: $50
	inc  de                                          ; $6dce: $13
	xor  c                                           ; $6dcf: $a9
	xor  b                                           ; $6dd0: $a8
	ld   b, $00                                      ; $6dd1: $06 $00
	rlca                                             ; $6dd3: $07
	xor  a                                           ; $6dd4: $af
	and  h                                           ; $6dd5: $a4
	nop                                              ; $6dd6: $00
	sbc  b                                           ; $6dd7: $98
	add  h                                           ; $6dd8: $84
	ld   b, h                                        ; $6dd9: $44
	inc  b                                           ; $6dda: $04
	ld   e, h                                        ; $6ddb: $5c
	inc  b                                           ; $6ddc: $04
	sub  h                                           ; $6ddd: $94
	inc  b                                           ; $6dde: $04
	inc  h                                           ; $6ddf: $24
	inc  b                                           ; $6de0: $04
	ld   b, h                                        ; $6de1: $44
	inc  b                                           ; $6de2: $04
	add  b                                           ; $6de3: $80
	db   $fc                                         ; $6de4: $fc

Jump_08f_6de5:
	add  e                                           ; $6de5: $83
	nop                                              ; $6de6: $00
	add  hl, bc                                      ; $6de7: $09

jr_08f_6de8:
	rst  $38                                         ; $6de8: $ff
	ret  nz                                          ; $6de9: $c0

	ccf                                              ; $6dea: $3f
	nop                                              ; $6deb: $00
	ccf                                              ; $6dec: $3f
	jr   nc, jr_08f_6e2e                             ; $6ded: $30 $3f

	ld   c, a                                        ; $6def: $4f
	nop                                              ; $6df0: $00
	ld   a, a                                        ; $6df1: $7f
	add  e                                           ; $6df2: $83
	nop                                              ; $6df3: $00
	ld   a, [bc]                                     ; $6df4: $0a
	dec  bc                                          ; $6df5: $0b
	rst  $38                                         ; $6df6: $ff
	rrca                                             ; $6df7: $0f
	rst  $38                                         ; $6df8: $ff
	rrca                                             ; $6df9: $0f
	rst  $38                                         ; $6dfa: $ff
	ccf                                              ; $6dfb: $3f

jr_08f_6dfc:
	rst  $38                                         ; $6dfc: $ff
	rlc  b                                           ; $6dfd: $cb $00
	rst  $38                                         ; $6dff: $ff
	add  e                                           ; $6e00: $83
	nop                                              ; $6e01: $00
	nop                                              ; $6e02: $00
	and  b                                           ; $6e03: $a0
	add  c                                           ; $6e04: $81
	rst  $38                                         ; $6e05: $ff
	ld   b, $df                                      ; $6e06: $06 $df
	ret  nz                                          ; $6e08: $c0

	ldh  [rIE], a                                    ; $6e09: $e0 $ff
	and  b                                           ; $6e0b: $a0
	nop                                              ; $6e0c: $00
	rst  $38                                         ; $6e0d: $ff
	add  e                                           ; $6e0e: $83
	nop                                              ; $6e0f: $00
	inc  b                                           ; $6e10: $04
	ld   h, b                                        ; $6e11: $60
	rst  $38                                         ; $6e12: $ff
	ldh  [rIE], a                                    ; $6e13: $e0 $ff
	or   $80                                         ; $6e15: $f6 $80
	ld   a, a                                        ; $6e17: $7f
	inc  bc                                          ; $6e18: $03

jr_08f_6e19:
	rst  $38                                         ; $6e19: $ff
	halt                                             ; $6e1a: $76
	nop                                              ; $6e1b: $00
	rst  $38                                         ; $6e1c: $ff
	add  e                                           ; $6e1d: $83
	nop                                              ; $6e1e: $00
	ld   bc, $ff80                                   ; $6e1f: $01 $80 $ff
	add  b                                           ; $6e22: $80
	cp   $01                                         ; $6e23: $fe $01
	add  b                                           ; $6e25: $80
	cp   $80                                         ; $6e26: $fe $80
	add  b                                           ; $6e28: $80
	ld   [bc], a                                     ; $6e29: $02
	cp   $00                                         ; $6e2a: $fe $00
	rst  $38                                         ; $6e2c: $ff
	add  e                                           ; $6e2d: $83

jr_08f_6e2e:
	nop                                              ; $6e2e: $00
	ld   bc, $9f7c                                   ; $6e2f: $01 $7c $9f
	add  b                                           ; $6e32: $80
	rra                                              ; $6e33: $1f
	add  b                                           ; $6e34: $80
	dec  de                                          ; $6e35: $1b
	inc  b                                           ; $6e36: $04
	db   $e3                                         ; $6e37: $e3
	inc  bc                                          ; $6e38: $03
	db   $fc                                         ; $6e39: $fc
	nop                                              ; $6e3a: $00
	rst  $38                                         ; $6e3b: $ff
	add  h                                           ; $6e3c: $84
	nop                                              ; $6e3d: $00
	add  c                                           ; $6e3e: $81
	rst  $38                                         ; $6e3f: $ff
	ld   b, $30                                      ; $6e40: $06 $30
	rra                                              ; $6e42: $1f
	ret  nc                                          ; $6e43: $d0

	ld   [de], a                                     ; $6e44: $12
	db   $ed                                         ; $6e45: $ed
	nop                                              ; $6e46: $00
	rst  $38                                         ; $6e47: $ff
	add  h                                           ; $6e48: $84
	nop                                              ; $6e49: $00
	add  b                                           ; $6e4a: $80
	rst  $38                                         ; $6e4b: $ff
	dec  bc                                          ; $6e4c: $0b
	ldh  a, [rAUD1SWEEP]                             ; $6e4d: $f0 $10
	ldh  a, [c]                                      ; $6e4f: $f2
	ld   [de], a                                     ; $6e50: $12
	sub  d                                           ; $6e51: $92
	ld   l, d                                        ; $6e52: $6a
	ld   [bc], a                                     ; $6e53: $02
	ld   a, [$3d02]                                  ; $6e54: $fa $02 $3d
	ld   b, b                                        ; $6e57: $40
	dec  sp                                          ; $6e58: $3b
	adc  e                                           ; $6e59: $8b
	ld   a, e                                        ; $6e5a: $7b
	ld   bc, $00c1                                   ; $6e5b: $01 $c1 $00
	adc  h                                           ; $6e5e: $8c
	sbc  $03                                         ; $6e5f: $de $03
	cp   $e0                                         ; $6e61: $fe $e0
	ld   l, b                                        ; $6e63: $68
	adc  b                                           ; $6e64: $88
	add  d                                           ; $6e65: $82
	jr   jr_08f_6de8                                 ; $6e66: $18 $80

	ld   a, b                                        ; $6e68: $78
	ld   [bc], a                                     ; $6e69: $02
	ld   [hl], b                                     ; $6e6a: $70
	halt                                             ; $6e6b: $76
	ld   [bc], a                                     ; $6e6c: $02
	add  b                                           ; $6e6d: $80
	ld   [$1201], a                                  ; $6e6e: $ea $01 $12
	ldh  [c], a                                      ; $6e71: $e2
	add  l                                           ; $6e72: $85
	db   $e4                                         ; $6e73: $e4
	rlca                                             ; $6e74: $07
	inc  b                                           ; $6e75: $04
	db   $e4                                         ; $6e76: $e4
	call z, Call_08f_7c00                            ; $6e77: $cc $00 $7c
	nop                                              ; $6e7a: $00
	ld   e, h                                        ; $6e7b: $5c
	inc  e                                           ; $6e7c: $1c
	add  d                                           ; $6e7d: $82
	nop                                              ; $6e7e: $00
	ld   bc, $48b7                                   ; $6e7f: $01 $b7 $48
	add  b                                           ; $6e82: $80
	ld   e, h                                        ; $6e83: $5c
	add  b                                           ; $6e84: $80
	inc  hl                                          ; $6e85: $23
	add  b                                           ; $6e86: $80
	ld   hl, $5680                                   ; $6e87: $21 $80 $56
	add  b                                           ; $6e8a: $80
	adc  d                                           ; $6e8b: $8a
	nop                                              ; $6e8c: $00
	rst  $38                                         ; $6e8d: $ff
	add  c                                           ; $6e8e: $81
	nop                                              ; $6e8f: $00
	ld   bc, $639d                                   ; $6e90: $01 $9d $63
	add  b                                           ; $6e93: $80
	db   $d3                                         ; $6e94: $d3
	add  b                                           ; $6e95: $80
	ld   d, l                                        ; $6e96: $55
	add  b                                           ; $6e97: $80
	ld   c, c                                        ; $6e98: $49
	add  b                                           ; $6e99: $80
	ret                                              ; $6e9a: $c9


	ld   [bc], a                                     ; $6e9b: $02
	ld   [hl], h                                     ; $6e9c: $74
	ld   [hl], l                                     ; $6e9d: $75
	rst  $38                                         ; $6e9e: $ff
	add  c                                           ; $6e9f: $81
	nop                                              ; $6ea0: $00
	nop                                              ; $6ea1: $00
	inc  bc                                          ; $6ea2: $03
	add  b                                           ; $6ea3: $80
	ld   [hl-], a                                    ; $6ea4: $32
	add  b                                           ; $6ea5: $80
	ld   [bc], a                                     ; $6ea6: $02
	ld   bc, $01f8                                   ; $6ea7: $01 $f8 $01
	add  c                                           ; $6eaa: $81
	ld   sp, hl                                      ; $6eab: $f9
	ld   [bc], a                                     ; $6eac: $02
	pop  hl                                          ; $6ead: $e1
	ld   bc, $81e3                                   ; $6eae: $01 $e3 $81
	nop                                              ; $6eb1: $00
	nop                                              ; $6eb2: $00
	ld   l, e                                        ; $6eb3: $6b
	add  c                                           ; $6eb4: $81
	ld   c, e                                        ; $6eb5: $4b
	inc  bc                                          ; $6eb6: $03
	rst  $10                                         ; $6eb7: $d7
	rlca                                             ; $6eb8: $07
	ld   [hl], b                                     ; $6eb9: $70
	ldh  a, [$80]                                    ; $6eba: $f0 $80
	rst  $30                                         ; $6ebc: $f7
	add  b                                           ; $6ebd: $80
	ldh  a, [$03]                                    ; $6ebe: $f0 $03
	adc  a                                           ; $6ec0: $8f
	ret  nz                                          ; $6ec1: $c0

	rst  $38                                         ; $6ec2: $ff
	ret  nz                                          ; $6ec3: $c0

	add  b                                           ; $6ec4: $80
	ccf                                              ; $6ec5: $3f
	add  b                                           ; $6ec6: $80
	nop                                              ; $6ec7: $00
	ld   bc, $003f                                   ; $6ec8: $01 $3f $00
	add  b                                           ; $6ecb: $80
	add  b                                           ; $6ecc: $80
	add  b                                           ; $6ecd: $80
	nop                                              ; $6ece: $00
	dec  b                                           ; $6ecf: $05
	ret  nz                                          ; $6ed0: $c0

	nop                                              ; $6ed1: $00
	stop                                             ; $6ed2: $10 $00
	rst  $28                                         ; $6ed4: $ef
	nop                                              ; $6ed5: $00
	add  b                                           ; $6ed6: $80
	rst  $28                                         ; $6ed7: $ef
	add  b                                           ; $6ed8: $80
	jr   nz, jr_08f_6edd                             ; $6ed9: $20 $02

	rst  $28                                         ; $6edb: $ef
	nop                                              ; $6edc: $00

jr_08f_6edd:
	db   $10                                         ; $6edd: $10
	add  e                                           ; $6ede: $83
	nop                                              ; $6edf: $00
	inc  bc                                          ; $6ee0: $03
	ld   bc, $fe00                                   ; $6ee1: $01 $00 $fe
	nop                                              ; $6ee4: $00
	add  b                                           ; $6ee5: $80
	cp   $80                                         ; $6ee6: $fe $80
	nop                                              ; $6ee8: $00
	ld   [bc], a                                     ; $6ee9: $02
	cp   $00                                         ; $6eea: $fe $00
	ld   bc, $0083                                   ; $6eec: $01 $83 $00
	inc  bc                                          ; $6eef: $03
	ret  nz                                          ; $6ef0: $c0

	nop                                              ; $6ef1: $00
	ccf                                              ; $6ef2: $3f
	nop                                              ; $6ef3: $00
	add  b                                           ; $6ef4: $80
	ccf                                              ; $6ef5: $3f
	add  b                                           ; $6ef6: $80
	nop                                              ; $6ef7: $00
	ld   [bc], a                                     ; $6ef8: $02
	ccf                                              ; $6ef9: $3f
	nop                                              ; $6efa: $00
	ret  nz                                          ; $6efb: $c0

	add  e                                           ; $6efc: $83
	nop                                              ; $6efd: $00
	inc  bc                                          ; $6efe: $03
	ld   bc, $fe00                                   ; $6eff: $01 $00 $fe
	nop                                              ; $6f02: $00
	add  b                                           ; $6f03: $80
	cp   $80                                         ; $6f04: $fe $80
	nop                                              ; $6f06: $00
	ld   [bc], a                                     ; $6f07: $02
	cp   $00                                         ; $6f08: $fe $00
	ld   bc, $0084                                   ; $6f0a: $01 $84 $00
	add  c                                           ; $6f0d: $81
	rst  $38                                         ; $6f0e: $ff
	inc  b                                           ; $6f0f: $04
	db   $fc                                         ; $6f10: $fc
	rst  $38                                         ; $6f11: $ff
	inc  bc                                          ; $6f12: $03
	nop                                              ; $6f13: $00
	rst  $38                                         ; $6f14: $ff
	add  [hl]                                        ; $6f15: $86
	nop                                              ; $6f16: $00
	add  c                                           ; $6f17: $81
	rst  $38                                         ; $6f18: $ff
	nop                                              ; $6f19: $00
	nop                                              ; $6f1a: $00
	add  b                                           ; $6f1b: $80
	rst  $38                                         ; $6f1c: $ff
	ld   bc, $ff00                                   ; $6f1d: $01 $00 $ff
	add  l                                           ; $6f20: $85
	nop                                              ; $6f21: $00
	nop                                              ; $6f22: $00
	inc  bc                                          ; $6f23: $03
	add  c                                           ; $6f24: $81
	cp   $00                                         ; $6f25: $fe $00
	ld   [bc], a                                     ; $6f27: $02
	add  b                                           ; $6f28: $80
	ldh  a, [rSC]                                    ; $6f29: $f0 $02
	nop                                              ; $6f2b: $00
	ldh  a, [rP1]                                    ; $6f2c: $f0 $00
	add  b                                           ; $6f2e: $80
	rlca                                             ; $6f2f: $07
	add  b                                           ; $6f30: $80
	nop                                              ; $6f31: $00
	inc  b                                           ; $6f32: $04
	rrca                                             ; $6f33: $0f
	nop                                              ; $6f34: $00
	ret  nz                                          ; $6f35: $c0

	ld   b, b                                        ; $6f36: $40
	dec  sp                                          ; $6f37: $3b
	adc  e                                           ; $6f38: $8b
	ld   a, e                                        ; $6f39: $7b
	ld   bc, $00c1                                   ; $6f3a: $01 $c1 $00
	adc  h                                           ; $6f3d: $8c
	sbc  $01                                         ; $6f3e: $de $01
	ld   [$80c2], a                                  ; $6f40: $ea $c2 $80
	ld   [bc], a                                     ; $6f43: $02
	add  b                                           ; $6f44: $80
	ld   b, $07                                      ; $6f45: $06 $07
	ld   a, [de]                                     ; $6f47: $1a
	nop                                              ; $6f48: $00
	call c, $1000                                    ; $6f49: $dc $00 $10
	ldh  [rBCPS], a                                  ; $6f4c: $e0 $68
	adc  b                                           ; $6f4e: $88
	add  b                                           ; $6f4f: $80
	jr   jr_08f_6f55                                 ; $6f50: $18 $03

	ld   a, h                                        ; $6f52: $7c
	ld   b, b                                        ; $6f53: $40
	ld   a, h                                        ; $6f54: $7c

jr_08f_6f55:
	nop                                              ; $6f55: $00
	add  b                                           ; $6f56: $80
	inc  d                                           ; $6f57: $14
	ld   bc, $b4e4                                   ; $6f58: $01 $e4 $b4
	add  d                                           ; $6f5b: $82
	db   $e4                                         ; $6f5c: $e4
	add  b                                           ; $6f5d: $80
	add  h                                           ; $6f5e: $84
	add  b                                           ; $6f5f: $80
	db   $e4                                         ; $6f60: $e4
	ld   bc, $917e                                   ; $6f61: $01 $7e $91
	add  b                                           ; $6f64: $80
	rst  $38                                         ; $6f65: $ff
	add  d                                           ; $6f66: $82
	adc  b                                           ; $6f67: $88
	add  b                                           ; $6f68: $80
	rst  $38                                         ; $6f69: $ff
	add  d                                           ; $6f6a: $82
	adc  b                                           ; $6f6b: $88
	inc  bc                                          ; $6f6c: $03
	rst  $38                                         ; $6f6d: $ff
	nop                                              ; $6f6e: $00
	cp   d                                           ; $6f6f: $ba
	ld   b, l                                        ; $6f70: $45
	add  b                                           ; $6f71: $80
	rst  $38                                         ; $6f72: $ff
	add  d                                           ; $6f73: $82
	ld   b, c                                        ; $6f74: $41
	add  b                                           ; $6f75: $80
	rst  $38                                         ; $6f76: $ff
	add  d                                           ; $6f77: $82
	ld   b, c                                        ; $6f78: $41
	inc  bc                                          ; $6f79: $03
	rst  $10                                         ; $6f7a: $d7
	nop                                              ; $6f7b: $00
	jp   z, $8001                                    ; $6f7c: $ca $01 $80

	pop  hl                                          ; $6f7f: $e1
	nop                                              ; $6f80: $00
	ld   sp, $1181                                   ; $6f81: $31 $81 $11
	ld   [bc], a                                     ; $6f84: $02

jr_08f_6f85:
	db   $d3                                         ; $6f85: $d3
	ret  nc                                          ; $6f86: $d0

	cpl                                              ; $6f87: $2f
	add  c                                           ; $6f88: $81
	rrca                                             ; $6f89: $0f
	dec  bc                                          ; $6f8a: $0b
	rst  $28                                         ; $6f8b: $ef
	rrca                                             ; $6f8c: $0f
	add  h                                           ; $6f8d: $84
	db   $f4                                         ; $6f8e: $f4
	jr   nc, jr_08f_6f85                             ; $6f8f: $30 $f4

	ldh  a, [$f4]                                    ; $6f91: $f0 $f4
	sub  h                                           ; $6f93: $94
	db   $f4                                         ; $6f94: $f4
	ret  nc                                          ; $6f95: $d0

	nop                                              ; $6f96: $00
	add  b                                           ; $6f97: $80
	ldh  a, [$80]                                    ; $6f98: $f0 $80
	ldh  [$80], a                                    ; $6f9a: $e0 $80
	ret  nz                                          ; $6f9c: $c0

	add  e                                           ; $6f9d: $83
	nop                                              ; $6f9e: $00
	add  b                                           ; $6f9f: $80
	rst  $38                                         ; $6fa0: $ff
	add  b                                           ; $6fa1: $80
	rra                                              ; $6fa2: $1f
	rlca                                             ; $6fa3: $07
	sbc  a                                           ; $6fa4: $9f
	sbc  e                                           ; $6fa5: $9b
	sbc  c                                           ; $6fa6: $99
	and  b                                           ; $6fa7: $a0
	add  b                                           ; $6fa8: $80
	cp   c                                           ; $6fa9: $b9
	add  b                                           ; $6faa: $80
	add  h                                           ; $6fab: $84
	add  d                                           ; $6fac: $82
	nop                                              ; $6fad: $00
	inc  bc                                          ; $6fae: $03
	rst  $38                                         ; $6faf: $ff
	ldh  [rIE], a                                    ; $6fb0: $e0 $ff
	push af                                          ; $6fb2: $f5
	add  c                                           ; $6fb3: $81
	rst  $38                                         ; $6fb4: $ff
	ld   [bc], a                                     ; $6fb5: $02
	dec  d                                           ; $6fb6: $15
	nop                                              ; $6fb7: $00
	rst  $38                                         ; $6fb8: $ff
	add  e                                           ; $6fb9: $83
	nop                                              ; $6fba: $00
	nop                                              ; $6fbb: $00

jr_08f_6fbc:
	jr   @-$7b                                       ; $6fbc: $18 $83

	rst  $38                                         ; $6fbe: $ff
	inc  b                                           ; $6fbf: $04
	db   $e4                                         ; $6fc0: $e4
	jp   $003f                                       ; $6fc1: $c3 $3f $00


	rst  $38                                         ; $6fc4: $ff
	add  e                                           ; $6fc5: $83
	nop                                              ; $6fc6: $00
	nop                                              ; $6fc7: $00
	add  b                                           ; $6fc8: $80
	add  e                                           ; $6fc9: $83
	rst  $38                                         ; $6fca: $ff
	ld   b, $78                                      ; $6fcb: $06 $78
	rlca                                             ; $6fcd: $07
	ret  nz                                          ; $6fce: $c0

	rra                                              ; $6fcf: $1f
	cp   a                                           ; $6fd0: $bf
	rrca                                             ; $6fd1: $0f
	ld   l, a                                        ; $6fd2: $6f
	cp   l                                           ; $6fd3: $bd
	nop                                              ; $6fd4: $00
	ld   [bc], a                                     ; $6fd5: $02
	ccf                                              ; $6fd6: $3f
	ld   b, b                                        ; $6fd7: $40
	dec  sp                                          ; $6fd8: $3b
	adc  e                                           ; $6fd9: $8b
	ld   a, e                                        ; $6fda: $7b
	ld   bc, $00c1                                   ; $6fdb: $01 $c1 $00
	adc  h                                           ; $6fde: $8c
	sbc  $01                                         ; $6fdf: $de $01
	and  $18                                         ; $6fe1: $e6 $18
	add  b                                           ; $6fe3: $80
	ld   a, b                                        ; $6fe4: $78
	ld   [bc], a                                     ; $6fe5: $02
	ld   [hl], b                                     ; $6fe6: $70
	halt                                             ; $6fe7: $76
	ld   [bc], a                                     ; $6fe8: $02

jr_08f_6fe9:
	add  b                                           ; $6fe9: $80
	ld   [$1202], a                                  ; $6fea: $ea $02 $12
	ld   [bc], a                                     ; $6fed: $02
	jp   nz, $0280                                   ; $6fee: $c2 $80 $02

	add  b                                           ; $6ff1: $80
	ld   b, $07                                      ; $6ff2: $06 $07
	jp   nz, $cce4                                   ; $6ff4: $c2 $e4 $cc

	nop                                              ; $6ff7: $00
	db   $fc                                         ; $6ff8: $fc
	ret  nz                                          ; $6ff9: $c0

	db   $e4                                         ; $6ffa: $e4
	db   $f4                                         ; $6ffb: $f4
	add  h                                           ; $6ffc: $84
	db   $e4                                         ; $6ffd: $e4
	ld   [bc], a                                     ; $6ffe: $02
	inc  b                                           ; $6fff: $04
	db   $e4                                         ; $7000: $e4
	ld   [hl], h                                     ; $7001: $74
	add  c                                           ; $7002: $81
	db   $eb                                         ; $7003: $eb
	add  b                                           ; $7004: $80
	ldh  [$80], a                                    ; $7005: $e0 $80
	adc  e                                           ; $7007: $8b
	add  b                                           ; $7008: $80
	xor  e                                           ; $7009: $ab
	inc  bc                                          ; $700a: $03
	jr   nz, jr_08f_6fbc                             ; $700b: $20 $af

	adc  a                                           ; $700d: $8f
	add  b                                           ; $700e: $80
	add  b                                           ; $700f: $80
	rst  $20                                         ; $7010: $e7
	nop                                              ; $7011: $00
	rst  ToBoot                                         ; $7012: $c7
	add  c                                           ; $7013: $81
	jp   $2b01                                       ; $7014: $c3 $01 $2b


	inc  bc                                          ; $7017: $03
	add  c                                           ; $7018: $81
	rst  $38                                         ; $7019: $ff
	inc  b                                           ; $701a: $04
	rst  ToBoot                                         ; $701b: $c7
	rlca                                             ; $701c: $07
	call nz, $3cff                                   ; $701d: $c4 $ff $3c
	add  b                                           ; $7020: $80
	rst  $10                                         ; $7021: $d7
	nop                                              ; $7022: $00
	call nc, $ef81                                   ; $7023: $d4 $81 $ef
	add  b                                           ; $7026: $80
	xor  $80                                         ; $7027: $ee $80
	db   $ec                                         ; $7029: $ec
	add  b                                           ; $702a: $80
	add  sp, $07                                     ; $702b: $e8 $07
	ret  nz                                          ; $702d: $c0

	nop                                              ; $702e: $00
	ret  nz                                          ; $702f: $c0

	jr   c, jr_08f_7072                              ; $7030: $38 $40

	ld   a, b                                        ; $7032: $78
	ld   b, h                                        ; $7033: $44
	add  h                                           ; $7034: $84
	add  b                                           ; $7035: $80
	inc  c                                           ; $7036: $0c
	add  b                                           ; $7037: $80
	inc  e                                           ; $7038: $1c
	add  b                                           ; $7039: $80
	inc  a                                           ; $703a: $3c
	inc  c                                           ; $703b: $0c
	call c, Call_08f_5c3c                            ; $703c: $dc $3c $5c
	jr   nz, jr_08f_707d                             ; $703f: $20 $3c

	nop                                              ; $7041: $00
	inc  a                                           ; $7042: $3c
	nop                                              ; $7043: $00
	jp   hl                                          ; $7044: $e9


	pop  af                                          ; $7045: $f1
	ld   sp, hl                                      ; $7046: $f9
	db   $fd                                         ; $7047: $fd
	add  b                                           ; $7048: $80
	add  b                                           ; $7049: $80
	rra                                              ; $704a: $1f
	ld   [bc], a                                     ; $704b: $02
	nop                                              ; $704c: $00
	rra                                              ; $704d: $1f
	nop                                              ; $704e: $00
	add  b                                           ; $704f: $80
	ret  nz                                          ; $7050: $c0

	add  b                                           ; $7051: $80
	nop                                              ; $7052: $00
	nop                                              ; $7053: $00
	ldh  [$80], a                                    ; $7054: $e0 $80
	nop                                              ; $7056: $00
	add  c                                           ; $7057: $81
	rst  $38                                         ; $7058: $ff
	nop                                              ; $7059: $00
	nop                                              ; $705a: $00
	add  b                                           ; $705b: $80
	rst  $38                                         ; $705c: $ff
	ld   bc, $ff00                                   ; $705d: $01 $00 $ff
	add  l                                           ; $7060: $85
	nop                                              ; $7061: $00
	nop                                              ; $7062: $00
	inc  a                                           ; $7063: $3c
	add  c                                           ; $7064: $81
	db   $eb                                         ; $7065: $eb
	nop                                              ; $7066: $00
	jr   z, jr_08f_6fe9                              ; $7067: $28 $80

	db   $eb                                         ; $7069: $eb
	inc  bc                                          ; $706a: $03
	nop                                              ; $706b: $00
	jp   $3c00                                       ; $706c: $c3 $00 $3c


	add  e                                           ; $706f: $83
	nop                                              ; $7070: $00
	nop                                              ; $7071: $00

jr_08f_7072:
	db   $10                                         ; $7072: $10
	add  c                                           ; $7073: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7074: $cf
	inc  b                                           ; $7075: $04
	ld   b, b                                        ; $7076: $40
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7077: $cf
	xor  a                                           ; $7078: $af
	nop                                              ; $7079: $00
	rst  $38                                         ; $707a: $ff
	add  l                                           ; $707b: $85
	nop                                              ; $707c: $00

jr_08f_707d:
	nop                                              ; $707d: $00
	rst  $38                                         ; $707e: $ff
	cp   l                                           ; $707f: $bd
	nop                                              ; $7080: $00
	ld   [bc], a                                     ; $7081: $02
	ccf                                              ; $7082: $3f
	ld   b, b                                        ; $7083: $40
	dec  sp                                          ; $7084: $3b
	adc  c                                           ; $7085: $89
	ld   a, e                                        ; $7086: $7b
	inc  bc                                          ; $7087: $03
	ld   b, b                                        ; $7088: $40
	ld   a, a                                        ; $7089: $7f
	cp   $00                                         ; $708a: $fe $00
	adc  d                                           ; $708c: $8a
	sbc  $08                                         ; $708d: $de $08
	nop                                              ; $708f: $00
	cp   $cc                                         ; $7090: $fe $cc
	nop                                              ; $7092: $00
	inc  e                                           ; $7093: $1c
	nop                                              ; $7094: $00
	ret  nc                                          ; $7095: $d0

	ldh  [$e8], a                                    ; $7096: $e0 $e8
	add  b                                           ; $7098: $80
	ld   [$8800], sp                                 ; $7099: $08 $00 $88
	add  b                                           ; $709c: $80
	sbc  b                                           ; $709d: $98
	add  b                                           ; $709e: $80
	cp   b                                           ; $709f: $b8
	add  b                                           ; $70a0: $80
	add  b                                           ; $70a1: $80
	add  hl, bc                                      ; $70a2: $09
	cp   h                                           ; $70a3: $bc
	nop                                              ; $70a4: $00
	db   $fc                                         ; $70a5: $fc
	add  b                                           ; $70a6: $80
	call c, $fc9c                                    ; $70a7: $dc $9c $fc
	ret  nz                                          ; $70aa: $c0

	db   $fc                                         ; $70ab: $fc
	add  b                                           ; $70ac: $80
	add  b                                           ; $70ad: $80
	sub  h                                           ; $70ae: $94
	ld   bc, $a4f4                                   ; $70af: $01 $f4 $a4
	add  b                                           ; $70b2: $80
	db   $e4                                         ; $70b3: $e4

jr_08f_70b4:
	ld   bc, $6718                                   ; $70b4: $01 $18 $67
	add  b                                           ; $70b7: $80
	rlca                                             ; $70b8: $07
	add  b                                           ; $70b9: $80
	ld   h, b                                        ; $70ba: $60
	add  h                                           ; $70bb: $84
	ld   h, a                                        ; $70bc: $67
	nop                                              ; $70bd: $00
	ld   h, b                                        ; $70be: $60
	add  b                                           ; $70bf: $80
	ld   l, a                                        ; $70c0: $6f
	ld   bc, $4360                                   ; $70c1: $01 $60 $43
	add  c                                           ; $70c4: $81
	rst  $10                                         ; $70c5: $d7
	add  b                                           ; $70c6: $80
	inc  a                                           ; $70c7: $3c
	nop                                              ; $70c8: $00
	rst  ToBoot                                         ; $70c9: $c7
	add  e                                           ; $70ca: $83
	rst  $10                                         ; $70cb: $d7
	inc  b                                           ; $70cc: $04
	inc  b                                           ; $70cd: $04
	rst  ToBoot                                         ; $70ce: $c7
	db   $eb                                         ; $70cf: $eb
	nop                                              ; $70d0: $00
	ld   a, e                                        ; $70d1: $7b
	add  e                                           ; $70d2: $83
	ld   a, b                                        ; $70d3: $78
	add  h                                           ; $70d4: $84
	ld   hl, sp+$00                                  ; $70d5: $f8 $00
	nop                                              ; $70d7: $00
	add  b                                           ; $70d8: $80
	ret  nz                                          ; $70d9: $c0

	ld   [bc], a                                     ; $70da: $02
	jr   c, jr_08f_7135                              ; $70db: $38 $58

	nop                                              ; $70dd: $00
	add  b                                           ; $70de: $80
	inc  l                                           ; $70df: $2c
	ld   bc, $8cac                                   ; $70e0: $01 $ac $8c
	add  b                                           ; $70e3: $80
	cp   h                                           ; $70e4: $bc
	add  h                                           ; $70e5: $84
	db   $fc                                         ; $70e6: $fc
	nop                                              ; $70e7: $00
	add  b                                           ; $70e8: $80
	rst  $38                                         ; $70e9: $ff
	nop                                              ; $70ea: $00
	inc  c                                           ; $70eb: $0c
	ldh  a, [rP1]                                    ; $70ec: $f0 $00
	rst  $30                                         ; $70ee: $f7
	nop                                              ; $70ef: $00
	adc  a                                           ; $70f0: $8f
	add  b                                           ; $70f1: $80
	nop                                              ; $70f2: $00
	inc  bc                                          ; $70f3: $03
	ld   [hl], e                                     ; $70f4: $73
	ldh  a, [$73]                                    ; $70f5: $f0 $73
	di                                               ; $70f7: $f3
	nop                                              ; $70f8: $00
	add  b                                           ; $70f9: $80
	inc  bc                                          ; $70fa: $03
	ld   a, [bc]                                     ; $70fb: $0a
	nop                                              ; $70fc: $00
	rlca                                             ; $70fd: $07
	nop                                              ; $70fe: $00
	rst  $28                                         ; $70ff: $ef
	nop                                              ; $7100: $00
	pop  af                                          ; $7101: $f1
	ld   bc, $e000                                   ; $7102: $01 $00 $e0
	rst  $20                                         ; $7105: $e7
	rlca                                             ; $7106: $07
	add  b                                           ; $7107: $80
	rst  $20                                         ; $7108: $e7
	nop                                              ; $7109: $00
	rlca                                             ; $710a: $07
	add  b                                           ; $710b: $80
	rst  $20                                         ; $710c: $e7
	ld   [bc], a                                     ; $710d: $02
	rlca                                             ; $710e: $07
	ld   l, b                                        ; $710f: $68
	ld   a, b                                        ; $7110: $78
	add  d                                           ; $7111: $82
	ld   hl, sp-$7f                                  ; $7112: $f8 $81
	nop                                              ; $7114: $00
	add  b                                           ; $7115: $80
	ld   a, b                                        ; $7116: $78
	nop                                              ; $7117: $00
	nop                                              ; $7118: $00
	add  d                                           ; $7119: $82
	ld   a, b                                        ; $711a: $78
	ld   bc, $e4f4                                   ; $711b: $01 $f4 $e4
	add  b                                           ; $711e: $80
	add  h                                           ; $711f: $84
	add  b                                           ; $7120: $80
	db   $e4                                         ; $7121: $e4
	add  b                                           ; $7122: $80
	inc  b                                           ; $7123: $04
	inc  b                                           ; $7124: $04
	db   $ec                                         ; $7125: $ec
	ret  nz                                          ; $7126: $c0

	db   $fc                                         ; $7127: $fc
	ret  nz                                          ; $7128: $c0

	db   $f4                                         ; $7129: $f4
	add  c                                           ; $712a: $81
	db   $e4                                         ; $712b: $e4
	nop                                              ; $712c: $00
	jr   jr_08f_70b4                                 ; $712d: $18 $85

	ld   h, a                                        ; $712f: $67
	add  b                                           ; $7130: $80
	ld   h, b                                        ; $7131: $60
	add  h                                           ; $7132: $84
	ld   h, a                                        ; $7133: $67
	nop                                              ; $7134: $00

jr_08f_7135:
	ld   d, a                                        ; $7135: $57
	add  c                                           ; $7136: $81
	db   $d3                                         ; $7137: $d3
	nop                                              ; $7138: $00
	call nc, $d080                                   ; $7139: $d4 $80 $d0
	inc  b                                           ; $713c: $04
	rst  JumpTable                                         ; $713d: $df
	ccf                                              ; $713e: $3f
	nop                                              ; $713f: $00
	ld   a, a                                        ; $7140: $7f
	ld   h, b                                        ; $7141: $60
	add  b                                           ; $7142: $80
	ld   a, a                                        ; $7143: $7f
	ld   [bc], a                                     ; $7144: $02
	ld   b, b                                        ; $7145: $40
	ld   a, a                                        ; $7146: $7f
	rst  ToBoot                                         ; $7147: $c7
	add  c                                           ; $7148: $81
	ld   hl, sp-$80                                  ; $7149: $f8 $80
	jr   c, @+$07                                    ; $714b: $38 $05

	ld   b, b                                        ; $714d: $40
	add  b                                           ; $714e: $80
	ld   hl, sp+$38                                  ; $714f: $f8 $38
	ld   hl, sp+$38                                  ; $7151: $f8 $38
	add  b                                           ; $7153: $80
	ld   hl, sp+$02                                  ; $7154: $f8 $02
	jr   c, @-$06                                    ; $7156: $38 $f8

	cp   h                                           ; $7158: $bc
	add  l                                           ; $7159: $85
	db   $fc                                         ; $715a: $fc
	add  [hl]                                        ; $715b: $86
	ldh  [rP1], a                                    ; $715c: $e0 $00
	add  b                                           ; $715e: $80
	db   $fd                                         ; $715f: $fd
	nop                                              ; $7160: $00
	nop                                              ; $7161: $00
	nop                                              ; $7162: $00
	nop                                              ; $7163: $00
	nop                                              ; $7164: $00
	nop                                              ; $7165: $00
	nop                                              ; $7166: $00
	nop                                              ; $7167: $00
	nop                                              ; $7168: $00
	nop                                              ; $7169: $00
	nop                                              ; $716a: $00
	nop                                              ; $716b: $00
	nop                                              ; $716c: $00
	nop                                              ; $716d: $00
	nop                                              ; $716e: $00
	nop                                              ; $716f: $00
	xor  h                                           ; $7170: $ac
	ld   bc, $6003                                   ; $7171: $01 $03 $60
	ld   [$282f], sp                                 ; $7174: $08 $2f $28
	add  b                                           ; $7177: $80
	dec  hl                                          ; $7178: $2b
	rlca                                             ; $7179: $07
	sub  a                                           ; $717a: $97
	nop                                              ; $717b: $00
	rst  $38                                         ; $717c: $ff
	rlca                                             ; $717d: $07
	sbc  b                                           ; $717e: $98
	ld   [hl], a                                     ; $717f: $77
	db   $10                                         ; $7180: $10
	rla                                              ; $7181: $17
	add  b                                           ; $7182: $80
	ld   [hl], b                                     ; $7183: $70
	db   $10                                         ; $7184: $10
	add  sp, $1f                                     ; $7185: $e8 $1f
	rst  $38                                         ; $7187: $ff
	rra                                              ; $7188: $1f
	rst  $38                                         ; $7189: $ff
	rst  JumpTable                                         ; $718a: $df
	ret  nz                                          ; $718b: $c0

	nop                                              ; $718c: $00
	rst  $38                                         ; $718d: $ff
	ldh  [$37], a                                    ; $718e: $e0 $37
	ldh  [rAUD4LEN], a                               ; $7190: $e0 $20
	rst  $20                                         ; $7192: $e7
	nop                                              ; $7193: $00
	rlca                                             ; $7194: $07
	cpl                                              ; $7195: $2f

jr_08f_7196:
	add  e                                           ; $7196: $83
	ld   hl, sp+$04                                  ; $7197: $f8 $04
	jr   c, jr_08f_719b                              ; $7199: $38 $00

jr_08f_719b:
	ret  c                                           ; $719b: $d8

	jr   nz, jr_08f_7196                             ; $719c: $20 $f8

	add  b                                           ; $719e: $80

jr_08f_719f:
	jr   c, @+$05                                    ; $719f: $38 $03

	ld   hl, sp+$38                                  ; $71a1: $f8 $38

jr_08f_71a3:
	ld   hl, sp-$60                                  ; $71a3: $f8 $a0
	add  c                                           ; $71a5: $81
	ldh  [rP1], a                                    ; $71a6: $e0 $00
	add  b                                           ; $71a8: $80
	add  b                                           ; $71a9: $80
	nop                                              ; $71aa: $00
	ld   bc, $00fc                                   ; $71ab: $01 $fc $00
	add  h                                           ; $71ae: $84
	db   $fc                                         ; $71af: $fc
	ld   bc, $0cf0                                   ; $71b0: $01 $f0 $0c
	add  e                                           ; $71b3: $83
	nop                                              ; $71b4: $00
	add  b                                           ; $71b5: $80
	rst  $38                                         ; $71b6: $ff
	add  d                                           ; $71b7: $82
	nop                                              ; $71b8: $00
	add  b                                           ; $71b9: $80
	rst  $38                                         ; $71ba: $ff
	add  [hl]                                        ; $71bb: $86
	nop                                              ; $71bc: $00
	add  b                                           ; $71bd: $80
	rst  $38                                         ; $71be: $ff
	add  d                                           ; $71bf: $82
	nop                                              ; $71c0: $00
	add  b                                           ; $71c1: $80
	rst  $38                                         ; $71c2: $ff
	add  [hl]                                        ; $71c3: $86
	nop                                              ; $71c4: $00
	add  b                                           ; $71c5: $80
	rst  $38                                         ; $71c6: $ff
	add  d                                           ; $71c7: $82
	nop                                              ; $71c8: $00
	add  b                                           ; $71c9: $80
	rst  $38                                         ; $71ca: $ff
	add  [hl]                                        ; $71cb: $86
	nop                                              ; $71cc: $00
	add  b                                           ; $71cd: $80
	rst  $38                                         ; $71ce: $ff
	add  d                                           ; $71cf: $82
	nop                                              ; $71d0: $00
	add  b                                           ; $71d1: $80
	db   $fc                                         ; $71d2: $fc
	add  b                                           ; $71d3: $80
	inc  b                                           ; $71d4: $04
	adc  $00                                         ; $71d5: $ce $00
	add  e                                           ; $71d7: $83
	ld   b, b                                        ; $71d8: $40
	add  l                                           ; $71d9: $85
	ld   a, a                                        ; $71da: $7f
	ld   bc, $7f40                                   ; $71db: $01 $40 $7f
	add  b                                           ; $71de: $80
	ld   b, b                                        ; $71df: $40
	add  b                                           ; $71e0: $80
	ld   [$0080], sp                                 ; $71e1: $08 $80 $00
	nop                                              ; $71e4: $00
	inc  d                                           ; $71e5: $14
	add  c                                           ; $71e6: $81
	ld   h, c                                        ; $71e7: $61
	ld   bc, $0160                                   ; $71e8: $01 $60 $01
	add  b                                           ; $71eb: $80
	ld   h, c                                        ; $71ec: $61
	inc  b                                           ; $71ed: $04
	ld   h, e                                        ; $71ee: $63
	ld   h, b                                        ; $71ef: $60
	ld   l, a                                        ; $71f0: $6f
	ld   h, b                                        ; $71f1: $60
	jr   @-$7c                                       ; $71f2: $18 $82

	nop                                              ; $71f4: $00
	add  b                                           ; $71f5: $80
	rst  $38                                         ; $71f6: $ff
	ld   bc, $00e0                                   ; $71f7: $01 $e0 $00
	add  c                                           ; $71fa: $81
	push hl                                          ; $71fb: $e5
	ld   [bc], a                                     ; $71fc: $02
	push af                                          ; $71fd: $f5
	dec  b                                           ; $71fe: $05
	push af                                          ; $71ff: $f5
	add  b                                           ; $7200: $80
	dec  b                                           ; $7201: $05
	inc  b                                           ; $7202: $04
	nop                                              ; $7203: $00
	rst  $38                                         ; $7204: $ff
	nop                                              ; $7205: $00
	rst  $38                                         ; $7206: $ff
	nop                                              ; $7207: $00
	add  b                                           ; $7208: $80
	ld   a, a                                        ; $7209: $7f
	nop                                              ; $720a: $00
	ld   b, h                                        ; $720b: $44
	add  l                                           ; $720c: $85
	ld   a, e                                        ; $720d: $7b
	dec  b                                           ; $720e: $05
	ccf                                              ; $720f: $3f
	nop                                              ; $7210: $00
	rst  $38                                         ; $7211: $ff
	nop                                              ; $7212: $00
	rst  $38                                         ; $7213: $ff
	nop                                              ; $7214: $00
	add  b                                           ; $7215: $80
	cp   $00                                         ; $7216: $fe $00
	jr   nz, jr_08f_719f                             ; $7218: $20 $85

	sbc  $02                                         ; $721a: $de $02
	add  $78                                         ; $721c: $c6 $78
	ld   hl, sp-$7d                                  ; $721e: $f8 $83
	jr   c, jr_08f_71a3                              ; $7220: $38 $81

	nop                                              ; $7222: $00
	ld   [bc], a                                     ; $7223: $02
	ld   a, h                                        ; $7224: $7c
	db   $fc                                         ; $7225: $fc
	nop                                              ; $7226: $00
	add  b                                           ; $7227: $80
	ld   a, [hl]                                     ; $7228: $7e
	ld   bc, $e0f0                                   ; $7229: $01 $f0 $e0
	add  b                                           ; $722c: $80
	inc  b                                           ; $722d: $04
	ld   [bc], a                                     ; $722e: $02
	add  h                                           ; $722f: $84
	ld   h, h                                        ; $7230: $64
	inc  b                                           ; $7231: $04
	add  c                                           ; $7232: $81
	db   $e4                                         ; $7233: $e4
	add  b                                           ; $7234: $80
	inc  h                                           ; $7235: $24
	nop                                              ; $7236: $00
	nop                                              ; $7237: $00
	add  b                                           ; $7238: $80
	db   $e4                                         ; $7239: $e4
	ld   bc, $1000                                   ; $723a: $01 $00 $10
	add  d                                           ; $723d: $82
	nop                                              ; $723e: $00
	ld   bc, $170f                                   ; $723f: $01 $0f $17
	add  c                                           ; $7242: $81
	daa                                              ; $7243: $27
	ld   bc, $ffc0                                   ; $7244: $01 $c0 $ff
	add  b                                           ; $7247: $80
	sub  d                                           ; $7248: $92
	ld   [bc], a                                     ; $7249: $02
	db   $10                                         ; $724a: $10
	or   l                                           ; $724b: $b5
	and  c                                           ; $724c: $a1
	add  e                                           ; $724d: $83
	ld   b, $0a                                      ; $724e: $06 $0a
	add  hl, bc                                      ; $7250: $09
	call nz, $aa3a                                   ; $7251: $c4 $3a $aa
	and  d                                           ; $7254: $a2
	ret  nz                                          ; $7255: $c0

	jp   Jump_08f_66a1                               ; $7256: $c3 $a1 $66


	ld   b, [hl]                                     ; $7259: $46
	ld   a, a                                        ; $725a: $7f
	add  b                                           ; $725b: $80
	nop                                              ; $725c: $00
	dec  c                                           ; $725d: $0d
	ld   b, c                                        ; $725e: $41
	ld   b, b                                        ; $725f: $40
	add  b                                           ; $7260: $80
	adc  e                                           ; $7261: $8b
	ld   hl, $00b4                                   ; $7262: $21 $b4 $00
	sbc  b                                           ; $7265: $98
	nop                                              ; $7266: $00
	cp   b                                           ; $7267: $b8
	nop                                              ; $7268: $00
	ld   [$db8a], a                                  ; $7269: $ea $8a $db
	add  b                                           ; $726c: $80
	inc  b                                           ; $726d: $04
	add  c                                           ; $726e: $81
	ld   d, h                                        ; $726f: $54
	ld   a, [bc]                                     ; $7270: $0a
	call nc, $8454                                   ; $7271: $d4 $54 $84
	nop                                              ; $7274: $00
	ld   hl, sp+$04                                  ; $7275: $f8 $04
	ld   e, h                                        ; $7277: $5c
	inc  b                                           ; $7278: $04
	adc  h                                           ; $7279: $8c
	add  h                                           ; $727a: $84
	ld   hl, sp-$33                                  ; $727b: $f8 $cd
	nop                                              ; $727d: $00
	nop                                              ; $727e: $00
	ld   b, b                                        ; $727f: $40
	add  b                                           ; $7280: $80
	ld   a, a                                        ; $7281: $7f
	nop                                              ; $7282: $00
	ld   b, b                                        ; $7283: $40
	add  b                                           ; $7284: $80
	ld   e, a                                        ; $7285: $5f
	add  b                                           ; $7286: $80
	ld   b, b                                        ; $7287: $40
	add  b                                           ; $7288: $80
	ld   a, a                                        ; $7289: $7f
	add  h                                           ; $728a: $84
	nop                                              ; $728b: $00
	inc  bc                                          ; $728c: $03
	rst  $28                                         ; $728d: $ef
	ldh  [rIF], a                                    ; $728e: $e0 $0f
	nop                                              ; $7290: $00
	add  b                                           ; $7291: $80
	rst  $38                                         ; $7292: $ff
	add  b                                           ; $7293: $80
	nop                                              ; $7294: $00
	add  b                                           ; $7295: $80
	rst  $38                                         ; $7296: $ff
	add  h                                           ; $7297: $84
	nop                                              ; $7298: $00
	dec  b                                           ; $7299: $05
	ld   hl, sp+$1d                                  ; $729a: $f8 $1d
	db   $fd                                         ; $729c: $fd
	dec  e                                           ; $729d: $1d
	push hl                                          ; $729e: $e5
	ldh  [$80], a                                    ; $729f: $e0 $80
	nop                                              ; $72a1: $00
	add  b                                           ; $72a2: $80
	ldh  [$80], a                                    ; $72a3: $e0 $80
	cpl                                              ; $72a5: $2f
	add  b                                           ; $72a6: $80
	jr   nz, @-$7d                                   ; $72a7: $20 $81

	ccf                                              ; $72a9: $3f
	ld   bc, $3b40                                   ; $72aa: $01 $40 $3b
	adc  e                                           ; $72ad: $8b
	ld   a, e                                        ; $72ae: $7b
	ld   bc, $00c1                                   ; $72af: $01 $c1 $00
	adc  h                                           ; $72b2: $8c
	sbc  $02                                         ; $72b3: $de $02
	adc  [hl]                                        ; $72b5: $8e
	halt                                             ; $72b6: $76
	ld   [bc], a                                     ; $72b7: $02
	add  b                                           ; $72b8: $80
	ld   [$1202], a                                  ; $72b9: $ea $02 $12
	ld   [bc], a                                     ; $72bc: $02
	jp   nz, $0280                                   ; $72bd: $c2 $80 $02

	add  b                                           ; $72c0: $80
	ld   b, $03                                      ; $72c1: $06 $03
	ld   a, [de]                                     ; $72c3: $1a
	nop                                              ; $72c4: $00
	call c, $8200                                    ; $72c5: $dc $00 $82
	db   $e4                                         ; $72c8: $e4
	dec  b                                           ; $72c9: $05
	db   $ec                                         ; $72ca: $ec
	ret  nz                                          ; $72cb: $c0

	db   $fc                                         ; $72cc: $fc
	ret  nz                                          ; $72cd: $c0

	db   $e4                                         ; $72ce: $e4
	db   $f4                                         ; $72cf: $f4
	add  h                                           ; $72d0: $84
	db   $e4                                         ; $72d1: $e4
	dec  h                                           ; $72d2: $25
	nop                                              ; $72d3: $00
	dec  [hl]                                        ; $72d4: $35
	ld   l, $53                                      ; $72d5: $2e $53
	ld   a, [de]                                     ; $72d7: $1a
	dec  d                                           ; $72d8: $15
	jr   jr_08f_732b                                 ; $72d9: $18 $50

	ld   e, l                                        ; $72db: $5d
	dec  [hl]                                        ; $72dc: $35
	ld   d, a                                        ; $72dd: $57
	jr   jr_08f_7348                                 ; $72de: $18 $68

	nop                                              ; $72e0: $00
	xor  a                                           ; $72e1: $af
	ld   e, a                                        ; $72e2: $5f
	and  $39                                         ; $72e3: $e6 $39
	or   $3e                                         ; $72e5: $f6 $3e
	cp   c                                           ; $72e7: $b9
	add  hl, sp                                      ; $72e8: $39
	cp   c                                           ; $72e9: $b9
	add  hl, sp                                      ; $72ea: $39
	cp   d                                           ; $72eb: $ba
	ld   a, [hl-]                                    ; $72ec: $3a
	cp   l                                           ; $72ed: $bd
	dec  a                                           ; $72ee: $3d
	add  d                                           ; $72ef: $82
	nop                                              ; $72f0: $00
	jp   z, $e8ff                                    ; $72f1: $ca $ff $e8

	db   $10                                         ; $72f4: $10
	inc  bc                                          ; $72f5: $03
	nop                                              ; $72f6: $00
	ld   c, $0a                                      ; $72f7: $0e $0a
	add  b                                           ; $72f9: $80
	nop                                              ; $72fa: $00
	add  b                                           ; $72fb: $80
	ld   d, b                                        ; $72fc: $50
	inc  de                                          ; $72fd: $13
	xor  c                                           ; $72fe: $a9
	xor  b                                           ; $72ff: $a8
	ld   b, $00                                      ; $7300: $06 $00
	rlca                                             ; $7302: $07
	xor  a                                           ; $7303: $af
	and  h                                           ; $7304: $a4
	nop                                              ; $7305: $00
	sbc  b                                           ; $7306: $98
	add  h                                           ; $7307: $84
	ld   b, h                                        ; $7308: $44
	inc  b                                           ; $7309: $04
	ld   e, h                                        ; $730a: $5c
	inc  b                                           ; $730b: $04
	sub  h                                           ; $730c: $94
	inc  b                                           ; $730d: $04
	inc  h                                           ; $730e: $24
	inc  b                                           ; $730f: $04
	ld   b, h                                        ; $7310: $44
	inc  b                                           ; $7311: $04
	add  b                                           ; $7312: $80
	db   $fc                                         ; $7313: $fc
	add  e                                           ; $7314: $83
	nop                                              ; $7315: $00
	add  hl, bc                                      ; $7316: $09

jr_08f_7317:
	rst  $38                                         ; $7317: $ff
	ret  nz                                          ; $7318: $c0

	ccf                                              ; $7319: $3f
	nop                                              ; $731a: $00
	ccf                                              ; $731b: $3f
	jr   nc, jr_08f_735d                             ; $731c: $30 $3f

	ld   c, a                                        ; $731e: $4f
	nop                                              ; $731f: $00
	ld   a, a                                        ; $7320: $7f
	add  e                                           ; $7321: $83
	nop                                              ; $7322: $00
	ld   a, [bc]                                     ; $7323: $0a
	dec  bc                                          ; $7324: $0b
	rst  $38                                         ; $7325: $ff
	rrca                                             ; $7326: $0f
	rst  $38                                         ; $7327: $ff
	rrca                                             ; $7328: $0f
	rst  $38                                         ; $7329: $ff
	ccf                                              ; $732a: $3f

jr_08f_732b:
	rst  $38                                         ; $732b: $ff
	rlc  b                                           ; $732c: $cb $00
	rst  $38                                         ; $732e: $ff
	add  e                                           ; $732f: $83
	nop                                              ; $7330: $00
	nop                                              ; $7331: $00
	and  b                                           ; $7332: $a0
	add  c                                           ; $7333: $81
	rst  $38                                         ; $7334: $ff
	ld   b, $df                                      ; $7335: $06 $df
	ret  nz                                          ; $7337: $c0

	ldh  [rIE], a                                    ; $7338: $e0 $ff
	and  b                                           ; $733a: $a0
	nop                                              ; $733b: $00
	rst  $38                                         ; $733c: $ff
	add  e                                           ; $733d: $83
	nop                                              ; $733e: $00
	inc  b                                           ; $733f: $04
	ld   h, b                                        ; $7340: $60
	rst  $38                                         ; $7341: $ff
	ldh  [rIE], a                                    ; $7342: $e0 $ff
	or   $80                                         ; $7344: $f6 $80
	ld   a, a                                        ; $7346: $7f
	inc  bc                                          ; $7347: $03

jr_08f_7348:
	rst  $38                                         ; $7348: $ff
	halt                                             ; $7349: $76
	nop                                              ; $734a: $00
	rst  $38                                         ; $734b: $ff
	add  e                                           ; $734c: $83
	nop                                              ; $734d: $00
	ld   bc, $ff80                                   ; $734e: $01 $80 $ff
	add  b                                           ; $7351: $80
	cp   $01                                         ; $7352: $fe $01
	add  b                                           ; $7354: $80
	cp   $80                                         ; $7355: $fe $80
	add  b                                           ; $7357: $80
	ld   [bc], a                                     ; $7358: $02
	cp   $00                                         ; $7359: $fe $00
	rst  $38                                         ; $735b: $ff
	add  e                                           ; $735c: $83

jr_08f_735d:
	nop                                              ; $735d: $00
	ld   bc, $9f7c                                   ; $735e: $01 $7c $9f
	add  b                                           ; $7361: $80
	rra                                              ; $7362: $1f
	add  b                                           ; $7363: $80
	dec  de                                          ; $7364: $1b
	inc  b                                           ; $7365: $04
	db   $e3                                         ; $7366: $e3
	inc  bc                                          ; $7367: $03
	db   $fc                                         ; $7368: $fc
	nop                                              ; $7369: $00
	rst  $38                                         ; $736a: $ff
	add  h                                           ; $736b: $84
	nop                                              ; $736c: $00
	add  c                                           ; $736d: $81
	rst  $38                                         ; $736e: $ff
	ld   b, $30                                      ; $736f: $06 $30
	rra                                              ; $7371: $1f
	ret  nc                                          ; $7372: $d0

	ld   [de], a                                     ; $7373: $12
	db   $ed                                         ; $7374: $ed
	nop                                              ; $7375: $00
	rst  $38                                         ; $7376: $ff
	add  h                                           ; $7377: $84
	nop                                              ; $7378: $00
	add  b                                           ; $7379: $80
	rst  $38                                         ; $737a: $ff
	dec  bc                                          ; $737b: $0b
	ldh  a, [rAUD1SWEEP]                             ; $737c: $f0 $10

jr_08f_737e:
	ldh  a, [c]                                      ; $737e: $f2
	ld   [de], a                                     ; $737f: $12
	sub  d                                           ; $7380: $92
	ld   l, d                                        ; $7381: $6a
	ld   [bc], a                                     ; $7382: $02
	ld   a, [$3d02]                                  ; $7383: $fa $02 $3d
	ld   b, b                                        ; $7386: $40
	dec  sp                                          ; $7387: $3b
	adc  e                                           ; $7388: $8b

jr_08f_7389:
	ld   a, e                                        ; $7389: $7b
	ld   bc, $00c1                                   ; $738a: $01 $c1 $00
	adc  h                                           ; $738d: $8c
	sbc  $03                                         ; $738e: $de $03
	cp   $e0                                         ; $7390: $fe $e0
	ld   l, b                                        ; $7392: $68
	adc  b                                           ; $7393: $88
	add  d                                           ; $7394: $82
	jr   jr_08f_7317                                 ; $7395: $18 $80

	ld   a, b                                        ; $7397: $78
	ld   [bc], a                                     ; $7398: $02
	ld   [hl], b                                     ; $7399: $70
	halt                                             ; $739a: $76
	ld   [bc], a                                     ; $739b: $02
	add  b                                           ; $739c: $80
	ld   [$1201], a                                  ; $739d: $ea $01 $12
	ldh  [c], a                                      ; $73a0: $e2
	add  l                                           ; $73a1: $85
	db   $e4                                         ; $73a2: $e4
	rlca                                             ; $73a3: $07
	inc  b                                           ; $73a4: $04
	db   $e4                                         ; $73a5: $e4
	call z, Call_08f_7c00                            ; $73a6: $cc $00 $7c
	nop                                              ; $73a9: $00
	ld   e, h                                        ; $73aa: $5c
	inc  e                                           ; $73ab: $1c
	add  d                                           ; $73ac: $82
	nop                                              ; $73ad: $00
	ld   bc, $48b7                                   ; $73ae: $01 $b7 $48
	add  b                                           ; $73b1: $80
	ld   e, h                                        ; $73b2: $5c
	add  b                                           ; $73b3: $80
	inc  hl                                          ; $73b4: $23
	add  b                                           ; $73b5: $80
	ld   hl, $5680                                   ; $73b6: $21 $80 $56
	add  b                                           ; $73b9: $80
	adc  d                                           ; $73ba: $8a
	nop                                              ; $73bb: $00
	rst  $38                                         ; $73bc: $ff
	add  c                                           ; $73bd: $81
	nop                                              ; $73be: $00
	ld   bc, $639d                                   ; $73bf: $01 $9d $63
	add  b                                           ; $73c2: $80
	db   $d3                                         ; $73c3: $d3
	add  b                                           ; $73c4: $80
	ld   d, l                                        ; $73c5: $55
	add  b                                           ; $73c6: $80
	ld   c, c                                        ; $73c7: $49
	add  b                                           ; $73c8: $80
	ret                                              ; $73c9: $c9


	ld   [bc], a                                     ; $73ca: $02
	ld   [hl], h                                     ; $73cb: $74
	ld   [hl], l                                     ; $73cc: $75
	rst  $38                                         ; $73cd: $ff
	add  c                                           ; $73ce: $81
	nop                                              ; $73cf: $00
	nop                                              ; $73d0: $00
	inc  bc                                          ; $73d1: $03
	add  b                                           ; $73d2: $80
	ld   [hl-], a                                    ; $73d3: $32
	add  b                                           ; $73d4: $80
	ld   [bc], a                                     ; $73d5: $02
	ld   bc, $01f8                                   ; $73d6: $01 $f8 $01
	add  c                                           ; $73d9: $81
	ld   sp, hl                                      ; $73da: $f9
	ld   [bc], a                                     ; $73db: $02
	pop  hl                                          ; $73dc: $e1
	ld   bc, $81e3                                   ; $73dd: $01 $e3 $81
	nop                                              ; $73e0: $00
	nop                                              ; $73e1: $00
	ld   l, e                                        ; $73e2: $6b
	add  c                                           ; $73e3: $81
	ld   c, e                                        ; $73e4: $4b
	inc  bc                                          ; $73e5: $03
	rst  $10                                         ; $73e6: $d7
	rlca                                             ; $73e7: $07
	ld   [hl], b                                     ; $73e8: $70
	ldh  a, [$80]                                    ; $73e9: $f0 $80
	rst  $30                                         ; $73eb: $f7
	add  b                                           ; $73ec: $80
	ldh  a, [$03]                                    ; $73ed: $f0 $03
	adc  a                                           ; $73ef: $8f
	ret  nz                                          ; $73f0: $c0

	rst  $38                                         ; $73f1: $ff
	ret  nz                                          ; $73f2: $c0

	add  b                                           ; $73f3: $80
	ccf                                              ; $73f4: $3f
	add  b                                           ; $73f5: $80
	nop                                              ; $73f6: $00
	add  b                                           ; $73f7: $80
	ccf                                              ; $73f8: $3f
	add  b                                           ; $73f9: $80
	and  b                                           ; $73fa: $a0
	add  b                                           ; $73fb: $80
	jr   nz, jr_08f_737e                             ; $73fc: $20 $80

	ldh  [$03], a                                    ; $73fe: $e0 $03
	rst  $28                                         ; $7400: $ef
	nop                                              ; $7401: $00
	rst  $28                                         ; $7402: $ef
	nop                                              ; $7403: $00
	add  b                                           ; $7404: $80
	rst  $28                                         ; $7405: $ef
	add  b                                           ; $7406: $80
	jr   nz, jr_08f_7389                             ; $7407: $20 $80

	rst  $28                                         ; $7409: $ef
	add  b                                           ; $740a: $80
	jr   c, @-$7c                                    ; $740b: $38 $82

	nop                                              ; $740d: $00
	inc  bc                                          ; $740e: $03
	cp   $00                                         ; $740f: $fe $00
	cp   $00                                         ; $7411: $fe $00
	add  b                                           ; $7413: $80
	cp   $80                                         ; $7414: $fe $80
	nop                                              ; $7416: $00
	add  b                                           ; $7417: $80
	cp   $80                                         ; $7418: $fe $80
	inc  bc                                          ; $741a: $03
	add  d                                           ; $741b: $82
	nop                                              ; $741c: $00
	inc  bc                                          ; $741d: $03
	ccf                                              ; $741e: $3f
	nop                                              ; $741f: $00
	ccf                                              ; $7420: $3f
	nop                                              ; $7421: $00
	add  b                                           ; $7422: $80
	ccf                                              ; $7423: $3f
	add  b                                           ; $7424: $80
	nop                                              ; $7425: $00
	add  b                                           ; $7426: $80
	ccf                                              ; $7427: $3f
	add  b                                           ; $7428: $80
	ldh  [$82], a                                    ; $7429: $e0 $82
	nop                                              ; $742b: $00
	inc  bc                                          ; $742c: $03
	cp   $00                                         ; $742d: $fe $00
	cp   $00                                         ; $742f: $fe $00
	add  b                                           ; $7431: $80
	cp   $80                                         ; $7432: $fe $80
	nop                                              ; $7434: $00
	add  b                                           ; $7435: $80
	cp   $80                                         ; $7436: $fe $80
	inc  bc                                          ; $7438: $03
	add  d                                           ; $7439: $82
	nop                                              ; $743a: $00
	add  d                                           ; $743b: $82
	rst  $38                                         ; $743c: $ff
	inc  bc                                          ; $743d: $03
	db   $fc                                         ; $743e: $fc
	rst  $38                                         ; $743f: $ff
	inc  bc                                          ; $7440: $03
	nop                                              ; $7441: $00
	add  b                                           ; $7442: $80
	rst  $38                                         ; $7443: $ff
	add  b                                           ; $7444: $80
	add  b                                           ; $7445: $80
	add  d                                           ; $7446: $82
	nop                                              ; $7447: $00
	add  d                                           ; $7448: $82
	rst  $38                                         ; $7449: $ff
	nop                                              ; $744a: $00
	nop                                              ; $744b: $00
	add  b                                           ; $744c: $80
	rst  $38                                         ; $744d: $ff
	nop                                              ; $744e: $00
	nop                                              ; $744f: $00
	add  b                                           ; $7450: $80
	rst  $38                                         ; $7451: $ff
	add  h                                           ; $7452: $84
	nop                                              ; $7453: $00
	nop                                              ; $7454: $00
	db   $fc                                         ; $7455: $fc
	add  c                                           ; $7456: $81
	cp   $00                                         ; $7457: $fe $00
	ld   [bc], a                                     ; $7459: $02
	add  b                                           ; $745a: $80
	ldh  a, [rP1]                                    ; $745b: $f0 $00
	nop                                              ; $745d: $00
	add  b                                           ; $745e: $80
	ldh  a, [$80]                                    ; $745f: $f0 $80
	rla                                              ; $7461: $17
	add  b                                           ; $7462: $80
	db   $10                                         ; $7463: $10
	add  b                                           ; $7464: $80
	rra                                              ; $7465: $1f
	ld   [bc], a                                     ; $7466: $02
	ccf                                              ; $7467: $3f
	ld   b, b                                        ; $7468: $40
	dec  sp                                          ; $7469: $3b
	adc  e                                           ; $746a: $8b
	ld   a, e                                        ; $746b: $7b
	ld   bc, $00c1                                   ; $746c: $01 $c1 $00
	adc  h                                           ; $746f: $8c
	sbc  $01                                         ; $7470: $de $01
	ld   [$80c2], a                                  ; $7472: $ea $c2 $80
	ld   [bc], a                                     ; $7475: $02
	add  b                                           ; $7476: $80
	ld   b, $07                                      ; $7477: $06 $07
	ld   a, [de]                                     ; $7479: $1a
	nop                                              ; $747a: $00
	call c, $1000                                    ; $747b: $dc $00 $10
	ldh  [rBCPS], a                                  ; $747e: $e0 $68
	adc  b                                           ; $7480: $88
	add  b                                           ; $7481: $80
	jr   jr_08f_7487                                 ; $7482: $18 $03

	ld   a, h                                        ; $7484: $7c
	ld   b, b                                        ; $7485: $40
	ld   a, h                                        ; $7486: $7c

jr_08f_7487:
	nop                                              ; $7487: $00
	add  b                                           ; $7488: $80
	inc  d                                           ; $7489: $14
	ld   bc, $b4e4                                   ; $748a: $01 $e4 $b4
	add  d                                           ; $748d: $82
	db   $e4                                         ; $748e: $e4
	add  b                                           ; $748f: $80
	add  h                                           ; $7490: $84
	add  b                                           ; $7491: $80
	db   $e4                                         ; $7492: $e4
	ld   bc, $917e                                   ; $7493: $01 $7e $91
	add  b                                           ; $7496: $80
	rst  $38                                         ; $7497: $ff
	add  d                                           ; $7498: $82
	adc  b                                           ; $7499: $88
	add  b                                           ; $749a: $80
	rst  $38                                         ; $749b: $ff
	add  d                                           ; $749c: $82
	adc  b                                           ; $749d: $88
	inc  bc                                          ; $749e: $03
	rst  $38                                         ; $749f: $ff
	nop                                              ; $74a0: $00
	cp   d                                           ; $74a1: $ba
	ld   b, l                                        ; $74a2: $45
	add  b                                           ; $74a3: $80
	rst  $38                                         ; $74a4: $ff
	add  d                                           ; $74a5: $82
	ld   b, c                                        ; $74a6: $41
	add  b                                           ; $74a7: $80
	rst  $38                                         ; $74a8: $ff
	add  d                                           ; $74a9: $82
	ld   b, c                                        ; $74aa: $41
	inc  bc                                          ; $74ab: $03
	rst  $10                                         ; $74ac: $d7
	nop                                              ; $74ad: $00
	jp   z, $8001                                    ; $74ae: $ca $01 $80

	pop  hl                                          ; $74b1: $e1
	nop                                              ; $74b2: $00
	ld   sp, $1181                                   ; $74b3: $31 $81 $11
	ld   [bc], a                                     ; $74b6: $02

jr_08f_74b7:
	db   $d3                                         ; $74b7: $d3
	ret  nc                                          ; $74b8: $d0

	cpl                                              ; $74b9: $2f
	add  c                                           ; $74ba: $81
	rrca                                             ; $74bb: $0f
	dec  bc                                          ; $74bc: $0b
	rst  $28                                         ; $74bd: $ef
	rrca                                             ; $74be: $0f
	add  h                                           ; $74bf: $84
	db   $f4                                         ; $74c0: $f4
	jr   nc, jr_08f_74b7                             ; $74c1: $30 $f4

	ldh  a, [$f4]                                    ; $74c3: $f0 $f4
	sub  h                                           ; $74c5: $94
	db   $f4                                         ; $74c6: $f4
	ret  nc                                          ; $74c7: $d0

	nop                                              ; $74c8: $00
	add  b                                           ; $74c9: $80
	ldh  a, [$80]                                    ; $74ca: $f0 $80
	ldh  [$80], a                                    ; $74cc: $e0 $80
	ret  nz                                          ; $74ce: $c0

	add  e                                           ; $74cf: $83
	nop                                              ; $74d0: $00
	add  b                                           ; $74d1: $80
	rst  $38                                         ; $74d2: $ff
	add  b                                           ; $74d3: $80
	rra                                              ; $74d4: $1f
	rlca                                             ; $74d5: $07
	sbc  a                                           ; $74d6: $9f
	sbc  e                                           ; $74d7: $9b
	sbc  c                                           ; $74d8: $99
	and  b                                           ; $74d9: $a0
	add  b                                           ; $74da: $80
	cp   c                                           ; $74db: $b9
	add  b                                           ; $74dc: $80
	add  h                                           ; $74dd: $84
	add  d                                           ; $74de: $82
	nop                                              ; $74df: $00
	inc  bc                                          ; $74e0: $03
	rst  $38                                         ; $74e1: $ff
	ldh  [rIE], a                                    ; $74e2: $e0 $ff
	push af                                          ; $74e4: $f5
	add  c                                           ; $74e5: $81
	rst  $38                                         ; $74e6: $ff
	ld   [bc], a                                     ; $74e7: $02
	dec  d                                           ; $74e8: $15
	nop                                              ; $74e9: $00
	rst  $38                                         ; $74ea: $ff
	add  e                                           ; $74eb: $83
	nop                                              ; $74ec: $00
	nop                                              ; $74ed: $00

jr_08f_74ee:
	jr   @-$7b                                       ; $74ee: $18 $83

	rst  $38                                         ; $74f0: $ff
	inc  b                                           ; $74f1: $04
	db   $e4                                         ; $74f2: $e4
	jp   $003f                                       ; $74f3: $c3 $3f $00


	rst  $38                                         ; $74f6: $ff
	add  e                                           ; $74f7: $83
	nop                                              ; $74f8: $00
	nop                                              ; $74f9: $00
	add  b                                           ; $74fa: $80
	add  e                                           ; $74fb: $83
	rst  $38                                         ; $74fc: $ff
	ld   b, $78                                      ; $74fd: $06 $78
	rlca                                             ; $74ff: $07
	ret  nz                                          ; $7500: $c0

	rra                                              ; $7501: $1f
	cp   a                                           ; $7502: $bf
	rrca                                             ; $7503: $0f
	ld   l, a                                        ; $7504: $6f
	cp   l                                           ; $7505: $bd
	nop                                              ; $7506: $00
	ld   [bc], a                                     ; $7507: $02
	ccf                                              ; $7508: $3f
	ld   b, b                                        ; $7509: $40
	dec  sp                                          ; $750a: $3b
	adc  e                                           ; $750b: $8b
	ld   a, e                                        ; $750c: $7b
	ld   bc, $00c1                                   ; $750d: $01 $c1 $00
	adc  h                                           ; $7510: $8c
	sbc  $01                                         ; $7511: $de $01
	and  $18                                         ; $7513: $e6 $18
	add  b                                           ; $7515: $80
	ld   a, b                                        ; $7516: $78
	ld   [bc], a                                     ; $7517: $02
	ld   [hl], b                                     ; $7518: $70
	halt                                             ; $7519: $76

jr_08f_751a:
	ld   [bc], a                                     ; $751a: $02
	add  b                                           ; $751b: $80
	ld   [$1202], a                                  ; $751c: $ea $02 $12
	ld   [bc], a                                     ; $751f: $02
	jp   nz, $0280                                   ; $7520: $c2 $80 $02

	add  b                                           ; $7523: $80
	ld   b, $07                                      ; $7524: $06 $07
	jp   nz, $cce4                                   ; $7526: $c2 $e4 $cc

	nop                                              ; $7529: $00
	db   $fc                                         ; $752a: $fc
	ret  nz                                          ; $752b: $c0

	db   $e4                                         ; $752c: $e4
	db   $f4                                         ; $752d: $f4
	add  h                                           ; $752e: $84
	db   $e4                                         ; $752f: $e4
	ld   [bc], a                                     ; $7530: $02
	inc  b                                           ; $7531: $04
	db   $e4                                         ; $7532: $e4
	ld   [hl], h                                     ; $7533: $74
	add  c                                           ; $7534: $81
	db   $eb                                         ; $7535: $eb
	add  b                                           ; $7536: $80
	ldh  [$80], a                                    ; $7537: $e0 $80
	adc  e                                           ; $7539: $8b
	add  b                                           ; $753a: $80
	xor  e                                           ; $753b: $ab
	inc  bc                                          ; $753c: $03
	jr   nz, jr_08f_74ee                             ; $753d: $20 $af

	adc  a                                           ; $753f: $8f
	add  b                                           ; $7540: $80
	add  b                                           ; $7541: $80
	rst  $20                                         ; $7542: $e7
	nop                                              ; $7543: $00
	rst  ToBoot                                         ; $7544: $c7
	add  c                                           ; $7545: $81
	jp   $2b01                                       ; $7546: $c3 $01 $2b


	inc  bc                                          ; $7549: $03
	add  c                                           ; $754a: $81
	rst  $38                                         ; $754b: $ff
	inc  b                                           ; $754c: $04
	rst  ToBoot                                         ; $754d: $c7
	rlca                                             ; $754e: $07
	call nz, $3cff                                   ; $754f: $c4 $ff $3c
	add  b                                           ; $7552: $80
	rst  $10                                         ; $7553: $d7
	nop                                              ; $7554: $00
	call nc, $ef81                                   ; $7555: $d4 $81 $ef
	add  b                                           ; $7558: $80
	xor  $80                                         ; $7559: $ee $80
	db   $ec                                         ; $755b: $ec
	add  b                                           ; $755c: $80
	add  sp, $07                                     ; $755d: $e8 $07
	ret  nz                                          ; $755f: $c0

	nop                                              ; $7560: $00
	ret  nz                                          ; $7561: $c0

	jr   c, jr_08f_75a4                              ; $7562: $38 $40

	ld   a, b                                        ; $7564: $78
	ld   b, h                                        ; $7565: $44
	add  h                                           ; $7566: $84
	add  b                                           ; $7567: $80
	inc  c                                           ; $7568: $0c
	add  b                                           ; $7569: $80
	inc  e                                           ; $756a: $1c
	add  b                                           ; $756b: $80
	inc  a                                           ; $756c: $3c
	inc  c                                           ; $756d: $0c
	call c, Call_08f_5c3c                            ; $756e: $dc $3c $5c
	jr   nz, @+$3e                                   ; $7571: $20 $3c

	nop                                              ; $7573: $00
	inc  a                                           ; $7574: $3c
	nop                                              ; $7575: $00
	jp   hl                                          ; $7576: $e9


	pop  af                                          ; $7577: $f1
	ld   sp, hl                                      ; $7578: $f9
	db   $fd                                         ; $7579: $fd
	add  b                                           ; $757a: $80
	add  b                                           ; $757b: $80
	rra                                              ; $757c: $1f
	nop                                              ; $757d: $00
	nop                                              ; $757e: $00
	add  b                                           ; $757f: $80
	rra                                              ; $7580: $1f
	add  b                                           ; $7581: $80
	ret  nc                                          ; $7582: $d0

	add  b                                           ; $7583: $80
	db   $10                                         ; $7584: $10
	add  b                                           ; $7585: $80
	ldh  a, [$82]                                    ; $7586: $f0 $82
	rst  $38                                         ; $7588: $ff
	nop                                              ; $7589: $00
	nop                                              ; $758a: $00
	add  b                                           ; $758b: $80
	rst  $38                                         ; $758c: $ff
	nop                                              ; $758d: $00
	nop                                              ; $758e: $00
	add  b                                           ; $758f: $80
	rst  $38                                         ; $7590: $ff
	add  h                                           ; $7591: $84
	nop                                              ; $7592: $00
	nop                                              ; $7593: $00
	jp   $eb81                                       ; $7594: $c3 $81 $eb


	nop                                              ; $7597: $00
	jr   z, jr_08f_751a                              ; $7598: $28 $80

	db   $eb                                         ; $759a: $eb
	nop                                              ; $759b: $00
	nop                                              ; $759c: $00
	add  b                                           ; $759d: $80
	jp   Jump_08f_7e80                               ; $759e: $c3 $80 $7e


	add  d                                           ; $75a1: $82
	nop                                              ; $75a2: $00
	nop                                              ; $75a3: $00

jr_08f_75a4:
	rst  $28                                         ; $75a4: $ef
	add  c                                           ; $75a5: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75a6: $cf
	inc  bc                                          ; $75a7: $03
	ld   b, b                                        ; $75a8: $40
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75a9: $cf
	xor  a                                           ; $75aa: $af
	nop                                              ; $75ab: $00
	add  b                                           ; $75ac: $80
	rst  $38                                         ; $75ad: $ff
	call nz, $0200                                   ; $75ae: $c4 $00 $02
	ccf                                              ; $75b1: $3f
	ld   b, b                                        ; $75b2: $40
	dec  sp                                          ; $75b3: $3b
	adc  c                                           ; $75b4: $89
	ld   a, e                                        ; $75b5: $7b
	inc  bc                                          ; $75b6: $03
	ld   b, b                                        ; $75b7: $40
	ld   a, a                                        ; $75b8: $7f
	cp   $00                                         ; $75b9: $fe $00
	adc  d                                           ; $75bb: $8a
	sbc  $08                                         ; $75bc: $de $08
	nop                                              ; $75be: $00
	cp   $cc                                         ; $75bf: $fe $cc
	nop                                              ; $75c1: $00
	inc  e                                           ; $75c2: $1c
	nop                                              ; $75c3: $00
	ret  nc                                          ; $75c4: $d0

	ldh  [$e8], a                                    ; $75c5: $e0 $e8
	add  b                                           ; $75c7: $80
	ld   [$8800], sp                                 ; $75c8: $08 $00 $88
	add  b                                           ; $75cb: $80
	sbc  b                                           ; $75cc: $98
	add  b                                           ; $75cd: $80
	cp   b                                           ; $75ce: $b8
	add  b                                           ; $75cf: $80
	add  b                                           ; $75d0: $80
	add  hl, bc                                      ; $75d1: $09
	cp   h                                           ; $75d2: $bc
	nop                                              ; $75d3: $00
	db   $fc                                         ; $75d4: $fc
	add  b                                           ; $75d5: $80
	call c, $fc9c                                    ; $75d6: $dc $9c $fc
	ret  nz                                          ; $75d9: $c0

	db   $fc                                         ; $75da: $fc
	add  b                                           ; $75db: $80
	add  b                                           ; $75dc: $80
	sub  h                                           ; $75dd: $94
	ld   bc, $a4f4                                   ; $75de: $01 $f4 $a4
	add  b                                           ; $75e1: $80
	db   $e4                                         ; $75e2: $e4

jr_08f_75e3:
	ld   bc, $6718                                   ; $75e3: $01 $18 $67
	add  b                                           ; $75e6: $80
	rlca                                             ; $75e7: $07
	add  b                                           ; $75e8: $80
	ld   h, b                                        ; $75e9: $60
	add  h                                           ; $75ea: $84
	ld   h, a                                        ; $75eb: $67
	nop                                              ; $75ec: $00
	ld   h, b                                        ; $75ed: $60
	add  b                                           ; $75ee: $80
	ld   l, a                                        ; $75ef: $6f
	ld   bc, $4360                                   ; $75f0: $01 $60 $43
	add  c                                           ; $75f3: $81
	rst  $10                                         ; $75f4: $d7
	add  b                                           ; $75f5: $80
	inc  a                                           ; $75f6: $3c
	nop                                              ; $75f7: $00
	rst  ToBoot                                         ; $75f8: $c7
	add  e                                           ; $75f9: $83
	rst  $10                                         ; $75fa: $d7
	inc  b                                           ; $75fb: $04
	inc  b                                           ; $75fc: $04
	rst  ToBoot                                         ; $75fd: $c7
	db   $eb                                         ; $75fe: $eb
	nop                                              ; $75ff: $00
	ld   a, e                                        ; $7600: $7b
	add  e                                           ; $7601: $83
	ld   a, b                                        ; $7602: $78
	add  h                                           ; $7603: $84
	ld   hl, sp+$00                                  ; $7604: $f8 $00
	nop                                              ; $7606: $00
	add  b                                           ; $7607: $80
	ret  nz                                          ; $7608: $c0

	ld   [bc], a                                     ; $7609: $02
	jr   c, jr_08f_7664                              ; $760a: $38 $58

	nop                                              ; $760c: $00
	add  b                                           ; $760d: $80
	inc  l                                           ; $760e: $2c
	ld   bc, $8cac                                   ; $760f: $01 $ac $8c
	add  b                                           ; $7612: $80
	cp   h                                           ; $7613: $bc
	add  h                                           ; $7614: $84
	db   $fc                                         ; $7615: $fc
	nop                                              ; $7616: $00
	add  b                                           ; $7617: $80
	rst  $38                                         ; $7618: $ff
	nop                                              ; $7619: $00
	inc  c                                           ; $761a: $0c
	ldh  a, [rP1]                                    ; $761b: $f0 $00
	rst  $30                                         ; $761d: $f7
	nop                                              ; $761e: $00
	adc  a                                           ; $761f: $8f
	add  b                                           ; $7620: $80
	nop                                              ; $7621: $00
	inc  bc                                          ; $7622: $03
	ld   [hl], e                                     ; $7623: $73
	ldh  a, [$73]                                    ; $7624: $f0 $73
	di                                               ; $7626: $f3
	nop                                              ; $7627: $00
	add  b                                           ; $7628: $80
	inc  bc                                          ; $7629: $03
	ld   a, [bc]                                     ; $762a: $0a
	nop                                              ; $762b: $00
	rlca                                             ; $762c: $07
	nop                                              ; $762d: $00
	rst  $28                                         ; $762e: $ef
	nop                                              ; $762f: $00
	pop  af                                          ; $7630: $f1
	ld   bc, $e000                                   ; $7631: $01 $00 $e0
	rst  $20                                         ; $7634: $e7
	rlca                                             ; $7635: $07
	add  b                                           ; $7636: $80
	rst  $20                                         ; $7637: $e7
	nop                                              ; $7638: $00
	rlca                                             ; $7639: $07
	add  b                                           ; $763a: $80
	rst  $20                                         ; $763b: $e7
	ld   [bc], a                                     ; $763c: $02
	rlca                                             ; $763d: $07
	ld   l, b                                        ; $763e: $68
	ld   a, b                                        ; $763f: $78
	add  d                                           ; $7640: $82
	ld   hl, sp-$7f                                  ; $7641: $f8 $81
	nop                                              ; $7643: $00
	add  b                                           ; $7644: $80
	ld   a, b                                        ; $7645: $78
	nop                                              ; $7646: $00
	nop                                              ; $7647: $00
	add  d                                           ; $7648: $82
	ld   a, b                                        ; $7649: $78
	ld   bc, $e4f4                                   ; $764a: $01 $f4 $e4
	add  b                                           ; $764d: $80
	add  h                                           ; $764e: $84
	add  b                                           ; $764f: $80
	db   $e4                                         ; $7650: $e4
	add  b                                           ; $7651: $80
	inc  b                                           ; $7652: $04
	inc  b                                           ; $7653: $04
	db   $ec                                         ; $7654: $ec
	ret  nz                                          ; $7655: $c0

	db   $fc                                         ; $7656: $fc
	ret  nz                                          ; $7657: $c0

	db   $f4                                         ; $7658: $f4
	add  c                                           ; $7659: $81
	db   $e4                                         ; $765a: $e4
	nop                                              ; $765b: $00
	jr   jr_08f_75e3                                 ; $765c: $18 $85

	ld   h, a                                        ; $765e: $67
	add  b                                           ; $765f: $80
	ld   h, b                                        ; $7660: $60
	add  h                                           ; $7661: $84
	ld   h, a                                        ; $7662: $67
	nop                                              ; $7663: $00

jr_08f_7664:
	ld   d, a                                        ; $7664: $57
	add  c                                           ; $7665: $81
	db   $d3                                         ; $7666: $d3
	nop                                              ; $7667: $00
	call nc, $d080                                   ; $7668: $d4 $80 $d0
	inc  b                                           ; $766b: $04
	rst  JumpTable                                         ; $766c: $df
	ccf                                              ; $766d: $3f
	nop                                              ; $766e: $00
	ld   a, a                                        ; $766f: $7f
	ld   h, b                                        ; $7670: $60
	add  b                                           ; $7671: $80
	ld   a, a                                        ; $7672: $7f
	ld   [bc], a                                     ; $7673: $02
	ld   b, b                                        ; $7674: $40
	ld   a, a                                        ; $7675: $7f
	rst  ToBoot                                         ; $7676: $c7
	add  c                                           ; $7677: $81
	ld   hl, sp-$80                                  ; $7678: $f8 $80
	jr   c, @+$07                                    ; $767a: $38 $05

	ld   b, b                                        ; $767c: $40
	add  b                                           ; $767d: $80
	ld   hl, sp+$38                                  ; $767e: $f8 $38
	ld   hl, sp+$38                                  ; $7680: $f8 $38
	add  b                                           ; $7682: $80
	ld   hl, sp+$02                                  ; $7683: $f8 $02
	jr   c, @-$06                                    ; $7685: $38 $f8

	cp   h                                           ; $7687: $bc
	add  l                                           ; $7688: $85
	db   $fc                                         ; $7689: $fc
	add  [hl]                                        ; $768a: $86
	ldh  [rP1], a                                    ; $768b: $e0 $00
	add  b                                           ; $768d: $80
	db   $fd                                         ; $768e: $fd
	nop                                              ; $768f: $00
	nop                                              ; $7690: $00
	nop                                              ; $7691: $00
	nop                                              ; $7692: $00
	nop                                              ; $7693: $00
	nop                                              ; $7694: $00
	nop                                              ; $7695: $00
	nop                                              ; $7696: $00
	nop                                              ; $7697: $00
	nop                                              ; $7698: $00
	nop                                              ; $7699: $00
	nop                                              ; $769a: $00
	nop                                              ; $769b: $00
	nop                                              ; $769c: $00
	inc  bc                                          ; $769d: $03
	inc  bc                                          ; $769e: $03
	nop                                              ; $769f: $00
	ld   [$0808], sp                                 ; $76a0: $08 $08 $08
	ld   [rRAMG], sp                                 ; $76a3: $08 $00 $00
	nop                                              ; $76a6: $00
	nop                                              ; $76a7: $00
	nop                                              ; $76a8: $00
	nop                                              ; $76a9: $00
	nop                                              ; $76aa: $00
	nop                                              ; $76ab: $00
	nop                                              ; $76ac: $00
	nop                                              ; $76ad: $00
	nop                                              ; $76ae: $00
	dec  b                                           ; $76af: $05
	nop                                              ; $76b0: $00
	ld   bc, $0001                                   ; $76b1: $01 $01 $00
	ld   [$0808], sp                                 ; $76b4: $08 $08 $08
	ld   [rRAMG], sp                                 ; $76b7: $08 $00 $00
	nop                                              ; $76ba: $00
	nop                                              ; $76bb: $00
	nop                                              ; $76bc: $00
	nop                                              ; $76bd: $00
	nop                                              ; $76be: $00
	nop                                              ; $76bf: $00
	nop                                              ; $76c0: $00
	nop                                              ; $76c1: $00
	nop                                              ; $76c2: $00
	nop                                              ; $76c3: $00
	nop                                              ; $76c4: $00
	nop                                              ; $76c5: $00
	nop                                              ; $76c6: $00
	nop                                              ; $76c7: $00
	ld   [$0808], sp                                 ; $76c8: $08 $08 $08
	ld   [rRAMG], sp                                 ; $76cb: $08 $00 $00
	nop                                              ; $76ce: $00
	ld   b, $06                                      ; $76cf: $06 $06
	nop                                              ; $76d1: $00
	nop                                              ; $76d2: $00
	nop                                              ; $76d3: $00
	nop                                              ; $76d4: $00
	nop                                              ; $76d5: $00
	nop                                              ; $76d6: $00
	nop                                              ; $76d7: $00
	nop                                              ; $76d8: $00
	nop                                              ; $76d9: $00
	nop                                              ; $76da: $00
	nop                                              ; $76db: $00
	ld   [$0808], sp                                 ; $76dc: $08 $08 $08
	ld   [rRAMG], sp                                 ; $76df: $08 $00 $00
	nop                                              ; $76e2: $00
	ld   b, $01                                      ; $76e3: $06 $01
	ld   bc, $0101                                   ; $76e5: $01 $01 $01
	ld   bc, $0006                                   ; $76e8: $01 $06 $00
	nop                                              ; $76eb: $00
	ld   b, $04                                      ; $76ec: $06 $04
	inc  b                                           ; $76ee: $04
	inc  b                                           ; $76ef: $04
	inc  c                                           ; $76f0: $0c
	inc  c                                           ; $76f1: $0c
	ld   c, $08                                      ; $76f2: $0e $08
	nop                                              ; $76f4: $00
	ld   b, $06                                      ; $76f5: $06 $06
	ld   b, $01                                      ; $76f7: $06 $01
	nop                                              ; $76f9: $00
	nop                                              ; $76fa: $00
	nop                                              ; $76fb: $00
	nop                                              ; $76fc: $00
	nop                                              ; $76fd: $00
	nop                                              ; $76fe: $00
	ld   b, $06                                      ; $76ff: $06 $06
	inc  b                                           ; $7701: $04
	inc  b                                           ; $7702: $04
	inc  b                                           ; $7703: $04
	inc  c                                           ; $7704: $0c
	inc  c                                           ; $7705: $0c
	ld   c, $08                                      ; $7706: $0e $08
	ld   bc, $0101                                   ; $7708: $01 $01 $01
	ld   bc, $0301                                   ; $770b: $01 $01 $03
	inc  bc                                          ; $770e: $03
	dec  b                                           ; $770f: $05
	nop                                              ; $7710: $00
	nop                                              ; $7711: $00
	ld   b, $06                                      ; $7712: $06 $06
	dec  b                                           ; $7714: $05
	ld   [bc], a                                     ; $7715: $02
	ld   [bc], a                                     ; $7716: $02
	ld   [bc], a                                     ; $7717: $02
	ld   a, [bc]                                     ; $7718: $0a
	ld   a, [bc]                                     ; $7719: $0a
	ld   a, [bc]                                     ; $771a: $0a
	ld   [rRAMG], sp                                 ; $771b: $08 $00 $00
	nop                                              ; $771e: $00
	ld   bc, $0301                                   ; $771f: $01 $01 $03
	inc  bc                                          ; $7722: $03
	inc  bc                                          ; $7723: $03
	inc  bc                                          ; $7724: $03
	inc  bc                                          ; $7725: $03
	ld   bc, $0206                                   ; $7726: $01 $06 $02
	ld   [bc], a                                     ; $7729: $02
	ld   [bc], a                                     ; $772a: $02
	ld   [bc], a                                     ; $772b: $02
	ld   a, [bc]                                     ; $772c: $0a
	ld   a, [bc]                                     ; $772d: $0a
	ld   a, [bc]                                     ; $772e: $0a
	ld   [rRAMG], sp                                 ; $772f: $08 $00 $00
	nop                                              ; $7732: $00
	ld   b, $01                                      ; $7733: $06 $01
	nop                                              ; $7735: $00
	ld   b, $00                                      ; $7736: $06 $00
	ld   b, $00                                      ; $7738: $06 $00
	ld   b, $06                                      ; $773a: $06 $06
	ld   [bc], a                                     ; $773c: $02
	ld   [bc], a                                     ; $773d: $02
	ld   [bc], a                                     ; $773e: $02
	ld   [bc], a                                     ; $773f: $02
	ld   a, [bc]                                     ; $7740: $0a
	ld   a, [bc]                                     ; $7741: $0a
	ld   a, [bc]                                     ; $7742: $0a
	ld   [$0601], sp                                 ; $7743: $08 $01 $06
	ld   b, $06                                      ; $7746: $06 $06
	ld   bc, $0606                                   ; $7748: $01 $06 $06
	ld   b, $06                                      ; $774b: $06 $06
	ld   b, $06                                      ; $774d: $06 $06
	ld   b, $00                                      ; $774f: $06 $00
	nop                                              ; $7751: $00
	nop                                              ; $7752: $00
	nop                                              ; $7753: $00
	ld   [$0808], sp                                 ; $7754: $08 $08 $08
	ld   [rRAMG], sp                                 ; $7757: $08 $00 $00
	nop                                              ; $775a: $00
	ld   b, $01                                      ; $775b: $06 $01
	ld   bc, $0101                                   ; $775d: $01 $01 $01
	ld   bc, $0101                                   ; $7760: $01 $01 $01
	ld   b, $00                                      ; $7763: $06 $00
	nop                                              ; $7765: $00
	nop                                              ; $7766: $00
	nop                                              ; $7767: $00
	ld   [$0808], sp                                 ; $7768: $08 $08 $08
	ld   [$0500], sp                                 ; $776b: $08 $00 $05
	dec  b                                           ; $776e: $05
	ld   b, $06                                      ; $776f: $06 $06
	nop                                              ; $7771: $00
	nop                                              ; $7772: $00
	nop                                              ; $7773: $00
	nop                                              ; $7774: $00
	nop                                              ; $7775: $00
	nop                                              ; $7776: $00
	nop                                              ; $7777: $00
	nop                                              ; $7778: $00
	nop                                              ; $7779: $00
	nop                                              ; $777a: $00
	nop                                              ; $777b: $00
	ld   [$0808], sp                                 ; $777c: $08 $08 $08
	ld   [rRAMG], sp                                 ; $777f: $08 $00 $00
	nop                                              ; $7782: $00
	ld   b, $06                                      ; $7783: $06 $06
	nop                                              ; $7785: $00
	nop                                              ; $7786: $00
	nop                                              ; $7787: $00
	nop                                              ; $7788: $00
	nop                                              ; $7789: $00
	nop                                              ; $778a: $00
	nop                                              ; $778b: $00
	ld   [bc], a                                     ; $778c: $02
	ld   [bc], a                                     ; $778d: $02
	ld   [bc], a                                     ; $778e: $02
	ld   [bc], a                                     ; $778f: $02
	ld   a, [bc]                                     ; $7790: $0a
	dec  c                                           ; $7791: $0d
	dec  c                                           ; $7792: $0d
	ld   [rRAMG], sp                                 ; $7793: $08 $00 $00
	nop                                              ; $7796: $00
	ld   b, $06                                      ; $7797: $06 $06
	nop                                              ; $7799: $00
	nop                                              ; $779a: $00
	nop                                              ; $779b: $00
	nop                                              ; $779c: $00
	nop                                              ; $779d: $00
	nop                                              ; $779e: $00
	nop                                              ; $779f: $00
	nop                                              ; $77a0: $00
	nop                                              ; $77a1: $00
	ld   [bc], a                                     ; $77a2: $02
	ld   [bc], a                                     ; $77a3: $02
	ld   a, [bc]                                     ; $77a4: $0a
	dec  c                                           ; $77a5: $0d
	dec  c                                           ; $77a6: $0d
	dec  c                                           ; $77a7: $0d
	nop                                              ; $77a8: $00
	nop                                              ; $77a9: $00
	nop                                              ; $77aa: $00
	nop                                              ; $77ab: $00
	nop                                              ; $77ac: $00
	nop                                              ; $77ad: $00
	nop                                              ; $77ae: $00
	dec  b                                           ; $77af: $05
	dec  b                                           ; $77b0: $05
	dec  b                                           ; $77b1: $05
	dec  b                                           ; $77b2: $05
	nop                                              ; $77b3: $00
	ld   [bc], a                                     ; $77b4: $02
	ld   [bc], a                                     ; $77b5: $02
	ld   [bc], a                                     ; $77b6: $02
	ld   [bc], a                                     ; $77b7: $02
	ld   a, [bc]                                     ; $77b8: $0a
	dec  c                                           ; $77b9: $0d
	dec  c                                           ; $77ba: $0d
	ld   [rRAMG], sp                                 ; $77bb: $08 $00 $00
	nop                                              ; $77be: $00
	nop                                              ; $77bf: $00
	nop                                              ; $77c0: $00
	nop                                              ; $77c1: $00
	nop                                              ; $77c2: $00
	dec  b                                           ; $77c3: $05
	dec  b                                           ; $77c4: $05
	dec  b                                           ; $77c5: $05
	dec  b                                           ; $77c6: $05
	nop                                              ; $77c7: $00
	ld   [bc], a                                     ; $77c8: $02
	ld   [bc], a                                     ; $77c9: $02
	ld   [bc], a                                     ; $77ca: $02
	ld   [bc], a                                     ; $77cb: $02
	ld   a, [bc]                                     ; $77cc: $0a
	dec  c                                           ; $77cd: $0d
	dec  c                                           ; $77ce: $0d
	ld   [$0808], sp                                 ; $77cf: $08 $08 $08
	ld   [$0808], sp                                 ; $77d2: $08 $08 $08
	ld   [$0808], sp                                 ; $77d5: $08 $08 $08
	ld   [$0808], sp                                 ; $77d8: $08 $08 $08
	ld   [$0808], sp                                 ; $77db: $08 $08 $08
	ld   [$0d0d], sp                                 ; $77de: $08 $0d $0d
	ld   [$0808], sp                                 ; $77e1: $08 $08 $08
	ld   [$0808], sp                                 ; $77e4: $08 $08 $08
	ld   [$0808], sp                                 ; $77e7: $08 $08 $08
	ld   [$0808], sp                                 ; $77ea: $08 $08 $08
	ld   [$0808], sp                                 ; $77ed: $08 $08 $08
	ld   [$0808], sp                                 ; $77f0: $08 $08 $08
	ld   [$0808], sp                                 ; $77f3: $08 $08 $08
	ld   [$8008], sp                                 ; $77f6: $08 $08 $80
	add  c                                           ; $77f9: $81
	add  d                                           ; $77fa: $82
	add  e                                           ; $77fb: $83
	add  h                                           ; $77fc: $84
	add  l                                           ; $77fd: $85
	add  [hl]                                        ; $77fe: $86
	add  a                                           ; $77ff: $87
	adc  b                                           ; $7800: $88
	adc  c                                           ; $7801: $89
	adc  d                                           ; $7802: $8a
	adc  e                                           ; $7803: $8b
	adc  h                                           ; $7804: $8c
	adc  l                                           ; $7805: $8d
	adc  [hl]                                        ; $7806: $8e
	adc  a                                           ; $7807: $8f
	inc  b                                           ; $7808: $04
	dec  b                                           ; $7809: $05
	ld   b, $07                                      ; $780a: $06 $07
	sub  b                                           ; $780c: $90
	sub  c                                           ; $780d: $91
	sub  d                                           ; $780e: $92
	sub  e                                           ; $780f: $93
	sub  h                                           ; $7810: $94
	sub  l                                           ; $7811: $95
	sub  [hl]                                        ; $7812: $96
	sub  a                                           ; $7813: $97
	sbc  b                                           ; $7814: $98
	sbc  c                                           ; $7815: $99
	sbc  d                                           ; $7816: $9a
	sbc  e                                           ; $7817: $9b
	sbc  h                                           ; $7818: $9c
	sbc  l                                           ; $7819: $9d
	sbc  [hl]                                        ; $781a: $9e
	sbc  a                                           ; $781b: $9f
	inc  d                                           ; $781c: $14
	dec  d                                           ; $781d: $15
	ld   d, $17                                      ; $781e: $16 $17
	and  b                                           ; $7820: $a0
	and  c                                           ; $7821: $a1
	and  d                                           ; $7822: $a2
	and  e                                           ; $7823: $a3
	and  h                                           ; $7824: $a4
	and  l                                           ; $7825: $a5
	and  [hl]                                        ; $7826: $a6
	and  a                                           ; $7827: $a7
	xor  b                                           ; $7828: $a8
	xor  c                                           ; $7829: $a9
	xor  d                                           ; $782a: $aa
	xor  e                                           ; $782b: $ab
	xor  h                                           ; $782c: $ac
	xor  l                                           ; $782d: $ad
	xor  [hl]                                        ; $782e: $ae
	xor  a                                           ; $782f: $af
	inc  h                                           ; $7830: $24
	dec  h                                           ; $7831: $25
	ld   h, $27                                      ; $7832: $26 $27
	or   b                                           ; $7834: $b0
	or   c                                           ; $7835: $b1
	or   d                                           ; $7836: $b2
	or   e                                           ; $7837: $b3
	or   h                                           ; $7838: $b4
	or   l                                           ; $7839: $b5
	or   [hl]                                        ; $783a: $b6
	or   a                                           ; $783b: $b7
	cp   b                                           ; $783c: $b8
	cp   c                                           ; $783d: $b9
	cp   d                                           ; $783e: $ba
	cp   e                                           ; $783f: $bb
	cp   h                                           ; $7840: $bc
	cp   l                                           ; $7841: $bd
	cp   [hl]                                        ; $7842: $be
	cp   a                                           ; $7843: $bf
	inc  [hl]                                        ; $7844: $34
	dec  [hl]                                        ; $7845: $35
	ld   [hl], $37                                   ; $7846: $36 $37
	ret  nz                                          ; $7848: $c0

	pop  bc                                          ; $7849: $c1
	jp   nz, $c4c3                                   ; $784a: $c2 $c3 $c4

	push bc                                          ; $784d: $c5
	add  $c7                                         ; $784e: $c6 $c7
	ret  z                                           ; $7850: $c8

	ret                                              ; $7851: $c9


	jp   z, $cccb                                    ; $7852: $ca $cb $cc

	call $cfce                                       ; $7855: $cd $ce $cf
	ld   b, h                                        ; $7858: $44
	ld   b, l                                        ; $7859: $45
	ld   b, [hl]                                     ; $785a: $46
	ld   b, a                                        ; $785b: $47
	ret  nc                                          ; $785c: $d0

	pop  de                                          ; $785d: $d1
	jp   nc, $d4d3                                   ; $785e: $d2 $d3 $d4

	push de                                          ; $7861: $d5
	sub  $d7                                         ; $7862: $d6 $d7
	ret  c                                           ; $7864: $d8

	reti                                             ; $7865: $d9


	jp   c, $dcdb                                    ; $7866: $da $db $dc

	db   $dd                                         ; $7869: $dd
	sbc  $df                                         ; $786a: $de $df
	ld   d, h                                        ; $786c: $54
	ld   d, l                                        ; $786d: $55
	ld   d, [hl]                                     ; $786e: $56
	ld   d, a                                        ; $786f: $57
	ldh  [$e1], a                                    ; $7870: $e0 $e1
	ldh  [c], a                                      ; $7872: $e2
	db   $e3                                         ; $7873: $e3
	db   $e4                                         ; $7874: $e4
	push hl                                          ; $7875: $e5
	and  $e7                                         ; $7876: $e6 $e7
	add  sp, -$17                                    ; $7878: $e8 $e9
	ld   [$eceb], a                                  ; $787a: $ea $eb $ec
	db   $ed                                         ; $787d: $ed
	xor  $ef                                         ; $787e: $ee $ef
	ld   h, h                                        ; $7880: $64
	ld   h, l                                        ; $7881: $65
	ld   h, [hl]                                     ; $7882: $66
	ld   h, a                                        ; $7883: $67
	ldh  a, [$f1]                                    ; $7884: $f0 $f1
	ldh  a, [c]                                      ; $7886: $f2
	di                                               ; $7887: $f3
	db   $f4                                         ; $7888: $f4
	push af                                          ; $7889: $f5
	or   $f7                                         ; $788a: $f6 $f7
	ld   hl, sp-$07                                  ; $788c: $f8 $f9
	ld   a, [$fcfb]                                  ; $788e: $fa $fb $fc
	db   $fd                                         ; $7891: $fd
	cp   $ff                                         ; $7892: $fe $ff
	ld   [hl], h                                     ; $7894: $74
	ld   [hl], l                                     ; $7895: $75
	halt                                             ; $7896: $76
	ld   [hl], a                                     ; $7897: $77
	nop                                              ; $7898: $00
	ld   bc, $0302                                   ; $7899: $01 $02 $03
	inc  b                                           ; $789c: $04
	dec  b                                           ; $789d: $05
	ld   b, $07                                      ; $789e: $06 $07
	ld   [$0a09], sp                                 ; $78a0: $08 $09 $0a
	dec  bc                                          ; $78a3: $0b
	inc  c                                           ; $78a4: $0c
	dec  c                                           ; $78a5: $0d
	ld   c, $0f                                      ; $78a6: $0e $0f
	nop                                              ; $78a8: $00
	ld   bc, $0302                                   ; $78a9: $01 $02 $03
	db   $10                                         ; $78ac: $10
	ld   de, $1312                                   ; $78ad: $11 $12 $13
	inc  d                                           ; $78b0: $14
	dec  d                                           ; $78b1: $15
	ld   d, $17                                      ; $78b2: $16 $17
	jr   @+$1b                                       ; $78b4: $18 $19

	ld   a, [de]                                     ; $78b6: $1a
	dec  de                                          ; $78b7: $1b
	inc  e                                           ; $78b8: $1c
	dec  e                                           ; $78b9: $1d
	ld   e, $1f                                      ; $78ba: $1e $1f
	db   $10                                         ; $78bc: $10
	ld   de, $1312                                   ; $78bd: $11 $12 $13
	jr   nz, @+$23                                   ; $78c0: $20 $21

	ld   [hl+], a                                    ; $78c2: $22
	inc  hl                                          ; $78c3: $23
	inc  h                                           ; $78c4: $24
	dec  h                                           ; $78c5: $25
	ld   h, $27                                      ; $78c6: $26 $27
	jr   z, jr_08f_78f3                              ; $78c8: $28 $29

	ld   a, [hl+]                                    ; $78ca: $2a
	dec  hl                                          ; $78cb: $2b
	inc  l                                           ; $78cc: $2c
	dec  l                                           ; $78cd: $2d
	ld   l, $2f                                      ; $78ce: $2e $2f
	jr   nz, jr_08f_78f3                             ; $78d0: $20 $21

	ld   [hl+], a                                    ; $78d2: $22
	inc  hl                                          ; $78d3: $23
	jr   nc, jr_08f_7907                             ; $78d4: $30 $31

	ld   [hl-], a                                    ; $78d6: $32
	inc  sp                                          ; $78d7: $33
	inc  [hl]                                        ; $78d8: $34
	dec  [hl]                                        ; $78d9: $35
	ld   [hl], $37                                   ; $78da: $36 $37
	jr   c, jr_08f_7917                              ; $78dc: $38 $39

	ld   a, [hl-]                                    ; $78de: $3a
	dec  sp                                          ; $78df: $3b
	inc  a                                           ; $78e0: $3c
	dec  a                                           ; $78e1: $3d
	ld   a, $3f                                      ; $78e2: $3e $3f
	jr   nc, jr_08f_7917                             ; $78e4: $30 $31

	ld   [hl-], a                                    ; $78e6: $32
	inc  sp                                          ; $78e7: $33
	ld   b, b                                        ; $78e8: $40
	ld   b, c                                        ; $78e9: $41
	ld   b, d                                        ; $78ea: $42
	ld   b, e                                        ; $78eb: $43
	ld   b, h                                        ; $78ec: $44
	ld   b, l                                        ; $78ed: $45
	ld   b, [hl]                                     ; $78ee: $46
	ld   b, a                                        ; $78ef: $47
	ld   c, b                                        ; $78f0: $48
	ld   c, c                                        ; $78f1: $49
	ld   c, d                                        ; $78f2: $4a

jr_08f_78f3:
	ld   c, e                                        ; $78f3: $4b
	ld   c, h                                        ; $78f4: $4c
	ld   c, l                                        ; $78f5: $4d
	ld   c, [hl]                                     ; $78f6: $4e
	ld   c, a                                        ; $78f7: $4f
	ld   b, b                                        ; $78f8: $40
	ld   b, c                                        ; $78f9: $41
	ld   b, d                                        ; $78fa: $42
	ld   b, e                                        ; $78fb: $43
	ld   d, b                                        ; $78fc: $50
	ld   d, c                                        ; $78fd: $51
	ld   d, d                                        ; $78fe: $52
	ld   d, e                                        ; $78ff: $53
	ld   d, h                                        ; $7900: $54
	ld   d, l                                        ; $7901: $55
	ld   d, [hl]                                     ; $7902: $56
	ld   d, a                                        ; $7903: $57
	ld   e, b                                        ; $7904: $58
	ld   e, c                                        ; $7905: $59
	ld   e, d                                        ; $7906: $5a

jr_08f_7907:
	ld   e, e                                        ; $7907: $5b
	ld   e, h                                        ; $7908: $5c
	ld   e, l                                        ; $7909: $5d
	ld   e, [hl]                                     ; $790a: $5e
	ld   e, a                                        ; $790b: $5f
	ld   d, b                                        ; $790c: $50
	ld   d, c                                        ; $790d: $51
	ld   d, d                                        ; $790e: $52
	ld   d, e                                        ; $790f: $53
	ld   h, b                                        ; $7910: $60
	ld   h, c                                        ; $7911: $61
	ld   h, d                                        ; $7912: $62
	ld   h, e                                        ; $7913: $63
	ld   h, h                                        ; $7914: $64
	ld   h, l                                        ; $7915: $65
	ld   h, [hl]                                     ; $7916: $66

jr_08f_7917:
	ld   h, a                                        ; $7917: $67
	ld   l, b                                        ; $7918: $68
	ld   l, c                                        ; $7919: $69
	ld   l, d                                        ; $791a: $6a
	ld   l, e                                        ; $791b: $6b
	ld   l, h                                        ; $791c: $6c
	ld   l, l                                        ; $791d: $6d
	ld   l, [hl]                                     ; $791e: $6e
	ld   l, a                                        ; $791f: $6f
	ld   h, b                                        ; $7920: $60
	ld   h, c                                        ; $7921: $61
	ld   h, d                                        ; $7922: $62
	ld   h, e                                        ; $7923: $63
	ld   [hl], b                                     ; $7924: $70
	ld   [hl], c                                     ; $7925: $71
	ld   [hl], d                                     ; $7926: $72
	ld   [hl], e                                     ; $7927: $73
	ld   [hl], h                                     ; $7928: $74
	ld   [hl], l                                     ; $7929: $75
	halt                                             ; $792a: $76
	ld   [hl], a                                     ; $792b: $77
	ld   a, b                                        ; $792c: $78
	ld   a, c                                        ; $792d: $79
	ld   a, d                                        ; $792e: $7a
	ld   a, e                                        ; $792f: $7b
	ld   a, h                                        ; $7930: $7c
	ld   a, l                                        ; $7931: $7d
	ld   a, [hl]                                     ; $7932: $7e
	ld   a, a                                        ; $7933: $7f
	ld   [hl], b                                     ; $7934: $70
	ld   [hl], c                                     ; $7935: $71
	ld   [hl], d                                     ; $7936: $72
	ld   [hl], e                                     ; $7937: $73
	ld   [$0a09], sp                                 ; $7938: $08 $09 $0a
	dec  bc                                          ; $793b: $0b
	inc  c                                           ; $793c: $0c
	dec  c                                           ; $793d: $0d
	ld   c, $0f                                      ; $793e: $0e $0f
	jr   z, jr_08f_796b                              ; $7940: $28 $29

	ld   a, [hl+]                                    ; $7942: $2a
	dec  hl                                          ; $7943: $2b
	inc  l                                           ; $7944: $2c
	dec  l                                           ; $7945: $2d
	ld   l, $2f                                      ; $7946: $2e $2f
	ld   c, b                                        ; $7948: $48
	ld   c, c                                        ; $7949: $49
	ld   c, d                                        ; $794a: $4a
	ld   c, e                                        ; $794b: $4b
	jr   jr_08f_7967                                 ; $794c: $18 $19

	ld   a, [de]                                     ; $794e: $1a
	dec  de                                          ; $794f: $1b
	inc  e                                           ; $7950: $1c
	dec  e                                           ; $7951: $1d
	ld   e, $1f                                      ; $7952: $1e $1f
	jr   c, jr_08f_798f                              ; $7954: $38 $39

	ld   a, [hl-]                                    ; $7956: $3a
	dec  sp                                          ; $7957: $3b
	inc  a                                           ; $7958: $3c
	dec  a                                           ; $7959: $3d
	ld   a, $3f                                      ; $795a: $3e $3f
	ld   e, b                                        ; $795c: $58
	ld   e, c                                        ; $795d: $59
	ld   e, d                                        ; $795e: $5a
	ld   e, e                                        ; $795f: $5b
	nop                                              ; $7960: $00
	nop                                              ; $7961: $00
	nop                                              ; $7962: $00
	nop                                              ; $7963: $00
	nop                                              ; $7964: $00
	nop                                              ; $7965: $00
	nop                                              ; $7966: $00

jr_08f_7967:
	nop                                              ; $7967: $00
	nop                                              ; $7968: $00
	nop                                              ; $7969: $00
	nop                                              ; $796a: $00

jr_08f_796b:
	nop                                              ; $796b: $00
	nop                                              ; $796c: $00
	nop                                              ; $796d: $00
	nop                                              ; $796e: $00
	nop                                              ; $796f: $00
	ld   [$0808], sp                                 ; $7970: $08 $08 $08
	ld   [$0500], sp                                 ; $7973: $08 $00 $05
	inc  bc                                          ; $7976: $03
	nop                                              ; $7977: $00
	nop                                              ; $7978: $00
	dec  b                                           ; $7979: $05
	nop                                              ; $797a: $00
	dec  b                                           ; $797b: $05
	nop                                              ; $797c: $00
	nop                                              ; $797d: $00
	nop                                              ; $797e: $00
	nop                                              ; $797f: $00
	nop                                              ; $7980: $00
	nop                                              ; $7981: $00
	nop                                              ; $7982: $00
	nop                                              ; $7983: $00
	ld   [$0808], sp                                 ; $7984: $08 $08 $08
	ld   [$0600], sp                                 ; $7987: $08 $00 $06
	ld   b, $00                                      ; $798a: $06 $00
	nop                                              ; $798c: $00
	dec  b                                           ; $798d: $05
	nop                                              ; $798e: $00

jr_08f_798f:
	dec  b                                           ; $798f: $05
	dec  b                                           ; $7990: $05
	nop                                              ; $7991: $00
	nop                                              ; $7992: $00
	nop                                              ; $7993: $00
	nop                                              ; $7994: $00
	ld   b, $06                                      ; $7995: $06 $06
	ld   b, $0e                                      ; $7997: $06 $0e
	ld   c, $0e                                      ; $7999: $0e $0e
	ld   [rRAMG], sp                                 ; $799b: $08 $00 $00
	nop                                              ; $799e: $00
	nop                                              ; $799f: $00
	nop                                              ; $79a0: $00
	nop                                              ; $79a1: $00
	nop                                              ; $79a2: $00
	nop                                              ; $79a3: $00
	dec  b                                           ; $79a4: $05
	nop                                              ; $79a5: $00
	nop                                              ; $79a6: $00
	nop                                              ; $79a7: $00
	nop                                              ; $79a8: $00
	nop                                              ; $79a9: $00
	nop                                              ; $79aa: $00
	nop                                              ; $79ab: $00
	ld   [$0808], sp                                 ; $79ac: $08 $08 $08
	ld   [rRAMG], sp                                 ; $79af: $08 $00 $00
	nop                                              ; $79b2: $00
	nop                                              ; $79b3: $00
	nop                                              ; $79b4: $00
	nop                                              ; $79b5: $00
	nop                                              ; $79b6: $00
	nop                                              ; $79b7: $00
	nop                                              ; $79b8: $00
	nop                                              ; $79b9: $00
	nop                                              ; $79ba: $00
	nop                                              ; $79bb: $00
	inc  bc                                          ; $79bc: $03
	inc  b                                           ; $79bd: $04
	inc  b                                           ; $79be: $04
	inc  b                                           ; $79bf: $04
	inc  c                                           ; $79c0: $0c
	inc  c                                           ; $79c1: $0c
	dec  bc                                          ; $79c2: $0b
	ld   [rRAMG], sp                                 ; $79c3: $08 $00 $00
	nop                                              ; $79c6: $00
	nop                                              ; $79c7: $00
	nop                                              ; $79c8: $00
	nop                                              ; $79c9: $00
	nop                                              ; $79ca: $00
	nop                                              ; $79cb: $00
	nop                                              ; $79cc: $00
	nop                                              ; $79cd: $00
	nop                                              ; $79ce: $00
	nop                                              ; $79cf: $00
	inc  bc                                          ; $79d0: $03
	inc  b                                           ; $79d1: $04
	inc  b                                           ; $79d2: $04
	inc  b                                           ; $79d3: $04
	inc  c                                           ; $79d4: $0c
	inc  c                                           ; $79d5: $0c
	dec  bc                                          ; $79d6: $0b
	ld   [$0200], sp                                 ; $79d7: $08 $00 $02
	ld   [bc], a                                     ; $79da: $02
	nop                                              ; $79db: $00
	nop                                              ; $79dc: $00
	dec  b                                           ; $79dd: $05
	nop                                              ; $79de: $00
	dec  b                                           ; $79df: $05
	ld   b, $00                                      ; $79e0: $06 $00
	dec  b                                           ; $79e2: $05
	nop                                              ; $79e3: $00
	ld   [bc], a                                     ; $79e4: $02
	ld   [bc], a                                     ; $79e5: $02
	ld   [bc], a                                     ; $79e6: $02
	ld   [bc], a                                     ; $79e7: $02
	ld   a, [bc]                                     ; $79e8: $0a
	ld   a, [bc]                                     ; $79e9: $0a
	ld   a, [bc]                                     ; $79ea: $0a
	ld   [$0302], sp                                 ; $79eb: $08 $02 $03
	inc  bc                                          ; $79ee: $03
	nop                                              ; $79ef: $00
	nop                                              ; $79f0: $00
	ld   [bc], a                                     ; $79f1: $02
	nop                                              ; $79f2: $00
	dec  b                                           ; $79f3: $05
	ld   b, $00                                      ; $79f4: $06 $00
	ld   bc, $0201                                   ; $79f6: $01 $01 $02
	ld   [bc], a                                     ; $79f9: $02
	ld   [bc], a                                     ; $79fa: $02
	ld   [bc], a                                     ; $79fb: $02
	ld   a, [bc]                                     ; $79fc: $0a
	ld   a, [bc]                                     ; $79fd: $0a
	ld   a, [bc]                                     ; $79fe: $0a
	ld   [$0300], sp                                 ; $79ff: $08 $00 $03
	inc  bc                                          ; $7a02: $03
	nop                                              ; $7a03: $00
	nop                                              ; $7a04: $00
	nop                                              ; $7a05: $00
	nop                                              ; $7a06: $00
	nop                                              ; $7a07: $00
	nop                                              ; $7a08: $00
	nop                                              ; $7a09: $00
	nop                                              ; $7a0a: $00
	ld   bc, $0202                                   ; $7a0b: $01 $02 $02
	ld   [bc], a                                     ; $7a0e: $02
	ld   [bc], a                                     ; $7a0f: $02
	ld   a, [bc]                                     ; $7a10: $0a
	ld   a, [bc]                                     ; $7a11: $0a
	ld   a, [bc]                                     ; $7a12: $0a
	ld   [rRAMG], sp                                 ; $7a13: $08 $00 $00
	nop                                              ; $7a16: $00
	nop                                              ; $7a17: $00
	nop                                              ; $7a18: $00
	nop                                              ; $7a19: $00
	nop                                              ; $7a1a: $00
	nop                                              ; $7a1b: $00
	nop                                              ; $7a1c: $00
	nop                                              ; $7a1d: $00
	nop                                              ; $7a1e: $00
	inc  bc                                          ; $7a1f: $03
	ld   [bc], a                                     ; $7a20: $02
	nop                                              ; $7a21: $00
	nop                                              ; $7a22: $00
	ld   [bc], a                                     ; $7a23: $02
	ld   [$0808], sp                                 ; $7a24: $08 $08 $08
	ld   [rRAMG], sp                                 ; $7a27: $08 $00 $00
	ld   b, $00                                      ; $7a2a: $06 $00
	nop                                              ; $7a2c: $00
	inc  bc                                          ; $7a2d: $03
	inc  bc                                          ; $7a2e: $03
	nop                                              ; $7a2f: $00
	inc  bc                                          ; $7a30: $03
	inc  bc                                          ; $7a31: $03
	nop                                              ; $7a32: $00
	inc  bc                                          ; $7a33: $03
	nop                                              ; $7a34: $00
	nop                                              ; $7a35: $00
	nop                                              ; $7a36: $00
	nop                                              ; $7a37: $00
	ld   [$0808], sp                                 ; $7a38: $08 $08 $08
	ld   [$0006], sp                                 ; $7a3b: $08 $06 $00
	nop                                              ; $7a3e: $00
	nop                                              ; $7a3f: $00
	nop                                              ; $7a40: $00
	nop                                              ; $7a41: $00
	nop                                              ; $7a42: $00
	nop                                              ; $7a43: $00
	nop                                              ; $7a44: $00
	nop                                              ; $7a45: $00
	nop                                              ; $7a46: $00
	nop                                              ; $7a47: $00
	nop                                              ; $7a48: $00
	nop                                              ; $7a49: $00
	nop                                              ; $7a4a: $00
	nop                                              ; $7a4b: $00
	ld   [$0808], sp                                 ; $7a4c: $08 $08 $08
	ld   [$0500], sp                                 ; $7a4f: $08 $00 $05
	ld   [bc], a                                     ; $7a52: $02
	ld   [bc], a                                     ; $7a53: $02
	ld   [bc], a                                     ; $7a54: $02
	ld   [bc], a                                     ; $7a55: $02
	nop                                              ; $7a56: $00
	nop                                              ; $7a57: $00
	nop                                              ; $7a58: $00
	nop                                              ; $7a59: $00
	nop                                              ; $7a5a: $00
	nop                                              ; $7a5b: $00
	ld   [bc], a                                     ; $7a5c: $02
	ld   [bc], a                                     ; $7a5d: $02
	ld   [bc], a                                     ; $7a5e: $02
	ld   [bc], a                                     ; $7a5f: $02
	ld   a, [bc]                                     ; $7a60: $0a
	dec  c                                           ; $7a61: $0d
	dec  c                                           ; $7a62: $0d
	ld   [$0505], sp                                 ; $7a63: $08 $05 $05
	dec  b                                           ; $7a66: $05
	dec  b                                           ; $7a67: $05
	ld   [bc], a                                     ; $7a68: $02
	ld   [bc], a                                     ; $7a69: $02
	nop                                              ; $7a6a: $00
	nop                                              ; $7a6b: $00
	nop                                              ; $7a6c: $00
	nop                                              ; $7a6d: $00
	nop                                              ; $7a6e: $00
	nop                                              ; $7a6f: $00
	ld   [bc], a                                     ; $7a70: $02
	ld   [bc], a                                     ; $7a71: $02
	dec  b                                           ; $7a72: $05
	dec  b                                           ; $7a73: $05
	dec  c                                           ; $7a74: $0d
	dec  c                                           ; $7a75: $0d
	dec  c                                           ; $7a76: $0d
	dec  c                                           ; $7a77: $0d
	ld   [bc], a                                     ; $7a78: $02
	ld   [bc], a                                     ; $7a79: $02
	ld   [bc], a                                     ; $7a7a: $02
	dec  b                                           ; $7a7b: $05
	ld   [bc], a                                     ; $7a7c: $02
	dec  b                                           ; $7a7d: $05
	nop                                              ; $7a7e: $00
	nop                                              ; $7a7f: $00
	nop                                              ; $7a80: $00
	nop                                              ; $7a81: $00
	nop                                              ; $7a82: $00
	nop                                              ; $7a83: $00
	ld   [bc], a                                     ; $7a84: $02
	ld   [bc], a                                     ; $7a85: $02
	dec  b                                           ; $7a86: $05
	dec  b                                           ; $7a87: $05
	dec  c                                           ; $7a88: $0d
	dec  c                                           ; $7a89: $0d
	dec  c                                           ; $7a8a: $0d
	ld   [rRAMG], sp                                 ; $7a8b: $08 $00 $00
	nop                                              ; $7a8e: $00
	dec  b                                           ; $7a8f: $05
	ld   [bc], a                                     ; $7a90: $02
	ld   [bc], a                                     ; $7a91: $02
	ld   [bc], a                                     ; $7a92: $02
	ld   [bc], a                                     ; $7a93: $02
	ld   [bc], a                                     ; $7a94: $02
	ld   [bc], a                                     ; $7a95: $02
	ld   [bc], a                                     ; $7a96: $02
	ld   [bc], a                                     ; $7a97: $02
	ld   [bc], a                                     ; $7a98: $02
	ld   [bc], a                                     ; $7a99: $02
	nop                                              ; $7a9a: $00
	nop                                              ; $7a9b: $00
	ld   [$0d0d], sp                                 ; $7a9c: $08 $0d $0d
	ld   [$0808], sp                                 ; $7a9f: $08 $08 $08
	ld   [$0808], sp                                 ; $7aa2: $08 $08 $08
	ld   [$0808], sp                                 ; $7aa5: $08 $08 $08
	ld   [$0808], sp                                 ; $7aa8: $08 $08 $08
	ld   [$0808], sp                                 ; $7aab: $08 $08 $08
	ld   [$0808], sp                                 ; $7aae: $08 $08 $08
	ld   [$0808], sp                                 ; $7ab1: $08 $08 $08
	ld   [$0808], sp                                 ; $7ab4: $08 $08 $08
	ld   [$0808], sp                                 ; $7ab7: $08 $08 $08
	ld   [$0808], sp                                 ; $7aba: $08 $08 $08
	ld   [$0808], sp                                 ; $7abd: $08 $08 $08
	ld   [$0808], sp                                 ; $7ac0: $08 $08 $08
	ld   [$0808], sp                                 ; $7ac3: $08 $08 $08
	ld   [$8008], sp                                 ; $7ac6: $08 $08 $80
	add  c                                           ; $7ac9: $81
	add  d                                           ; $7aca: $82
	add  e                                           ; $7acb: $83
	add  h                                           ; $7acc: $84
	add  l                                           ; $7acd: $85
	add  [hl]                                        ; $7ace: $86
	add  a                                           ; $7acf: $87
	adc  b                                           ; $7ad0: $88
	adc  c                                           ; $7ad1: $89
	adc  d                                           ; $7ad2: $8a
	adc  e                                           ; $7ad3: $8b
	adc  h                                           ; $7ad4: $8c
	adc  l                                           ; $7ad5: $8d
	adc  [hl]                                        ; $7ad6: $8e
	adc  a                                           ; $7ad7: $8f
	inc  b                                           ; $7ad8: $04
	dec  b                                           ; $7ad9: $05
	ld   b, $07                                      ; $7ada: $06 $07
	sub  b                                           ; $7adc: $90
	sub  c                                           ; $7add: $91
	sub  d                                           ; $7ade: $92
	sub  e                                           ; $7adf: $93
	sub  h                                           ; $7ae0: $94
	sub  l                                           ; $7ae1: $95
	sub  [hl]                                        ; $7ae2: $96
	sub  a                                           ; $7ae3: $97
	sbc  b                                           ; $7ae4: $98
	sbc  c                                           ; $7ae5: $99
	sbc  d                                           ; $7ae6: $9a
	sbc  e                                           ; $7ae7: $9b
	sbc  h                                           ; $7ae8: $9c
	sbc  l                                           ; $7ae9: $9d
	sbc  [hl]                                        ; $7aea: $9e
	sbc  a                                           ; $7aeb: $9f
	inc  d                                           ; $7aec: $14
	dec  d                                           ; $7aed: $15
	ld   d, $17                                      ; $7aee: $16 $17
	and  b                                           ; $7af0: $a0
	and  c                                           ; $7af1: $a1
	and  d                                           ; $7af2: $a2
	and  e                                           ; $7af3: $a3
	and  h                                           ; $7af4: $a4
	and  l                                           ; $7af5: $a5
	and  [hl]                                        ; $7af6: $a6
	and  a                                           ; $7af7: $a7
	xor  b                                           ; $7af8: $a8
	xor  c                                           ; $7af9: $a9
	xor  d                                           ; $7afa: $aa
	xor  e                                           ; $7afb: $ab
	xor  h                                           ; $7afc: $ac
	xor  l                                           ; $7afd: $ad
	xor  [hl]                                        ; $7afe: $ae
	xor  a                                           ; $7aff: $af
	inc  h                                           ; $7b00: $24
	dec  h                                           ; $7b01: $25
	ld   h, $27                                      ; $7b02: $26 $27
	or   b                                           ; $7b04: $b0
	or   c                                           ; $7b05: $b1
	or   d                                           ; $7b06: $b2
	or   e                                           ; $7b07: $b3
	or   h                                           ; $7b08: $b4
	or   l                                           ; $7b09: $b5
	or   [hl]                                        ; $7b0a: $b6
	or   a                                           ; $7b0b: $b7
	cp   b                                           ; $7b0c: $b8
	cp   c                                           ; $7b0d: $b9
	cp   d                                           ; $7b0e: $ba
	cp   e                                           ; $7b0f: $bb
	cp   h                                           ; $7b10: $bc
	cp   l                                           ; $7b11: $bd
	cp   [hl]                                        ; $7b12: $be
	cp   a                                           ; $7b13: $bf
	inc  [hl]                                        ; $7b14: $34
	dec  [hl]                                        ; $7b15: $35
	ld   [hl], $37                                   ; $7b16: $36 $37
	ret  nz                                          ; $7b18: $c0

	pop  bc                                          ; $7b19: $c1
	jp   nz, $c4c3                                   ; $7b1a: $c2 $c3 $c4

	push bc                                          ; $7b1d: $c5
	add  $c7                                         ; $7b1e: $c6 $c7
	ret  z                                           ; $7b20: $c8

	ret                                              ; $7b21: $c9


	jp   z, $cccb                                    ; $7b22: $ca $cb $cc

	call $cfce                                       ; $7b25: $cd $ce $cf
	ld   b, h                                        ; $7b28: $44
	ld   b, l                                        ; $7b29: $45
	ld   b, [hl]                                     ; $7b2a: $46
	ld   b, a                                        ; $7b2b: $47
	ret  nc                                          ; $7b2c: $d0

	pop  de                                          ; $7b2d: $d1
	jp   nc, $d4d3                                   ; $7b2e: $d2 $d3 $d4

	push de                                          ; $7b31: $d5
	sub  $d7                                         ; $7b32: $d6 $d7
	ret  c                                           ; $7b34: $d8

	reti                                             ; $7b35: $d9


	jp   c, $dcdb                                    ; $7b36: $da $db $dc

	db   $dd                                         ; $7b39: $dd
	sbc  $df                                         ; $7b3a: $de $df
	ld   d, h                                        ; $7b3c: $54
	ld   d, l                                        ; $7b3d: $55
	ld   d, [hl]                                     ; $7b3e: $56
	ld   d, a                                        ; $7b3f: $57
	ldh  [$e1], a                                    ; $7b40: $e0 $e1
	ldh  [c], a                                      ; $7b42: $e2
	db   $e3                                         ; $7b43: $e3
	db   $e4                                         ; $7b44: $e4
	push hl                                          ; $7b45: $e5
	and  $e7                                         ; $7b46: $e6 $e7
	add  sp, -$17                                    ; $7b48: $e8 $e9
	ld   [$eceb], a                                  ; $7b4a: $ea $eb $ec
	db   $ed                                         ; $7b4d: $ed
	xor  $ef                                         ; $7b4e: $ee $ef
	ld   h, h                                        ; $7b50: $64
	ld   h, l                                        ; $7b51: $65
	ld   h, [hl]                                     ; $7b52: $66
	ld   h, a                                        ; $7b53: $67
	ldh  a, [$f1]                                    ; $7b54: $f0 $f1
	ldh  a, [c]                                      ; $7b56: $f2
	di                                               ; $7b57: $f3
	db   $f4                                         ; $7b58: $f4
	push af                                          ; $7b59: $f5
	or   $f7                                         ; $7b5a: $f6 $f7
	ld   hl, sp-$07                                  ; $7b5c: $f8 $f9
	ld   a, [$fcfb]                                  ; $7b5e: $fa $fb $fc
	db   $fd                                         ; $7b61: $fd
	cp   $ff                                         ; $7b62: $fe $ff
	ld   [hl], h                                     ; $7b64: $74
	ld   [hl], l                                     ; $7b65: $75
	halt                                             ; $7b66: $76
	ld   [hl], a                                     ; $7b67: $77
	nop                                              ; $7b68: $00
	ld   bc, $0302                                   ; $7b69: $01 $02 $03
	inc  b                                           ; $7b6c: $04
	dec  b                                           ; $7b6d: $05
	ld   b, $07                                      ; $7b6e: $06 $07
	ld   [$0a09], sp                                 ; $7b70: $08 $09 $0a
	dec  bc                                          ; $7b73: $0b
	inc  c                                           ; $7b74: $0c
	dec  c                                           ; $7b75: $0d
	ld   c, $0f                                      ; $7b76: $0e $0f
	nop                                              ; $7b78: $00
	ld   bc, $0302                                   ; $7b79: $01 $02 $03
	db   $10                                         ; $7b7c: $10
	ld   de, $1312                                   ; $7b7d: $11 $12 $13
	inc  d                                           ; $7b80: $14
	dec  d                                           ; $7b81: $15
	ld   d, $17                                      ; $7b82: $16 $17
	jr   @+$1b                                       ; $7b84: $18 $19

	ld   a, [de]                                     ; $7b86: $1a
	dec  de                                          ; $7b87: $1b
	inc  e                                           ; $7b88: $1c
	dec  e                                           ; $7b89: $1d
	ld   e, $1f                                      ; $7b8a: $1e $1f
	db   $10                                         ; $7b8c: $10
	ld   de, $1312                                   ; $7b8d: $11 $12 $13
	jr   nz, @+$23                                   ; $7b90: $20 $21

	ld   [hl+], a                                    ; $7b92: $22
	inc  hl                                          ; $7b93: $23
	inc  h                                           ; $7b94: $24
	dec  h                                           ; $7b95: $25
	ld   h, $27                                      ; $7b96: $26 $27
	jr   z, jr_08f_7bc3                              ; $7b98: $28 $29

	ld   a, [hl+]                                    ; $7b9a: $2a
	dec  hl                                          ; $7b9b: $2b
	inc  l                                           ; $7b9c: $2c
	dec  l                                           ; $7b9d: $2d
	ld   l, $2f                                      ; $7b9e: $2e $2f
	jr   nz, jr_08f_7bc3                             ; $7ba0: $20 $21

	ld   [hl+], a                                    ; $7ba2: $22
	inc  hl                                          ; $7ba3: $23
	jr   nc, jr_08f_7bd7                             ; $7ba4: $30 $31

	ld   [hl-], a                                    ; $7ba6: $32
	inc  sp                                          ; $7ba7: $33
	inc  [hl]                                        ; $7ba8: $34
	dec  [hl]                                        ; $7ba9: $35
	ld   [hl], $37                                   ; $7baa: $36 $37
	jr   c, jr_08f_7be7                              ; $7bac: $38 $39

	ld   a, [hl-]                                    ; $7bae: $3a
	dec  sp                                          ; $7baf: $3b
	inc  a                                           ; $7bb0: $3c
	dec  a                                           ; $7bb1: $3d
	ld   a, $3f                                      ; $7bb2: $3e $3f
	jr   nc, jr_08f_7be7                             ; $7bb4: $30 $31

	ld   [hl-], a                                    ; $7bb6: $32
	inc  sp                                          ; $7bb7: $33
	ld   b, b                                        ; $7bb8: $40
	ld   b, c                                        ; $7bb9: $41
	ld   b, d                                        ; $7bba: $42
	ld   b, e                                        ; $7bbb: $43
	ld   b, h                                        ; $7bbc: $44
	ld   b, l                                        ; $7bbd: $45
	ld   b, [hl]                                     ; $7bbe: $46
	ld   b, a                                        ; $7bbf: $47
	ld   c, b                                        ; $7bc0: $48
	ld   c, c                                        ; $7bc1: $49
	ld   c, d                                        ; $7bc2: $4a

jr_08f_7bc3:
	ld   c, e                                        ; $7bc3: $4b
	ld   c, h                                        ; $7bc4: $4c
	ld   c, l                                        ; $7bc5: $4d
	ld   c, [hl]                                     ; $7bc6: $4e
	ld   c, a                                        ; $7bc7: $4f
	ld   b, b                                        ; $7bc8: $40
	ld   b, c                                        ; $7bc9: $41
	ld   b, d                                        ; $7bca: $42
	ld   b, e                                        ; $7bcb: $43
	ld   d, b                                        ; $7bcc: $50
	ld   d, c                                        ; $7bcd: $51
	ld   d, d                                        ; $7bce: $52
	ld   d, e                                        ; $7bcf: $53
	ld   d, h                                        ; $7bd0: $54
	ld   d, l                                        ; $7bd1: $55
	ld   d, [hl]                                     ; $7bd2: $56
	ld   d, a                                        ; $7bd3: $57
	ld   e, b                                        ; $7bd4: $58
	ld   e, c                                        ; $7bd5: $59
	ld   e, d                                        ; $7bd6: $5a

jr_08f_7bd7:
	ld   e, e                                        ; $7bd7: $5b
	ld   e, h                                        ; $7bd8: $5c
	ld   e, l                                        ; $7bd9: $5d
	ld   e, [hl]                                     ; $7bda: $5e
	ld   e, a                                        ; $7bdb: $5f
	ld   d, b                                        ; $7bdc: $50
	ld   d, c                                        ; $7bdd: $51
	ld   d, d                                        ; $7bde: $52
	ld   d, e                                        ; $7bdf: $53
	ld   h, b                                        ; $7be0: $60
	ld   h, c                                        ; $7be1: $61
	ld   h, d                                        ; $7be2: $62
	ld   h, e                                        ; $7be3: $63
	ld   h, h                                        ; $7be4: $64
	ld   h, l                                        ; $7be5: $65
	ld   h, [hl]                                     ; $7be6: $66

jr_08f_7be7:
	ld   h, a                                        ; $7be7: $67
	ld   l, b                                        ; $7be8: $68
	ld   l, c                                        ; $7be9: $69
	ld   l, d                                        ; $7bea: $6a
	ld   l, e                                        ; $7beb: $6b
	ld   l, h                                        ; $7bec: $6c
	ld   l, l                                        ; $7bed: $6d
	ld   l, [hl]                                     ; $7bee: $6e
	ld   l, a                                        ; $7bef: $6f
	ld   h, b                                        ; $7bf0: $60
	ld   h, c                                        ; $7bf1: $61
	ld   h, d                                        ; $7bf2: $62
	ld   h, e                                        ; $7bf3: $63
	ld   [hl], b                                     ; $7bf4: $70
	ld   [hl], c                                     ; $7bf5: $71
	ld   [hl], d                                     ; $7bf6: $72
	ld   [hl], e                                     ; $7bf7: $73
	ld   [hl], h                                     ; $7bf8: $74
	ld   [hl], l                                     ; $7bf9: $75
	halt                                             ; $7bfa: $76
	ld   [hl], a                                     ; $7bfb: $77
	ld   a, b                                        ; $7bfc: $78
	ld   a, c                                        ; $7bfd: $79
	ld   a, d                                        ; $7bfe: $7a
	ld   a, e                                        ; $7bff: $7b

Call_08f_7c00:
	ld   a, h                                        ; $7c00: $7c
	ld   a, l                                        ; $7c01: $7d
	ld   a, [hl]                                     ; $7c02: $7e
	ld   a, a                                        ; $7c03: $7f
	ld   [hl], b                                     ; $7c04: $70
	ld   [hl], c                                     ; $7c05: $71
	ld   [hl], d                                     ; $7c06: $72
	ld   [hl], e                                     ; $7c07: $73
	ld   [$0a09], sp                                 ; $7c08: $08 $09 $0a
	dec  bc                                          ; $7c0b: $0b
	inc  c                                           ; $7c0c: $0c
	dec  c                                           ; $7c0d: $0d
	ld   c, $0f                                      ; $7c0e: $0e $0f
	jr   z, jr_08f_7c3b                              ; $7c10: $28 $29

	ld   a, [hl+]                                    ; $7c12: $2a
	dec  hl                                          ; $7c13: $2b
	inc  l                                           ; $7c14: $2c
	dec  l                                           ; $7c15: $2d
	ld   l, $2f                                      ; $7c16: $2e $2f
	ld   c, b                                        ; $7c18: $48
	ld   c, c                                        ; $7c19: $49
	ld   c, d                                        ; $7c1a: $4a
	ld   c, e                                        ; $7c1b: $4b
	jr   jr_08f_7c37                                 ; $7c1c: $18 $19

	ld   a, [de]                                     ; $7c1e: $1a
	dec  de                                          ; $7c1f: $1b
	inc  e                                           ; $7c20: $1c
	dec  e                                           ; $7c21: $1d
	ld   e, $1f                                      ; $7c22: $1e $1f
	jr   c, jr_08f_7c5f                              ; $7c24: $38 $39

	ld   a, [hl-]                                    ; $7c26: $3a
	dec  sp                                          ; $7c27: $3b
	inc  a                                           ; $7c28: $3c
	dec  a                                           ; $7c29: $3d
	ld   a, $3f                                      ; $7c2a: $3e $3f
	ld   e, b                                        ; $7c2c: $58
	ld   e, c                                        ; $7c2d: $59
	ld   e, d                                        ; $7c2e: $5a
	ld   e, e                                        ; $7c2f: $5b
	nop                                              ; $7c30: $00
	nop                                              ; $7c31: $00
	nop                                              ; $7c32: $00
	nop                                              ; $7c33: $00
	nop                                              ; $7c34: $00
	nop                                              ; $7c35: $00
	nop                                              ; $7c36: $00

jr_08f_7c37:
	nop                                              ; $7c37: $00
	nop                                              ; $7c38: $00
	nop                                              ; $7c39: $00
	nop                                              ; $7c3a: $00

jr_08f_7c3b:
	nop                                              ; $7c3b: $00
	nop                                              ; $7c3c: $00
	nop                                              ; $7c3d: $00
	nop                                              ; $7c3e: $00
	nop                                              ; $7c3f: $00
	ld   [$0808], sp                                 ; $7c40: $08 $08 $08
	ld   [rRAMG], sp                                 ; $7c43: $08 $00 $00
	nop                                              ; $7c46: $00
	nop                                              ; $7c47: $00
	nop                                              ; $7c48: $00
	nop                                              ; $7c49: $00
	nop                                              ; $7c4a: $00
	nop                                              ; $7c4b: $00
	nop                                              ; $7c4c: $00
	nop                                              ; $7c4d: $00
	nop                                              ; $7c4e: $00
	nop                                              ; $7c4f: $00
	nop                                              ; $7c50: $00
	nop                                              ; $7c51: $00
	nop                                              ; $7c52: $00
	nop                                              ; $7c53: $00
	inc  c                                           ; $7c54: $0c
	inc  c                                           ; $7c55: $0c
	ld   [$0008], sp                                 ; $7c56: $08 $08 $00
	nop                                              ; $7c59: $00
	nop                                              ; $7c5a: $00
	nop                                              ; $7c5b: $00
	nop                                              ; $7c5c: $00
	nop                                              ; $7c5d: $00
	nop                                              ; $7c5e: $00

jr_08f_7c5f:
	nop                                              ; $7c5f: $00
	ld   bc, $0101                                   ; $7c60: $01 $01 $01
	ld   bc, $0101                                   ; $7c63: $01 $01 $01
	inc  bc                                          ; $7c66: $03
	nop                                              ; $7c67: $00
	inc  c                                           ; $7c68: $0c
	inc  c                                           ; $7c69: $0c
	dec  bc                                          ; $7c6a: $0b
	ld   [rRAMG], sp                                 ; $7c6b: $08 $00 $00
	nop                                              ; $7c6e: $00
	nop                                              ; $7c6f: $00
	nop                                              ; $7c70: $00
	nop                                              ; $7c71: $00
	nop                                              ; $7c72: $00
	nop                                              ; $7c73: $00
	ld   bc, $0303                                   ; $7c74: $01 $03 $03
	inc  bc                                          ; $7c77: $03
	ld   bc, $0101                                   ; $7c78: $01 $01 $01
	ld   bc, $0c0c                                   ; $7c7b: $01 $0c $0c
	add  hl, bc                                      ; $7c7e: $09
	add  hl, bc                                      ; $7c7f: $09
	nop                                              ; $7c80: $00
	nop                                              ; $7c81: $00
	nop                                              ; $7c82: $00
	nop                                              ; $7c83: $00
	nop                                              ; $7c84: $00
	nop                                              ; $7c85: $00
	nop                                              ; $7c86: $00
	nop                                              ; $7c87: $00
	nop                                              ; $7c88: $00
	ld   bc, $0101                                   ; $7c89: $01 $01 $01
	nop                                              ; $7c8c: $00
	nop                                              ; $7c8d: $00
	nop                                              ; $7c8e: $00
	nop                                              ; $7c8f: $00
	add  hl, bc                                      ; $7c90: $09
	add  hl, bc                                      ; $7c91: $09
	ld   [$0008], sp                                 ; $7c92: $08 $08 $00
	nop                                              ; $7c95: $00
	nop                                              ; $7c96: $00
	nop                                              ; $7c97: $00
	nop                                              ; $7c98: $00
	nop                                              ; $7c99: $00
	nop                                              ; $7c9a: $00
	nop                                              ; $7c9b: $00
	nop                                              ; $7c9c: $00
	nop                                              ; $7c9d: $00
	nop                                              ; $7c9e: $00
	nop                                              ; $7c9f: $00
	inc  bc                                          ; $7ca0: $03
	nop                                              ; $7ca1: $00
	nop                                              ; $7ca2: $00
	nop                                              ; $7ca3: $00
	ld   [$0808], sp                                 ; $7ca4: $08 $08 $08
	ld   [$0404], sp                                 ; $7ca7: $08 $04 $04
	inc  b                                           ; $7caa: $04
	nop                                              ; $7cab: $00
	nop                                              ; $7cac: $00
	nop                                              ; $7cad: $00
	nop                                              ; $7cae: $00
	nop                                              ; $7caf: $00
	nop                                              ; $7cb0: $00
	nop                                              ; $7cb1: $00
	nop                                              ; $7cb2: $00
	nop                                              ; $7cb3: $00
	nop                                              ; $7cb4: $00
	nop                                              ; $7cb5: $00
	nop                                              ; $7cb6: $00
	nop                                              ; $7cb7: $00
	ld   [$0808], sp                                 ; $7cb8: $08 $08 $08
	ld   [$0101], sp                                 ; $7cbb: $08 $01 $01
	ld   bc, $0000                                   ; $7cbe: $01 $00 $00
	nop                                              ; $7cc1: $00
	nop                                              ; $7cc2: $00
	nop                                              ; $7cc3: $00
	nop                                              ; $7cc4: $00
	nop                                              ; $7cc5: $00
	nop                                              ; $7cc6: $00
	nop                                              ; $7cc7: $00
	nop                                              ; $7cc8: $00
	nop                                              ; $7cc9: $00
	nop                                              ; $7cca: $00
	nop                                              ; $7ccb: $00
	ld   [$0808], sp                                 ; $7ccc: $08 $08 $08
	ld   [$0101], sp                                 ; $7ccf: $08 $01 $01
	ld   bc, $0000                                   ; $7cd2: $01 $00 $00
	inc  b                                           ; $7cd5: $04
	inc  b                                           ; $7cd6: $04
	nop                                              ; $7cd7: $00
	nop                                              ; $7cd8: $00
	inc  b                                           ; $7cd9: $04
	inc  b                                           ; $7cda: $04
	inc  b                                           ; $7cdb: $04
	inc  bc                                          ; $7cdc: $03
	inc  bc                                          ; $7cdd: $03
	nop                                              ; $7cde: $00
	nop                                              ; $7cdf: $00
	ld   [$0808], sp                                 ; $7ce0: $08 $08 $08
	ld   [rRAMG], sp                                 ; $7ce3: $08 $00 $00
	nop                                              ; $7ce6: $00
	nop                                              ; $7ce7: $00
	nop                                              ; $7ce8: $00
	inc  b                                           ; $7ce9: $04
	inc  b                                           ; $7cea: $04
	dec  b                                           ; $7ceb: $05
	inc  b                                           ; $7cec: $04
	inc  b                                           ; $7ced: $04
	inc  b                                           ; $7cee: $04
	inc  b                                           ; $7cef: $04
	inc  bc                                          ; $7cf0: $03
	inc  bc                                          ; $7cf1: $03
	nop                                              ; $7cf2: $00
	nop                                              ; $7cf3: $00
	add  hl, bc                                      ; $7cf4: $09
	add  hl, bc                                      ; $7cf5: $09
	ld   [$0008], sp                                 ; $7cf6: $08 $08 $00
	nop                                              ; $7cf9: $00
	nop                                              ; $7cfa: $00
	nop                                              ; $7cfb: $00
	nop                                              ; $7cfc: $00
	inc  b                                           ; $7cfd: $04
	inc  b                                           ; $7cfe: $04
	inc  b                                           ; $7cff: $04
	inc  b                                           ; $7d00: $04
	inc  b                                           ; $7d01: $04
	inc  b                                           ; $7d02: $04
	inc  b                                           ; $7d03: $04
	ld   b, $06                                      ; $7d04: $06 $06
	nop                                              ; $7d06: $00
	ld   [bc], a                                     ; $7d07: $02
	add  hl, bc                                      ; $7d08: $09
	add  hl, bc                                      ; $7d09: $09
	ld   a, [bc]                                     ; $7d0a: $0a
	ld   [rRAMG], sp                                 ; $7d0b: $08 $00 $00
	nop                                              ; $7d0e: $00
	nop                                              ; $7d0f: $00
	nop                                              ; $7d10: $00
	inc  b                                           ; $7d11: $04
	inc  b                                           ; $7d12: $04
	inc  b                                           ; $7d13: $04
	inc  b                                           ; $7d14: $04
	inc  b                                           ; $7d15: $04
	inc  b                                           ; $7d16: $04
	inc  b                                           ; $7d17: $04
	inc  b                                           ; $7d18: $04
	inc  b                                           ; $7d19: $04
	nop                                              ; $7d1a: $00
	ld   [bc], a                                     ; $7d1b: $02
	add  hl, bc                                      ; $7d1c: $09
	add  hl, bc                                      ; $7d1d: $09
	ld   a, [bc]                                     ; $7d1e: $0a
	ld   [rRAMG], sp                                 ; $7d1f: $08 $00 $00
	nop                                              ; $7d22: $00
	nop                                              ; $7d23: $00
	nop                                              ; $7d24: $00
	nop                                              ; $7d25: $00
	nop                                              ; $7d26: $00
	nop                                              ; $7d27: $00
	nop                                              ; $7d28: $00
	nop                                              ; $7d29: $00
	nop                                              ; $7d2a: $00
	nop                                              ; $7d2b: $00
	nop                                              ; $7d2c: $00
	nop                                              ; $7d2d: $00
	nop                                              ; $7d2e: $00
	ld   [bc], a                                     ; $7d2f: $02
	add  hl, bc                                      ; $7d30: $09
	add  hl, bc                                      ; $7d31: $09
	ld   a, [bc]                                     ; $7d32: $0a
	ld   [rRAMG], sp                                 ; $7d33: $08 $00 $00
	nop                                              ; $7d36: $00
	nop                                              ; $7d37: $00
	nop                                              ; $7d38: $00
	nop                                              ; $7d39: $00
	inc  bc                                          ; $7d3a: $03
	inc  bc                                          ; $7d3b: $03
	inc  bc                                          ; $7d3c: $03
	inc  bc                                          ; $7d3d: $03
	inc  bc                                          ; $7d3e: $03
	inc  bc                                          ; $7d3f: $03
	inc  bc                                          ; $7d40: $03
	inc  bc                                          ; $7d41: $03
	nop                                              ; $7d42: $00
	ld   [bc], a                                     ; $7d43: $02
	add  hl, bc                                      ; $7d44: $09
	add  hl, bc                                      ; $7d45: $09
	ld   a, [bc]                                     ; $7d46: $0a
	ld   [rRAMG], sp                                 ; $7d47: $08 $00 $00
	nop                                              ; $7d4a: $00
	nop                                              ; $7d4b: $00
	nop                                              ; $7d4c: $00
	nop                                              ; $7d4d: $00
	inc  bc                                          ; $7d4e: $03
	inc  bc                                          ; $7d4f: $03
	inc  bc                                          ; $7d50: $03
	inc  bc                                          ; $7d51: $03
	inc  bc                                          ; $7d52: $03
	inc  bc                                          ; $7d53: $03
	inc  bc                                          ; $7d54: $03
	inc  bc                                          ; $7d55: $03
	nop                                              ; $7d56: $00
	ld   [bc], a                                     ; $7d57: $02
	add  hl, bc                                      ; $7d58: $09
	add  hl, bc                                      ; $7d59: $09
	ld   a, [bc]                                     ; $7d5a: $0a
	ld   [rRAMG], sp                                 ; $7d5b: $08 $00 $00
	nop                                              ; $7d5e: $00
	nop                                              ; $7d5f: $00
	nop                                              ; $7d60: $00
	nop                                              ; $7d61: $00
	inc  bc                                          ; $7d62: $03
	inc  bc                                          ; $7d63: $03
	inc  bc                                          ; $7d64: $03
	inc  bc                                          ; $7d65: $03
	inc  bc                                          ; $7d66: $03
	inc  bc                                          ; $7d67: $03
	inc  bc                                          ; $7d68: $03
	inc  bc                                          ; $7d69: $03
	nop                                              ; $7d6a: $00
	nop                                              ; $7d6b: $00
	ld   [$0808], sp                                 ; $7d6c: $08 $08 $08
	ld   [$0808], sp                                 ; $7d6f: $08 $08 $08
	ld   [$0808], sp                                 ; $7d72: $08 $08 $08
	ld   [$0808], sp                                 ; $7d75: $08 $08 $08
	ld   [$0808], sp                                 ; $7d78: $08 $08 $08
	ld   [$0808], sp                                 ; $7d7b: $08 $08 $08
	ld   [$0808], sp                                 ; $7d7e: $08 $08 $08
	ld   [$0808], sp                                 ; $7d81: $08 $08 $08
	ld   [$0808], sp                                 ; $7d84: $08 $08 $08
	ld   [$0808], sp                                 ; $7d87: $08 $08 $08
	ld   [$0808], sp                                 ; $7d8a: $08 $08 $08
	ld   [$0808], sp                                 ; $7d8d: $08 $08 $08
	ld   [$0808], sp                                 ; $7d90: $08 $08 $08
	ld   [$0808], sp                                 ; $7d93: $08 $08 $08
	ld   [$8008], sp                                 ; $7d96: $08 $08 $80
	add  c                                           ; $7d99: $81
	add  d                                           ; $7d9a: $82
	add  e                                           ; $7d9b: $83
	add  h                                           ; $7d9c: $84
	add  l                                           ; $7d9d: $85
	add  [hl]                                        ; $7d9e: $86
	add  a                                           ; $7d9f: $87
	adc  b                                           ; $7da0: $88
	adc  c                                           ; $7da1: $89
	adc  d                                           ; $7da2: $8a
	adc  e                                           ; $7da3: $8b
	adc  h                                           ; $7da4: $8c
	adc  l                                           ; $7da5: $8d
	adc  [hl]                                        ; $7da6: $8e
	adc  a                                           ; $7da7: $8f
	inc  b                                           ; $7da8: $04
	dec  b                                           ; $7da9: $05
	ld   b, $07                                      ; $7daa: $06 $07
	sub  b                                           ; $7dac: $90
	sub  c                                           ; $7dad: $91
	sub  d                                           ; $7dae: $92
	sub  e                                           ; $7daf: $93
	sub  h                                           ; $7db0: $94
	sub  l                                           ; $7db1: $95
	sub  [hl]                                        ; $7db2: $96
	sub  a                                           ; $7db3: $97
	sbc  b                                           ; $7db4: $98
	sbc  c                                           ; $7db5: $99
	sbc  d                                           ; $7db6: $9a
	sbc  e                                           ; $7db7: $9b
	sbc  h                                           ; $7db8: $9c
	sbc  l                                           ; $7db9: $9d
	sbc  [hl]                                        ; $7dba: $9e
	sbc  a                                           ; $7dbb: $9f
	inc  d                                           ; $7dbc: $14
	dec  d                                           ; $7dbd: $15
	ld   d, $17                                      ; $7dbe: $16 $17
	and  b                                           ; $7dc0: $a0
	and  c                                           ; $7dc1: $a1
	and  d                                           ; $7dc2: $a2
	and  e                                           ; $7dc3: $a3
	and  h                                           ; $7dc4: $a4
	and  l                                           ; $7dc5: $a5
	and  [hl]                                        ; $7dc6: $a6
	and  a                                           ; $7dc7: $a7
	xor  b                                           ; $7dc8: $a8
	xor  c                                           ; $7dc9: $a9
	xor  d                                           ; $7dca: $aa
	xor  e                                           ; $7dcb: $ab
	xor  h                                           ; $7dcc: $ac
	xor  l                                           ; $7dcd: $ad
	xor  [hl]                                        ; $7dce: $ae
	xor  a                                           ; $7dcf: $af
	inc  h                                           ; $7dd0: $24
	dec  h                                           ; $7dd1: $25
	ld   h, $27                                      ; $7dd2: $26 $27
	or   b                                           ; $7dd4: $b0
	or   c                                           ; $7dd5: $b1
	or   d                                           ; $7dd6: $b2
	or   e                                           ; $7dd7: $b3
	or   h                                           ; $7dd8: $b4
	or   l                                           ; $7dd9: $b5
	or   [hl]                                        ; $7dda: $b6
	or   a                                           ; $7ddb: $b7
	cp   b                                           ; $7ddc: $b8
	cp   c                                           ; $7ddd: $b9
	cp   d                                           ; $7dde: $ba
	cp   e                                           ; $7ddf: $bb
	cp   h                                           ; $7de0: $bc
	cp   l                                           ; $7de1: $bd
	cp   [hl]                                        ; $7de2: $be
	cp   a                                           ; $7de3: $bf
	inc  [hl]                                        ; $7de4: $34
	dec  [hl]                                        ; $7de5: $35
	ld   [hl], $37                                   ; $7de6: $36 $37
	ret  nz                                          ; $7de8: $c0

	pop  bc                                          ; $7de9: $c1
	jp   nz, $c4c3                                   ; $7dea: $c2 $c3 $c4

	push bc                                          ; $7ded: $c5
	add  $c7                                         ; $7dee: $c6 $c7
	ret  z                                           ; $7df0: $c8

	ret                                              ; $7df1: $c9


	jp   z, $cccb                                    ; $7df2: $ca $cb $cc

	call $cfce                                       ; $7df5: $cd $ce $cf
	ld   b, h                                        ; $7df8: $44
	ld   b, l                                        ; $7df9: $45
	ld   b, [hl]                                     ; $7dfa: $46
	ld   b, a                                        ; $7dfb: $47
	ret  nc                                          ; $7dfc: $d0

	pop  de                                          ; $7dfd: $d1
	jp   nc, $d4d3                                   ; $7dfe: $d2 $d3 $d4

	push de                                          ; $7e01: $d5
	sub  $d7                                         ; $7e02: $d6 $d7
	ret  c                                           ; $7e04: $d8

	reti                                             ; $7e05: $d9


	jp   c, $dcdb                                    ; $7e06: $da $db $dc

	db   $dd                                         ; $7e09: $dd
	sbc  $df                                         ; $7e0a: $de $df
	ld   d, h                                        ; $7e0c: $54
	ld   d, l                                        ; $7e0d: $55
	ld   d, [hl]                                     ; $7e0e: $56
	ld   d, a                                        ; $7e0f: $57
	ldh  [$e1], a                                    ; $7e10: $e0 $e1
	ldh  [c], a                                      ; $7e12: $e2
	db   $e3                                         ; $7e13: $e3
	db   $e4                                         ; $7e14: $e4
	push hl                                          ; $7e15: $e5
	and  $e7                                         ; $7e16: $e6 $e7
	add  sp, -$17                                    ; $7e18: $e8 $e9
	ld   [$eceb], a                                  ; $7e1a: $ea $eb $ec
	db   $ed                                         ; $7e1d: $ed
	xor  $ef                                         ; $7e1e: $ee $ef
	ld   h, h                                        ; $7e20: $64
	ld   h, l                                        ; $7e21: $65
	ld   h, [hl]                                     ; $7e22: $66
	ld   h, a                                        ; $7e23: $67
	ldh  a, [$f1]                                    ; $7e24: $f0 $f1
	ldh  a, [c]                                      ; $7e26: $f2
	di                                               ; $7e27: $f3
	db   $f4                                         ; $7e28: $f4
	push af                                          ; $7e29: $f5
	or   $f7                                         ; $7e2a: $f6 $f7
	ld   hl, sp-$07                                  ; $7e2c: $f8 $f9
	ld   a, [$fcfb]                                  ; $7e2e: $fa $fb $fc
	db   $fd                                         ; $7e31: $fd
	cp   $ff                                         ; $7e32: $fe $ff
	ld   [hl], h                                     ; $7e34: $74
	ld   [hl], l                                     ; $7e35: $75
	halt                                             ; $7e36: $76
	ld   [hl], a                                     ; $7e37: $77
	nop                                              ; $7e38: $00
	ld   bc, $0302                                   ; $7e39: $01 $02 $03
	inc  b                                           ; $7e3c: $04
	dec  b                                           ; $7e3d: $05
	ld   b, $07                                      ; $7e3e: $06 $07
	ld   [$0a09], sp                                 ; $7e40: $08 $09 $0a
	dec  bc                                          ; $7e43: $0b
	inc  c                                           ; $7e44: $0c
	dec  c                                           ; $7e45: $0d
	ld   c, $0f                                      ; $7e46: $0e $0f
	nop                                              ; $7e48: $00
	ld   bc, $0302                                   ; $7e49: $01 $02 $03
	db   $10                                         ; $7e4c: $10
	ld   de, $1312                                   ; $7e4d: $11 $12 $13
	inc  d                                           ; $7e50: $14
	dec  d                                           ; $7e51: $15
	ld   d, $17                                      ; $7e52: $16 $17
	jr   @+$1b                                       ; $7e54: $18 $19

	ld   a, [de]                                     ; $7e56: $1a
	dec  de                                          ; $7e57: $1b
	inc  e                                           ; $7e58: $1c
	dec  e                                           ; $7e59: $1d
	ld   e, $1f                                      ; $7e5a: $1e $1f
	db   $10                                         ; $7e5c: $10
	ld   de, $1312                                   ; $7e5d: $11 $12 $13
	jr   nz, @+$23                                   ; $7e60: $20 $21

	ld   [hl+], a                                    ; $7e62: $22
	inc  hl                                          ; $7e63: $23
	inc  h                                           ; $7e64: $24
	dec  h                                           ; $7e65: $25
	ld   h, $27                                      ; $7e66: $26 $27
	jr   z, jr_08f_7e93                              ; $7e68: $28 $29

	ld   a, [hl+]                                    ; $7e6a: $2a
	dec  hl                                          ; $7e6b: $2b
	inc  l                                           ; $7e6c: $2c
	dec  l                                           ; $7e6d: $2d
	ld   l, $2f                                      ; $7e6e: $2e $2f
	jr   nz, jr_08f_7e93                             ; $7e70: $20 $21

	ld   [hl+], a                                    ; $7e72: $22
	inc  hl                                          ; $7e73: $23
	jr   nc, jr_08f_7ea7                             ; $7e74: $30 $31

	ld   [hl-], a                                    ; $7e76: $32
	inc  sp                                          ; $7e77: $33
	inc  [hl]                                        ; $7e78: $34
	dec  [hl]                                        ; $7e79: $35
	ld   [hl], $37                                   ; $7e7a: $36 $37
	jr   c, jr_08f_7eb7                              ; $7e7c: $38 $39

	ld   a, [hl-]                                    ; $7e7e: $3a
	dec  sp                                          ; $7e7f: $3b

Jump_08f_7e80:
	inc  a                                           ; $7e80: $3c
	dec  a                                           ; $7e81: $3d
	ld   a, $3f                                      ; $7e82: $3e $3f
	jr   nc, jr_08f_7eb7                             ; $7e84: $30 $31

	ld   [hl-], a                                    ; $7e86: $32
	inc  sp                                          ; $7e87: $33
	ld   b, b                                        ; $7e88: $40
	ld   b, c                                        ; $7e89: $41
	ld   b, d                                        ; $7e8a: $42
	ld   b, e                                        ; $7e8b: $43
	ld   b, h                                        ; $7e8c: $44
	ld   b, l                                        ; $7e8d: $45
	ld   b, [hl]                                     ; $7e8e: $46
	ld   b, a                                        ; $7e8f: $47
	ld   c, b                                        ; $7e90: $48
	ld   c, c                                        ; $7e91: $49
	ld   c, d                                        ; $7e92: $4a

jr_08f_7e93:
	ld   c, e                                        ; $7e93: $4b
	ld   c, h                                        ; $7e94: $4c
	ld   c, l                                        ; $7e95: $4d
	ld   c, [hl]                                     ; $7e96: $4e
	ld   c, a                                        ; $7e97: $4f
	ld   b, b                                        ; $7e98: $40
	ld   b, c                                        ; $7e99: $41
	ld   b, d                                        ; $7e9a: $42
	ld   b, e                                        ; $7e9b: $43
	ld   d, b                                        ; $7e9c: $50
	ld   d, c                                        ; $7e9d: $51
	ld   d, d                                        ; $7e9e: $52
	ld   d, e                                        ; $7e9f: $53
	ld   d, h                                        ; $7ea0: $54
	ld   d, l                                        ; $7ea1: $55
	ld   d, [hl]                                     ; $7ea2: $56
	ld   d, a                                        ; $7ea3: $57
	ld   e, b                                        ; $7ea4: $58
	ld   e, c                                        ; $7ea5: $59
	ld   e, d                                        ; $7ea6: $5a

jr_08f_7ea7:
	ld   e, e                                        ; $7ea7: $5b
	ld   e, h                                        ; $7ea8: $5c
	ld   e, l                                        ; $7ea9: $5d
	ld   e, [hl]                                     ; $7eaa: $5e
	ld   e, a                                        ; $7eab: $5f
	ld   d, b                                        ; $7eac: $50
	ld   d, c                                        ; $7ead: $51
	ld   d, d                                        ; $7eae: $52
	ld   d, e                                        ; $7eaf: $53
	ld   h, b                                        ; $7eb0: $60
	ld   h, c                                        ; $7eb1: $61
	ld   h, d                                        ; $7eb2: $62
	ld   h, e                                        ; $7eb3: $63
	ld   h, h                                        ; $7eb4: $64
	ld   h, l                                        ; $7eb5: $65
	ld   h, [hl]                                     ; $7eb6: $66

jr_08f_7eb7:
	ld   h, a                                        ; $7eb7: $67
	ld   l, b                                        ; $7eb8: $68
	ld   l, c                                        ; $7eb9: $69
	ld   l, d                                        ; $7eba: $6a
	ld   l, e                                        ; $7ebb: $6b
	ld   l, h                                        ; $7ebc: $6c
	ld   l, l                                        ; $7ebd: $6d
	ld   l, [hl]                                     ; $7ebe: $6e
	ld   l, a                                        ; $7ebf: $6f
	ld   h, b                                        ; $7ec0: $60
	ld   h, c                                        ; $7ec1: $61
	ld   h, d                                        ; $7ec2: $62
	ld   h, e                                        ; $7ec3: $63
	ld   [hl], b                                     ; $7ec4: $70
	ld   [hl], c                                     ; $7ec5: $71
	ld   [hl], d                                     ; $7ec6: $72
	ld   [hl], e                                     ; $7ec7: $73
	ld   [hl], h                                     ; $7ec8: $74
	ld   [hl], l                                     ; $7ec9: $75
	halt                                             ; $7eca: $76
	ld   [hl], a                                     ; $7ecb: $77
	ld   a, b                                        ; $7ecc: $78
	ld   a, c                                        ; $7ecd: $79
	ld   a, d                                        ; $7ece: $7a
	ld   a, e                                        ; $7ecf: $7b
	ld   a, h                                        ; $7ed0: $7c
	ld   a, l                                        ; $7ed1: $7d
	ld   a, [hl]                                     ; $7ed2: $7e
	ld   a, a                                        ; $7ed3: $7f
	ld   [hl], b                                     ; $7ed4: $70
	ld   [hl], c                                     ; $7ed5: $71
	ld   [hl], d                                     ; $7ed6: $72
	ld   [hl], e                                     ; $7ed7: $73
	ld   [$0a09], sp                                 ; $7ed8: $08 $09 $0a
	dec  bc                                          ; $7edb: $0b
	inc  c                                           ; $7edc: $0c
	dec  c                                           ; $7edd: $0d
	ld   c, $0f                                      ; $7ede: $0e $0f
	jr   z, @+$2b                                    ; $7ee0: $28 $29

	ld   a, [hl+]                                    ; $7ee2: $2a
	dec  hl                                          ; $7ee3: $2b
	inc  l                                           ; $7ee4: $2c
	dec  l                                           ; $7ee5: $2d
	ld   l, $2f                                      ; $7ee6: $2e $2f
	ld   c, b                                        ; $7ee8: $48
	ld   c, c                                        ; $7ee9: $49
	ld   c, d                                        ; $7eea: $4a
	ld   c, e                                        ; $7eeb: $4b
	jr   jr_08f_7f07                                 ; $7eec: $18 $19

	ld   a, [de]                                     ; $7eee: $1a
	dec  de                                          ; $7eef: $1b
	inc  e                                           ; $7ef0: $1c
	dec  e                                           ; $7ef1: $1d
	ld   e, $1f                                      ; $7ef2: $1e $1f
	jr   c, jr_08f_7f2f                              ; $7ef4: $38 $39

	ld   a, [hl-]                                    ; $7ef6: $3a
	dec  sp                                          ; $7ef7: $3b
	inc  a                                           ; $7ef8: $3c
	dec  a                                           ; $7ef9: $3d
	ld   a, $3f                                      ; $7efa: $3e $3f
	ld   e, b                                        ; $7efc: $58
	ld   e, c                                        ; $7efd: $59
	ld   e, d                                        ; $7efe: $5a
	ld   e, e                                        ; $7eff: $5b
	rst  $38                                         ; $7f00: $ff
	ld   a, a                                        ; $7f01: $7f
	ld   c, $01                                      ; $7f02: $0e $01
	rst  $38                                         ; $7f04: $ff
	dec  l                                           ; $7f05: $2d
	ld   [bc], a                                     ; $7f06: $02

jr_08f_7f07:
	jr   nz, @+$01                                   ; $7f07: $20 $ff

	ld   a, a                                        ; $7f09: $7f
	ld   c, $01                                      ; $7f0a: $0e $01
	rst  $38                                         ; $7f0c: $ff
	dec  l                                           ; $7f0d: $2d
	ld   [bc], a                                     ; $7f0e: $02
	jr   nz, @+$01                                   ; $7f0f: $20 $ff

	ld   a, a                                        ; $7f11: $7f
	ld   c, $01                                      ; $7f12: $0e $01
	rst  $38                                         ; $7f14: $ff
	dec  l                                           ; $7f15: $2d
	ld   [bc], a                                     ; $7f16: $02
	jr   nz, @+$01                                   ; $7f17: $20 $ff

	ld   a, a                                        ; $7f19: $7f
	ld   c, $01                                      ; $7f1a: $0e $01
	rst  $38                                         ; $7f1c: $ff
	dec  l                                           ; $7f1d: $2d
	ld   [bc], a                                     ; $7f1e: $02
	jr   nz, @+$01                                   ; $7f1f: $20 $ff

	ld   a, a                                        ; $7f21: $7f
	ld   c, $01                                      ; $7f22: $0e $01
	rst  $38                                         ; $7f24: $ff
	dec  l                                           ; $7f25: $2d
	ld   [bc], a                                     ; $7f26: $02
	jr   nz, @+$01                                   ; $7f27: $20 $ff

	ld   a, a                                        ; $7f29: $7f
	ld   c, $01                                      ; $7f2a: $0e $01
	rst  $38                                         ; $7f2c: $ff
	dec  l                                           ; $7f2d: $2d
	ld   [bc], a                                     ; $7f2e: $02

jr_08f_7f2f:
	jr   nz, @+$01                                   ; $7f2f: $20 $ff

	ld   a, a                                        ; $7f31: $7f
	ld   c, $01                                      ; $7f32: $0e $01
	rst  $38                                         ; $7f34: $ff
	dec  l                                           ; $7f35: $2d
	ld   [bc], a                                     ; $7f36: $02
	jr   nz, @+$01                                   ; $7f37: $20 $ff

	ld   a, a                                        ; $7f39: $7f
	ld   a, [de]                                     ; $7f3a: $1a
	add  hl, sp                                      ; $7f3b: $39
	rst  $38                                         ; $7f3c: $ff
	dec  l                                           ; $7f3d: $2d
	ld   [bc], a                                     ; $7f3e: $02
	jr   nz, @+$01                                   ; $7f3f: $20 $ff

	ld   a, a                                        ; $7f41: $7f
	ld   c, $01                                      ; $7f42: $0e $01
	rst  $38                                         ; $7f44: $ff
	dec  l                                           ; $7f45: $2d
	ld   [bc], a                                     ; $7f46: $02
	jr   nz, @+$01                                   ; $7f47: $20 $ff

	ld   a, a                                        ; $7f49: $7f
	ld   a, a                                        ; $7f4a: $7f
	inc  bc                                          ; $7f4b: $03
	rst  $38                                         ; $7f4c: $ff
	dec  l                                           ; $7f4d: $2d
	ld   [bc], a                                     ; $7f4e: $02
	jr   nz, @+$01                                   ; $7f4f: $20 $ff

	ld   a, a                                        ; $7f51: $7f
	ld   a, a                                        ; $7f52: $7f
	inc  bc                                          ; $7f53: $03
	rst  $38                                         ; $7f54: $ff
	dec  l                                           ; $7f55: $2d
	ld   [bc], a                                     ; $7f56: $02
	jr   nz, @+$01                                   ; $7f57: $20 $ff

	ld   a, a                                        ; $7f59: $7f
	ld   c, $01                                      ; $7f5a: $0e $01
	rst  $38                                         ; $7f5c: $ff
	dec  l                                           ; $7f5d: $2d
	ld   [bc], a                                     ; $7f5e: $02
	jr   nz, @+$01                                   ; $7f5f: $20 $ff

	ld   a, a                                        ; $7f61: $7f
	ld   c, $01                                      ; $7f62: $0e $01
	rst  $38                                         ; $7f64: $ff
	dec  l                                           ; $7f65: $2d
	ld   [bc], a                                     ; $7f66: $02
	jr   nz, @+$01                                   ; $7f67: $20 $ff

	ld   a, a                                        ; $7f69: $7f
	ld   c, e                                        ; $7f6a: $4b
	ld   c, $ff                                      ; $7f6b: $0e $ff
	dec  l                                           ; $7f6d: $2d
	ld   [bc], a                                     ; $7f6e: $02
	jr   nz, @+$01                                   ; $7f6f: $20 $ff

	ld   a, a                                        ; $7f71: $7f
	ld   c, e                                        ; $7f72: $4b
	ld   c, $ff                                      ; $7f73: $0e $ff
	dec  l                                           ; $7f75: $2d
	ld   [bc], a                                     ; $7f76: $02
	jr   nz, @+$01                                   ; $7f77: $20 $ff

	ld   a, a                                        ; $7f79: $7f
	ld   c, $01                                      ; $7f7a: $0e $01
	rst  $38                                         ; $7f7c: $ff
	dec  l                                           ; $7f7d: $2d
	ld   [bc], a                                     ; $7f7e: $02
	jr   nz, @+$01                                   ; $7f7f: $20 $ff

	ld   a, a                                        ; $7f81: $7f
	ld   c, $01                                      ; $7f82: $0e $01
	rst  $38                                         ; $7f84: $ff
	dec  l                                           ; $7f85: $2d
	ld   [bc], a                                     ; $7f86: $02
	jr   nz, @+$01                                   ; $7f87: $20 $ff

	ld   a, a                                        ; $7f89: $7f
	ld   c, $01                                      ; $7f8a: $0e $01
	rst  $38                                         ; $7f8c: $ff
	dec  l                                           ; $7f8d: $2d
	ld   [bc], a                                     ; $7f8e: $02
	jr   nz, @+$01                                   ; $7f8f: $20 $ff

	ld   a, a                                        ; $7f91: $7f
	ld   c, $01                                      ; $7f92: $0e $01
	rst  $38                                         ; $7f94: $ff
	dec  l                                           ; $7f95: $2d
	ld   [bc], a                                     ; $7f96: $02
	jr   nz, jr_08f_7f99                             ; $7f97: $20 $00

jr_08f_7f99:
	nop                                              ; $7f99: $00
	nop                                              ; $7f9a: $00
	nop                                              ; $7f9b: $00
	nop                                              ; $7f9c: $00
	nop                                              ; $7f9d: $00
	nop                                              ; $7f9e: $00
	nop                                              ; $7f9f: $00
	ld   c, b                                        ; $7fa0: $48
	inc  c                                           ; $7fa1: $0c
	ret  nc                                          ; $7fa2: $d0

	nop                                              ; $7fa3: $00
	db   $f4                                         ; $7fa4: $f4
	dec  h                                           ; $7fa5: $25
	sbc  l                                           ; $7fa6: $9d
	ld   h, a                                        ; $7fa7: $67
	ld   c, b                                        ; $7fa8: $48
	inc  c                                           ; $7fa9: $0c
	ld   b, b                                        ; $7faa: $40
	ld   bc, $1e8e                                   ; $7fab: $01 $8e $1e
	sbc  l                                           ; $7fae: $9d
	ld   h, a                                        ; $7faf: $67
	ld   c, b                                        ; $7fb0: $48
	inc  c                                           ; $7fb1: $0c
	ret  c                                           ; $7fb2: $d8

	inc  e                                           ; $7fb3: $1c
	sbc  l                                           ; $7fb4: $9d
	ld   h, a                                        ; $7fb5: $67
	dec  bc                                          ; $7fb6: $0b
	inc  l                                           ; $7fb7: $2c
	ld   c, b                                        ; $7fb8: $48
	inc  c                                           ; $7fb9: $0c
	adc  h                                           ; $7fba: $8c
	ld   d, e                                        ; $7fbb: $53
	rst  $38                                         ; $7fbc: $ff
	inc  e                                           ; $7fbd: $1c
	dec  c                                           ; $7fbe: $0d
	ld   e, $02                                      ; $7fbf: $1e $02
	add  hl, bc                                      ; $7fc1: $09
	ld   e, c                                        ; $7fc2: $59
	cpl                                              ; $7fc3: $2f
	cp   h                                           ; $7fc4: $bc
	ld   b, [hl]                                     ; $7fc5: $46
	ld   l, [hl]                                     ; $7fc6: $6e
	ld   d, l                                        ; $7fc7: $55
	ld   c, b                                        ; $7fc8: $48
	inc  c                                           ; $7fc9: $0c
	ret  c                                           ; $7fca: $d8

	inc  e                                           ; $7fcb: $1c
	db   $f4                                         ; $7fcc: $f4
	dec  h                                           ; $7fcd: $25
	sbc  b                                           ; $7fce: $98
	ld   c, [hl]                                     ; $7fcf: $4e
	ld   c, b                                        ; $7fd0: $48
	inc  c                                           ; $7fd1: $0c
	db   $f4                                         ; $7fd2: $f4
	dec  h                                           ; $7fd3: $25
	ld   b, b                                        ; $7fd4: $40
	ld   bc, $1e8e                                   ; $7fd5: $01 $8e $1e
	rst  $38                                         ; $7fd8: $ff
	ld   a, a                                        ; $7fd9: $7f
	nop                                              ; $7fda: $00
	nop                                              ; $7fdb: $00
	nop                                              ; $7fdc: $00
	nop                                              ; $7fdd: $00
	nop                                              ; $7fde: $00
	nop                                              ; $7fdf: $00
	ldh  [$03], a                                    ; $7fe0: $e0 $03
	rst  $38                                         ; $7fe2: $ff
	ld   a, a                                        ; $7fe3: $7f
	dec  e                                           ; $7fe4: $1d
	ld   [$0007], sp                                 ; $7fe5: $08 $07 $00
	ldh  [$03], a                                    ; $7fe8: $e0 $03
	rst  $38                                         ; $7fea: $ff
	ld   a, a                                        ; $7feb: $7f
	db   $ec                                         ; $7fec: $ec
	ld   h, c                                        ; $7fed: $61
	nop                                              ; $7fee: $00
	nop                                              ; $7fef: $00
	nop                                              ; $7ff0: $00
	nop                                              ; $7ff1: $00
	rst  $38                                         ; $7ff2: $ff
	ld   a, a                                        ; $7ff3: $7f
	nop                                              ; $7ff4: $00
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

Call_08f_7fff:
	nop                                              ; $7fff: $00
