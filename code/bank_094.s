; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $094", ROMX[$4000], BANK[$94]

	nop                                              ; $4000: $00
	nop                                              ; $4001: $00
	nop                                              ; $4002: $00
	nop                                              ; $4003: $00
	nop                                              ; $4004: $00
	nop                                              ; $4005: $00
	nop                                              ; $4006: $00
	nop                                              ; $4007: $00
	nop                                              ; $4008: $00
	nop                                              ; $4009: $00
	nop                                              ; $400a: $00
	nop                                              ; $400b: $00
	nop                                              ; $400c: $00
	nop                                              ; $400d: $00
	nop                                              ; $400e: $00
	nop                                              ; $400f: $00
	rst  $38                                         ; $4010: $ff
	rst  $38                                         ; $4011: $ff
	rst  $38                                         ; $4012: $ff
	db   $fc                                         ; $4013: $fc
	xor  h                                           ; $4014: $ac
	ldh  [$e0], a                                    ; $4015: $e0 $e0
	ldh  [$e0], a                                    ; $4017: $e0 $e0
	ldh  [$f3], a                                    ; $4019: $e0 $f3

jr_094_401b:
	pop  hl                                          ; $401b: $e1
	or   $a6                                         ; $401c: $f6 $a6
	pop  af                                          ; $401e: $f1
	db   $20, $a1                                    ; $401f: $20 $a1
	jp   $f060                                       ; $4021: $c3 $60 $f0


	ld   e, b                                        ; $4024: $58
	jr   nc, jr_094_404f                             ; $4025: $30 $28

	db   $10                                         ; $4027: $10
	ld   a, b                                        ; $4028: $78
	jr   nz, jr_094_401b                             ; $4029: $20 $f0

	ret  nz                                          ; $402b: $c0

	ldh  [$60], a                                    ; $402c: $e0 $60
	rst  $38                                         ; $402e: $ff
	rst  $30                                         ; $402f: $f7
	rst  $38                                         ; $4030: $ff
	rst  $38                                         ; $4031: $ff
	cp   $7f                                         ; $4032: $fe $7f
	ret  nc                                          ; $4034: $d0

	ldh  [$e0], a                                    ; $4035: $e0 $e0
	nop                                              ; $4037: $00
	ld   l, b                                        ; $4038: $68
	ld   [hl], b                                     ; $4039: $70
	ld   a, a                                        ; $403a: $7f
	ld   e, $1f                                      ; $403b: $1e $1f
	add  hl, de                                      ; $403d: $19
	db   $fc                                         ; $403e: $fc
	inc  a                                           ; $403f: $3c
	cp   h                                           ; $4040: $bc
	rst  JumpTable                                         ; $4041: $df
	ei                                               ; $4042: $fb
	rst  JumpTable                                         ; $4043: $df
	db   $fd                                         ; $4044: $fd
	rrca                                             ; $4045: $0f
	ld   a, e                                        ; $4046: $7b
	rrca                                             ; $4047: $0f
	ld   [hl], a                                     ; $4048: $77
	rra                                              ; $4049: $1f
	ld   a, a                                        ; $404a: $7f
	rra                                              ; $404b: $1f
	ccf                                              ; $404c: $3f
	add  hl, de                                      ; $404d: $19
	ccf                                              ; $404e: $3f

jr_094_404f:
	dec  e                                           ; $404f: $1d
	pop  hl                                          ; $4050: $e1
	ld   e, a                                        ; $4051: $5f
	pop  hl                                          ; $4052: $e1
	ld   e, a                                        ; $4053: $5f
	pop  hl                                          ; $4054: $e1
	ld   e, a                                        ; $4055: $5f
	pop  hl                                          ; $4056: $e1
	sbc  $f0                                         ; $4057: $de $f0
	xor  a                                           ; $4059: $af
	ld   a, b                                        ; $405a: $78
	ld   d, a                                        ; $405b: $57
	ld   a, b                                        ; $405c: $78
	ld   d, a                                        ; $405d: $57
	jr   c, jr_094_4097                              ; $405e: $38 $37

	jr   @+$19                                       ; $4060: $18 $17

	inc  c                                           ; $4062: $0c
	dec  bc                                          ; $4063: $0b
	inc  c                                           ; $4064: $0c
	dec  bc                                          ; $4065: $0b
	inc  c                                           ; $4066: $0c
	dec  bc                                          ; $4067: $0b
	ld   b, $05                                      ; $4068: $06 $05
	ld   b, $05                                      ; $406a: $06 $05
	inc  bc                                          ; $406c: $03
	ld   [bc], a                                     ; $406d: $02
	rlca                                             ; $406e: $07
	rlca                                             ; $406f: $07
	cp   a                                           ; $4070: $bf
	dec  c                                           ; $4071: $0d
	inc  c                                           ; $4072: $0c
	ld   [$0818], sp                                 ; $4073: $08 $18 $08
	cp   [hl]                                        ; $4076: $be
	sub  b                                           ; $4077: $90
	ld   hl, sp+$70                                  ; $4078: $f8 $70
	ccf                                              ; $407a: $3f
	jr   jr_094_409c                                 ; $407b: $18 $1f

	rlca                                             ; $407d: $07
	rlca                                             ; $407e: $07
	nop                                              ; $407f: $00
	nop                                              ; $4080: $00
	nop                                              ; $4081: $00
	nop                                              ; $4082: $00
	nop                                              ; $4083: $00
	nop                                              ; $4084: $00
	nop                                              ; $4085: $00
	nop                                              ; $4086: $00
	nop                                              ; $4087: $00
	nop                                              ; $4088: $00
	nop                                              ; $4089: $00
	nop                                              ; $408a: $00
	nop                                              ; $408b: $00
	nop                                              ; $408c: $00
	nop                                              ; $408d: $00
	add  b                                           ; $408e: $80
	nop                                              ; $408f: $00
	and  $c2                                         ; $4090: $e6 $c2
	ldh  [c], a                                      ; $4092: $e2
	ld   b, d                                        ; $4093: $42
	ld   h, d                                        ; $4094: $62
	ld   b, d                                        ; $4095: $42
	ld   [hl], h                                     ; $4096: $74

jr_094_4097:
	ld   h, h                                        ; $4097: $64
	ld   hl, sp+$38                                  ; $4098: $f8 $38
	ldh  a, [$e0]                                    ; $409a: $f0 $e0

jr_094_409c:
	ld   sp, hl                                      ; $409c: $f9
	db   $10                                         ; $409d: $10
	ld   [rRAMG], sp                                 ; $409e: $08 $00 $00
	nop                                              ; $40a1: $00
	nop                                              ; $40a2: $00
	nop                                              ; $40a3: $00
	nop                                              ; $40a4: $00
	nop                                              ; $40a5: $00
	nop                                              ; $40a6: $00
	nop                                              ; $40a7: $00
	ld   bc, $0100                                   ; $40a8: $01 $00 $01
	nop                                              ; $40ab: $00
	inc  bc                                          ; $40ac: $03
	nop                                              ; $40ad: $00
	rlca                                             ; $40ae: $07
	ld   bc, $ca3f                                   ; $40af: $01 $3f $ca
	ccf                                              ; $40b2: $3f
	jp   z, $cd3f                                    ; $40b3: $ca $3f $cd

	ccf                                              ; $40b6: $3f
	db   $dd                                         ; $40b7: $dd
	ld   a, a                                        ; $40b8: $7f
	cp   a                                           ; $40b9: $bf
	cp   $6a                                         ; $40ba: $fe $6a
	cp   $0e                                         ; $40bc: $fe $0e
	db   $fc                                         ; $40be: $fc
	inc  e                                           ; $40bf: $1c
	ld   hl, sp+$18                                  ; $40c0: $f8 $18
	ldh  a, [rAUD1SWEEP]                             ; $40c2: $f0 $10
	ldh  a, [$30]                                    ; $40c4: $f0 $30
	ldh  [rAUD4LEN], a                               ; $40c6: $e0 $20
	ldh  [rAUD4LEN], a                               ; $40c8: $e0 $20
	ret  nz                                          ; $40ca: $c0

	ld   b, b                                        ; $40cb: $40
	ret  nz                                          ; $40cc: $c0

	ret  nz                                          ; $40cd: $c0

	ldh  a, [$f0]                                    ; $40ce: $f0 $f0
	rst  $38                                         ; $40d0: $ff
	rst  $38                                         ; $40d1: $ff
	rst  $38                                         ; $40d2: $ff
	db   $fc                                         ; $40d3: $fc
	xor  h                                           ; $40d4: $ac
	ldh  [$e0], a                                    ; $40d5: $e0 $e0
	ldh  [$e0], a                                    ; $40d7: $e0 $e0
	ldh  [$f1], a                                    ; $40d9: $e0 $f1
	ldh  [$f3], a                                    ; $40db: $e0 $f3
	and  c                                           ; $40dd: $a1
	rst  $30                                         ; $40de: $f7
	ld   h, $a1                                      ; $40df: $26 $a1
	jp   $f060                                       ; $40e1: $c3 $60 $f0


	ld   e, b                                        ; $40e4: $58
	jr   nc, jr_094_410f                             ; $40e5: $30 $28

	db   $10                                         ; $40e7: $10
	ld   a, b                                        ; $40e8: $78
	nop                                              ; $40e9: $00
	ldh  a, [$60]                                    ; $40ea: $f0 $60
	ldh  [$e0], a                                    ; $40ec: $e0 $e0
	rst  $38                                         ; $40ee: $ff
	rst  $30                                         ; $40ef: $f7
	rst  $38                                         ; $40f0: $ff
	rst  $38                                         ; $40f1: $ff
	cp   $7f                                         ; $40f2: $fe $7f
	ret  nc                                          ; $40f4: $d0

	ldh  [$e0], a                                    ; $40f5: $e0 $e0
	nop                                              ; $40f7: $00
	ld   [hl], b                                     ; $40f8: $70
	nop                                              ; $40f9: $00
	ld   l, [hl]                                     ; $40fa: $6e
	ld   [hl], b                                     ; $40fb: $70
	rra                                              ; $40fc: $1f
	ld   e, $ff                                      ; $40fd: $1e $ff
	ccf                                              ; $40ff: $3f
	rst  $38                                         ; $4100: $ff
	rst  $38                                         ; $4101: $ff
	rst  $38                                         ; $4102: $ff
	db   $fc                                         ; $4103: $fc
	xor  h                                           ; $4104: $ac
	ldh  [$e0], a                                    ; $4105: $e0 $e0
	ldh  [$e0], a                                    ; $4107: $e0 $e0
	ldh  [$f0], a                                    ; $4109: $e0 $f0
	ldh  [$f7], a                                    ; $410b: $e0 $f7
	and  a                                           ; $410d: $a7
	di                                               ; $410e: $f3

jr_094_410f:
	ld   hl, $c3a1                                   ; $410f: $21 $a1 $c3
	ld   h, b                                        ; $4112: $60
	ldh  a, [$58]                                    ; $4113: $f0 $58
	jr   nc, jr_094_413f                             ; $4115: $30 $28

	stop                                             ; $4117: $10 $00
	nop                                              ; $4119: $00
	ld   h, b                                        ; $411a: $60
	nop                                              ; $411b: $00
	ldh  [$e0], a                                    ; $411c: $e0 $e0
	rst  $38                                         ; $411e: $ff
	rst  $30                                         ; $411f: $f7
	rst  $38                                         ; $4120: $ff
	rst  $38                                         ; $4121: $ff
	cp   $7f                                         ; $4122: $fe $7f
	ret  nc                                          ; $4124: $d0

	ldh  [$e0], a                                    ; $4125: $e0 $e0
	nop                                              ; $4127: $00
	nop                                              ; $4128: $00
	nop                                              ; $4129: $00
	jr   nc, jr_094_412c                             ; $412a: $30 $00

jr_094_412c:
	rra                                              ; $412c: $1f
	rra                                              ; $412d: $1f
	rst  $38                                         ; $412e: $ff
	ld   a, $e1                                      ; $412f: $3e $e1
	ld   b, c                                        ; $4131: $41
	pop  hl                                          ; $4132: $e1
	ret  nz                                          ; $4133: $c0

	ldh  a, [hScriptOpcodeParams]                                    ; $4134: $f0 $a0
	ld   a, b                                        ; $4136: $78
	ld   d, b                                        ; $4137: $50
	ld   a, b                                        ; $4138: $78
	ld   d, b                                        ; $4139: $50
	jr   c, jr_094_416c                              ; $413a: $38 $30

	jr   jr_094_414e                                 ; $413c: $18 $10

	inc  c                                           ; $413e: $0c

jr_094_413f:
	ld   [$090d], sp                                 ; $413f: $08 $0d $09
	dec  c                                           ; $4142: $0d
	add  hl, bc                                      ; $4143: $09
	ld   b, $04                                      ; $4144: $06 $04
	ld   b, $04                                      ; $4146: $06 $04
	inc  bc                                          ; $4148: $03
	ld   [bc], a                                     ; $4149: $02
	inc  bc                                          ; $414a: $03
	inc  bc                                          ; $414b: $03
	nop                                              ; $414c: $00
	nop                                              ; $414d: $00

jr_094_414e:
	nop                                              ; $414e: $00
	nop                                              ; $414f: $00
	jr   jr_094_415a                                 ; $4150: $18 $08

	cp   [hl]                                        ; $4152: $be
	sub  b                                           ; $4153: $90
	ld   hl, sp+$70                                  ; $4154: $f8 $70
	ccf                                              ; $4156: $3f
	jr   jr_094_4178                                 ; $4157: $18 $1f

	rlca                                             ; $4159: $07

jr_094_415a:
	rlca                                             ; $415a: $07
	nop                                              ; $415b: $00
	nop                                              ; $415c: $00
	nop                                              ; $415d: $00
	nop                                              ; $415e: $00
	nop                                              ; $415f: $00
	add  b                                           ; $4160: $80
	add  b                                           ; $4161: $80

jr_094_4162:
	sbc  a                                           ; $4162: $9f
	ccf                                              ; $4163: $3f
	inc  bc                                          ; $4164: $03
	nop                                              ; $4165: $00
	rrca                                             ; $4166: $0f
	dec  b                                           ; $4167: $05
	rlca                                             ; $4168: $07
	jr   @-$7e                                       ; $4169: $18 $80

	nop                                              ; $416b: $00

jr_094_416c:
	nop                                              ; $416c: $00
	nop                                              ; $416d: $00
	nop                                              ; $416e: $00
	nop                                              ; $416f: $00
	ld   h, d                                        ; $4170: $62
	ld   b, d                                        ; $4171: $42
	ld   [hl], h                                     ; $4172: $74
	ld   h, h                                        ; $4173: $64
	ld   hl, sp+$38                                  ; $4174: $f8 $38
	ldh  a, [$e0]                                    ; $4176: $f0 $e0

jr_094_4178:
	ld   sp, hl                                      ; $4178: $f9
	db   $10                                         ; $4179: $10
	ld   [rRAMG], sp                                 ; $417a: $08 $00 $00
	nop                                              ; $417d: $00
	inc  bc                                          ; $417e: $03
	ld   [bc], a                                     ; $417f: $02
	dec  bc                                          ; $4180: $0b
	add  hl, bc                                      ; $4181: $09
	pop  af                                          ; $4182: $f1
	ld   sp, hl                                      ; $4183: $f9
	db   $e3                                         ; $4184: $e3
	ld   [bc], a                                     ; $4185: $02
	add  e                                           ; $4186: $83
	add  b                                           ; $4187: $80
	inc  bc                                          ; $4188: $03
	ret  nz                                          ; $4189: $c0

	rst  ToBoot                                         ; $418a: $c7
	ld   bc, $0000                                   ; $418b: $01 $00 $00
	nop                                              ; $418e: $00
	nop                                              ; $418f: $00
	sbc  a                                           ; $4190: $9f
	adc  a                                           ; $4191: $8f
	sub  b                                           ; $4192: $90
	jr   nc, jr_094_41b4                             ; $4193: $30 $1f

	rrca                                             ; $4195: $0f
	nop                                              ; $4196: $00
	nop                                              ; $4197: $00
	rrca                                             ; $4198: $0f
	dec  b                                           ; $4199: $05
	add  a                                           ; $419a: $87
	jr   jr_094_419d                                 ; $419b: $18 $00

jr_094_419d:
	nop                                              ; $419d: $00
	nop                                              ; $419e: $00
	nop                                              ; $419f: $00
	db   $db                                         ; $41a0: $db
	jp   hl                                          ; $41a1: $e9


	ld   sp, $d319                                   ; $41a2: $31 $19 $d3
	ldh  [c], a                                      ; $41a5: $e2
	inc  bc                                          ; $41a6: $03
	nop                                              ; $41a7: $00
	add  e                                           ; $41a8: $83
	add  b                                           ; $41a9: $80
	rlca                                             ; $41aa: $07
	pop  bc                                          ; $41ab: $c1
	nop                                              ; $41ac: $00
	nop                                              ; $41ad: $00
	nop                                              ; $41ae: $00
	nop                                              ; $41af: $00
	rst  $38                                         ; $41b0: $ff
	rst  $38                                         ; $41b1: $ff
	ei                                               ; $41b2: $fb
	db   $fc                                         ; $41b3: $fc

jr_094_41b4:
	xor  h                                           ; $41b4: $ac
	ldh  [$e1], a                                    ; $41b5: $e0 $e1
	pop  hl                                          ; $41b7: $e1
	ldh  [c], a                                      ; $41b8: $e2
	ldh  [c], a                                      ; $41b9: $e2
	or   $e4                                         ; $41ba: $f6 $e4
	or   $a4                                         ; $41bc: $f6 $a4
	pop  af                                          ; $41be: $f1
	jr   nz, jr_094_4162                             ; $41bf: $20 $a1

	jp   $70e0                                       ; $41c1: $c3 $e0 $70


	ld   a, b                                        ; $41c4: $78
	db   $10                                         ; $41c5: $10
	ld   hl, sp-$40                                  ; $41c6: $f8 $c0
	jr   c, @+$22                                    ; $41c8: $38 $20

	ret  nz                                          ; $41ca: $c0

	ld   b, b                                        ; $41cb: $40
	ret  nz                                          ; $41cc: $c0

	ld   b, b                                        ; $41cd: $40
	rst  $38                                         ; $41ce: $ff
	rst  $30                                         ; $41cf: $f7
	rst  $38                                         ; $41d0: $ff
	rst  $38                                         ; $41d1: $ff
	xor  [hl]                                        ; $41d2: $ae
	ld   a, a                                        ; $41d3: $7f
	ret  nc                                          ; $41d4: $d0

	ldh  [$fc], a                                    ; $41d5: $e0 $fc
	inc  e                                           ; $41d7: $1c
	ld   h, d                                        ; $41d8: $62
	ld   h, d                                        ; $41d9: $62
	dec  de                                          ; $41da: $1b
	ld   de, $111b                                   ; $41db: $11 $1b $11
	db   $fc                                         ; $41de: $fc
	inc  a                                           ; $41df: $3c
	rst  $38                                         ; $41e0: $ff
	rst  $38                                         ; $41e1: $ff
	ei                                               ; $41e2: $fb
	db   $fc                                         ; $41e3: $fc
	xor  h                                           ; $41e4: $ac
	ldh  [$e0], a                                    ; $41e5: $e0 $e0
	ldh  [$e0], a                                    ; $41e7: $e0 $e0
	ldh  [$f3], a                                    ; $41e9: $e0 $f3
	pop  hl                                          ; $41eb: $e1
	rst  $30                                         ; $41ec: $f7
	and  d                                           ; $41ed: $a2
	push af                                          ; $41ee: $f5
	inc  h                                           ; $41ef: $24
	and  c                                           ; $41f0: $a1
	jp   $70e0                                       ; $41f1: $c3 $e0 $70


	ld   a, b                                        ; $41f4: $78
	db   $10                                         ; $41f5: $10
	jr   c, jr_094_41f8                              ; $41f6: $38 $00

jr_094_41f8:
	nop                                              ; $41f8: $00
	nop                                              ; $41f9: $00
	ret  nz                                          ; $41fa: $c0

	ret  nz                                          ; $41fb: $c0

	ldh  [$e0], a                                    ; $41fc: $e0 $e0
	rst  $38                                         ; $41fe: $ff
	rst  $30                                         ; $41ff: $f7
	rst  $38                                         ; $4200: $ff
	rst  $38                                         ; $4201: $ff
	xor  [hl]                                        ; $4202: $ae
	ld   a, a                                        ; $4203: $7f
	ret  nc                                          ; $4204: $d0

	ldh  [$e0], a                                    ; $4205: $e0 $e0
	nop                                              ; $4207: $00
	nop                                              ; $4208: $00
	nop                                              ; $4209: $00
	ld   a, $3c                                      ; $420a: $3e $3c
	ld   a, a                                        ; $420c: $7f
	ld   e, d                                        ; $420d: $5a
	db   $fd                                         ; $420e: $fd
	dec  a                                           ; $420f: $3d
	rst  $38                                         ; $4210: $ff
	rst  $38                                         ; $4211: $ff
	ei                                               ; $4212: $fb
	db   $fc                                         ; $4213: $fc
	xor  h                                           ; $4214: $ac
	ldh  [$e0], a                                    ; $4215: $e0 $e0
	ldh  [$e0], a                                    ; $4217: $e0 $e0
	ldh  [$f0], a                                    ; $4219: $e0 $f0
	ldh  [$f7], a                                    ; $421b: $e0 $f7
	and  a                                           ; $421d: $a7
	di                                               ; $421e: $f3
	ld   hl, $c3a1                                   ; $421f: $21 $a1 $c3
	ldh  [rSVBK], a                                  ; $4222: $e0 $70
	ld   a, b                                        ; $4224: $78
	db   $10                                         ; $4225: $10
	jr   c, jr_094_4228                              ; $4226: $38 $00

jr_094_4228:
	nop                                              ; $4228: $00
	nop                                              ; $4229: $00
	ld   h, b                                        ; $422a: $60
	nop                                              ; $422b: $00
	ldh  [$e0], a                                    ; $422c: $e0 $e0
	rst  $38                                         ; $422e: $ff
	rst  $30                                         ; $422f: $f7
	rst  $38                                         ; $4230: $ff
	rst  $38                                         ; $4231: $ff
	xor  [hl]                                        ; $4232: $ae
	ld   a, a                                        ; $4233: $7f
	ret  nc                                          ; $4234: $d0

	ldh  [$e0], a                                    ; $4235: $e0 $e0
	nop                                              ; $4237: $00
	nop                                              ; $4238: $00
	nop                                              ; $4239: $00
	jr   nc, jr_094_423c                             ; $423a: $30 $00

jr_094_423c:
	rra                                              ; $423c: $1f
	rra                                              ; $423d: $1f
	rst  $38                                         ; $423e: $ff
	ld   a, $62                                      ; $423f: $3e $62
	ld   b, d                                        ; $4241: $42
	ld   [hl], h                                     ; $4242: $74
	ld   h, h                                        ; $4243: $64
	ld   hl, sp+$38                                  ; $4244: $f8 $38
	ldh  a, [$e0]                                    ; $4246: $f0 $e0
	ld   sp, hl                                      ; $4248: $f9
	db   $10                                         ; $4249: $10

Jump_094_424a:
	ld   [$0200], sp                                 ; $424a: $08 $00 $02
	ld   [bc], a                                     ; $424d: $02
	dec  bc                                          ; $424e: $0b
	dec  e                                           ; $424f: $1d
	or   l                                           ; $4250: $b5
	ld   h, l                                        ; $4251: $65
	ld   sp, hl                                      ; $4252: $f9
	ld   sp, hl                                      ; $4253: $f9
	db   $e3                                         ; $4254: $e3
	nop                                              ; $4255: $00
	add  e                                           ; $4256: $83
	add  b                                           ; $4257: $80
	inc  bc                                          ; $4258: $03
	ret  nz                                          ; $4259: $c0

	rst  ToBoot                                         ; $425a: $c7
	ld   bc, $0000                                   ; $425b: $01 $00 $00
	nop                                              ; $425e: $00
	nop                                              ; $425f: $00
	dec  c                                           ; $4260: $0d
	add  hl, bc                                      ; $4261: $09
	inc  c                                           ; $4262: $0c
	ld   [$0406], sp                                 ; $4263: $08 $06 $04
	ld   b, $04                                      ; $4266: $06 $04
	inc  bc                                          ; $4268: $03
	ld   [bc], a                                     ; $4269: $02
	inc  bc                                          ; $426a: $03
	inc  bc                                          ; $426b: $03
	nop                                              ; $426c: $00
	nop                                              ; $426d: $00
	nop                                              ; $426e: $00
	nop                                              ; $426f: $00
	jr   jr_094_427a                                 ; $4270: $18 $08

	cp   [hl]                                        ; $4272: $be
	sub  b                                           ; $4273: $90
	ld   hl, sp+$70                                  ; $4274: $f8 $70
	ccf                                              ; $4276: $3f
	jr   jr_094_4298                                 ; $4277: $18 $1f

	rlca                                             ; $4279: $07

jr_094_427a:
	rlca                                             ; $427a: $07
	nop                                              ; $427b: $00
	nop                                              ; $427c: $00
	nop                                              ; $427d: $00
	add  b                                           ; $427e: $80
	add  b                                           ; $427f: $80
	sbc  [hl]                                        ; $4280: $9e
	ccf                                              ; $4281: $3f
	sbc  a                                           ; $4282: $9f
	db   $10                                         ; $4283: $10
	ld   [$0708], sp                                 ; $4284: $08 $08 $07
	rlca                                             ; $4287: $07
	nop                                              ; $4288: $00
	nop                                              ; $4289: $00
	add  c                                           ; $428a: $81
	ld   b, $00                                      ; $428b: $06 $00
	nop                                              ; $428d: $00
	nop                                              ; $428e: $00
	nop                                              ; $428f: $00
	ld   h, d                                        ; $4290: $62
	ld   b, d                                        ; $4291: $42
	ld   [hl], h                                     ; $4292: $74
	ld   h, h                                        ; $4293: $64
	ld   hl, sp+$38                                  ; $4294: $f8 $38
	ldh  a, [$e0]                                    ; $4296: $f0 $e0

jr_094_4298:
	ld   sp, hl                                      ; $4298: $f9
	db   $10                                         ; $4299: $10
	ld   a, [bc]                                     ; $429a: $0a
	ld   [bc], a                                     ; $429b: $02
	inc  bc                                          ; $429c: $03
	ld   bc, $395d                                   ; $429d: $01 $5d $39
	dec  b                                           ; $42a0: $05
	push bc                                          ; $42a1: $c5

jr_094_42a2:
	ld   hl, sp+$05                                  ; $42a2: $f8 $05
	inc  de                                          ; $42a4: $13
	jr   jr_094_42ca                                 ; $42a5: $18 $23

	ldh  [rAUD1LOW], a                               ; $42a7: $e0 $13
	nop                                              ; $42a9: $00
	add  a                                           ; $42aa: $87
	ld   h, c                                        ; $42ab: $61
	nop                                              ; $42ac: $00
	nop                                              ; $42ad: $00
	nop                                              ; $42ae: $00
	nop                                              ; $42af: $00
	rst  $38                                         ; $42b0: $ff
	rst  $38                                         ; $42b1: $ff
	cp   $fd                                         ; $42b2: $fe $fd
	xor  h                                           ; $42b4: $ac
	ldh  [$e0], a                                    ; $42b5: $e0 $e0
	ldh  [$e0], a                                    ; $42b7: $e0 $e0
	ldh  [$f3], a                                    ; $42b9: $e0 $f3
	pop  hl                                          ; $42bb: $e1
	or   $a6                                         ; $42bc: $f6 $a6
	pop  af                                          ; $42be: $f1
	jr   nz, jr_094_42a2                             ; $42bf: $20 $e1

	inc  bc                                          ; $42c1: $03
	ldh  a, [$c0]                                    ; $42c2: $f0 $c0
	ld   e, b                                        ; $42c4: $58
	ldh  [$38], a                                    ; $42c5: $e0 $38
	ld   [hl], b                                     ; $42c7: $70
	ld   hl, sp-$10                                  ; $42c8: $f8 $f0

jr_094_42ca:
	ldh  a, [$50]                                    ; $42ca: $f0 $50
	ldh  [rLCDC], a                                  ; $42cc: $e0 $40
	rst  $38                                         ; $42ce: $ff
	rst  $30                                         ; $42cf: $f7
	rst  $38                                         ; $42d0: $ff
	rst  $38                                         ; $42d1: $ff
	sbc  $3f                                         ; $42d2: $de $3f
	ldh  a, [$30]                                    ; $42d4: $f0 $30
	ldh  [$f0], a                                    ; $42d6: $e0 $f0
	ld   a, b                                        ; $42d8: $78
	ld   hl, sp+$7f                                  ; $42d9: $f8 $7f
	ld   d, $1f                                      ; $42db: $16 $1f
	ld   de, $3cfc                                   ; $42dd: $11 $fc $3c
	rst  $38                                         ; $42e0: $ff
	rst  $38                                         ; $42e1: $ff
	cp   $fd                                         ; $42e2: $fe $fd
	xor  h                                           ; $42e4: $ac
	ldh  [$e0], a                                    ; $42e5: $e0 $e0
	ldh  [$e0], a                                    ; $42e7: $e0 $e0
	ldh  [$f1], a                                    ; $42e9: $e0 $f1
	ldh  [$f7], a                                    ; $42eb: $e0 $f7
	and  c                                           ; $42ed: $a1
	rst  $30                                         ; $42ee: $f7
	ld   h, $e1                                      ; $42ef: $26 $e1
	inc  bc                                          ; $42f1: $03
	ldh  a, [$c0]                                    ; $42f2: $f0 $c0
	ld   e, b                                        ; $42f4: $58
	ldh  [$38], a                                    ; $42f5: $e0 $38
	ld   [hl], b                                     ; $42f7: $70
	jr   jr_094_42fa                                 ; $42f8: $18 $00

jr_094_42fa:
	ldh  a, [$f0]                                    ; $42fa: $f0 $f0
	ldh  [$60], a                                    ; $42fc: $e0 $60
	rst  $38                                         ; $42fe: $ff
	rst  $30                                         ; $42ff: $f7
	rst  $38                                         ; $4300: $ff
	rst  $38                                         ; $4301: $ff
	sbc  $3f                                         ; $4302: $de $3f
	ldh  a, [$30]                                    ; $4304: $f0 $30
	ldh  [$f0], a                                    ; $4306: $e0 $f0
	ret  nz                                          ; $4308: $c0

	nop                                              ; $4309: $00
	ld   a, [hl]                                     ; $430a: $7e
	ld   a, h                                        ; $430b: $7c
	rra                                              ; $430c: $1f
	ld   a, [de]                                     ; $430d: $1a
	rst  $38                                         ; $430e: $ff
	ccf                                              ; $430f: $3f
	rst  $38                                         ; $4310: $ff
	rst  $38                                         ; $4311: $ff
	cp   $fd                                         ; $4312: $fe $fd
	xor  h                                           ; $4314: $ac
	ldh  [$e0], a                                    ; $4315: $e0 $e0
	ldh  [$e0], a                                    ; $4317: $e0 $e0
	ldh  [$f0], a                                    ; $4319: $e0 $f0
	ldh  [$f7], a                                    ; $431b: $e0 $f7
	and  a                                           ; $431d: $a7
	di                                               ; $431e: $f3
	ld   hl, $03e1                                   ; $431f: $21 $e1 $03
	ldh  a, [$c0]                                    ; $4322: $f0 $c0
	ld   e, b                                        ; $4324: $58
	ldh  [$38], a                                    ; $4325: $e0 $38
	ld   [hl], b                                     ; $4327: $70
	jr   jr_094_432a                                 ; $4328: $18 $00

jr_094_432a:
	ld   h, b                                        ; $432a: $60
	nop                                              ; $432b: $00
	ldh  [$e0], a                                    ; $432c: $e0 $e0
	rst  $38                                         ; $432e: $ff
	rst  $30                                         ; $432f: $f7
	rst  $38                                         ; $4330: $ff
	rst  $38                                         ; $4331: $ff
	sbc  $3f                                         ; $4332: $de $3f
	ldh  a, [$30]                                    ; $4334: $f0 $30
	ldh  [$f0], a                                    ; $4336: $e0 $f0
	ret  nz                                          ; $4338: $c0

	nop                                              ; $4339: $00
	jr   nc, jr_094_433c                             ; $433a: $30 $00

jr_094_433c:
	rra                                              ; $433c: $1f
	rra                                              ; $433d: $1f
	rst  $38                                         ; $433e: $ff
	ld   a, $80                                      ; $433f: $3e $80
	add  b                                           ; $4341: $80

jr_094_4342:
	sbc  b                                           ; $4342: $98
	dec  sp                                          ; $4343: $3b
	inc  bc                                          ; $4344: $03
	nop                                              ; $4345: $00
	rrca                                             ; $4346: $0f
	dec  b                                           ; $4347: $05
	rlca                                             ; $4348: $07
	jr   @-$7e                                       ; $4349: $18 $80

	nop                                              ; $434b: $00
	nop                                              ; $434c: $00
	nop                                              ; $434d: $00
	nop                                              ; $434e: $00
	nop                                              ; $434f: $00
	ld   h, d                                        ; $4350: $62
	ld   b, d                                        ; $4351: $42
	ld   [hl], h                                     ; $4352: $74
	ld   h, h                                        ; $4353: $64
	ld   hl, sp+$38                                  ; $4354: $f8 $38
	ldh  a, [$e0]                                    ; $4356: $f0 $e0
	ld   sp, hl                                      ; $4358: $f9
	db   $10                                         ; $4359: $10
	ld   [rRAMG], sp                                 ; $435a: $08 $00 $00
	nop                                              ; $435d: $00
	rlca                                             ; $435e: $07
	inc  b                                           ; $435f: $04
	inc  bc                                          ; $4360: $03
	ld   [bc], a                                     ; $4361: $02
	ld   sp, hl                                      ; $4362: $f9
	pop  hl                                          ; $4363: $e1
	ld   sp, hl                                      ; $4364: $f9
	jr   @-$7b                                       ; $4365: $18 $83

	add  b                                           ; $4367: $80
	inc  bc                                          ; $4368: $03
	ret  nz                                          ; $4369: $c0

	rst  ToBoot                                         ; $436a: $c7
	ld   bc, $0000                                   ; $436b: $01 $00 $00
	nop                                              ; $436e: $00
	nop                                              ; $436f: $00
	dec  c                                           ; $4370: $0d
	ld   [$090d], sp                                 ; $4371: $08 $0d $09
	rlca                                             ; $4374: $07
	dec  b                                           ; $4375: $05
	ld   b, $04                                      ; $4376: $06 $04
	inc  bc                                          ; $4378: $03
	ld   [bc], a                                     ; $4379: $02
	inc  bc                                          ; $437a: $03
	inc  bc                                          ; $437b: $03
	nop                                              ; $437c: $00
	nop                                              ; $437d: $00
	nop                                              ; $437e: $00
	nop                                              ; $437f: $00
	add  b                                           ; $4380: $80
	add  b                                           ; $4381: $80
	sbc  d                                           ; $4382: $9a
	ld   sp, $10a0                                   ; $4383: $31 $a0 $10
	rla                                              ; $4386: $17
	rrca                                             ; $4387: $0f
	nop                                              ; $4388: $00
	nop                                              ; $4389: $00
	add  l                                           ; $438a: $85
	ld   [bc], a                                     ; $438b: $02
	nop                                              ; $438c: $00
	nop                                              ; $438d: $00
	nop                                              ; $438e: $00
	nop                                              ; $438f: $00
	ld   h, d                                        ; $4390: $62
	ld   b, d                                        ; $4391: $42
	ld   [hl], h                                     ; $4392: $74
	ld   h, h                                        ; $4393: $64
	ld   hl, sp+$38                                  ; $4394: $f8 $38
	ldh  a, [$e0]                                    ; $4396: $f0 $e0
	ld   sp, hl                                      ; $4398: $f9
	db   $10                                         ; $4399: $10
	ld   [rRAMG], sp                                 ; $439a: $08 $00 $00
	nop                                              ; $439d: $00
	inc  bc                                          ; $439e: $03
	inc  b                                           ; $439f: $04
	inc  bc                                          ; $43a0: $03
	ld   [bc], a                                     ; $43a1: $02
	ld   l, c                                        ; $43a2: $69
	pop  af                                          ; $43a3: $f1
	nop                                              ; $43a4: $00
	add  hl, bc                                      ; $43a5: $09
	db   $eb                                         ; $43a6: $eb
	ldh  a, [$03]                                    ; $43a7: $f0 $03
	nop                                              ; $43a9: $00
	add  a                                           ; $43aa: $87
	ld   h, c                                        ; $43ab: $61
	nop                                              ; $43ac: $00
	nop                                              ; $43ad: $00
	nop                                              ; $43ae: $00
	nop                                              ; $43af: $00
	rst  $38                                         ; $43b0: $ff
	rst  $38                                         ; $43b1: $ff
	ei                                               ; $43b2: $fb
	db   $fc                                         ; $43b3: $fc
	xor  h                                           ; $43b4: $ac
	ldh  [$e3], a                                    ; $43b5: $e0 $e3
	db   $e3                                         ; $43b7: $e3
	and  $e6                                         ; $43b8: $e6 $e6
	or   $e4                                         ; $43ba: $f6 $e4
	ldh  a, [c]                                      ; $43bc: $f2
	and  b                                           ; $43bd: $a0
	pop  af                                          ; $43be: $f1
	jr   nz, jr_094_4342                             ; $43bf: $20 $81

	jp   Jump_094_60c2                               ; $43c1: $c3 $c2 $60


	ld   a, e                                        ; $43c4: $7b
	jr   nc, @-$05                                   ; $43c5: $30 $f9

	ret  nz                                          ; $43c7: $c0

	jr   c, @+$22                                    ; $43c8: $38 $20

	ret  nz                                          ; $43ca: $c0

Call_094_43cb:
Jump_094_43cb:
	ld   b, b                                        ; $43cb: $40
	ret  nz                                          ; $43cc: $c0

	ld   b, b                                        ; $43cd: $40
	rst  $38                                         ; $43ce: $ff
	rst  $30                                         ; $43cf: $f7
	rst  $38                                         ; $43d0: $ff
	rst  $38                                         ; $43d1: $ff
	cp   $7f                                         ; $43d2: $fe $7f
	ret  nc                                          ; $43d4: $d0

	ldh  [$fe], a                                    ; $43d5: $e0 $fe
	ld   e, $63                                      ; $43d7: $1e $63
	ld   h, e                                        ; $43d9: $63
	dec  de                                          ; $43da: $1b
	ld   de, $101a                                   ; $43db: $11 $1a $10
	db   $fc                                         ; $43de: $fc
	inc  a                                           ; $43df: $3c
	rst  $38                                         ; $43e0: $ff
	rst  $38                                         ; $43e1: $ff
	ei                                               ; $43e2: $fb
	db   $fc                                         ; $43e3: $fc
	xor  h                                           ; $43e4: $ac
	ldh  [$e0], a                                    ; $43e5: $e0 $e0
	ldh  [$e0], a                                    ; $43e7: $e0 $e0
	ldh  [$f3], a                                    ; $43e9: $e0 $f3
	db   $e3                                         ; $43eb: $e3
	rst  $30                                         ; $43ec: $f7
	and  [hl]                                        ; $43ed: $a6
	push af                                          ; $43ee: $f5
	inc  h                                           ; $43ef: $24
	add  c                                           ; $43f0: $81
	jp   Jump_094_60c2                               ; $43f1: $c3 $c2 $60


	ld   a, e                                        ; $43f4: $7b
	jr   nc, jr_094_4430                             ; $43f5: $30 $39

	nop                                              ; $43f7: $00
	jr   jr_094_43fa                                 ; $43f8: $18 $00

jr_094_43fa:
	ret  nz                                          ; $43fa: $c0

	ret  nz                                          ; $43fb: $c0

	ldh  [$60], a                                    ; $43fc: $e0 $60
	rst  $38                                         ; $43fe: $ff
	rst  $30                                         ; $43ff: $f7
	rst  $38                                         ; $4400: $ff
	rst  $38                                         ; $4401: $ff
	cp   $7f                                         ; $4402: $fe $7f
	ret  nc                                          ; $4404: $d0

	ldh  [$e0], a                                    ; $4405: $e0 $e0
	nop                                              ; $4407: $00
	nop                                              ; $4408: $00
	nop                                              ; $4409: $00
	ld   a, $3e                                      ; $440a: $3e $3e
	ld   a, a                                        ; $440c: $7f
	ld   e, e                                        ; $440d: $5b
	db   $fd                                         ; $440e: $fd
	dec  a                                           ; $440f: $3d
	add  c                                           ; $4410: $81
	jp   Jump_094_60c2                               ; $4411: $c3 $c2 $60


	ld   a, e                                        ; $4414: $7b
	jr   nc, jr_094_4450                             ; $4415: $30 $39

	nop                                              ; $4417: $00
	jr   jr_094_441a                                 ; $4418: $18 $00

jr_094_441a:
	ld   h, b                                        ; $441a: $60
	nop                                              ; $441b: $00
	ldh  [$e0], a                                    ; $441c: $e0 $e0
	rst  $38                                         ; $441e: $ff
	rst  $30                                         ; $441f: $f7
	inc  c                                           ; $4420: $0c
	ld   [$080c], sp                                 ; $4421: $08 $0c $08
	ld   b, $04                                      ; $4424: $06 $04
	ld   b, $04                                      ; $4426: $06 $04
	inc  bc                                          ; $4428: $03
	ld   [bc], a                                     ; $4429: $02
	inc  bc                                          ; $442a: $03
	inc  bc                                          ; $442b: $03
	nop                                              ; $442c: $00
	nop                                              ; $442d: $00
	nop                                              ; $442e: $00
	nop                                              ; $442f: $00

jr_094_4430:
	jr   jr_094_443a                                 ; $4430: $18 $08

	cp   [hl]                                        ; $4432: $be
	sub  b                                           ; $4433: $90
	ld   hl, sp+$70                                  ; $4434: $f8 $70
	ccf                                              ; $4436: $3f
	jr   jr_094_4458                                 ; $4437: $18 $1f

	rlca                                             ; $4439: $07

jr_094_443a:
	rlca                                             ; $443a: $07
	nop                                              ; $443b: $00
	nop                                              ; $443c: $00
	nop                                              ; $443d: $00
	ret  nz                                          ; $443e: $c0

	ld   b, b                                        ; $443f: $40
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4440: $cf
	add  a                                           ; $4441: $87
	sub  b                                           ; $4442: $90
	jr   c, jr_094_4448                              ; $4443: $38 $03

	inc  bc                                          ; $4445: $03
	inc  bc                                          ; $4446: $03
	inc  c                                           ; $4447: $0c

jr_094_4448:
	nop                                              ; $4448: $00
	nop                                              ; $4449: $00
	add  b                                           ; $444a: $80
	nop                                              ; $444b: $00
	nop                                              ; $444c: $00
	nop                                              ; $444d: $00
	nop                                              ; $444e: $00
	nop                                              ; $444f: $00

jr_094_4450:
	ld   h, d                                        ; $4450: $62
	ld   b, d                                        ; $4451: $42
	ld   [hl], h                                     ; $4452: $74
	ld   h, h                                        ; $4453: $64
	ld   hl, sp+$38                                  ; $4454: $f8 $38
	ldh  a, [$e0]                                    ; $4456: $f0 $e0

jr_094_4458:
	ld   sp, hl                                      ; $4458: $f9
	db   $10                                         ; $4459: $10
	ld   [$0200], sp                                 ; $445a: $08 $00 $02
	ld   [bc], a                                     ; $445d: $02
	di                                               ; $445e: $f3
	ld   sp, $c9c9                                   ; $445f: $31 $c9 $c9
	ld   [hl], b                                     ; $4462: $70
	dec  sp                                          ; $4463: $3b
	add  c                                           ; $4464: $81
	add  d                                           ; $4465: $82
	inc  bc                                          ; $4466: $03
	ret  nz                                          ; $4467: $c0

	jp   $0700                                       ; $4468: $c3 $00 $07


	ld   bc, $0000                                   ; $446b: $01 $00 $00
	nop                                              ; $446e: $00
	nop                                              ; $446f: $00
	jr   jr_094_447a                                 ; $4470: $18 $08

	cp   [hl]                                        ; $4472: $be
	sub  b                                           ; $4473: $90
	ld   hl, sp+$70                                  ; $4474: $f8 $70
	ccf                                              ; $4476: $3f
	jr   jr_094_4498                                 ; $4477: $18 $1f

	rlca                                             ; $4479: $07

jr_094_447a:
	rlca                                             ; $447a: $07
	nop                                              ; $447b: $00
	nop                                              ; $447c: $00
	nop                                              ; $447d: $00
	ld   b, b                                        ; $447e: $40
	inc  bc                                          ; $447f: $03
	ret  z                                           ; $4480: $c8

	ld   c, h                                        ; $4481: $4c
	sbc  e                                           ; $4482: $9b
	sub  e                                           ; $4483: $93
	inc  e                                           ; $4484: $1c
	inc  c                                           ; $4485: $0c
	inc  bc                                          ; $4486: $03
	inc  bc                                          ; $4487: $03
	inc  bc                                          ; $4488: $03
	inc  c                                           ; $4489: $0c
	add  b                                           ; $448a: $80
	nop                                              ; $448b: $00
	nop                                              ; $448c: $00
	nop                                              ; $448d: $00
	nop                                              ; $448e: $00
	nop                                              ; $448f: $00
	ld   h, d                                        ; $4490: $62
	ld   b, d                                        ; $4491: $42
	ld   [hl], h                                     ; $4492: $74
	ld   h, h                                        ; $4493: $64
	ld   hl, sp+$38                                  ; $4494: $f8 $38
	ldh  a, [$e0]                                    ; $4496: $f0 $e0

jr_094_4498:
	ld   sp, hl                                      ; $4498: $f9
	db   $10                                         ; $4499: $10
	ld   [rRAMG], sp                                 ; $449a: $08 $00 $00
	nop                                              ; $449d: $00
	jp   nc, $19e2                                   ; $449e: $d2 $e2 $19

	ld   de, $8988                                   ; $44a1: $11 $88 $89
	ld   h, c                                        ; $44a4: $61
	ld   l, d                                        ; $44a5: $6a
	or   e                                           ; $44a6: $b3
	sub  b                                           ; $44a7: $90
	inc  bc                                          ; $44a8: $03
	ret  nz                                          ; $44a9: $c0

	rst  ToBoot                                         ; $44aa: $c7
	ld   bc, $0000                                   ; $44ab: $01 $00 $00
	nop                                              ; $44ae: $00
	nop                                              ; $44af: $00
	rst  $38                                         ; $44b0: $ff
	rst  $38                                         ; $44b1: $ff
	ld   hl, sp-$01                                  ; $44b2: $f8 $ff

jr_094_44b4:
	and  a                                           ; $44b4: $a7
	rst  $28                                         ; $44b5: $ef
	ldh  [$e0], a                                    ; $44b6: $e0 $e0
	ldh  [$e1], a                                    ; $44b8: $e0 $e1
	rst  $30                                         ; $44ba: $f7
	rst  $20                                         ; $44bb: $e7
	or   $a0                                         ; $44bc: $f6 $a0
	pop  af                                          ; $44be: $f1
	jr   nz, jr_094_44c2                             ; $44bf: $20 $01

	add  e                                           ; $44c1: $83

jr_094_44c2:
	jr   nc, jr_094_44b4                             ; $44c2: $30 $f0

	ret  c                                           ; $44c4: $d8

	ldh  [$78], a                                    ; $44c5: $e0 $78
	nop                                              ; $44c7: $00
	ld   hl, sp-$20                                  ; $44c8: $f8 $e0
	ldh  a, [$c0]                                    ; $44ca: $f0 $c0
	ld   b, b                                        ; $44cc: $40
	ret  nz                                          ; $44cd: $c0

	rst  $38                                         ; $44ce: $ff
	rst  $30                                         ; $44cf: $f7
	rst  $38                                         ; $44d0: $ff
	rst  $38                                         ; $44d1: $ff
	ld   e, $ff                                      ; $44d2: $1e $ff
	cp   a                                           ; $44d4: $bf
	ld   a, a                                        ; $44d5: $7f
	ldh  [rP1], a                                    ; $44d6: $e0 $00
	ld   a, b                                        ; $44d8: $78
	ld   a, h                                        ; $44d9: $7c
	ld   a, a                                        ; $44da: $7f

jr_094_44db:
	rra                                              ; $44db: $1f
	inc  de                                          ; $44dc: $13
	jr   jr_094_44db                                 ; $44dd: $18 $fc

	inc  a                                           ; $44df: $3c
	cp   h                                           ; $44e0: $bc
	rst  JumpTable                                         ; $44e1: $df
	ei                                               ; $44e2: $fb
	rra                                              ; $44e3: $1f
	ld   a, l                                        ; $44e4: $7d
	adc  a                                           ; $44e5: $8f
	ei                                               ; $44e6: $fb
	rrca                                             ; $44e7: $0f
	ld   [hl], a                                     ; $44e8: $77
	rra                                              ; $44e9: $1f
	ld   a, a                                        ; $44ea: $7f
	rra                                              ; $44eb: $1f
	ccf                                              ; $44ec: $3f
	add  hl, de                                      ; $44ed: $19
	ccf                                              ; $44ee: $3f
	dec  e                                           ; $44ef: $1d
	rst  $38                                         ; $44f0: $ff
	rst  $38                                         ; $44f1: $ff
	ld   hl, sp-$01                                  ; $44f2: $f8 $ff

jr_094_44f4:
	and  a                                           ; $44f4: $a7
	rst  $28                                         ; $44f5: $ef
	ldh  [$e0], a                                    ; $44f6: $e0 $e0
	ldh  [$e0], a                                    ; $44f8: $e0 $e0
	ldh  a, [$e1]                                    ; $44fa: $f0 $e1
	rst  $30                                         ; $44fc: $f7
	and  [hl]                                        ; $44fd: $a6
	rst  $30                                         ; $44fe: $f7
	ld   hl, $8301                                   ; $44ff: $21 $01 $83
	jr   nc, jr_094_44f4                             ; $4502: $30 $f0

	ret  c                                           ; $4504: $d8

	ldh  [$78], a                                    ; $4505: $e0 $78
	nop                                              ; $4507: $00
	nop                                              ; $4508: $00
	nop                                              ; $4509: $00
	ldh  a, [$e0]                                    ; $450a: $f0 $e0
	ld   b, b                                        ; $450c: $40
	ret  nz                                          ; $450d: $c0

	rst  $38                                         ; $450e: $ff
	rst  $30                                         ; $450f: $f7
	rst  $38                                         ; $4510: $ff
	rst  $38                                         ; $4511: $ff
	ld   e, $ff                                      ; $4512: $1e $ff
	cp   a                                           ; $4514: $bf
	ld   a, a                                        ; $4515: $7f
	ldh  [rP1], a                                    ; $4516: $e0 $00
	nop                                              ; $4518: $00
	nop                                              ; $4519: $00
	ld   a, b                                        ; $451a: $78
	ld   a, h                                        ; $451b: $7c
	rla                                              ; $451c: $17
	dec  de                                          ; $451d: $1b
	rst  $38                                         ; $451e: $ff
	inc  a                                           ; $451f: $3c
	rst  $38                                         ; $4520: $ff
	rst  $38                                         ; $4521: $ff
	ld   hl, sp-$01                                  ; $4522: $f8 $ff

jr_094_4524:
	and  a                                           ; $4524: $a7
	rst  $28                                         ; $4525: $ef
	ldh  [$e0], a                                    ; $4526: $e0 $e0
	ldh  [$e0], a                                    ; $4528: $e0 $e0
	ldh  a, [$e0]                                    ; $452a: $f0 $e0
	rst  $30                                         ; $452c: $f7
	and  a                                           ; $452d: $a7
	di                                               ; $452e: $f3
	ld   hl, $8301                                   ; $452f: $21 $01 $83
	jr   nc, jr_094_4524                             ; $4532: $30 $f0

	ret  c                                           ; $4534: $d8

	ldh  [$78], a                                    ; $4535: $e0 $78
	nop                                              ; $4537: $00
	nop                                              ; $4538: $00
	nop                                              ; $4539: $00
	ld   h, b                                        ; $453a: $60
	nop                                              ; $453b: $00
	ldh  [$e0], a                                    ; $453c: $e0 $e0
	rst  $38                                         ; $453e: $ff
	rst  $30                                         ; $453f: $f7
	rst  $38                                         ; $4540: $ff
	rst  $38                                         ; $4541: $ff
	ld   e, $ff                                      ; $4542: $1e $ff
	cp   a                                           ; $4544: $bf
	ld   a, a                                        ; $4545: $7f
	ldh  [rP1], a                                    ; $4546: $e0 $00
	nop                                              ; $4548: $00
	nop                                              ; $4549: $00
	jr   nc, jr_094_454c                             ; $454a: $30 $00

jr_094_454c:
	rra                                              ; $454c: $1f
	rra                                              ; $454d: $1f
	rst  $38                                         ; $454e: $ff
	ld   a, $62                                      ; $454f: $3e $62
	ld   b, d                                        ; $4551: $42
	ld   [hl], h                                     ; $4552: $74
	ld   h, h                                        ; $4553: $64
	ld   hl, sp+$38                                  ; $4554: $f8 $38
	ldh  a, [$e0]                                    ; $4556: $f0 $e0
	ld   sp, hl                                      ; $4558: $f9
	db   $10                                         ; $4559: $10
	ld   [rRAMG], sp                                 ; $455a: $08 $00 $00
	nop                                              ; $455d: $00
	nop                                              ; $455e: $00
	ld   [bc], a                                     ; $455f: $02
	nop                                              ; $4560: $00
	inc  bc                                          ; $4561: $03
	ld   sp, hl                                      ; $4562: $f9
	pop  hl                                          ; $4563: $e1
	ld   sp, hl                                      ; $4564: $f9
	add  hl, de                                      ; $4565: $19
	add  e                                           ; $4566: $83
	add  d                                           ; $4567: $82
	inc  bc                                          ; $4568: $03
	ret  nz                                          ; $4569: $c0

	rst  ToBoot                                         ; $456a: $c7
	ld   bc, $0000                                   ; $456b: $01 $00 $00
	nop                                              ; $456e: $00
	nop                                              ; $456f: $00
	add  b                                           ; $4570: $80
	add  b                                           ; $4571: $80
	add  l                                           ; $4572: $85
	ld   c, $0c                                      ; $4573: $0e $0c
	db   $10                                         ; $4575: $10
	rla                                              ; $4576: $17
	rrca                                             ; $4577: $0f
	nop                                              ; $4578: $00
	nop                                              ; $4579: $00
	adc  b                                           ; $457a: $88
	rlca                                             ; $457b: $07
	nop                                              ; $457c: $00
	nop                                              ; $457d: $00
	nop                                              ; $457e: $00
	nop                                              ; $457f: $00
	nop                                              ; $4580: $00
	inc  bc                                          ; $4581: $03
	ld   d, c                                        ; $4582: $51
	pop  hl                                          ; $4583: $e1
	ld   a, c                                        ; $4584: $79
	ld   de, $e2c3                                   ; $4585: $11 $c3 $e2
	inc  bc                                          ; $4588: $03
	nop                                              ; $4589: $00
	daa                                              ; $458a: $27

jr_094_458b:
	pop  bc                                          ; $458b: $c1
	nop                                              ; $458c: $00
	nop                                              ; $458d: $00
	nop                                              ; $458e: $00
	nop                                              ; $458f: $00
	and  e                                           ; $4590: $a3
	rst  ToBoot                                         ; $4591: $c7
	ld   h, b                                        ; $4592: $60
	ldh  a, [$58]                                    ; $4593: $f0 $58
	jr   nc, jr_094_45bf                             ; $4595: $30 $28

	db   $10                                         ; $4597: $10
	ld   a, b                                        ; $4598: $78
	jr   nz, jr_094_458b                             ; $4599: $20 $f0

	ret  nz                                          ; $459b: $c0

	ldh  [$60], a                                    ; $459c: $e0 $60
	rst  $38                                         ; $459e: $ff
	rst  $30                                         ; $459f: $f7
	pop  hl                                          ; $45a0: $e1
	ld   e, a                                        ; $45a1: $5f
	db   $e3                                         ; $45a2: $e3
	ld   e, l                                        ; $45a3: $5d
	rst  $20                                         ; $45a4: $e7
	ld   e, c                                        ; $45a5: $59
	pop  hl                                          ; $45a6: $e1
	sbc  $f0                                         ; $45a7: $de $f0
	xor  a                                           ; $45a9: $af
	ld   a, b                                        ; $45aa: $78
	ld   d, a                                        ; $45ab: $57
	ld   a, b                                        ; $45ac: $78
	ld   d, a                                        ; $45ad: $57
	jr   c, jr_094_45e7                              ; $45ae: $38 $37

	sbc  a                                           ; $45b0: $9f
	dec  c                                           ; $45b1: $0d
	db   $fc                                         ; $45b2: $fc
	ld   [$08f8], sp                                 ; $45b3: $08 $f8 $08
	cp   [hl]                                        ; $45b6: $be
	sub  b                                           ; $45b7: $90
	ld   hl, sp+$70                                  ; $45b8: $f8 $70
	ccf                                              ; $45ba: $3f
	jr   jr_094_45dc                                 ; $45bb: $18 $1f

	rlca                                             ; $45bd: $07
	rlca                                             ; $45be: $07

jr_094_45bf:
	nop                                              ; $45bf: $00
	and  $c2                                         ; $45c0: $e6 $c2
	rst  $38                                         ; $45c2: $ff
	ld   b, d                                        ; $45c3: $42
	ld   a, a                                        ; $45c4: $7f
	ld   b, d                                        ; $45c5: $42
	halt                                             ; $45c6: $76
	ld   h, h                                        ; $45c7: $64
	ld   hl, sp+$38                                  ; $45c8: $f8 $38
	ldh  a, [$e0]                                    ; $45ca: $f0 $e0
	ld   sp, hl                                      ; $45cc: $f9
	db   $10                                         ; $45cd: $10
	ld   [$3f00], sp                                 ; $45ce: $08 $00 $3f
	jp   z, $ca3f                                    ; $45d1: $ca $3f $ca

	cp   a                                           ; $45d4: $bf
	ld   c, l                                        ; $45d5: $4d
	ccf                                              ; $45d6: $3f
	db   $dd                                         ; $45d7: $dd
	ld   a, a                                        ; $45d8: $7f
	cp   a                                           ; $45d9: $bf
	cp   $6a                                         ; $45da: $fe $6a

jr_094_45dc:
	cp   $0e                                         ; $45dc: $fe $0e
	db   $fc                                         ; $45de: $fc
	inc  e                                           ; $45df: $1c
	and  e                                           ; $45e0: $a3
	rst  ToBoot                                         ; $45e1: $c7
	ld   h, b                                        ; $45e2: $60
	ldh  a, [$58]                                    ; $45e3: $f0 $58
	jr   nc, jr_094_460f                             ; $45e5: $30 $28

jr_094_45e7:
	db   $10                                         ; $45e7: $10
	ld   a, b                                        ; $45e8: $78
	nop                                              ; $45e9: $00
	ldh  a, [$60]                                    ; $45ea: $f0 $60
	ldh  [$e0], a                                    ; $45ec: $e0 $e0
	rst  $38                                         ; $45ee: $ff
	rst  $30                                         ; $45ef: $f7
	and  e                                           ; $45f0: $a3
	rst  ToBoot                                         ; $45f1: $c7
	ld   h, b                                        ; $45f2: $60
	ldh  a, [$58]                                    ; $45f3: $f0 $58
	jr   nc, jr_094_461f                             ; $45f5: $30 $28

	stop                                             ; $45f7: $10 $00
	nop                                              ; $45f9: $00
	ld   h, b                                        ; $45fa: $60
	nop                                              ; $45fb: $00
	ldh  [$e0], a                                    ; $45fc: $e0 $e0
	rst  $38                                         ; $45fe: $ff
	rst  $30                                         ; $45ff: $f7
	rst  $20                                         ; $4600: $e7
	ld   b, c                                        ; $4601: $41
	pop  hl                                          ; $4602: $e1
	ret  nz                                          ; $4603: $c0

	ldh  a, [hScriptOpcodeParams]                                    ; $4604: $f0 $a0
	ld   a, b                                        ; $4606: $78
	ld   d, b                                        ; $4607: $50
	ld   a, b                                        ; $4608: $78
	ld   d, b                                        ; $4609: $50
	jr   c, jr_094_463c                              ; $460a: $38 $30

	jr   jr_094_461e                                 ; $460c: $18 $10

	inc  c                                           ; $460e: $0c

jr_094_460f:
	ld   [$08f8], sp                                 ; $460f: $08 $f8 $08
	cp   [hl]                                        ; $4612: $be
	sub  b                                           ; $4613: $90
	ld   hl, sp+$70                                  ; $4614: $f8 $70
	ccf                                              ; $4616: $3f
	jr   jr_094_4638                                 ; $4617: $18 $1f

	rlca                                             ; $4619: $07
	rlca                                             ; $461a: $07
	nop                                              ; $461b: $00
	nop                                              ; $461c: $00
	nop                                              ; $461d: $00

jr_094_461e:
	nop                                              ; $461e: $00

jr_094_461f:
	nop                                              ; $461f: $00
	sbc  a                                           ; $4620: $9f
	add  a                                           ; $4621: $87
	sub  b                                           ; $4622: $90
	jr   c, jr_094_4628                              ; $4623: $38 $03

	ld   bc, $0207                                   ; $4625: $01 $07 $02

jr_094_4628:
	ld   [bc], a                                     ; $4628: $02
	inc  c                                           ; $4629: $0c
	add  b                                           ; $462a: $80
	nop                                              ; $462b: $00
	nop                                              ; $462c: $00
	nop                                              ; $462d: $00
	nop                                              ; $462e: $00
	nop                                              ; $462f: $00
	ld   a, a                                        ; $4630: $7f
	ld   b, d                                        ; $4631: $42
	halt                                             ; $4632: $76
	ld   h, h                                        ; $4633: $64
	ld   hl, sp+$38                                  ; $4634: $f8 $38
	ldh  a, [$e0]                                    ; $4636: $f0 $e0

jr_094_4638:
	ld   sp, hl                                      ; $4638: $f9
	db   $10                                         ; $4639: $10
	dec  bc                                          ; $463a: $0b
	ld   [bc], a                                     ; $463b: $02

jr_094_463c:
	ld   bc, $0501                                   ; $463c: $01 $01 $05
	inc  b                                           ; $463f: $04
	ld   sp, hl                                      ; $4640: $f9
	ld   hl, sp+$01                                  ; $4641: $f8 $01
	nop                                              ; $4643: $00
	db   $e3                                         ; $4644: $e3
	add  b                                           ; $4645: $80
	inc  bc                                          ; $4646: $03
	ret  nz                                          ; $4647: $c0

	inc  bc                                          ; $4648: $03
	nop                                              ; $4649: $00
	rlca                                             ; $464a: $07
	ld   bc, $0000                                   ; $464b: $01 $00 $00
	nop                                              ; $464e: $00
	nop                                              ; $464f: $00
	sbc  a                                           ; $4650: $9f
	add  a                                           ; $4651: $87
	sbc  b                                           ; $4652: $98
	jr   nc, jr_094_4674                             ; $4653: $30 $1f

	rrca                                             ; $4655: $0f
	inc  bc                                          ; $4656: $03
	nop                                              ; $4657: $00
	rlca                                             ; $4658: $07
	inc  bc                                          ; $4659: $03
	add  d                                           ; $465a: $82
	inc  c                                           ; $465b: $0c
	nop                                              ; $465c: $00
	nop                                              ; $465d: $00
	nop                                              ; $465e: $00
	nop                                              ; $465f: $00
	ld   a, a                                        ; $4660: $7f
	ld   b, d                                        ; $4661: $42
	halt                                             ; $4662: $76
	ld   h, h                                        ; $4663: $64
	ld   hl, sp+$38                                  ; $4664: $f8 $38
	ldh  a, [$e0]                                    ; $4666: $f0 $e0
	ld   sp, hl                                      ; $4668: $f9
	db   $10                                         ; $4669: $10
	dec  bc                                          ; $466a: $0b
	ld   [bc], a                                     ; $466b: $02
	ld   bc, $0d01                                   ; $466c: $01 $01 $0d
	inc  a                                           ; $466f: $3c
	dec  a                                           ; $4670: $3d
	call nz, $0809                                   ; $4671: $c4 $09 $08

jr_094_4674:
	di                                               ; $4674: $f3
	ldh  a, [$e3]                                    ; $4675: $f0 $e3
	nop                                              ; $4677: $00
	inc  bc                                          ; $4678: $03
	ret  nz                                          ; $4679: $c0

	rlca                                             ; $467a: $07
	ld   bc, $0000                                   ; $467b: $01 $00 $00
	nop                                              ; $467e: $00
	nop                                              ; $467f: $00
	cp   $ff                                         ; $4680: $fe $ff
	ei                                               ; $4682: $fb
	db   $fc                                         ; $4683: $fc
	xor  a                                           ; $4684: $af
	rst  $28                                         ; $4685: $ef
	ldh  [$e0], a                                    ; $4686: $e0 $e0
	ldh  [$e0], a                                    ; $4688: $e0 $e0
	di                                               ; $468a: $f3
	pop  hl                                          ; $468b: $e1

jr_094_468c:
	or   $a6                                         ; $468c: $f6 $a6
	pop  af                                          ; $468e: $f1
	jr   nz, jr_094_468c                             ; $468f: $20 $fb

	rla                                              ; $4691: $17
	ld   l, b                                        ; $4692: $68
	ldh  a, [$30]                                    ; $4693: $f0 $30
	ret  nz                                          ; $4695: $c0

	ld   h, b                                        ; $4696: $60
	nop                                              ; $4697: $00
	ldh  a, [rAUD4LEN]                               ; $4698: $f0 $20
	ldh  a, [$c0]                                    ; $469a: $f0 $c0
	ldh  [$60], a                                    ; $469c: $e0 $60
	rst  $38                                         ; $469e: $ff
	rst  $30                                         ; $469f: $f7
	rst  $38                                         ; $46a0: $ff
	rst  $38                                         ; $46a1: $ff
	sbc  [hl]                                        ; $46a2: $9e
	ld   a, a                                        ; $46a3: $7f
	ld   a, c                                        ; $46a4: $79
	rlca                                             ; $46a5: $07
	pop  hl                                          ; $46a6: $e1
	nop                                              ; $46a7: $00
	ld   l, b                                        ; $46a8: $68
	ld   [hl], b                                     ; $46a9: $70
	ld   a, a                                        ; $46aa: $7f
	ld   e, $1f                                      ; $46ab: $1e $1f
	add  hl, de                                      ; $46ad: $19
	db   $fc                                         ; $46ae: $fc
	inc  a                                           ; $46af: $3c
	cp   h                                           ; $46b0: $bc
	rst  JumpTable                                         ; $46b1: $df
	ei                                               ; $46b2: $fb
	rra                                              ; $46b3: $1f
	db   $fd                                         ; $46b4: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46b5: $cf
	ei                                               ; $46b6: $fb
	rrca                                             ; $46b7: $0f
	ld   [hl], a                                     ; $46b8: $77
	rra                                              ; $46b9: $1f
	ld   a, a                                        ; $46ba: $7f
	rra                                              ; $46bb: $1f
	ccf                                              ; $46bc: $3f
	add  hl, de                                      ; $46bd: $19
	ccf                                              ; $46be: $3f
	dec  e                                           ; $46bf: $1d
	cp   $ff                                         ; $46c0: $fe $ff
	ei                                               ; $46c2: $fb
	db   $fc                                         ; $46c3: $fc
	xor  a                                           ; $46c4: $af
	rst  $28                                         ; $46c5: $ef
	ldh  [$e0], a                                    ; $46c6: $e0 $e0
	ldh  [$e0], a                                    ; $46c8: $e0 $e0
	pop  af                                          ; $46ca: $f1
	ldh  [$f3], a                                    ; $46cb: $e0 $f3
	and  c                                           ; $46cd: $a1
	rst  $30                                         ; $46ce: $f7
	ld   h, $fb                                      ; $46cf: $26 $fb
	rla                                              ; $46d1: $17
	ld   l, b                                        ; $46d2: $68
	ldh  a, [$30]                                    ; $46d3: $f0 $30
	ret  nz                                          ; $46d5: $c0

	ld   h, b                                        ; $46d6: $60
	nop                                              ; $46d7: $00
	ld   [hl], b                                     ; $46d8: $70
	nop                                              ; $46d9: $00
	ldh  a, [$60]                                    ; $46da: $f0 $60
	ldh  [$e0], a                                    ; $46dc: $e0 $e0
	rst  $38                                         ; $46de: $ff
	rst  $30                                         ; $46df: $f7
	rst  $38                                         ; $46e0: $ff
	rst  $38                                         ; $46e1: $ff
	sbc  [hl]                                        ; $46e2: $9e
	ld   a, a                                        ; $46e3: $7f
	ld   a, c                                        ; $46e4: $79
	rlca                                             ; $46e5: $07
	ldh  [rP1], a                                    ; $46e6: $e0 $00
	ld   [hl], b                                     ; $46e8: $70
	nop                                              ; $46e9: $00
	ld   l, [hl]                                     ; $46ea: $6e
	ld   [hl], b                                     ; $46eb: $70
	rra                                              ; $46ec: $1f
	ld   e, $ff                                      ; $46ed: $1e $ff
	ccf                                              ; $46ef: $3f
	cp   h                                           ; $46f0: $bc
	rst  JumpTable                                         ; $46f1: $df
	ei                                               ; $46f2: $fb
	rra                                              ; $46f3: $1f
	db   $fd                                         ; $46f4: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46f5: $cf
	ld   a, e                                        ; $46f6: $7b
	rrca                                             ; $46f7: $0f
	ld   [hl], a                                     ; $46f8: $77
	rra                                              ; $46f9: $1f
	ld   a, a                                        ; $46fa: $7f
	rra                                              ; $46fb: $1f
	ccf                                              ; $46fc: $3f
	add  hl, de                                      ; $46fd: $19
	ccf                                              ; $46fe: $3f
	dec  e                                           ; $46ff: $1d
	cp   $ff                                         ; $4700: $fe $ff
	ei                                               ; $4702: $fb
	db   $fc                                         ; $4703: $fc
	xor  a                                           ; $4704: $af
	rst  $28                                         ; $4705: $ef
	ldh  [$e0], a                                    ; $4706: $e0 $e0
	ldh  [$e0], a                                    ; $4708: $e0 $e0
	ldh  a, [$e0]                                    ; $470a: $f0 $e0
	rst  $30                                         ; $470c: $f7
	and  a                                           ; $470d: $a7
	di                                               ; $470e: $f3
	ld   hl, $17fb                                   ; $470f: $21 $fb $17
	ld   l, b                                        ; $4712: $68
	ldh  a, [$30]                                    ; $4713: $f0 $30
	ret  nz                                          ; $4715: $c0

	ld   h, b                                        ; $4716: $60
	nop                                              ; $4717: $00
	nop                                              ; $4718: $00
	nop                                              ; $4719: $00
	ld   h, b                                        ; $471a: $60
	nop                                              ; $471b: $00
	ldh  a, [$e0]                                    ; $471c: $f0 $e0
	rst  $38                                         ; $471e: $ff
	rst  $30                                         ; $471f: $f7
	rst  $38                                         ; $4720: $ff
	rst  $38                                         ; $4721: $ff
	sbc  [hl]                                        ; $4722: $9e
	ld   a, a                                        ; $4723: $7f
	ld   a, c                                        ; $4724: $79
	rlca                                             ; $4725: $07
	ldh  [rP1], a                                    ; $4726: $e0 $00
	nop                                              ; $4728: $00
	nop                                              ; $4729: $00
	jr   nc, jr_094_472c                             ; $472a: $30 $00

jr_094_472c:
	rra                                              ; $472c: $1f
	rra                                              ; $472d: $1f
	rst  $38                                         ; $472e: $ff
	ld   a, $e7                                      ; $472f: $3e $e7
	ld   b, c                                        ; $4731: $41
	pop  hl                                          ; $4732: $e1
	ret  nz                                          ; $4733: $c0

	ldh  a, [hScriptOpcodeParams]                                    ; $4734: $f0 $a0
	ld   a, b                                        ; $4736: $78
	ld   d, b                                        ; $4737: $50
	ld   a, b                                        ; $4738: $78
	ld   d, b                                        ; $4739: $50
	jr   c, jr_094_476c                              ; $473a: $38 $30

	jr   jr_094_474e                                 ; $473c: $18 $10

	dec  c                                           ; $473e: $0d
	add  hl, bc                                      ; $473f: $09
	dec  c                                           ; $4740: $0d
	add  hl, bc                                      ; $4741: $09
	dec  c                                           ; $4742: $0d
	ld   [$0406], sp                                 ; $4743: $08 $06 $04
	ld   b, $04                                      ; $4746: $06 $04
	inc  bc                                          ; $4748: $03
	ld   [bc], a                                     ; $4749: $02
	inc  bc                                          ; $474a: $03
	inc  bc                                          ; $474b: $03
	nop                                              ; $474c: $00
	nop                                              ; $474d: $00

jr_094_474e:
	nop                                              ; $474e: $00
	nop                                              ; $474f: $00
	ld   hl, sp+$08                                  ; $4750: $f8 $08
	cp   [hl]                                        ; $4752: $be
	sub  b                                           ; $4753: $90
	ld   hl, sp+$70                                  ; $4754: $f8 $70
	ccf                                              ; $4756: $3f
	jr   jr_094_4778                                 ; $4757: $18 $1f

	rlca                                             ; $4759: $07
	rlca                                             ; $475a: $07
	nop                                              ; $475b: $00
	add  b                                           ; $475c: $80
	add  b                                           ; $475d: $80
	and  b                                           ; $475e: $a0
	jr   nz, jr_094_47df                             ; $475f: $20 $7e

	ccf                                              ; $4761: $3f
	jr   nz, jr_094_477c                             ; $4762: $20 $18

	rra                                              ; $4764: $1f
	rlca                                             ; $4765: $07
	nop                                              ; $4766: $00
	nop                                              ; $4767: $00
	rlca                                             ; $4768: $07
	inc  bc                                          ; $4769: $03
	add  d                                           ; $476a: $82
	inc  c                                           ; $476b: $0c

jr_094_476c:
	nop                                              ; $476c: $00
	nop                                              ; $476d: $00
	nop                                              ; $476e: $00
	nop                                              ; $476f: $00
	ld   a, a                                        ; $4770: $7f
	ld   b, d                                        ; $4771: $42
	halt                                             ; $4772: $76
	ld   h, h                                        ; $4773: $64
	ld   hl, sp+$38                                  ; $4774: $f8 $38
	ldh  a, [$e0]                                    ; $4776: $f0 $e0

jr_094_4778:
	ld   sp, hl                                      ; $4778: $f9
	db   $10                                         ; $4779: $10
	dec  bc                                          ; $477a: $0b
	ld   [bc], a                                     ; $477b: $02

jr_094_477c:
	ld   bc, $2901                                   ; $477c: $01 $01 $29
	inc  e                                           ; $477f: $1c
	dec  l                                           ; $4780: $2d
	call nz, $0809                                   ; $4781: $c4 $09 $08
	di                                               ; $4784: $f3
	ldh  a, [$03]                                    ; $4785: $f0 $03
	nop                                              ; $4787: $00
	inc  bc                                          ; $4788: $03
	ret  nz                                          ; $4789: $c0

	rlca                                             ; $478a: $07
	ld   bc, $0000                                   ; $478b: $01 $00 $00
	nop                                              ; $478e: $00
	nop                                              ; $478f: $00
	jr   nz, @+$22                                   ; $4790: $20 $20

	ld   a, $1f                                      ; $4792: $3e $1f
	nop                                              ; $4794: $00
	nop                                              ; $4795: $00
	rlca                                             ; $4796: $07
	inc  bc                                          ; $4797: $03
	ld   [bc], a                                     ; $4798: $02
	inc  c                                           ; $4799: $0c
	add  b                                           ; $479a: $80
	nop                                              ; $479b: $00
	nop                                              ; $479c: $00
	nop                                              ; $479d: $00
	nop                                              ; $479e: $00
	nop                                              ; $479f: $00
	ld   a, a                                        ; $47a0: $7f
	ld   b, d                                        ; $47a1: $42
	halt                                             ; $47a2: $76
	ld   h, h                                        ; $47a3: $64
	ld   hl, sp+$38                                  ; $47a4: $f8 $38
	ldh  a, [$e0]                                    ; $47a6: $f0 $e0
	ld   sp, hl                                      ; $47a8: $f9
	db   $10                                         ; $47a9: $10
	dec  bc                                          ; $47aa: $0b
	ld   [bc], a                                     ; $47ab: $02
	ld   bc, $0101                                   ; $47ac: $01 $01 $01
	nop                                              ; $47af: $00
	add  hl, bc                                      ; $47b0: $09
	jr   jr_094_47e4                                 ; $47b1: $18 $31

	ret  nz                                          ; $47b3: $c0

jr_094_47b4:
	inc  bc                                          ; $47b4: $03
	nop                                              ; $47b5: $00
	inc  bc                                          ; $47b6: $03
	ret  nz                                          ; $47b7: $c0

	inc  bc                                          ; $47b8: $03
	nop                                              ; $47b9: $00
	rlca                                             ; $47ba: $07
	ld   bc, $0000                                   ; $47bb: $01 $00 $00
	nop                                              ; $47be: $00
	nop                                              ; $47bf: $00
	jr   nz, jr_094_47c4                             ; $47c0: $20 $02

	add  [hl]                                        ; $47c2: $86
	nop                                              ; $47c3: $00

jr_094_47c4:
	ld   [$0703], sp                                 ; $47c4: $08 $03 $07
	inc  c                                           ; $47c7: $0c
	rrca                                             ; $47c8: $0f
	ld   [bc], a                                     ; $47c9: $02
	dec  b                                           ; $47ca: $05
	dec  bc                                          ; $47cb: $0b
	rrca                                             ; $47cc: $0f
	inc  b                                           ; $47cd: $04
	add  l                                           ; $47ce: $85
	nop                                              ; $47cf: $00
	ld   [$f7f3], sp                                 ; $47d0: $08 $f3 $f7
	inc  c                                           ; $47d3: $0c
	rst  $38                                         ; $47d4: $ff
	and  d                                           ; $47d5: $a2
	ld   d, l                                        ; $47d6: $55
	ei                                               ; $47d7: $fb
	rst  $38                                         ; $47d8: $ff
	inc  b                                           ; $47d9: $04
	add  l                                           ; $47da: $85
	nop                                              ; $47db: $00
	ld   [$f7f3], sp                                 ; $47dc: $08 $f3 $f7

jr_094_47df:
	inc  c                                           ; $47df: $0c
	rst  $38                                         ; $47e0: $ff
	and  d                                           ; $47e1: $a2
	ld   d, l                                        ; $47e2: $55
	ei                                               ; $47e3: $fb

jr_094_47e4:
	rst  $38                                         ; $47e4: $ff
	inc  b                                           ; $47e5: $04
	add  l                                           ; $47e6: $85
	nop                                              ; $47e7: $00
	ld   [$f7f3], sp                                 ; $47e8: $08 $f3 $f7
	inc  c                                           ; $47eb: $0c
	rst  $38                                         ; $47ec: $ff
	and  d                                           ; $47ed: $a2
	ld   d, l                                        ; $47ee: $55
	ei                                               ; $47ef: $fb
	rst  $38                                         ; $47f0: $ff
	inc  b                                           ; $47f1: $04
	add  l                                           ; $47f2: $85
	nop                                              ; $47f3: $00
	ld   [$efe7], sp                                 ; $47f4: $08 $e7 $ef
	jr   @+$01                                       ; $47f7: $18 $ff

	xor  d                                           ; $47f9: $aa
	ld   b, l                                        ; $47fa: $45
	rst  $30                                         ; $47fb: $f7
	rst  $38                                         ; $47fc: $ff
	ld   [$0085], sp                                 ; $47fd: $08 $85 $00
	ld   [$efe7], sp                                 ; $4800: $08 $e7 $ef
	jr   @+$01                                       ; $4803: $18 $ff

	xor  d                                           ; $4805: $aa
	ld   b, l                                        ; $4806: $45
	rst  $30                                         ; $4807: $f7
	rst  $38                                         ; $4808: $ff
	ld   [$0085], sp                                 ; $4809: $08 $85 $00
	ld   [$efe7], sp                                 ; $480c: $08 $e7 $ef
	jr   @+$01                                       ; $480f: $18 $ff

	xor  d                                           ; $4811: $aa
	ld   b, l                                        ; $4812: $45
	rst  $30                                         ; $4813: $f7
	rst  $38                                         ; $4814: $ff
	ld   [$0085], sp                                 ; $4815: $08 $85 $00
	ld   [$dfcf], sp                                 ; $4818: $08 $cf $df
	jr   nc, @+$01                                   ; $481b: $30 $ff

	adc  d                                           ; $481d: $8a
	ld   d, l                                        ; $481e: $55
	rst  $28                                         ; $481f: $ef
	rst  $38                                         ; $4820: $ff
	db   $10                                         ; $4821: $10
	add  l                                           ; $4822: $85
	nop                                              ; $4823: $00
	ld   [$bf9f], sp                                 ; $4824: $08 $9f $bf
	ld   h, b                                        ; $4827: $60
	rst  $38                                         ; $4828: $ff
	xor  d                                           ; $4829: $aa
	dec  d                                           ; $482a: $15
	rst  JumpTable                                         ; $482b: $df
	rst  $38                                         ; $482c: $ff
	jr   nz, jr_094_47b4                             ; $482d: $20 $85

	nop                                              ; $482f: $00
	ld   [$7f3f], sp                                 ; $4830: $08 $3f $7f
	ret  nz                                          ; $4833: $c0

	rst  $38                                         ; $4834: $ff
	ld   a, [hl+]                                    ; $4835: $2a
	ld   d, l                                        ; $4836: $55
	cp   a                                           ; $4837: $bf
	rst  $38                                         ; $4838: $ff
	ld   b, b                                        ; $4839: $40
	add  l                                           ; $483a: $85
	nop                                              ; $483b: $00
	ld   [$7e3e], sp                                 ; $483c: $08 $3e $7e
	pop  bc                                          ; $483f: $c1
	rst  $38                                         ; $4840: $ff
	ld   a, [hl+]                                    ; $4841: $2a
	ld   d, h                                        ; $4842: $54
	cp   a                                           ; $4843: $bf
	rst  $38                                         ; $4844: $ff
	ld   b, b                                        ; $4845: $40
	add  l                                           ; $4846: $85
	nop                                              ; $4847: $00
	ld   [$fd7c], sp                                 ; $4848: $08 $7c $fd
	add  e                                           ; $484b: $83
	rst  $38                                         ; $484c: $ff
	xor  b                                           ; $484d: $a8
	ld   d, l                                        ; $484e: $55
	ld   a, [hl]                                     ; $484f: $7e
	rst  $38                                         ; $4850: $ff
	add  c                                           ; $4851: $81
	add  l                                           ; $4852: $85
	nop                                              ; $4853: $00
	ld   [$fbf9], sp                                 ; $4854: $08 $f9 $fb
	ld   b, $ff                                      ; $4857: $06 $ff
	xor  d                                           ; $4859: $aa
	ld   d, c                                        ; $485a: $51
	db   $fd                                         ; $485b: $fd
	rst  $38                                         ; $485c: $ff
	ld   [bc], a                                     ; $485d: $02
	add  l                                           ; $485e: $85
	nop                                              ; $485f: $00
	ld   [$f7f3], sp                                 ; $4860: $08 $f3 $f7
	inc  c                                           ; $4863: $0c
	rst  $38                                         ; $4864: $ff
	and  d                                           ; $4865: $a2
	ld   d, l                                        ; $4866: $55
	ei                                               ; $4867: $fb
	rst  $38                                         ; $4868: $ff
	inc  b                                           ; $4869: $04
	add  l                                           ; $486a: $85
	nop                                              ; $486b: $00
	ld   [$efe7], sp                                 ; $486c: $08 $e7 $ef
	jr   @+$01                                       ; $486f: $18 $ff

	xor  d                                           ; $4871: $aa
	ld   b, l                                        ; $4872: $45
	rst  $30                                         ; $4873: $f7
	rst  $38                                         ; $4874: $ff
	ld   [$0081], sp                                 ; $4875: $08 $81 $00
	ld   b, $01                                      ; $4878: $06 $01
	nop                                              ; $487a: $00
	ld   h, b                                        ; $487b: $60
	nop                                              ; $487c: $00
	ld   [de], a                                     ; $487d: $12
	ld   hl, $8129                                   ; $487e: $21 $29 $81
	ld   sp, $3503                                   ; $4881: $31 $03 $35
	inc  sp                                          ; $4884: $33
	ld   c, a                                        ; $4885: $4f
	rlca                                             ; $4886: $07
	add  b                                           ; $4887: $80
	rrca                                             ; $4888: $0f
	add  b                                           ; $4889: $80
	rlca                                             ; $488a: $07
	add  b                                           ; $488b: $80
	rrca                                             ; $488c: $0f
	add  b                                           ; $488d: $80
	rlca                                             ; $488e: $07
	dec  b                                           ; $488f: $05
	inc  c                                           ; $4890: $0c
	rrca                                             ; $4891: $0f
	ld   [bc], a                                     ; $4892: $02
	dec  b                                           ; $4893: $05
	dec  bc                                          ; $4894: $0b
	rrca                                             ; $4895: $0f
	add  b                                           ; $4896: $80
	rst  $30                                         ; $4897: $f7
	add  b                                           ; $4898: $80
	rst  $38                                         ; $4899: $ff
	add  b                                           ; $489a: $80
	rst  $30                                         ; $489b: $f7
	add  b                                           ; $489c: $80
	rst  $38                                         ; $489d: $ff
	add  b                                           ; $489e: $80
	rst  $30                                         ; $489f: $f7
	dec  b                                           ; $48a0: $05
	inc  c                                           ; $48a1: $0c
	rst  $38                                         ; $48a2: $ff
	and  d                                           ; $48a3: $a2
	ld   d, l                                        ; $48a4: $55
	ei                                               ; $48a5: $fb
	rst  $38                                         ; $48a6: $ff
	add  b                                           ; $48a7: $80
	rst  $30                                         ; $48a8: $f7
	add  b                                           ; $48a9: $80
	rst  $38                                         ; $48aa: $ff
	add  b                                           ; $48ab: $80
	rst  $30                                         ; $48ac: $f7
	add  b                                           ; $48ad: $80
	rst  $38                                         ; $48ae: $ff
	add  b                                           ; $48af: $80
	rst  $30                                         ; $48b0: $f7
	dec  b                                           ; $48b1: $05
	inc  c                                           ; $48b2: $0c
	rst  $38                                         ; $48b3: $ff
	and  d                                           ; $48b4: $a2
	ld   d, l                                        ; $48b5: $55
	ei                                               ; $48b6: $fb
	rst  $38                                         ; $48b7: $ff
	add  b                                           ; $48b8: $80
	rst  $30                                         ; $48b9: $f7
	add  b                                           ; $48ba: $80
	rst  $38                                         ; $48bb: $ff
	add  b                                           ; $48bc: $80
	rst  $30                                         ; $48bd: $f7
	add  b                                           ; $48be: $80
	rst  $38                                         ; $48bf: $ff
	add  b                                           ; $48c0: $80
	rst  $30                                         ; $48c1: $f7
	rlca                                             ; $48c2: $07
	inc  c                                           ; $48c3: $0c
	rst  $38                                         ; $48c4: $ff
	and  d                                           ; $48c5: $a2
	ld   d, l                                        ; $48c6: $55
	ei                                               ; $48c7: $fb
	rst  $38                                         ; $48c8: $ff
	db   $e3                                         ; $48c9: $e3
	rst  $28                                         ; $48ca: $ef
	add  b                                           ; $48cb: $80
	rst  $38                                         ; $48cc: $ff
	add  b                                           ; $48cd: $80
	rst  $28                                         ; $48ce: $ef
	add  b                                           ; $48cf: $80
	rst  $38                                         ; $48d0: $ff
	add  b                                           ; $48d1: $80
	rst  $28                                         ; $48d2: $ef
	dec  b                                           ; $48d3: $05
	jr   @+$01                                       ; $48d4: $18 $ff

	xor  d                                           ; $48d6: $aa
	ld   b, l                                        ; $48d7: $45
	rst  $30                                         ; $48d8: $f7
	rst  $38                                         ; $48d9: $ff
	add  b                                           ; $48da: $80
	rst  $28                                         ; $48db: $ef
	add  b                                           ; $48dc: $80
	rst  $38                                         ; $48dd: $ff
	add  b                                           ; $48de: $80
	rst  $28                                         ; $48df: $ef
	add  b                                           ; $48e0: $80
	rst  $38                                         ; $48e1: $ff
	add  b                                           ; $48e2: $80
	rst  $28                                         ; $48e3: $ef
	ld   b, $18                                      ; $48e4: $06 $18
	rst  $38                                         ; $48e6: $ff
	xor  d                                           ; $48e7: $aa
	ld   b, l                                        ; $48e8: $45
	rst  $30                                         ; $48e9: $f7
	rst  $38                                         ; $48ea: $ff
	ld   [$0083], sp                                 ; $48eb: $08 $83 $00
	ld   [bc], a                                     ; $48ee: $02
	inc  d                                           ; $48ef: $14
	nop                                              ; $48f0: $00
	ld   a, [hl+]                                    ; $48f1: $2a
	add  c                                           ; $48f2: $81
	inc  d                                           ; $48f3: $14
	dec  b                                           ; $48f4: $05
	ld   d, h                                        ; $48f5: $54
	inc  l                                           ; $48f6: $2c
	ld   l, $08                                      ; $48f7: $2e $08
	cp   e                                           ; $48f9: $bb
	rst  JumpTable                                         ; $48fa: $df
	add  b                                           ; $48fb: $80
	rst  $38                                         ; $48fc: $ff
	add  b                                           ; $48fd: $80
	rst  JumpTable                                         ; $48fe: $df
	add  b                                           ; $48ff: $80
	rst  $38                                         ; $4900: $ff
	add  b                                           ; $4901: $80
	rst  JumpTable                                         ; $4902: $df
	rlca                                             ; $4903: $07
	jr   nc, @+$01                                   ; $4904: $30 $ff

	adc  d                                           ; $4906: $8a
	ld   d, l                                        ; $4907: $55
	rst  $28                                         ; $4908: $ef
	rst  $38                                         ; $4909: $ff
	adc  a                                           ; $490a: $8f
	cp   a                                           ; $490b: $bf
	add  b                                           ; $490c: $80
	rst  $38                                         ; $490d: $ff
	add  b                                           ; $490e: $80
	cp   a                                           ; $490f: $bf
	add  b                                           ; $4910: $80
	rst  $38                                         ; $4911: $ff
	add  b                                           ; $4912: $80
	cp   a                                           ; $4913: $bf
	rlca                                             ; $4914: $07
	ld   h, b                                        ; $4915: $60
	rst  $38                                         ; $4916: $ff
	xor  d                                           ; $4917: $aa
	dec  d                                           ; $4918: $15
	rst  JumpTable                                         ; $4919: $df
	rst  $38                                         ; $491a: $ff
	rra                                              ; $491b: $1f
	ld   a, a                                        ; $491c: $7f
	add  b                                           ; $491d: $80
	rst  $38                                         ; $491e: $ff
	add  b                                           ; $491f: $80
	ld   a, a                                        ; $4920: $7f
	add  b                                           ; $4921: $80
	rst  $38                                         ; $4922: $ff
	add  b                                           ; $4923: $80
	ld   a, a                                        ; $4924: $7f
	dec  b                                           ; $4925: $05
	ret  nz                                          ; $4926: $c0

	rst  $38                                         ; $4927: $ff
	ld   a, [hl+]                                    ; $4928: $2a
	ld   d, l                                        ; $4929: $55
	cp   a                                           ; $492a: $bf
	rst  $38                                         ; $492b: $ff
	add  b                                           ; $492c: $80
	ld   a, [hl]                                     ; $492d: $7e
	add  b                                           ; $492e: $80
	rst  $38                                         ; $492f: $ff
	add  b                                           ; $4930: $80
	ld   a, [hl]                                     ; $4931: $7e
	add  b                                           ; $4932: $80
	rst  $38                                         ; $4933: $ff
	add  b                                           ; $4934: $80
	ld   a, [hl]                                     ; $4935: $7e
	rlca                                             ; $4936: $07
	pop  bc                                          ; $4937: $c1
	rst  $38                                         ; $4938: $ff
	ld   a, [hl+]                                    ; $4939: $2a
	ld   d, h                                        ; $493a: $54
	cp   a                                           ; $493b: $bf
	rst  $38                                         ; $493c: $ff
	inc  a                                           ; $493d: $3c
	db   $fd                                         ; $493e: $fd
	add  b                                           ; $493f: $80
	rst  $38                                         ; $4940: $ff
	add  b                                           ; $4941: $80
	db   $fd                                         ; $4942: $fd
	add  b                                           ; $4943: $80
	rst  $38                                         ; $4944: $ff
	add  b                                           ; $4945: $80
	db   $fd                                         ; $4946: $fd
	rlca                                             ; $4947: $07
	add  e                                           ; $4948: $83
	rst  $38                                         ; $4949: $ff
	xor  b                                           ; $494a: $a8
	ld   d, l                                        ; $494b: $55
	ld   a, [hl]                                     ; $494c: $7e
	rst  $38                                         ; $494d: $ff
	ld   a, b                                        ; $494e: $78
	ei                                               ; $494f: $fb
	add  b                                           ; $4950: $80
	rst  $38                                         ; $4951: $ff
	add  b                                           ; $4952: $80
	ei                                               ; $4953: $fb
	add  b                                           ; $4954: $80
	rst  $38                                         ; $4955: $ff
	add  b                                           ; $4956: $80
	ei                                               ; $4957: $fb
	rlca                                             ; $4958: $07
	ld   b, $ff                                      ; $4959: $06 $ff
	xor  d                                           ; $495b: $aa
	ld   d, c                                        ; $495c: $51
	db   $fd                                         ; $495d: $fd
	rst  $38                                         ; $495e: $ff
	pop  af                                          ; $495f: $f1
	rst  $30                                         ; $4960: $f7
	add  b                                           ; $4961: $80
	rst  $38                                         ; $4962: $ff
	add  b                                           ; $4963: $80
	rst  $30                                         ; $4964: $f7
	add  b                                           ; $4965: $80
	rst  $38                                         ; $4966: $ff
	add  b                                           ; $4967: $80
	rst  $30                                         ; $4968: $f7
	rlca                                             ; $4969: $07
	inc  c                                           ; $496a: $0c
	rst  $38                                         ; $496b: $ff
	and  d                                           ; $496c: $a2
	ld   d, l                                        ; $496d: $55
	ei                                               ; $496e: $fb
	rst  $38                                         ; $496f: $ff
	db   $e3                                         ; $4970: $e3
	rst  $28                                         ; $4971: $ef
	add  b                                           ; $4972: $80
	rst  $38                                         ; $4973: $ff
	add  b                                           ; $4974: $80
	rst  $28                                         ; $4975: $ef
	add  b                                           ; $4976: $80
	rst  $38                                         ; $4977: $ff
	add  b                                           ; $4978: $80
	rst  $28                                         ; $4979: $ef
	ld   b, $18                                      ; $497a: $06 $18
	rst  $38                                         ; $497c: $ff
	xor  d                                           ; $497d: $aa
	ld   b, l                                        ; $497e: $45
	rst  $30                                         ; $497f: $f7
	rst  $38                                         ; $4980: $ff
	ld   [hl], a                                     ; $4981: $77
	add  b                                           ; $4982: $80
	inc  sp                                          ; $4983: $33
	add  b                                           ; $4984: $80
	scf                                              ; $4985: $37
	add  b                                           ; $4986: $80
	add  hl, sp                                      ; $4987: $39
	add  b                                           ; $4988: $80
	ld   a, $81                                      ; $4989: $3e $81
	ccf                                              ; $498b: $3f
	nop                                              ; $498c: $00
	ld   a, a                                        ; $498d: $7f
	add  c                                           ; $498e: $81
	rra                                              ; $498f: $1f
	ld   bc, $0723                                   ; $4990: $01 $23 $07
	add  b                                           ; $4993: $80
	rrca                                             ; $4994: $0f
	add  b                                           ; $4995: $80
	rlca                                             ; $4996: $07
	add  b                                           ; $4997: $80
	rrca                                             ; $4998: $0f
	dec  b                                           ; $4999: $05
	inc  b                                           ; $499a: $04
	rlca                                             ; $499b: $07
	ld   c, $09                                      ; $499c: $0e $09
	inc  bc                                          ; $499e: $03
	rlca                                             ; $499f: $07
	add  b                                           ; $49a0: $80
	rrca                                             ; $49a1: $0f
	add  b                                           ; $49a2: $80
	rst  $30                                         ; $49a3: $f7
	add  b                                           ; $49a4: $80
	rst  $38                                         ; $49a5: $ff
	add  b                                           ; $49a6: $80
	rst  $30                                         ; $49a7: $f7
	add  b                                           ; $49a8: $80
	rst  $38                                         ; $49a9: $ff
	dec  b                                           ; $49aa: $05
	inc  b                                           ; $49ab: $04
	rst  $30                                         ; $49ac: $f7
	cp   [hl]                                        ; $49ad: $be
	ld   c, c                                        ; $49ae: $49
	di                                               ; $49af: $f3
	rst  $30                                         ; $49b0: $f7
	add  b                                           ; $49b1: $80
	rst  $38                                         ; $49b2: $ff
	add  b                                           ; $49b3: $80
	rst  $30                                         ; $49b4: $f7
	add  b                                           ; $49b5: $80
	rst  $38                                         ; $49b6: $ff
	add  b                                           ; $49b7: $80
	rst  $30                                         ; $49b8: $f7
	add  b                                           ; $49b9: $80
	rst  $38                                         ; $49ba: $ff
	dec  b                                           ; $49bb: $05
	inc  b                                           ; $49bc: $04
	rst  $30                                         ; $49bd: $f7
	cp   [hl]                                        ; $49be: $be
	ld   c, c                                        ; $49bf: $49
	di                                               ; $49c0: $f3
	rst  $30                                         ; $49c1: $f7
	add  b                                           ; $49c2: $80
	rst  $38                                         ; $49c3: $ff
	add  b                                           ; $49c4: $80
	rst  $30                                         ; $49c5: $f7
	add  b                                           ; $49c6: $80
	rst  $38                                         ; $49c7: $ff
	add  b                                           ; $49c8: $80
	rst  $30                                         ; $49c9: $f7
	add  b                                           ; $49ca: $80
	rst  $38                                         ; $49cb: $ff
	dec  b                                           ; $49cc: $05
	inc  b                                           ; $49cd: $04
	rst  $30                                         ; $49ce: $f7
	cp   [hl]                                        ; $49cf: $be
	ld   c, c                                        ; $49d0: $49
	di                                               ; $49d1: $f3
	rst  $30                                         ; $49d2: $f7
	add  b                                           ; $49d3: $80
	rst  $38                                         ; $49d4: $ff
	ld   bc, $efe3                                   ; $49d5: $01 $e3 $ef
	add  b                                           ; $49d8: $80
	rst  $38                                         ; $49d9: $ff
	add  b                                           ; $49da: $80
	rst  $28                                         ; $49db: $ef
	add  b                                           ; $49dc: $80
	rst  $38                                         ; $49dd: $ff
	dec  b                                           ; $49de: $05
	ld   [$baef], sp                                 ; $49df: $08 $ef $ba

jr_094_49e2:
	ld   d, l                                        ; $49e2: $55
	rst  $20                                         ; $49e3: $e7
	rst  $28                                         ; $49e4: $ef
	add  b                                           ; $49e5: $80
	rst  $38                                         ; $49e6: $ff
	ld   [bc], a                                     ; $49e7: $02
	ld   [$0100], sp                                 ; $49e8: $08 $00 $01
	add  e                                           ; $49eb: $83
	nop                                              ; $49ec: $00
	nop                                              ; $49ed: $00
	ld   [bc], a                                     ; $49ee: $02
	add  b                                           ; $49ef: $80
	nop                                              ; $49f0: $00
	add  b                                           ; $49f1: $80
	ld   bc, $0003                                   ; $49f2: $01 $03 $00
	inc  b                                           ; $49f5: $04
	inc  bc                                          ; $49f6: $03
	ld   hl, sp-$80                                  ; $49f7: $f8 $80
	jr   z, @-$7e                                    ; $49f9: $28 $80

	add  sp, -$80                                    ; $49fb: $e8 $80
	adc  b                                           ; $49fd: $88
	dec  b                                           ; $49fe: $05
	xor  b                                           ; $49ff: $a8
	xor  d                                           ; $4a00: $aa
	inc  a                                           ; $4a01: $3c
	dec  a                                           ; $4a02: $3d
	cp   [hl]                                        ; $4a03: $be
	xor  [hl]                                        ; $4a04: $ae
	add  b                                           ; $4a05: $80
	ld   [hl], a                                     ; $4a06: $77
	rlca                                             ; $4a07: $07
	rst  $30                                         ; $4a08: $f7
	jr   jr_094_4a0b                                 ; $4a09: $18 $00

jr_094_4a0b:
	stop                                             ; $4a0b: $10 $00
	jr   z, jr_094_4a1f                              ; $4a0d: $28 $10

	ld   d, b                                        ; $4a0f: $50
	add  c                                           ; $4a10: $81
	jr   nc, jr_094_4a15                             ; $4a11: $30 $02

	cp   b                                           ; $4a13: $b8
	ld   h, b                                        ; $4a14: $60

jr_094_4a15:
	ld   [hl], b                                     ; $4a15: $70
	add  c                                           ; $4a16: $81
	ret  nz                                          ; $4a17: $c0

	add  b                                           ; $4a18: $80
	cp   a                                           ; $4a19: $bf
	add  b                                           ; $4a1a: $80
	rst  $38                                         ; $4a1b: $ff
	add  b                                           ; $4a1c: $80
	cp   a                                           ; $4a1d: $bf
	add  b                                           ; $4a1e: $80

jr_094_4a1f:
	rst  $38                                         ; $4a1f: $ff
	dec  b                                           ; $4a20: $05
	jr   nz, jr_094_49e2                             ; $4a21: $20 $bf

	db   $eb                                         ; $4a23: $eb
	ld   d, h                                        ; $4a24: $54
	sbc  a                                           ; $4a25: $9f
	cp   a                                           ; $4a26: $bf
	add  b                                           ; $4a27: $80
	rst  $38                                         ; $4a28: $ff
	ld   bc, $7f1f                                   ; $4a29: $01 $1f $7f
	add  b                                           ; $4a2c: $80
	rst  $38                                         ; $4a2d: $ff
	add  b                                           ; $4a2e: $80
	ld   a, a                                        ; $4a2f: $7f
	add  b                                           ; $4a30: $80
	rst  $38                                         ; $4a31: $ff
	dec  b                                           ; $4a32: $05
	ld   b, b                                        ; $4a33: $40
	ld   a, a                                        ; $4a34: $7f
	db   $eb                                         ; $4a35: $eb
	sub  h                                           ; $4a36: $94
	ccf                                              ; $4a37: $3f
	ld   a, a                                        ; $4a38: $7f
	add  b                                           ; $4a39: $80
	rst  $38                                         ; $4a3a: $ff
	add  b                                           ; $4a3b: $80
	ld   a, [hl]                                     ; $4a3c: $7e
	add  b                                           ; $4a3d: $80
	rst  $38                                         ; $4a3e: $ff
	add  b                                           ; $4a3f: $80
	ld   a, [hl]                                     ; $4a40: $7e
	add  b                                           ; $4a41: $80
	rst  $38                                         ; $4a42: $ff
	dec  b                                           ; $4a43: $05
	ld   b, b                                        ; $4a44: $40
	ld   a, [hl]                                     ; $4a45: $7e
	db   $eb                                         ; $4a46: $eb
	sub  l                                           ; $4a47: $95
	ld   a, $7e                                      ; $4a48: $3e $7e
	add  b                                           ; $4a4a: $80
	rst  $38                                         ; $4a4b: $ff
	ld   bc, $fd3c                                   ; $4a4c: $01 $3c $fd
	add  b                                           ; $4a4f: $80
	rst  $38                                         ; $4a50: $ff
	add  b                                           ; $4a51: $80
	db   $fd                                         ; $4a52: $fd
	dec  b                                           ; $4a53: $05
	add  e                                           ; $4a54: $83
	rst  $38                                         ; $4a55: $ff
	ld   d, l                                        ; $4a56: $55
	xor  b                                           ; $4a57: $a8
	ld   a, [hl]                                     ; $4a58: $7e
	rst  $38                                         ; $4a59: $ff
	add  b                                           ; $4a5a: $80
	db   $fd                                         ; $4a5b: $fd
	add  b                                           ; $4a5c: $80
	rst  $38                                         ; $4a5d: $ff
	ld   bc, $fb78                                   ; $4a5e: $01 $78 $fb
	add  b                                           ; $4a61: $80
	rst  $38                                         ; $4a62: $ff
	add  b                                           ; $4a63: $80
	ei                                               ; $4a64: $fb
	dec  b                                           ; $4a65: $05
	ld   b, $ff                                      ; $4a66: $06 $ff
	ld   d, c                                        ; $4a68: $51
	xor  d                                           ; $4a69: $aa
	db   $fd                                         ; $4a6a: $fd
	rst  $38                                         ; $4a6b: $ff
	add  b                                           ; $4a6c: $80
	ei                                               ; $4a6d: $fb
	add  b                                           ; $4a6e: $80
	rst  $38                                         ; $4a6f: $ff
	ld   bc, $f7f1                                   ; $4a70: $01 $f1 $f7
	add  b                                           ; $4a73: $80
	rst  $38                                         ; $4a74: $ff
	add  b                                           ; $4a75: $80
	rst  $30                                         ; $4a76: $f7
	dec  b                                           ; $4a77: $05
	inc  c                                           ; $4a78: $0c
	rst  $38                                         ; $4a79: $ff
	ld   d, l                                        ; $4a7a: $55
	and  d                                           ; $4a7b: $a2
	ei                                               ; $4a7c: $fb
	rst  $38                                         ; $4a7d: $ff
	add  b                                           ; $4a7e: $80
	rst  $30                                         ; $4a7f: $f7
	add  b                                           ; $4a80: $80
	rst  $38                                         ; $4a81: $ff
	ld   bc, $efe3                                   ; $4a82: $01 $e3 $ef
	add  b                                           ; $4a85: $80
	rst  $38                                         ; $4a86: $ff
	add  b                                           ; $4a87: $80
	rst  $28                                         ; $4a88: $ef
	dec  b                                           ; $4a89: $05
	jr   @+$01                                       ; $4a8a: $18 $ff

	ld   b, l                                        ; $4a8c: $45
	xor  d                                           ; $4a8d: $aa
	rst  $30                                         ; $4a8e: $f7
	rst  $38                                         ; $4a8f: $ff
	add  b                                           ; $4a90: $80
	rst  $28                                         ; $4a91: $ef
	add  b                                           ; $4a92: $80
	rst  $38                                         ; $4a93: $ff
	nop                                              ; $4a94: $00
	rla                                              ; $4a95: $17
	add  l                                           ; $4a96: $85
	rrca                                             ; $4a97: $0f
	nop                                              ; $4a98: $00
	cpl                                              ; $4a99: $2f
	add  c                                           ; $4a9a: $81
	rra                                              ; $4a9b: $1f
	nop                                              ; $4a9c: $00
	ld   e, a                                        ; $4a9d: $5f
	add  c                                           ; $4a9e: $81
	ccf                                              ; $4a9f: $3f
	ld   bc, $0743                                   ; $4aa0: $01 $43 $07
	add  b                                           ; $4aa3: $80
	rrca                                             ; $4aa4: $0f
	add  b                                           ; $4aa5: $80
	rlca                                             ; $4aa6: $07
	dec  b                                           ; $4aa7: $05
	inc  c                                           ; $4aa8: $0c
	rrca                                             ; $4aa9: $0f
	ld   [bc], a                                     ; $4aaa: $02
	dec  b                                           ; $4aab: $05
	dec  bc                                          ; $4aac: $0b
	rrca                                             ; $4aad: $0f
	add  b                                           ; $4aae: $80
	rlca                                             ; $4aaf: $07
	add  b                                           ; $4ab0: $80
	rrca                                             ; $4ab1: $0f
	add  b                                           ; $4ab2: $80
	rst  $30                                         ; $4ab3: $f7
	add  b                                           ; $4ab4: $80
	rst  $38                                         ; $4ab5: $ff
	add  b                                           ; $4ab6: $80
	rst  $30                                         ; $4ab7: $f7
	dec  b                                           ; $4ab8: $05
	inc  c                                           ; $4ab9: $0c
	rst  $38                                         ; $4aba: $ff
	and  d                                           ; $4abb: $a2
	ld   d, l                                        ; $4abc: $55
	ei                                               ; $4abd: $fb
	rst  $38                                         ; $4abe: $ff
	add  b                                           ; $4abf: $80
	rst  $30                                         ; $4ac0: $f7
	add  b                                           ; $4ac1: $80
	rst  $38                                         ; $4ac2: $ff
	add  b                                           ; $4ac3: $80
	rst  $30                                         ; $4ac4: $f7
	add  b                                           ; $4ac5: $80
	rst  $38                                         ; $4ac6: $ff
	add  b                                           ; $4ac7: $80
	rst  $30                                         ; $4ac8: $f7
	dec  b                                           ; $4ac9: $05
	inc  c                                           ; $4aca: $0c
	rst  $38                                         ; $4acb: $ff
	and  d                                           ; $4acc: $a2
	ld   d, l                                        ; $4acd: $55
	ei                                               ; $4ace: $fb
	rst  $38                                         ; $4acf: $ff
	add  b                                           ; $4ad0: $80
	rst  $30                                         ; $4ad1: $f7
	add  b                                           ; $4ad2: $80
	rst  $38                                         ; $4ad3: $ff
	add  b                                           ; $4ad4: $80
	rst  $30                                         ; $4ad5: $f7
	add  b                                           ; $4ad6: $80
	rst  $38                                         ; $4ad7: $ff
	add  b                                           ; $4ad8: $80
	or   $05                                         ; $4ad9: $f6 $05
	inc  c                                           ; $4adb: $0c
	cp   $a3                                         ; $4adc: $fe $a3
	ld   d, l                                        ; $4ade: $55
	ei                                               ; $4adf: $fb
	rst  $38                                         ; $4ae0: $ff
	add  b                                           ; $4ae1: $80
	rst  $30                                         ; $4ae2: $f7
	add  b                                           ; $4ae3: $80
	rst  $38                                         ; $4ae4: $ff
	ld   bc, $efe3                                   ; $4ae5: $01 $e3 $ef
	add  b                                           ; $4ae8: $80
	ld   a, a                                        ; $4ae9: $7f
	add  b                                           ; $4aea: $80
	ld   l, a                                        ; $4aeb: $6f
	dec  b                                           ; $4aec: $05
	jr   @+$01                                       ; $4aed: $18 $ff

	xor  d                                           ; $4aef: $aa
	ld   b, l                                        ; $4af0: $45
	rst  $30                                         ; $4af1: $f7
	rst  $38                                         ; $4af2: $ff
	add  b                                           ; $4af3: $80
	rst  $28                                         ; $4af4: $ef
	add  b                                           ; $4af5: $80
	rst  $38                                         ; $4af6: $ff
	nop                                              ; $4af7: $00
	rrca                                             ; $4af8: $0f
	add  a                                           ; $4af9: $87
	inc  bc                                          ; $4afa: $03
	nop                                              ; $4afb: $00
	dec  bc                                          ; $4afc: $0b
	add  b                                           ; $4afd: $80
	inc  b                                           ; $4afe: $04
	inc  de                                          ; $4aff: $13
	rlca                                             ; $4b00: $07
	rla                                              ; $4b01: $17
	rrca                                             ; $4b02: $0f
	sbc  a                                           ; $4b03: $9f
	rst  $30                                         ; $4b04: $f7
	rst  $20                                         ; $4b05: $e7
	rst  $28                                         ; $4b06: $ef
	xor  a                                           ; $4b07: $af
	rst  $28                                         ; $4b08: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b09: $cf
	cp   $ff                                         ; $4b0a: $fe $ff
	ld   hl, sp-$02                                  ; $4b0c: $f8 $fe
	ldh  a, [$f8]                                    ; $4b0e: $f0 $f8
	ldh  [$f0], a                                    ; $4b10: $e0 $f0
	ret  nz                                          ; $4b12: $c0

	ldh  [$81], a                                    ; $4b13: $e0 $81
	add  b                                           ; $4b15: $80
	ld   [bc], a                                     ; $4b16: $02
	ret  nz                                          ; $4b17: $c0

	nop                                              ; $4b18: $00
	add  b                                           ; $4b19: $80
	adc  c                                           ; $4b1a: $89
	nop                                              ; $4b1b: $00
	ld   a, [bc]                                     ; $4b1c: $0a
	ld   bc, $0600                                   ; $4b1d: $01 $00 $06
	ld   bc, $0709                                   ; $4b20: $01 $09 $07
	dec  e                                           ; $4b23: $1d
	dec  c                                           ; $4b24: $0d
	ld   a, [hl-]                                    ; $4b25: $3a
	rla                                              ; $4b26: $17
	ld   c, d                                        ; $4b27: $4a
	add  b                                           ; $4b28: $80
	ld   a, $22                                      ; $4b29: $3e $22
	ld   [hl], $49                                   ; $4b2b: $36 $49
	nop                                              ; $4b2d: $00
	db   $fc                                         ; $4b2e: $fc
	nop                                              ; $4b2f: $00
	ld   a, [$0500]                                  ; $4b30: $fa $00 $05
	adc  b                                           ; $4b33: $88
	adc  h                                           ; $4b34: $8c
	sub  b                                           ; $4b35: $90
	ld   c, b                                        ; $4b36: $48
	jr   nz, jr_094_4b91                             ; $4b37: $20 $58

	ld   a, [de]                                     ; $4b39: $1a
	ld   [de], a                                     ; $4b3a: $12
	ld   d, $b9                                      ; $4b3b: $16 $b9
	nop                                              ; $4b3d: $00
	ldh  a, [rP1]                                    ; $4b3e: $f0 $00
	ld   hl, sp+$00                                  ; $4b40: $f8 $00
	ld   c, $00                                      ; $4b42: $0e $00
	ld   [hl], a                                     ; $4b44: $77
	nop                                              ; $4b45: $00
	sbc  c                                           ; $4b46: $99
	ld   bc, $c059                                   ; $4b47: $01 $59 $c0
	sub  d                                           ; $4b4a: $92
	ret  nz                                          ; $4b4b: $c0

	ld   e, [hl]                                     ; $4b4c: $5e
	db   $fd                                         ; $4b4d: $fd
	add  b                                           ; $4b4e: $80
	rst  $38                                         ; $4b4f: $ff
	dec  b                                           ; $4b50: $05
	add  c                                           ; $4b51: $81
	db   $fd                                         ; $4b52: $fd
	xor  a                                           ; $4b53: $af
	ld   d, d                                        ; $4b54: $52
	db   $fc                                         ; $4b55: $fc
	ld   a, l                                        ; $4b56: $7d
	add  b                                           ; $4b57: $80
	ld   a, a                                        ; $4b58: $7f
	ld   bc, $3d7d                                   ; $4b59: $01 $7d $3d
	add  b                                           ; $4b5c: $80
	ccf                                              ; $4b5d: $3f
	ld   bc, $fb38                                   ; $4b5e: $01 $38 $fb
	add  b                                           ; $4b61: $80
	rst  $38                                         ; $4b62: $ff
	dec  b                                           ; $4b63: $05
	ld   b, d                                        ; $4b64: $42
	db   $db                                         ; $4b65: $db
	adc  [hl]                                        ; $4b66: $8e
	dec  d                                           ; $4b67: $15
	cp   c                                           ; $4b68: $b9
	cp   e                                           ; $4b69: $bb
	add  b                                           ; $4b6a: $80
	rst  $38                                         ; $4b6b: $ff
	add  b                                           ; $4b6c: $80
	ei                                               ; $4b6d: $fb
	add  b                                           ; $4b6e: $80
	rst  $38                                         ; $4b6f: $ff
	ld   bc, $f7f1                                   ; $4b70: $01 $f1 $f7
	add  b                                           ; $4b73: $80
	rst  $38                                         ; $4b74: $ff
	dec  b                                           ; $4b75: $05
	inc  b                                           ; $4b76: $04
	rst  $30                                         ; $4b77: $f7
	cp   [hl]                                        ; $4b78: $be
	ld   c, c                                        ; $4b79: $49
	di                                               ; $4b7a: $f3
	rst  $30                                         ; $4b7b: $f7
	add  b                                           ; $4b7c: $80
	rst  $38                                         ; $4b7d: $ff
	add  b                                           ; $4b7e: $80
	rst  $30                                         ; $4b7f: $f7
	add  b                                           ; $4b80: $80
	rst  $38                                         ; $4b81: $ff
	nop                                              ; $4b82: $00
	inc  b                                           ; $4b83: $04
	add  c                                           ; $4b84: $81
	nop                                              ; $4b85: $00
	nop                                              ; $4b86: $00
	ld   bc, $0081                                   ; $4b87: $01 $81 $00
	nop                                              ; $4b8a: $00
	ld   [bc], a                                     ; $4b8b: $02
	add  c                                           ; $4b8c: $81
	ld   bc, $0500                                   ; $4b8d: $01 $00 $05
	add  c                                           ; $4b90: $81

jr_094_4b91:
	inc  bc                                          ; $4b91: $03
	nop                                              ; $4b92: $00
	ei                                               ; $4b93: $fb
	add  d                                           ; $4b94: $82
	ld   a, a                                        ; $4b95: $7f
	add  e                                           ; $4b96: $83
	cp   $00                                         ; $4b97: $fe $00
	rst  $38                                         ; $4b99: $ff
	add  c                                           ; $4b9a: $81
	db   $fc                                         ; $4b9b: $fc
	ld   bc, $d8de                                   ; $4b9c: $01 $de $d8
	add  b                                           ; $4b9f: $80
	rlca                                             ; $4ba0: $07
	add  b                                           ; $4ba1: $80
	rrca                                             ; $4ba2: $0f
	add  b                                           ; $4ba3: $80
	rlca                                             ; $4ba4: $07
	ld   bc, $0f04                                   ; $4ba5: $01 $04 $0f
	add  [hl]                                        ; $4ba8: $86
	nop                                              ; $4ba9: $00
	ld   bc, $f7fc                                   ; $4baa: $01 $fc $f7
	add  b                                           ; $4bad: $80
	rst  $38                                         ; $4bae: $ff
	add  b                                           ; $4baf: $80
	rst  $30                                         ; $4bb0: $f7
	ld   bc, $ff04                                   ; $4bb1: $01 $04 $ff
	add  b                                           ; $4bb4: $80
	nop                                              ; $4bb5: $00
	ld   [bc], a                                     ; $4bb6: $02
	ld   bc, $0100                                   ; $4bb7: $01 $00 $01
	add  c                                           ; $4bba: $81
	nop                                              ; $4bbb: $00
	ld   bc, $f70c                                   ; $4bbc: $01 $0c $f7
	add  b                                           ; $4bbf: $80

Call_094_4bc0:
	rst  $38                                         ; $4bc0: $ff
	add  b                                           ; $4bc1: $80
	rst  $30                                         ; $4bc2: $f7
	dec  bc                                          ; $4bc3: $0b
	inc  b                                           ; $4bc4: $04
	rst  $38                                         ; $4bc5: $ff
	adc  c                                           ; $4bc6: $89
	ld   c, $03                                      ; $4bc7: $0e $03
	rlca                                             ; $4bc9: $07
	ld   b, c                                        ; $4bca: $41
	inc  bc                                          ; $4bcb: $03
	jp   nz, $0c03                                   ; $4bcc: $c2 $03 $0c

	rst  $30                                         ; $4bcf: $f7
	add  b                                           ; $4bd0: $80

jr_094_4bd1:
	rst  $38                                         ; $4bd1: $ff
	inc  bc                                          ; $4bd2: $03
	inc  b                                           ; $4bd3: $04
	rst  $38                                         ; $4bd4: $ff
	xor  d                                           ; $4bd5: $aa
	ld   d, l                                        ; $4bd6: $55
	add  b                                           ; $4bd7: $80
	xor  d                                           ; $4bd8: $aa
	add  b                                           ; $4bd9: $80
	ld   d, l                                        ; $4bda: $55
	add  b                                           ; $4bdb: $80
	xor  d                                           ; $4bdc: $aa
	inc  bc                                          ; $4bdd: $03
	nop                                              ; $4bde: $00
	rst  $38                                         ; $4bdf: $ff
	jr   jr_094_4bd1                                 ; $4be0: $18 $ef

	add  b                                           ; $4be2: $80
	rst  $38                                         ; $4be3: $ff
	inc  bc                                          ; $4be4: $03
	ld   [$aaff], sp                                 ; $4be5: $08 $ff $aa
	ld   d, l                                        ; $4be8: $55
	add  b                                           ; $4be9: $80
	xor  d                                           ; $4bea: $aa
	inc  c                                           ; $4beb: $0c
	ld   d, l                                        ; $4bec: $55
	ld   d, h                                        ; $4bed: $54
	xor  e                                           ; $4bee: $ab
	xor  b                                           ; $4bef: $a8
	ld   b, $f8                                      ; $4bf0: $06 $f8
	db   $e3                                         ; $4bf2: $e3
	rrca                                             ; $4bf3: $0f
	cpl                                              ; $4bf4: $2f
	rra                                              ; $4bf5: $1f
	ld   e, a                                        ; $4bf6: $5f
	ccf                                              ; $4bf7: $3f
	cp   a                                           ; $4bf8: $bf
	add  c                                           ; $4bf9: $81
	ld   a, [hl]                                     ; $4bfa: $7e
	nop                                              ; $4bfb: $00
	ld   a, a                                        ; $4bfc: $7f
	add  c                                           ; $4bfd: $81
	db   $fc                                         ; $4bfe: $fc
	inc  b                                           ; $4bff: $04
	cp   $f8                                         ; $4c00: $fe $f8
	call nz, $c080                                   ; $4c02: $c4 $80 $c0
	add  c                                           ; $4c05: $81
	nop                                              ; $4c06: $00
	ld   [$007f], sp                                 ; $4c07: $08 $7f $00
	add  b                                           ; $4c0a: $80
	nop                                              ; $4c0b: $00
	ld   b, b                                        ; $4c0c: $40
	nop                                              ; $4c0d: $00
	jr   nz, jr_094_4c10                             ; $4c0e: $20 $00

jr_094_4c10:
	rra                                              ; $4c10: $1f
	add  c                                           ; $4c11: $81
	nop                                              ; $4c12: $00
	inc  b                                           ; $4c13: $04
	ld   bc, $0200                                   ; $4c14: $01 $00 $02
	ld   bc, $80fd                                   ; $4c17: $01 $fd $80
	ld   bc, $0382                                   ; $4c1a: $01 $82 $03
	ld   [$f901], sp                                 ; $4c1d: $08 $01 $f9
	ld   [bc], a                                     ; $4c20: $02
	ei                                               ; $4c21: $fb
	ld   l, l                                        ; $4c22: $6d
	ld   l, a                                        ; $4c23: $6f
	db   $eb                                         ; $4c24: $eb
	ld   [$80da], a                                  ; $4c25: $ea $da $80
	db   $db                                         ; $4c28: $db
	ld   [bc], a                                     ; $4c29: $02
	reti                                             ; $4c2a: $d9


	db   $dd                                         ; $4c2b: $dd
	call c, $ee80                                    ; $4c2c: $dc $80 $ee
	add  b                                           ; $4c2f: $80
	ld   d, l                                        ; $4c30: $55
	add  b                                           ; $4c31: $80
	xor  b                                           ; $4c32: $a8
	add  b                                           ; $4c33: $80
	dec  h                                           ; $4c34: $25
	rlca                                             ; $4c35: $07
	add  hl, bc                                      ; $4c36: $09
	adc  c                                           ; $4c37: $89
	rst  $30                                         ; $4c38: $f7
	ld   a, a                                        ; $4c39: $7f
	rst  $30                                         ; $4c3a: $f7
	cp   $ff                                         ; $4c3b: $fe $ff
	cp   $80                                         ; $4c3d: $fe $80
	rst  $38                                         ; $4c3f: $ff
	dec  b                                           ; $4c40: $05
	ld   a, $3f                                      ; $4c41: $3e $3f
	db   $dd                                         ; $4c43: $dd
	sub  $a0                                         ; $4c44: $d6 $a0
	xor  d                                           ; $4c46: $aa
	add  b                                           ; $4c47: $80
	add  b                                           ; $4c48: $80
	ld   [$0130], sp                                 ; $4c49: $08 $30 $01
	cp   b                                           ; $4c4c: $b8
	xor  l                                           ; $4c4d: $ad
	ld   hl, sp-$22                                  ; $4c4e: $f8 $de
	db   $fc                                         ; $4c50: $fc
	call c, $803c                                    ; $4c51: $dc $3c $80
	sbc  h                                           ; $4c54: $9c
	nop                                              ; $4c55: $00
	ld   h, c                                        ; $4c56: $61
	add  l                                           ; $4c57: $85
	nop                                              ; $4c58: $00
	dec  bc                                          ; $4c59: $0b
	add  b                                           ; $4c5a: $80
	nop                                              ; $4c5b: $00
	ret  nz                                          ; $4c5c: $c0

	nop                                              ; $4c5d: $00
	jr   nz, jr_094_4ca0                             ; $4c5e: $20 $40

	ld   e, b                                        ; $4c60: $58
	jr   nz, jr_094_4c84                             ; $4c61: $20 $21

	ei                                               ; $4c63: $fb
	ld   [bc], a                                     ; $4c64: $02
	rst  $38                                         ; $4c65: $ff
	add  b                                           ; $4c66: $80
	add  b                                           ; $4c67: $80
	rlca                                             ; $4c68: $07
	and  b                                           ; $4c69: $a0
	ld   h, b                                        ; $4c6a: $60
	sub  h                                           ; $4c6b: $94
	xor  h                                           ; $4c6c: $ac
	ld   d, d                                        ; $4c6d: $52
	ld   d, l                                        ; $4c6e: $55
	nop                                              ; $4c6f: $00
	rst  $38                                         ; $4c70: $ff
	add  b                                           ; $4c71: $80
	nop                                              ; $4c72: $00
	inc  bc                                          ; $4c73: $03
	inc  c                                           ; $4c74: $0c
	rst  $30                                         ; $4c75: $f7
	inc  b                                           ; $4c76: $04
	rst  $38                                         ; $4c77: $ff
	add  h                                           ; $4c78: $84

jr_094_4c79:
	nop                                              ; $4c79: $00
	add  b                                           ; $4c7a: $80
	add  b                                           ; $4c7b: $80
	add  b                                           ; $4c7c: $80
	cp   $03                                         ; $4c7d: $fe $03
	add  hl, hl                                      ; $4c7f: $29
	inc  [hl]                                        ; $4c80: $34
	db   $ed                                         ; $4c81: $ed
	rlca                                             ; $4c82: $07
	add  b                                           ; $4c83: $80

jr_094_4c84:
	ld   b, $00                                      ; $4c84: $06 $00
	or   $80                                         ; $4c86: $f6 $80
	ld   c, $80                                      ; $4c88: $0e $80
	ld   e, $01                                      ; $4c8a: $1e $01
	ld   a, $3f                                      ; $4c8c: $3e $3f
	add  b                                           ; $4c8e: $80
	ld   a, a                                        ; $4c8f: $7f
	add  c                                           ; $4c90: $81
	rst  $38                                         ; $4c91: $ff
	inc  bc                                          ; $4c92: $03
	inc  a                                           ; $4c93: $3c
	jr   c, jr_094_4d12                              ; $4c94: $38 $7c

	ld   [hl], b                                     ; $4c96: $70
	add  b                                           ; $4c97: $80
	ldh  a, [rDIV]                                   ; $4c98: $f0 $04
	ld   a, b                                        ; $4c9a: $78
	ld   h, b                                        ; $4c9b: $60
	ld   l, a                                        ; $4c9c: $6f
	ld   h, b                                        ; $4c9d: $60
	rst  $38                                         ; $4c9e: $ff
	add  c                                           ; $4c9f: $81

jr_094_4ca0:
	ret  nz                                          ; $4ca0: $c0

	dec  b                                           ; $4ca1: $05
	ldh  [$80], a                                    ; $4ca2: $e0 $80
	ld   b, b                                        ; $4ca4: $40
	rrca                                             ; $4ca5: $0f
	ld   a, [bc]                                     ; $4ca6: $0a
	dec  b                                           ; $4ca7: $05
	add  b                                           ; $4ca8: $80
	ld   a, [bc]                                     ; $4ca9: $0a
	add  b                                           ; $4caa: $80
	dec  b                                           ; $4cab: $05
	add  b                                           ; $4cac: $80
	ld   a, [bc]                                     ; $4cad: $0a
	add  b                                           ; $4cae: $80
	dec  b                                           ; $4caf: $05

jr_094_4cb0:
	add  b                                           ; $4cb0: $80
	ld   a, [bc]                                     ; $4cb1: $0a
	nop                                              ; $4cb2: $00
	nop                                              ; $4cb3: $00
	add  b                                           ; $4cb4: $80
	rrca                                             ; $4cb5: $0f
	ld   [bc], a                                     ; $4cb6: $02
	rst  $38                                         ; $4cb7: $ff
	xor  d                                           ; $4cb8: $aa
	ld   d, l                                        ; $4cb9: $55
	add  b                                           ; $4cba: $80
	xor  d                                           ; $4cbb: $aa
	add  b                                           ; $4cbc: $80
	ld   d, l                                        ; $4cbd: $55
	add  b                                           ; $4cbe: $80
	xor  d                                           ; $4cbf: $aa
	add  b                                           ; $4cc0: $80
	ld   d, l                                        ; $4cc1: $55
	add  b                                           ; $4cc2: $80
	xor  d                                           ; $4cc3: $aa
	dec  b                                           ; $4cc4: $05
	nop                                              ; $4cc5: $00
	rst  $38                                         ; $4cc6: $ff
	cp   $ff                                         ; $4cc7: $fe $ff
	xor  e                                           ; $4cc9: $ab
	ld   d, l                                        ; $4cca: $55
	add  b                                           ; $4ccb: $80
	xor  d                                           ; $4ccc: $aa
	add  b                                           ; $4ccd: $80
	ld   d, l                                        ; $4cce: $55
	add  b                                           ; $4ccf: $80
	xor  d                                           ; $4cd0: $aa
	add  b                                           ; $4cd1: $80
	ld   d, l                                        ; $4cd2: $55
	ld   bc, $ff00                                   ; $4cd3: $01 $00 $ff
	add  b                                           ; $4cd6: $80
	nop                                              ; $4cd7: $00
	add  b                                           ; $4cd8: $80
	add  b                                           ; $4cd9: $80
	dec  bc                                          ; $4cda: $0b
	ld   b, b                                        ; $4cdb: $40
	ret  nz                                          ; $4cdc: $c0

	and  b                                           ; $4cdd: $a0
	ldh  [$50], a                                    ; $4cde: $e0 $50
	ld   [hl], b                                     ; $4ce0: $70
	xor  b                                           ; $4ce1: $a8
	cp   b                                           ; $4ce2: $b8
	ld   d, h                                        ; $4ce3: $54
	ld   e, h                                        ; $4ce4: $5c
	rlca                                             ; $4ce5: $07
	rst  $38                                         ; $4ce6: $ff
	add  b                                           ; $4ce7: $80
	nop                                              ; $4ce8: $00
	nop                                              ; $4ce9: $00
	rlca                                             ; $4cea: $07
	add  c                                           ; $4ceb: $81
	nop                                              ; $4cec: $00
	ld   [bc], a                                     ; $4ced: $02
	ld   [$1000], sp                                 ; $4cee: $08 $00 $10
	add  c                                           ; $4cf1: $81
	nop                                              ; $4cf2: $00
	nop                                              ; $4cf3: $00
	jr   nz, jr_094_4c79                             ; $4cf4: $20 $83

	nop                                              ; $4cf6: $00
	nop                                              ; $4cf7: $00
	ccf                                              ; $4cf8: $3f
	add  d                                           ; $4cf9: $82
	ld   hl, sp-$7a                                  ; $4cfa: $f8 $86
	ldh  a, [$80]                                    ; $4cfc: $f0 $80
	db   $ec                                         ; $4cfe: $ec
	dec  de                                          ; $4cff: $1b
	rra                                              ; $4d00: $1f
	ld   a, [bc]                                     ; $4d01: $0a
	ld   a, [de]                                     ; $4d02: $1a
	dec  b                                           ; $4d03: $05
	dec  c                                           ; $4d04: $0d
	ld   [bc], a                                     ; $4d05: $02
	ld   b, $11                                      ; $4d06: $06 $11
	inc  bc                                          ; $4d08: $03
	jr   nz, @+$03                                   ; $4d09: $20 $01

	jr   nz, jr_094_4d11                             ; $4d0b: $20 $04

	db   $e3                                         ; $4d0d: $e3
	ld   sp, hl                                      ; $4d0e: $f9
	inc  c                                           ; $4d0f: $0c
	dec  b                                           ; $4d10: $05

jr_094_4d11:
	db   $fd                                         ; $4d11: $fd

jr_094_4d12:
	ld   bc, $020c                                   ; $4d12: $01 $0c $02
	nop                                              ; $4d15: $00
	dec  b                                           ; $4d16: $05
	db   $10                                         ; $4d17: $10
	ld   a, [bc]                                     ; $4d18: $0a
	adc  d                                           ; $4d19: $8a
	dec  b                                           ; $4d1a: $05
	dec  [hl]                                        ; $4d1b: $35
	add  b                                           ; $4d1c: $80
	ld   [bc], a                                     ; $4d1d: $02
	add  hl, bc                                      ; $4d1e: $09
	ld   bc, $0081                                   ; $4d1f: $01 $81 $00
	sbc  b                                           ; $4d22: $98
	ld   d, h                                        ; $4d23: $54
	and  h                                           ; $4d24: $a4
	xor  d                                           ; $4d25: $aa
	ld   [hl], $55                                   ; $4d26: $36 $55
	ld   [hl], c                                     ; $4d28: $71
	add  b                                           ; $4d29: $80
	xor  d                                           ; $4d2a: $aa
	add  b                                           ; $4d2b: $80
	ld   d, c                                        ; $4d2c: $51
	add  b                                           ; $4d2d: $80
	jr   z, jr_094_4cb0                              ; $4d2e: $28 $80

	ld   d, l                                        ; $4d30: $55
	add  hl, hl                                      ; $4d31: $29
	jr   z, jr_094_4d57                              ; $4d32: $28 $23

	jr   c, jr_094_4d66                              ; $4d34: $38 $30

	jr   jr_094_4d90                                 ; $4d36: $18 $58

	jr   jr_094_4db8                                 ; $4d38: $18 $7e

	inc  c                                           ; $4d3a: $0c
	dec  hl                                          ; $4d3b: $2b
	ld   c, $24                                      ; $4d3c: $0e $24
	rrca                                             ; $4d3e: $0f
	dec  hl                                          ; $4d3f: $2b
	rrca                                             ; $4d40: $0f
	inc  c                                           ; $4d41: $0c
	rrca                                             ; $4d42: $0f
	jp   nz, Jump_094_5e5c                           ; $4d43: $c2 $5c $5e

	inc  e                                           ; $4d46: $1c
	dec  a                                           ; $4d47: $3d
	inc  a                                           ; $4d48: $3c
	ld   a, $38                                      ; $4d49: $3e $38
	sbc  d                                           ; $4d4b: $9a
	ld   a, c                                        ; $4d4c: $79
	ld   a, [hl-]                                    ; $4d4d: $3a
	ldh  a, [$f7]                                    ; $4d4e: $f0 $f7
	ldh  a, [rIE]                                    ; $4d50: $f0 $ff
	ldh  [$f2], a                                    ; $4d52: $e0 $f2
	ret  z                                           ; $4d54: $c8

	sub  b                                           ; $4d55: $90
	and  h                                           ; $4d56: $a4

jr_094_4d57:
	call nz, $9272                                   ; $4d57: $c4 $72 $92
	or   b                                           ; $4d5a: $b0
	ld   [hl], b                                     ; $4d5b: $70
	add  b                                           ; $4d5c: $80
	ld   a, b                                        ; $4d5d: $78
	add  b                                           ; $4d5e: $80
	xor  b                                           ; $4d5f: $a8
	add  b                                           ; $4d60: $80
	db   $10                                         ; $4d61: $10
	add  b                                           ; $4d62: $80
	xor  b                                           ; $4d63: $a8
	add  [hl]                                        ; $4d64: $86
	nop                                              ; $4d65: $00

jr_094_4d66:
	add  b                                           ; $4d66: $80
	ld   bc, $0780                                   ; $4d67: $01 $80 $07
	add  b                                           ; $4d6a: $80
	rra                                              ; $4d6b: $1f
	add  b                                           ; $4d6c: $80
	rst  $38                                         ; $4d6d: $ff
	add  b                                           ; $4d6e: $80
	inc  bc                                          ; $4d6f: $03
	add  b                                           ; $4d70: $80
	rlca                                             ; $4d71: $07
	add  b                                           ; $4d72: $80
	rra                                              ; $4d73: $1f
	add  b                                           ; $4d74: $80
	ld   a, a                                        ; $4d75: $7f
	add  c                                           ; $4d76: $81
	rst  $38                                         ; $4d77: $ff
	inc  b                                           ; $4d78: $04
	db   $fc                                         ; $4d79: $fc
	rst  $38                                         ; $4d7a: $ff
	ei                                               ; $4d7b: $fb
	rst  $38                                         ; $4d7c: $ff
	ld   hl, sp-$7c                                  ; $4d7d: $f8 $84
	rst  $38                                         ; $4d7f: $ff
	add  b                                           ; $4d80: $80
	cp   $02                                         ; $4d81: $fe $02
	db   $fc                                         ; $4d83: $fc
	inc  c                                           ; $4d84: $0c
	ldh  a, [$80]                                    ; $4d85: $f0 $80
	ldh  [$80], a                                    ; $4d87: $e0 $80
	add  b                                           ; $4d89: $80
	ld   [bc], a                                     ; $4d8a: $02
	ccf                                              ; $4d8b: $3f
	add  b                                           ; $4d8c: $80
	ret  nz                                          ; $4d8d: $c0

	add  c                                           ; $4d8e: $81
	nop                                              ; $4d8f: $00

jr_094_4d90:
	nop                                              ; $4d90: $00
	ld   a, a                                        ; $4d91: $7f
	add  a                                           ; $4d92: $87
	nop                                              ; $4d93: $00
	nop                                              ; $4d94: $00
	ldh  a, [$89]                                    ; $4d95: $f0 $89
	nop                                              ; $4d97: $00
	add  b                                           ; $4d98: $80
	inc  bc                                          ; $4d99: $03
	add  b                                           ; $4d9a: $80
	ld   bc, $f000                                   ; $4d9b: $01 $00 $f0
	adc  c                                           ; $4d9e: $89
	nop                                              ; $4d9f: $00
	add  b                                           ; $4da0: $80
	ld   a, [$f880]                                  ; $4da1: $fa $80 $f8
	adc  d                                           ; $4da4: $8a
	nop                                              ; $4da5: $00
	add  b                                           ; $4da6: $80
	xor  a                                           ; $4da7: $af
	add  b                                           ; $4da8: $80
	dec  b                                           ; $4da9: $05
	adc  d                                           ; $4daa: $8a
	nop                                              ; $4dab: $00
	add  b                                           ; $4dac: $80
	rst  $38                                         ; $4dad: $ff
	add  b                                           ; $4dae: $80
	ld   a, a                                        ; $4daf: $7f
	dec  bc                                          ; $4db0: $0b
	ccf                                              ; $4db1: $3f
	nop                                              ; $4db2: $00
	ld   b, b                                        ; $4db3: $40
	nop                                              ; $4db4: $00
	inc  h                                           ; $4db5: $24
	nop                                              ; $4db6: $00
	ld   d, e                                        ; $4db7: $53

jr_094_4db8:
	nop                                              ; $4db8: $00
	inc  c                                           ; $4db9: $0c
	nop                                              ; $4dba: $00
	inc  b                                           ; $4dbb: $04
	nop                                              ; $4dbc: $00
	add  d                                           ; $4dbd: $82
	rst  $38                                         ; $4dbe: $ff
	nop                                              ; $4dbf: $00
	nop                                              ; $4dc0: $00
	add  c                                           ; $4dc1: $81
	rst  $38                                         ; $4dc2: $ff
	db   $10                                         ; $4dc3: $10
	ld   a, a                                        ; $4dc4: $7f
	rst  $38                                         ; $4dc5: $ff
	sbc  a                                           ; $4dc6: $9f
	rst  $38                                         ; $4dc7: $ff
	inc  hl                                          ; $4dc8: $23
	ccf                                              ; $4dc9: $3f
	call z, $330f                                    ; $4dca: $cc $0f $33
	inc  bc                                          ; $4dcd: $03
	inc  c                                           ; $4dce: $0c
	nop                                              ; $4dcf: $00
	ei                                               ; $4dd0: $fb
	ret  nz                                          ; $4dd1: $c0

	add  $f8                                         ; $4dd2: $c6 $f8
	ld   sp, hl                                      ; $4dd4: $f9
	add  b                                           ; $4dd5: $80
	cp   $83                                         ; $4dd6: $fe $83
	rst  $38                                         ; $4dd8: $ff
	ld   [bc], a                                     ; $4dd9: $02
	rra                                              ; $4dda: $1f
	rst  $38                                         ; $4ddb: $ff
	rst  $20                                         ; $4ddc: $e7
	add  b                                           ; $4ddd: $80
	rst  $38                                         ; $4dde: $ff
	dec  b                                           ; $4ddf: $05
	nop                                              ; $4de0: $00
	ld   b, $00                                      ; $4de1: $06 $00
	db   $fd                                         ; $4de3: $fd
	nop                                              ; $4de4: $00
	inc  bc                                          ; $4de5: $03
	add  b                                           ; $4de6: $80
	ld   a, h                                        ; $4de7: $7c
	add  c                                           ; $4de8: $81
	rst  $38                                         ; $4de9: $ff
	dec  b                                           ; $4dea: $05
	cp   e                                           ; $4deb: $bb
	ei                                               ; $4dec: $fb
	rst  JumpTable                                         ; $4ded: $df
	rst  $38                                         ; $4dee: $ff
	sbc  a                                           ; $4def: $9f
	nop                                              ; $4df0: $00
	add  b                                           ; $4df1: $80
	ld   [$0480], sp                                 ; $4df2: $08 $80 $04
	ld   d, $c0                                      ; $4df5: $16 $c0
	nop                                              ; $4df7: $00
	db   $e4                                         ; $4df8: $e4
	inc  b                                           ; $4df9: $04
	dec  sp                                          ; $4dfa: $3b
	sbc  a                                           ; $4dfb: $9f
	sub  l                                           ; $4dfc: $95
	rst  JumpTable                                         ; $4dfd: $df
	adc  $ef                                         ; $4dfe: $ce $ef
	ret  nz                                          ; $4e00: $c0

	cpl                                              ; $4e01: $2f
	inc  a                                           ; $4e02: $3c
	ld   a, $73                                      ; $4e03: $3e $73
	ld   a, h                                        ; $4e05: $7c
	ld   l, l                                        ; $4e06: $6d
	ld   a, h                                        ; $4e07: $7c
	dec  e                                           ; $4e08: $1d
	nop                                              ; $4e09: $00
	add  c                                           ; $4e0a: $81
	add  b                                           ; $4e0b: $80
	pop  bc                                          ; $4e0c: $c1
	add  c                                           ; $4e0d: $81
	db   $fd                                         ; $4e0e: $fd
	dec  bc                                          ; $4e0f: $0b
	xor  c                                           ; $4e10: $a9
	ret  nz                                          ; $4e11: $c0

	ld   a, a                                        ; $4e12: $7f
	nop                                              ; $4e13: $00
	ld   l, [hl]                                     ; $4e14: $6e
	nop                                              ; $4e15: $00
	ld   b, h                                        ; $4e16: $44
	ld   de, $13d1                                   ; $4e17: $11 $d1 $13
	di                                               ; $4e1a: $f3
	ccf                                              ; $4e1b: $3f
	add  b                                           ; $4e1c: $80
	rst  $38                                         ; $4e1d: $ff
	inc  b                                           ; $4e1e: $04
	rst  JumpTable                                         ; $4e1f: $df
	rst  $38                                         ; $4e20: $ff
	rra                                              ; $4e21: $1f
	inc  bc                                          ; $4e22: $03
	inc  hl                                          ; $4e23: $23
	add  b                                           ; $4e24: $80
	rlca                                             ; $4e25: $07
	add  b                                           ; $4e26: $80
	ld   l, a                                        ; $4e27: $6f
	add  c                                           ; $4e28: $81
	rst  $38                                         ; $4e29: $ff
	ld   bc, $7f6f                                   ; $4e2a: $01 $6f $7f
	add  b                                           ; $4e2d: $80
	rst  $38                                         ; $4e2e: $ff
	ld   [bc], a                                     ; $4e2f: $02
	ld   [hl], b                                     ; $4e30: $70
	ld   a, a                                        ; $4e31: $7f
	ldh  [$83], a                                    ; $4e32: $e0 $83
	rst  $38                                         ; $4e34: $ff
	ld   d, $fe                                      ; $4e35: $16 $fe
	rst  $38                                         ; $4e37: $ff
	ld   sp, hl                                      ; $4e38: $f9
	rst  $38                                         ; $4e39: $ff
	and  $fe                                         ; $4e3a: $e6 $fe
	ld   de, $8ef0                                   ; $4e3c: $11 $f0 $8e
	add  b                                           ; $4e3f: $80
	db   $10                                         ; $4e40: $10
	rst  $38                                         ; $4e41: $ff
	sbc  $fe                                         ; $4e42: $de $fe
	add  hl, sp                                      ; $4e44: $39
	ld   hl, sp-$1a                                  ; $4e45: $f8 $e6
	ldh  [$98], a                                    ; $4e47: $e0 $98
	add  b                                           ; $4e49: $80
	ld   h, b                                        ; $4e4a: $60
	nop                                              ; $4e4b: $00
	add  b                                           ; $4e4c: $80
	add  c                                           ; $4e4d: $81
	nop                                              ; $4e4e: $00
	ld   bc, $7f80                                   ; $4e4f: $01 $80 $7f
	adc  d                                           ; $4e52: $8a
	rst  $38                                         ; $4e53: $ff
	add  b                                           ; $4e54: $80
	ccf                                              ; $4e55: $3f
	add  b                                           ; $4e56: $80
	db   $fd                                         ; $4e57: $fd
	add  b                                           ; $4e58: $80
	ld   a, [$ff80]                                  ; $4e59: $fa $80 $ff
	add  b                                           ; $4e5c: $80
	xor  $80                                         ; $4e5d: $ee $80
	push af                                          ; $4e5f: $f5
	add  b                                           ; $4e60: $80
	rst  $38                                         ; $4e61: $ff
	add  b                                           ; $4e62: $80
	ld   [hl], l                                     ; $4e63: $75
	add  b                                           ; $4e64: $80
	sbc  $01                                         ; $4e65: $de $01
	ldh  a, [c]                                      ; $4e67: $f2
	ld   [bc], a                                     ; $4e68: $02
	add  b                                           ; $4e69: $80
	ld   bc, $0082                                   ; $4e6a: $01 $82 $00
	ld   bc, $0c03                                   ; $4e6d: $01 $03 $0c
	add  b                                           ; $4e70: $80
	ld   bc, $0701                                   ; $4e71: $01 $01 $07
	ld   [$0080], sp                                 ; $4e74: $08 $80 $00
	ld   bc, $a858                                   ; $4e77: $01 $58 $a8
	add  b                                           ; $4e7a: $80
	ld   d, b                                        ; $4e7b: $50
	add  b                                           ; $4e7c: $80
	nop                                              ; $4e7d: $00
	add  b                                           ; $4e7e: $80
	ccf                                              ; $4e7f: $3f
	ld   [$03fc], sp                                 ; $4e80: $08 $fc $03
	rlca                                             ; $4e83: $07
	ld   hl, sp+$1d                                  ; $4e84: $f8 $1d
	rra                                              ; $4e86: $1f
	add  $bc                                         ; $4e87: $c6 $bc
	ld   a, b                                        ; $4e89: $78
	add  c                                           ; $4e8a: $81
	nop                                              ; $4e8b: $00
	add  b                                           ; $4e8c: $80
	ld   bc, $cf09                                   ; $4e8d: $01 $09 $cf
	ldh  a, [rTAC]                                   ; $4e90: $f0 $07
	ld   hl, sp-$31                                  ; $4e92: $f8 $cf
	rrca                                             ; $4e94: $0f
	ld   l, [hl]                                     ; $4e95: $6e
	xor  $94                                         ; $4e96: $ee $94
	inc  d                                           ; $4e98: $14
	add  b                                           ; $4e99: $80
	cp   a                                           ; $4e9a: $bf
	add  b                                           ; $4e9b: $80
	ld   e, l                                        ; $4e9c: $5d
	add  b                                           ; $4e9d: $80
	adc  a                                           ; $4e9e: $8f
	inc  bc                                          ; $4e9f: $03
	or   [hl]                                        ; $4ea0: $b6
	ld   a, c                                        ; $4ea1: $79
	or   b                                           ; $4ea2: $b0
	ld   a, a                                        ; $4ea3: $7f
	add  b                                           ; $4ea4: $80
	push de                                          ; $4ea5: $d5
	add  b                                           ; $4ea6: $80
	and  e                                           ; $4ea7: $a3
	add  b                                           ; $4ea8: $80
	ld   bc, $f403                                   ; $4ea9: $01 $03 $f4
	db   $ec                                         ; $4eac: $ec
	db   $e4                                         ; $4ead: $e4
	db   $fc                                         ; $4eae: $fc
	add  b                                           ; $4eaf: $80
	ld   hl, sp-$80                                  ; $4eb0: $f8 $80
	or   b                                           ; $4eb2: $b0
	add  b                                           ; $4eb3: $80
	ld   [$d008], a                                  ; $4eb4: $ea $08 $d0
	call nc, $a3a7                                   ; $4eb7: $d4 $a7 $a3
	rst  $10                                         ; $4eba: $d7
	ret  c                                           ; $4ebb: $d8

	adc  h                                           ; $4ebc: $8c
	add  e                                           ; $4ebd: $83
	rrca                                             ; $4ebe: $0f
	add  b                                           ; $4ebf: $80
	ld   [$0015], sp                                 ; $4ec0: $08 $15 $00
	ld   bc, $040a                                   ; $4ec3: $01 $0a $04
	ld   b, $18                                      ; $4ec6: $06 $18
	ld   e, $b5                                      ; $4ec8: $1e $b5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4eca: $cf
	cp   e                                           ; $4ecb: $bb
	ld   [hl+], a                                    ; $4ecc: $22
	db   $dd                                         ; $4ecd: $dd
	ccf                                              ; $4ece: $3f
	ld   c, $0f                                      ; $4ecf: $0e $0f
	sub  a                                           ; $4ed1: $97
	rlca                                             ; $4ed2: $07
	ld   c, e                                        ; $4ed3: $4b
	inc  bc                                          ; $4ed4: $03
	dec  [hl]                                        ; $4ed5: $35
	ld   bc, $8112                                   ; $4ed6: $01 $12 $81
	nop                                              ; $4ed9: $00
	add  hl, bc                                      ; $4eda: $09
	ld   bc, $8f00                                   ; $4edb: $01 $00 $8f

jr_094_4ede:
	rst  $38                                         ; $4ede: $ff
	halt                                             ; $4edf: $76
	cp   $f5                                         ; $4ee0: $fe $f5
	db   $dd                                         ; $4ee2: $dd
	rst  JumpTable                                         ; $4ee3: $df
	adc  a                                           ; $4ee4: $8f
	add  b                                           ; $4ee5: $80
	add  a                                           ; $4ee6: $87
	ld   bc, $0383                                   ; $4ee7: $01 $83 $03
	add  d                                           ; $4eea: $82
	nop                                              ; $4eeb: $00
	ld   [$f3ff], sp                                 ; $4eec: $08 $ff $f3
	rst  $30                                         ; $4eef: $f7
	db   $fd                                         ; $4ef0: $fd
	ei                                               ; $4ef1: $fb
	cp   $fd                                         ; $4ef2: $fe $fd
	rst  $38                                         ; $4ef4: $ff
	cp   $81                                         ; $4ef5: $fe $81
	rst  $38                                         ; $4ef7: $ff
	add  b                                           ; $4ef8: $80
	rra                                              ; $4ef9: $1f
	add  b                                           ; $4efa: $80
	rrca                                             ; $4efb: $0f
	nop                                              ; $4efc: $00
	cp   h                                           ; $4efd: $bc
	add  c                                           ; $4efe: $81
	rst  $38                                         ; $4eff: $ff
	rlca                                             ; $4f00: $07
	or   l                                           ; $4f01: $b5
	ccf                                              ; $4f02: $3f
	ld   a, [$1ede]                                  ; $4f03: $fa $de $1e
	rst  $38                                         ; $4f06: $ff
	di                                               ; $4f07: $f3
	rst  $38                                         ; $4f08: $ff
	add  b                                           ; $4f09: $80
	cp   $80                                         ; $4f0a: $fe $80
	db   $fc                                         ; $4f0c: $fc
	rlca                                             ; $4f0d: $07
	inc  a                                           ; $4f0e: $3c
	call c, $be9e                                    ; $4f0f: $dc $9e $be
	inc  a                                           ; $4f12: $3c
	ld   a, h                                        ; $4f13: $7c
	ld   a, c                                        ; $4f14: $79
	ld   sp, hl                                      ; $4f15: $f9
	add  b                                           ; $4f16: $80
	db   $e3                                         ; $4f17: $e3
	add  b                                           ; $4f18: $80
	jp   $0382                                       ; $4f19: $c3 $82 $03


	ld   b, $63                                      ; $4f1c: $06 $63
	ld   a, h                                        ; $4f1e: $7c
	ld   d, e                                        ; $4f1f: $53
	ld   [hl], b                                     ; $4f20: $70
	db   $ec                                         ; $4f21: $ec
	ldh  [$d0], a                                    ; $4f22: $e0 $d0
	add  c                                           ; $4f24: $81
	ret  nz                                          ; $4f25: $c0

	nop                                              ; $4f26: $00
	ldh  [$83], a                                    ; $4f27: $e0 $83
	add  b                                           ; $4f29: $80
	dec  b                                           ; $4f2a: $05
	adc  $09                                         ; $4f2b: $ce $09
	sbc  c                                           ; $4f2d: $99
	ld   de, $1817                                   ; $4f2e: $11 $17 $18
	add  d                                           ; $4f31: $82
	nop                                              ; $4f32: $00
	add  b                                           ; $4f33: $80
	inc  bc                                          ; $4f34: $03
	add  d                                           ; $4f35: $82
	nop                                              ; $4f36: $00
	inc  bc                                          ; $4f37: $03
	inc  bc                                          ; $4f38: $03
	inc  b                                           ; $4f39: $04
	inc  bc                                          ; $4f3a: $03
	dec  bc                                          ; $4f3b: $0b
	add  b                                           ; $4f3c: $80
	inc  de                                          ; $4f3d: $13
	rlca                                             ; $4f3e: $07
	dec  [hl]                                        ; $4f3f: $35
	dec  l                                           ; $4f40: $2d
	xor  b                                           ; $4f41: $a8
	ret  nz                                          ; $4f42: $c0

	add  e                                           ; $4f43: $83
	ld   [bc], a                                     ; $4f44: $02
	ld   a, [$8004]                                  ; $4f45: $fa $04 $80
	nop                                              ; $4f48: $00
	rlca                                             ; $4f49: $07
	or   $16                                         ; $4f4a: $f6 $16
	ldh  [$e7], a                                    ; $4f4c: $e0 $e7
	db   $e3                                         ; $4f4e: $e3
	rst  $38                                         ; $4f4f: $ff
	dec  b                                           ; $4f50: $05
	ld   bc, $c780                                   ; $4f51: $01 $80 $c7
	ld   [bc], a                                     ; $4f54: $02
	jp   $1123                                       ; $4f55: $c3 $23 $11


	add  b                                           ; $4f58: $80
	ld   bc, $0901                                   ; $4f59: $01 $01 $09
	jr   jr_094_4ede                                 ; $4f5c: $18 $80

	jr   nz, jr_094_4f64                             ; $4f5e: $20 $04

	rra                                              ; $4f60: $1f
	ld   l, a                                        ; $4f61: $6f
	rst  $38                                         ; $4f62: $ff
	ld   l, a                                        ; $4f63: $6f

jr_094_4f64:
	nop                                              ; $4f64: $00
	add  b                                           ; $4f65: $80
	rst  $38                                         ; $4f66: $ff

jr_094_4f67:
	dec  b                                           ; $4f67: $05
	rst  $20                                         ; $4f68: $e7
	rst  $38                                         ; $4f69: $ff
	sbc  b                                           ; $4f6a: $98
	add  b                                           ; $4f6b: $80
	ld   [bc], a                                     ; $4f6c: $02
	cp   $00                                         ; $4f6d: $fe $00
	ccf                                              ; $4f6f: $3f
	nop                                              ; $4f70: $00
	cp   a                                           ; $4f71: $bf
	nop                                              ; $4f72: $00
	sbc  a                                           ; $4f73: $9f
	nop                                              ; $4f74: $00
	ccf                                              ; $4f75: $3f
	nop                                              ; $4f76: $00
	ld   a, a                                        ; $4f77: $7f
	ld   [bc], a                                     ; $4f78: $02
	sub  $04                                         ; $4f79: $d6 $04
	and  h                                           ; $4f7b: $a4
	inc  b                                           ; $4f7c: $04
	db   $ed                                         ; $4f7d: $ed
	nop                                              ; $4f7e: $00
	rst  $38                                         ; $4f7f: $ff
	nop                                              ; $4f80: $00
	rst  $38                                         ; $4f81: $ff
	ld   [bc], a                                     ; $4f82: $02
	rst  $38                                         ; $4f83: $ff
	inc  b                                           ; $4f84: $04
	cp   a                                           ; $4f85: $bf
	dec  c                                           ; $4f86: $0d
	ld   a, a                                        ; $4f87: $7f
	add  hl, de                                      ; $4f88: $19
	rst  $38                                         ; $4f89: $ff

jr_094_4f8a:
	dec  sp                                          ; $4f8a: $3b
	rst  $38                                         ; $4f8b: $ff
	ld   [hl-], a                                    ; $4f8c: $32
	cp   [hl]                                        ; $4f8d: $be
	nop                                              ; $4f8e: $00
	rst  $38                                         ; $4f8f: $ff
	nop                                              ; $4f90: $00
	rst  $38                                         ; $4f91: $ff
	ld   b, b                                        ; $4f92: $40
	rst  $38                                         ; $4f93: $ff
	add  sp, -$01                                    ; $4f94: $e8 $ff
	cp   h                                           ; $4f96: $bc
	rst  $38                                         ; $4f97: $ff
	ld   d, [hl]                                     ; $4f98: $56
	rst  $38                                         ; $4f99: $ff
	rst  $38                                         ; $4f9a: $ff
	rst  $38                                         ; $4f9b: $ff
	ld   bc, $0201                                   ; $4f9c: $01 $01 $02
	ldh  a, [c]                                      ; $4f9f: $f2
	ld   [bc], a                                     ; $4fa0: $02
	ld   a, [$fe02]                                  ; $4fa1: $fa $02 $fe
	ld   [bc], a                                     ; $4fa4: $02
	or   $02                                         ; $4fa5: $f6 $02
	ld   a, [$fe42]                                  ; $4fa7: $fa $42 $fe
	ld   [hl-], a                                    ; $4faa: $32
	ld   a, [$fe1a]                                  ; $4fab: $fa $1a $fe
	adc  b                                           ; $4fae: $88
	reti                                             ; $4faf: $d9


	jr   jr_094_4f8a                                 ; $4fb0: $18 $d8

	db   $10                                         ; $4fb2: $10
	ldh  a, [c]                                      ; $4fb3: $f2
	jr   nc, @-$08                                   ; $4fb4: $30 $f6

	ld   hl, $61fd                                   ; $4fb6: $21 $fd $61
	db   $fd                                         ; $4fb9: $fd
	ld   b, e                                        ; $4fba: $43
	cp   $43                                         ; $4fbb: $fe $43
	rst  $38                                         ; $4fbd: $ff
	ld   d, d                                        ; $4fbe: $52
	ld   e, [hl]                                     ; $4fbf: $5e
	ld   d, h                                        ; $4fc0: $54
	ld   e, h                                        ; $4fc1: $5c
	sub  a                                           ; $4fc2: $97
	sbc  a                                           ; $4fc3: $9f
	db   $fc                                         ; $4fc4: $fc
	db   $fc                                         ; $4fc5: $fc
	call c, $9c18                                    ; $4fc6: $dc $18 $9c
	jr   jr_094_4f67                                 ; $4fc9: $18 $9c

	db   $10                                         ; $4fcb: $10
	ld   hl, sp-$70                                  ; $4fcc: $f8 $90
	nop                                              ; $4fce: $00
	nop                                              ; $4fcf: $00
	nop                                              ; $4fd0: $00
	nop                                              ; $4fd1: $00
	cp   $fe                                         ; $4fd2: $fe $fe
	ld   bc, $0101                                   ; $4fd4: $01 $01 $01
	nop                                              ; $4fd7: $00
	nop                                              ; $4fd8: $00
	nop                                              ; $4fd9: $00
	nop                                              ; $4fda: $00
	nop                                              ; $4fdb: $00
	ld   bc, $8e00                                   ; $4fdc: $01 $00 $8e
	cp   $86                                         ; $4fdf: $fe $86
	or   $42                                         ; $4fe1: $f6 $42
	ld   d, d                                        ; $4fe3: $52
	jp   nz, $e2ea                                   ; $4fe4: $c2 $ea $e2

	halt                                             ; $4fe7: $76
	ldh  [c], a                                      ; $4fe8: $e2
	ld   a, $f2                                      ; $4fe9: $3e $f2
	ld   e, $f2                                      ; $4feb: $1e $f2
	cp   $c7                                         ; $4fed: $fe $c7
	db   $fc                                         ; $4fef: $fc
	add  a                                           ; $4ff0: $87
	rst  $38                                         ; $4ff1: $ff
	adc  [hl]                                        ; $4ff2: $8e
	cp   $8c                                         ; $4ff3: $fe $8c
	db   $fc                                         ; $4ff5: $fc
	inc  e                                           ; $4ff6: $1c
	ld   hl, sp+$1e                                  ; $4ff7: $f8 $1e
	ldh  a, [c]                                      ; $4ff9: $f2
	ccf                                              ; $4ffa: $3f
	pop  af                                          ; $4ffb: $f1
	cpl                                              ; $4ffc: $2f
	ldh  a, [$f8]                                    ; $4ffd: $f0 $f8
	ld   [hl], b                                     ; $4fff: $70
	ld   hl, sp-$18                                  ; $5000: $f8 $e8
	ld   a, h                                        ; $5002: $7c
	ld   [hl], h                                     ; $5003: $74
	adc  $e8                                         ; $5004: $ce $e8
	adc  [hl]                                        ; $5006: $8e
	add  sp, $00                                     ; $5007: $e8 $00
	nop                                              ; $5009: $00
	ret  nz                                          ; $500a: $c0

	ret  nz                                          ; $500b: $c0

	nop                                              ; $500c: $00
	nop                                              ; $500d: $00
	rlca                                             ; $500e: $07
	inc  bc                                          ; $500f: $03
	rra                                              ; $5010: $1f
	rrca                                             ; $5011: $0f
	ccf                                              ; $5012: $3f
	rla                                              ; $5013: $17
	ld   a, [hl-]                                    ; $5014: $3a
	dec  bc                                          ; $5015: $0b
	inc  [hl]                                        ; $5016: $34
	rlca                                             ; $5017: $07
	nop                                              ; $5018: $00
	nop                                              ; $5019: $00
	inc  bc                                          ; $501a: $03
	inc  bc                                          ; $501b: $03
	nop                                              ; $501c: $00
	nop                                              ; $501d: $00
	ld   [$ea1e], a                                  ; $501e: $ea $1e $ea
	sbc  $7e                                         ; $5021: $de $7e
	ld   a, [hl]                                     ; $5023: $7e
	ld   l, $3e                                      ; $5024: $2e $3e
	ld   l, $1e                                      ; $5026: $2e $1e
	ld   l, [hl]                                     ; $5028: $6e
	ld   e, d                                        ; $5029: $5a
	xor  $9a                                         ; $502a: $ee $9a
	ld   l, $1a                                      ; $502c: $2e $1a
	ld   l, [hl]                                     ; $502e: $6e
	ldh  a, [$6e]                                    ; $502f: $f0 $6e
	ldh  a, [$ee]                                    ; $5031: $f0 $ee
	ldh  a, [$ae]                                    ; $5033: $f0 $ae
	or   b                                           ; $5035: $b0
	ld   a, $30                                      ; $5036: $3e $30
	ld   [hl], $38                                   ; $5038: $36 $38
	cpl                                              ; $503a: $2f
	jr   c, jr_094_508c                              ; $503b: $38 $4f

	ld   a, h                                        ; $503d: $7c
	nop                                              ; $503e: $00
	nop                                              ; $503f: $00
	ld   bc, $0300                                   ; $5040: $01 $00 $03
	ld   bc, $0103                                   ; $5043: $01 $03 $01
	inc  bc                                          ; $5046: $03
	ld   bc, $0003                                   ; $5047: $01 $03 $00
	inc  c                                           ; $504a: $0c
	nop                                              ; $504b: $00
	rrca                                             ; $504c: $0f
	ld   b, $00                                      ; $504d: $06 $00
	nop                                              ; $504f: $00
	nop                                              ; $5050: $00
	nop                                              ; $5051: $00
	nop                                              ; $5052: $00
	nop                                              ; $5053: $00
	add  b                                           ; $5054: $80
	nop                                              ; $5055: $00
	add  b                                           ; $5056: $80
	nop                                              ; $5057: $00
	add  b                                           ; $5058: $80
	nop                                              ; $5059: $00
	ld   h, b                                        ; $505a: $60
	nop                                              ; $505b: $00
	ld   h, b                                        ; $505c: $60
	ld   b, b                                        ; $505d: $40
	ld   l, $1e                                      ; $505e: $2e $1e
	ld   l, $1e                                      ; $5060: $2e $1e
	ld   a, [hl-]                                    ; $5062: $3a
	ld   a, [de]                                     ; $5063: $1a
	ld   a, [hl-]                                    ; $5064: $3a
	ld   a, [de]                                     ; $5065: $1a
	ld   a, [hl-]                                    ; $5066: $3a
	ld   a, [de]                                     ; $5067: $1a
	ld   a, d                                        ; $5068: $7a
	ld   a, [hl-]                                    ; $5069: $3a
	ld   l, d                                        ; $506a: $6a
	ld   a, [hl-]                                    ; $506b: $3a
	ld   [$cf7a], a                                  ; $506c: $ea $7a $cf
	cp   $5f                                         ; $506f: $fe $5f
	ld   a, l                                        ; $5071: $7d
	sub  a                                           ; $5072: $97
	db   $f4                                         ; $5073: $f4
	and  a                                           ; $5074: $a7
	db   $e4                                         ; $5075: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5076: $cf
	call z, $9497                                    ; $5077: $cc $97 $94
	daa                                              ; $507a: $27
	inc  h                                           ; $507b: $24
	ld   b, a                                        ; $507c: $47
	ld   b, h                                        ; $507d: $44
	add  b                                           ; $507e: $80
	nop                                              ; $507f: $00
	add  c                                           ; $5080: $81
	nop                                              ; $5081: $00
	ret  nz                                          ; $5082: $c0

	add  b                                           ; $5083: $80
	ldh  [rLCDC], a                                  ; $5084: $e0 $40
	ldh  a, [rAUD4LEN]                               ; $5086: $f0 $20
	db   $fc                                         ; $5088: $fc
	db   $10                                         ; $5089: $10
	rst  $38                                         ; $508a: $ff
	inc  c                                           ; $508b: $0c

jr_094_508c:
	rst  $38                                         ; $508c: $ff
	inc  bc                                          ; $508d: $03
	pop  bc                                          ; $508e: $c1
	nop                                              ; $508f: $00
	jp   $0701                                       ; $5090: $c3 $01 $07


	inc  bc                                          ; $5093: $03
	rrca                                             ; $5094: $0f
	dec  b                                           ; $5095: $05
	rra                                              ; $5096: $1f

jr_094_5097:
	add  hl, bc                                      ; $5097: $09
	ccf                                              ; $5098: $3f
	ld   de, $21fb                                   ; $5099: $11 $fb $21
	di                                               ; $509c: $f3
	pop  bc                                          ; $509d: $c1
	jp   nc, $d2f2                                   ; $509e: $d2 $f2 $d2

	ldh  a, [c]                                      ; $50a1: $f2
	sub  d                                           ; $50a2: $92
	ldh  a, [c]                                      ; $50a3: $f2
	jp   nc, $b2f2                                   ; $50a4: $d2 $f2 $b2

	or   d                                           ; $50a7: $b2
	sub  d                                           ; $50a8: $92
	sub  d                                           ; $50a9: $92
	ld   [bc], a                                     ; $50aa: $02
	ld   [bc], a                                     ; $50ab: $02

jr_094_50ac:
	ld   [bc], a                                     ; $50ac: $02
	ld   [bc], a                                     ; $50ad: $02

jr_094_50ae:
	add  [hl]                                        ; $50ae: $86
	add  h                                           ; $50af: $84
	add  $c4                                         ; $50b0: $c6 $c4
	jr   c, jr_094_50ac                              ; $50b2: $38 $f8

	jr   jr_094_50ae                                 ; $50b4: $18 $f8

	or   b                                           ; $50b6: $b0
	ldh  a, [$60]                                    ; $50b7: $f0 $60
	ldh  [rAUD4LEN], a                               ; $50b9: $e0 $20
	ldh  [rAUD1SWEEP], a                             ; $50bb: $e0 $10
	ldh  a, [rIE]                                    ; $50bd: $f0 $ff
	nop                                              ; $50bf: $00
	ld   a, a                                        ; $50c0: $7f
	nop                                              ; $50c1: $00
	ld   a, a                                        ; $50c2: $7f
	nop                                              ; $50c3: $00
	ld   h, [hl]                                     ; $50c4: $66
	nop                                              ; $50c5: $00
	ld   [hl], b                                     ; $50c6: $70
	nop                                              ; $50c7: $00
	jr   nc, jr_094_50ca                             ; $50c8: $30 $00

jr_094_50ca:
	jr   c, jr_094_50cc                              ; $50ca: $38 $00

jr_094_50cc:
	jr   c, jr_094_50ce                              ; $50cc: $38 $00

jr_094_50ce:
	db   $e3                                         ; $50ce: $e3
	ld   bc, $01c3                                   ; $50cf: $01 $c3 $01
	add  e                                           ; $50d2: $83
	ld   bc, $0103                                   ; $50d3: $01 $03 $01
	inc  bc                                          ; $50d6: $03
	ld   bc, $0003                                   ; $50d7: $01 $03 $00
	inc  bc                                          ; $50da: $03
	nop                                              ; $50db: $00
	inc  bc                                          ; $50dc: $03
	nop                                              ; $50dd: $00
	ld   [bc], a                                     ; $50de: $02
	ld   [bc], a                                     ; $50df: $02
	ld   [bc], a                                     ; $50e0: $02
	ld   [bc], a                                     ; $50e1: $02
	ld   a, d                                        ; $50e2: $7a
	ld   a, d                                        ; $50e3: $7a
	adc  [hl]                                        ; $50e4: $8e
	cp   $06                                         ; $50e5: $fe $06
	cp   $c2                                         ; $50e7: $fe $c2
	cp   $f2                                         ; $50e9: $fe $f2
	ld   a, $fe                                      ; $50eb: $3e $fe
	ld   c, $52                                      ; $50ed: $0e $52
	ld   e, [hl]                                     ; $50ef: $5e
	ld   d, h                                        ; $50f0: $54
	ld   e, h                                        ; $50f1: $5c
	sub  a                                           ; $50f2: $97
	sbc  a                                           ; $50f3: $9f
	db   $fc                                         ; $50f4: $fc
	db   $fc                                         ; $50f5: $fc
	call c, $9c18                                    ; $50f6: $dc $18 $9c
	jr   jr_094_5097                                 ; $50f9: $18 $9c

	db   $10                                         ; $50fb: $10
	ld   hl, sp-$10                                  ; $50fc: $f8 $f0
	nop                                              ; $50fe: $00
	nop                                              ; $50ff: $00
	nop                                              ; $5100: $00
	nop                                              ; $5101: $00
	cp   $fe                                         ; $5102: $fe $fe
	ld   bc, $0101                                   ; $5104: $01 $01 $01
	nop                                              ; $5107: $00
	nop                                              ; $5108: $00
	nop                                              ; $5109: $00
	nop                                              ; $510a: $00
	nop                                              ; $510b: $00
	rrca                                             ; $510c: $0f
	rrca                                             ; $510d: $0f
	ld   hl, sp+$18                                  ; $510e: $f8 $18
	db   $fc                                         ; $5110: $fc
	db   $f4                                         ; $5111: $f4
	ld   a, [hl]                                     ; $5112: $7e
	ld   a, b                                        ; $5113: $78
	adc  $e8                                         ; $5114: $ce $e8
	add  b                                           ; $5116: $80
	ldh  [rP1], a                                    ; $5117: $e0 $00
	nop                                              ; $5119: $00

jr_094_511a:
	ret  nz                                          ; $511a: $c0

	ret  nz                                          ; $511b: $c0

	nop                                              ; $511c: $00
	nop                                              ; $511d: $00
	rra                                              ; $511e: $1f
	db   $10                                         ; $511f: $10
	ccf                                              ; $5120: $3f
	daa                                              ; $5121: $27
	ccf                                              ; $5122: $3f
	rrca                                             ; $5123: $0f
	ld   a, [hl-]                                    ; $5124: $3a
	dec  bc                                          ; $5125: $0b
	inc  b                                           ; $5126: $04
	rlca                                             ; $5127: $07
	nop                                              ; $5128: $00
	nop                                              ; $5129: $00
	inc  bc                                          ; $512a: $03
	inc  bc                                          ; $512b: $03
	nop                                              ; $512c: $00
	nop                                              ; $512d: $00
	ld   [$ea1e], a                                  ; $512e: $ea $1e $ea
	sbc  $6e                                         ; $5131: $de $6e
	ld   a, [hl]                                     ; $5133: $7e
	ld   a, $3e                                      ; $5134: $3e $3e
	ld   l, $1e                                      ; $5136: $2e $1e
	ld   l, [hl]                                     ; $5138: $6e
	ld   e, d                                        ; $5139: $5a
	xor  $9a                                         ; $513a: $ee $9a

jr_094_513c:
	ld   l, $1a                                      ; $513c: $2e $1a
	adc  b                                           ; $513e: $88
	reti                                             ; $513f: $d9


	jr   jr_094_511a                                 ; $5140: $18 $d8

	db   $10                                         ; $5142: $10
	ldh  a, [c]                                      ; $5143: $f2
	jr   nc, jr_094_513c                             ; $5144: $30 $f6

	ld   hl, $61fd                                   ; $5146: $21 $fd $61
	db   $fd                                         ; $5149: $fd
	ld   b, e                                        ; $514a: $43
	rst  $38                                         ; $514b: $ff
	ld   b, e                                        ; $514c: $43
	cp   $52                                         ; $514d: $fe $52
	ld   e, [hl]                                     ; $514f: $5e
	ld   d, h                                        ; $5150: $54
	ld   e, h                                        ; $5151: $5c
	sub  a                                           ; $5152: $97
	sbc  a                                           ; $5153: $9f
	db   $fc                                         ; $5154: $fc
	db   $fc                                         ; $5155: $fc
	call c, $9c18                                    ; $5156: $dc $18 $9c
	jr   @-$62                                       ; $5159: $18 $9c

	db   $10                                         ; $515b: $10
	ld   hl, sp-$30                                  ; $515c: $f8 $d0
	ld   hl, sp+$30                                  ; $515e: $f8 $30
	ld   hl, sp-$10                                  ; $5160: $f8 $f0
	ld   a, h                                        ; $5162: $7c
	ld   a, b                                        ; $5163: $78
	adc  $ec                                         ; $5164: $ce $ec
	adc  [hl]                                        ; $5166: $8e
	add  sp, $00                                     ; $5167: $e8 $00
	nop                                              ; $5169: $00
	ret  nz                                          ; $516a: $c0

	ret  nz                                          ; $516b: $c0

	nop                                              ; $516c: $00
	nop                                              ; $516d: $00
	rlca                                             ; $516e: $07
	inc  bc                                          ; $516f: $03
	rra                                              ; $5170: $1f
	rlca                                             ; $5171: $07
	ccf                                              ; $5172: $3f
	rrca                                             ; $5173: $0f
	ld   a, [hl-]                                    ; $5174: $3a
	dec  bc                                          ; $5175: $0b
	inc  [hl]                                        ; $5176: $34
	rlca                                             ; $5177: $07
	nop                                              ; $5178: $00
	nop                                              ; $5179: $00
	inc  bc                                          ; $517a: $03
	inc  bc                                          ; $517b: $03
	nop                                              ; $517c: $00
	nop                                              ; $517d: $00
	ld   [$ea1e], a                                  ; $517e: $ea $1e $ea
	sbc  $7e                                         ; $5181: $de $7e
	ld   a, [hl]                                     ; $5183: $7e
	ld   l, $3e                                      ; $5184: $2e $3e
	ld   l, $1e                                      ; $5186: $2e $1e
	ld   l, [hl]                                     ; $5188: $6e
	ld   e, d                                        ; $5189: $5a
	xor  $9a                                         ; $518a: $ee $9a
	ld   l, $1a                                      ; $518c: $2e $1a
	nop                                              ; $518e: $00
	nop                                              ; $518f: $00
	ld   bc, $0300                                   ; $5190: $01 $00 $03
	ld   bc, $0103                                   ; $5193: $01 $03 $01
	inc  bc                                          ; $5196: $03
	ld   bc, $0003                                   ; $5197: $01 $03 $00
	nop                                              ; $519a: $00
	nop                                              ; $519b: $00
	rrca                                             ; $519c: $0f
	ld   b, $00                                      ; $519d: $06 $00
	nop                                              ; $519f: $00
	nop                                              ; $51a0: $00
	nop                                              ; $51a1: $00
	nop                                              ; $51a2: $00
	nop                                              ; $51a3: $00
	add  b                                           ; $51a4: $80
	nop                                              ; $51a5: $00
	add  b                                           ; $51a6: $80
	nop                                              ; $51a7: $00
	add  b                                           ; $51a8: $80
	nop                                              ; $51a9: $00
	nop                                              ; $51aa: $00
	nop                                              ; $51ab: $00
	ld   h, b                                        ; $51ac: $60
	ld   b, b                                        ; $51ad: $40
	adc  h                                           ; $51ae: $8c
	nop                                              ; $51af: $00
	add  c                                           ; $51b0: $81
	nop                                              ; $51b1: $00
	ret  nz                                          ; $51b2: $c0

	add  b                                           ; $51b3: $80
	ldh  [rLCDC], a                                  ; $51b4: $e0 $40
	ldh  a, [rAUD4LEN]                               ; $51b6: $f0 $20
	db   $fc                                         ; $51b8: $fc
	db   $10                                         ; $51b9: $10
	rst  $38                                         ; $51ba: $ff
	inc  c                                           ; $51bb: $0c
	rst  $38                                         ; $51bc: $ff
	inc  bc                                          ; $51bd: $03
	ld   d, d                                        ; $51be: $52
	ld   e, [hl]                                     ; $51bf: $5e
	ld   d, h                                        ; $51c0: $54
	ld   e, h                                        ; $51c1: $5c
	sub  a                                           ; $51c2: $97
	sbc  a                                           ; $51c3: $9f
	db   $fc                                         ; $51c4: $fc
	db   $fc                                         ; $51c5: $fc
	call c, $9c18                                    ; $51c6: $dc $18 $9c
	jr   @-$02                                       ; $51c9: $18 $fc

	ldh  a, [$f8]                                    ; $51cb: $f0 $f8
	jr   jr_094_51cf                                 ; $51cd: $18 $00

jr_094_51cf:
	nop                                              ; $51cf: $00
	nop                                              ; $51d0: $00
	nop                                              ; $51d1: $00
	cp   $fe                                         ; $51d2: $fe $fe
	ld   bc, $0101                                   ; $51d4: $01 $01 $01

jr_094_51d7:
	nop                                              ; $51d7: $00
	nop                                              ; $51d8: $00
	nop                                              ; $51d9: $00
	inc  bc                                          ; $51da: $03
	inc  bc                                          ; $51db: $03
	rrca                                             ; $51dc: $0f
	inc  c                                           ; $51dd: $0c
	adc  [hl]                                        ; $51de: $8e
	cp   $86                                         ; $51df: $fe $86
	or   $42                                         ; $51e1: $f6 $42
	ld   d, d                                        ; $51e3: $52
	jp   nz, $e2ea                                   ; $51e4: $c2 $ea $e2

	halt                                             ; $51e7: $76
	ldh  [c], a                                      ; $51e8: $e2
	ld   a, $f2                                      ; $51e9: $3e $f2
	sbc  $f2                                         ; $51eb: $de $f2
	ld   a, $c7                                      ; $51ed: $3e $c7
	db   $fc                                         ; $51ef: $fc
	add  a                                           ; $51f0: $87
	rst  $38                                         ; $51f1: $ff
	adc  [hl]                                        ; $51f2: $8e
	cp   $8c                                         ; $51f3: $fe $8c
	db   $fc                                         ; $51f5: $fc
	inc  e                                           ; $51f6: $1c
	ld   hl, sp+$1c                                  ; $51f7: $f8 $1c
	ldh  a, [$3e]                                    ; $51f9: $f0 $3e
	ldh  a, [c]                                      ; $51fb: $f2
	cpl                                              ; $51fc: $2f
	di                                               ; $51fd: $f3
	db   $fc                                         ; $51fe: $fc
	inc  d                                           ; $51ff: $14
	ld   hl, sp-$20                                  ; $5200: $f8 $e0
	inc  a                                           ; $5202: $3c
	jr   nc, jr_094_5253                             ; $5203: $30 $4e

	ld   c, b                                        ; $5205: $48
	adc  [hl]                                        ; $5206: $8e
	ret  z                                           ; $5207: $c8

	add  b                                           ; $5208: $80
	ret  nz                                          ; $5209: $c0

	nop                                              ; $520a: $00
	nop                                              ; $520b: $00
	ret  nz                                          ; $520c: $c0

	ret  nz                                          ; $520d: $c0

	rra                                              ; $520e: $1f
	db   $10                                         ; $520f: $10
	rra                                              ; $5210: $1f
	rlca                                             ; $5211: $07
	inc  a                                           ; $5212: $3c
	inc  c                                           ; $5213: $0c
	ld   a, [hl-]                                    ; $5214: $3a
	ld   a, [bc]                                     ; $5215: $0a
	inc  [hl]                                        ; $5216: $34
	ld   b, $04                                      ; $5217: $06 $04
	ld   b, $00                                      ; $5219: $06 $00
	nop                                              ; $521b: $00
	inc  bc                                          ; $521c: $03
	inc  bc                                          ; $521d: $03
	ld   [$ea1e], a                                  ; $521e: $ea $1e $ea
	sbc  $7e                                         ; $5221: $de $7e
	ld   a, [hl]                                     ; $5223: $7e
	ld   l, $3e                                      ; $5224: $2e $3e
	ld   l, $1e                                      ; $5226: $2e $1e
	ld   l, $1a                                      ; $5228: $2e $1a
	ld   l, [hl]                                     ; $522a: $6e
	ld   e, d                                        ; $522b: $5a
	xor  $da                                         ; $522c: $ee $da
	ld   d, d                                        ; $522e: $52
	ld   e, [hl]                                     ; $522f: $5e
	ld   d, h                                        ; $5230: $54
	ld   e, h                                        ; $5231: $5c
	sub  a                                           ; $5232: $97
	sbc  a                                           ; $5233: $9f
	db   $fc                                         ; $5234: $fc
	db   $fc                                         ; $5235: $fc
	call c, $9c18                                    ; $5236: $dc $18 $9c
	jr   jr_094_51d7                                 ; $5239: $18 $9c

	inc  e                                           ; $523b: $1c
	db   $fc                                         ; $523c: $fc
	ldh  a, [rP1]                                    ; $523d: $f0 $00
	nop                                              ; $523f: $00
	nop                                              ; $5240: $00
	nop                                              ; $5241: $00
	cp   $fe                                         ; $5242: $fe $fe
	ld   bc, $0101                                   ; $5244: $01 $01 $01
	nop                                              ; $5247: $00
	nop                                              ; $5248: $00
	nop                                              ; $5249: $00
	inc  e                                           ; $524a: $1c
	inc  e                                           ; $524b: $1c
	rrca                                             ; $524c: $0f
	inc  bc                                          ; $524d: $03
	rst  ToBoot                                         ; $524e: $c7
	cp   $87                                         ; $524f: $fe $87
	rst  $38                                         ; $5251: $ff
	adc  [hl]                                        ; $5252: $8e

jr_094_5253:
	cp   $8c                                         ; $5253: $fe $8c
	db   $fc                                         ; $5255: $fc
	inc  e                                           ; $5256: $1c
	ld   hl, sp+$1e                                  ; $5257: $f8 $1e
	ldh  a, [c]                                      ; $5259: $f2
	ccf                                              ; $525a: $3f
	di                                               ; $525b: $f3
	cpl                                              ; $525c: $2f
	ldh  a, [$f8]                                    ; $525d: $f0 $f8
	db   $10                                         ; $525f: $10
	cp   $f0                                         ; $5260: $fe $f0
	ld   a, [hl]                                     ; $5262: $7e
	ld   a, b                                        ; $5263: $78
	ret  z                                           ; $5264: $c8

	add  sp, -$80                                    ; $5265: $e8 $80
	ldh  [rP1], a                                    ; $5267: $e0 $00
	nop                                              ; $5269: $00
	ret  nz                                          ; $526a: $c0

	ret  nz                                          ; $526b: $c0

	nop                                              ; $526c: $00
	nop                                              ; $526d: $00
	rra                                              ; $526e: $1f
	nop                                              ; $526f: $00
	ccf                                              ; $5270: $3f
	rlca                                             ; $5271: $07
	dec  sp                                          ; $5272: $3b
	dec  bc                                          ; $5273: $0b
	ld   c, $0f                                      ; $5274: $0e $0f
	inc  b                                           ; $5276: $04

jr_094_5277:
	rlca                                             ; $5277: $07
	nop                                              ; $5278: $00
	nop                                              ; $5279: $00
	inc  bc                                          ; $527a: $03
	inc  bc                                          ; $527b: $03
	nop                                              ; $527c: $00
	nop                                              ; $527d: $00
	ld   [$ea1e], a                                  ; $527e: $ea $1e $ea
	sbc  $6e                                         ; $5281: $de $6e
	ld   a, [hl]                                     ; $5283: $7e
	ld   a, $3e                                      ; $5284: $3e $3e
	ld   l, $1e                                      ; $5286: $2e $1e
	ld   l, [hl]                                     ; $5288: $6e
	ld   e, d                                        ; $5289: $5a
	xor  $da                                         ; $528a: $ee $da
	ld   l, $1a                                      ; $528c: $2e $1a
	ld   l, a                                        ; $528e: $6f
	ldh  a, [$6e]                                    ; $528f: $f0 $6e
	ldh  a, [$ee]                                    ; $5291: $f0 $ee
	ldh  a, [$ae]                                    ; $5293: $f0 $ae
	or   b                                           ; $5295: $b0
	ld   a, $30                                      ; $5296: $3e $30
	ld   [hl], $38                                   ; $5298: $36 $38
	cpl                                              ; $529a: $2f
	jr   c, jr_094_52ec                              ; $529b: $38 $4f

	ld   a, h                                        ; $529d: $7c
	ld   d, b                                        ; $529e: $50
	nop                                              ; $529f: $00
	xor  c                                           ; $52a0: $a9
	nop                                              ; $52a1: $00
	inc  bc                                          ; $52a2: $03
	ld   bc, $0103                                   ; $52a3: $01 $03 $01
	inc  bc                                          ; $52a6: $03
	ld   bc, $0003                                   ; $52a7: $01 $03 $00
	inc  c                                           ; $52aa: $0c
	nop                                              ; $52ab: $00
	rrca                                             ; $52ac: $0f
	ld   b, $02                                      ; $52ad: $06 $02
	nop                                              ; $52af: $00
	ld   bc, $0000                                   ; $52b0: $01 $00 $00
	nop                                              ; $52b3: $00
	add  b                                           ; $52b4: $80
	nop                                              ; $52b5: $00
	add  b                                           ; $52b6: $80
	nop                                              ; $52b7: $00
	add  b                                           ; $52b8: $80
	nop                                              ; $52b9: $00
	ld   h, b                                        ; $52ba: $60
	nop                                              ; $52bb: $00
	ld   h, b                                        ; $52bc: $60
	ld   b, b                                        ; $52bd: $40
	xor  [hl]                                        ; $52be: $ae
	ld   e, $6e                                      ; $52bf: $1e $6e
	ld   e, $3a                                      ; $52c1: $1e $3a
	ld   a, [de]                                     ; $52c3: $1a
	ld   a, [hl-]                                    ; $52c4: $3a
	ld   a, [de]                                     ; $52c5: $1a
	ld   a, [hl-]                                    ; $52c6: $3a

jr_094_52c7:
	ld   a, [de]                                     ; $52c7: $1a
	ld   a, d                                        ; $52c8: $7a
	ld   a, [hl-]                                    ; $52c9: $3a
	ld   l, d                                        ; $52ca: $6a
	ld   a, [hl-]                                    ; $52cb: $3a
	ld   [$527a], a                                  ; $52cc: $ea $7a $52
	ld   e, [hl]                                     ; $52cf: $5e
	ld   d, h                                        ; $52d0: $54
	ld   e, h                                        ; $52d1: $5c
	sub  a                                           ; $52d2: $97
	sbc  a                                           ; $52d3: $9f
	db   $fc                                         ; $52d4: $fc
	db   $fc                                         ; $52d5: $fc
	call c, $9c18                                    ; $52d6: $dc $18 $9c
	jr   jr_094_5277                                 ; $52d9: $18 $9c

	db   $10                                         ; $52db: $10
	ret  c                                           ; $52dc: $d8

	sub  b                                           ; $52dd: $90
	rst  ToBoot                                         ; $52de: $c7
	db   $fc                                         ; $52df: $fc
	add  a                                           ; $52e0: $87
	db   $fd                                         ; $52e1: $fd
	adc  [hl]                                        ; $52e2: $8e
	cp   $8c                                         ; $52e3: $fe $8c
	db   $fc                                         ; $52e5: $fc
	inc  e                                           ; $52e6: $1c
	ld   hl, sp+$1e                                  ; $52e7: $f8 $1e
	ldh  a, [c]                                      ; $52e9: $f2

jr_094_52ea:
	ccf                                              ; $52ea: $3f
	di                                               ; $52eb: $f3

jr_094_52ec:
	cpl                                              ; $52ec: $2f
	ldh  a, [$fc]                                    ; $52ed: $f0 $fc
	ld   a, h                                        ; $52ef: $7c
	cp   $e0                                         ; $52f0: $fe $e0
	ld   a, h                                        ; $52f2: $7c
	ld   [hl], b                                     ; $52f3: $70
	ret  z                                           ; $52f4: $c8

	add  sp, -$80                                    ; $52f5: $e8 $80
	ldh  [rP1], a                                    ; $52f7: $e0 $00
	nop                                              ; $52f9: $00
	ret  nz                                          ; $52fa: $c0

	ret  nz                                          ; $52fb: $c0

	nop                                              ; $52fc: $00
	nop                                              ; $52fd: $00
	rra                                              ; $52fe: $1f
	rra                                              ; $52ff: $1f
	rra                                              ; $5300: $1f
	rlca                                             ; $5301: $07
	rra                                              ; $5302: $1f
	rrca                                             ; $5303: $0f
	ld   a, [bc]                                     ; $5304: $0a
	dec  bc                                          ; $5305: $0b
	inc  b                                           ; $5306: $04
	rlca                                             ; $5307: $07
	nop                                              ; $5308: $00
	nop                                              ; $5309: $00
	inc  bc                                          ; $530a: $03
	inc  bc                                          ; $530b: $03

jr_094_530c:
	nop                                              ; $530c: $00
	nop                                              ; $530d: $00
	adc  b                                           ; $530e: $88
	reti                                             ; $530f: $d9


	jr   jr_094_52ea                                 ; $5310: $18 $d8

	db   $10                                         ; $5312: $10
	ldh  a, [c]                                      ; $5313: $f2
	jr   nc, jr_094_530c                             ; $5314: $30 $f6

	ld   hl, $61fd                                   ; $5316: $21 $fd $61
	db   $fd                                         ; $5319: $fd
	ld   b, e                                        ; $531a: $43
	cp   $43                                         ; $531b: $fe $43
	cp   $52                                         ; $531d: $fe $52
	ld   e, [hl]                                     ; $531f: $5e
	ld   d, h                                        ; $5320: $54
	ld   e, h                                        ; $5321: $5c
	sub  a                                           ; $5322: $97
	sbc  a                                           ; $5323: $9f
	db   $fc                                         ; $5324: $fc
	db   $fc                                         ; $5325: $fc
	call c, $9c18                                    ; $5326: $dc $18 $9c
	jr   jr_094_52c7                                 ; $5329: $18 $9c

	db   $10                                         ; $532b: $10
	sbc  b                                           ; $532c: $98
	db   $10                                         ; $532d: $10
	adc  [hl]                                        ; $532e: $8e
	cp   $86                                         ; $532f: $fe $86
	or   $42                                         ; $5331: $f6 $42
	ld   d, d                                        ; $5333: $52
	jp   nz, $e2ea                                   ; $5334: $c2 $ea $e2

	halt                                             ; $5337: $76
	ldh  [c], a                                      ; $5338: $e2
	ld   a, $f2                                      ; $5339: $3e $f2
	ld   e, $f2                                      ; $533b: $1e $f2
	ld   e, $c7                                      ; $533d: $1e $c7
	rst  $38                                         ; $533f: $ff
	add  a                                           ; $5340: $87
	db   $fc                                         ; $5341: $fc
	adc  a                                           ; $5342: $8f
	db   $fd                                         ; $5343: $fd
	adc  a                                           ; $5344: $8f
	cp   $1c                                         ; $5345: $fe $1c
	ld   a, [$f11e]                                  ; $5347: $fa $1e $f1
	ccf                                              ; $534a: $3f
	ldh  a, [$2f]                                    ; $534b: $f0 $2f
	ldh  a, [$f8]                                    ; $534d: $f0 $f8
	ret  nc                                          ; $534f: $d0

	db   $fc                                         ; $5350: $fc
	inc  a                                           ; $5351: $3c
	cp   $f0                                         ; $5352: $fe $f0
	inc  e                                           ; $5354: $1c
	ld   e, b                                        ; $5355: $58
	ld   c, b                                        ; $5356: $48
	ld   a, b                                        ; $5357: $78
	ldh  [$f0], a                                    ; $5358: $e0 $f0
	nop                                              ; $535a: $00
	nop                                              ; $535b: $00
	nop                                              ; $535c: $00
	nop                                              ; $535d: $00
	inc  bc                                          ; $535e: $03
	ld   bc, $1e1f                                   ; $535f: $01 $1f $1e
	rra                                              ; $5362: $1f
	rlca                                             ; $5363: $07
	jr   @+$0b                                       ; $5364: $18 $09

	ld   bc, $0101                                   ; $5366: $01 $01 $01
	rlca                                             ; $5369: $07
	nop                                              ; $536a: $00
	nop                                              ; $536b: $00
	nop                                              ; $536c: $00
	nop                                              ; $536d: $00
	ld   [$eafe], a                                  ; $536e: $ea $fe $ea
	ld   e, $fe                                      ; $5371: $1e $fe
	sbc  $2e                                         ; $5373: $de $2e
	ld   a, [hl]                                     ; $5375: $7e
	ld   c, [hl]                                     ; $5376: $4e
	cp   $ee                                         ; $5377: $fe $ee
	jp   c, $1a6e                                    ; $5379: $da $6e $1a

	ld   l, $1a                                      ; $537c: $2e $1a
	nop                                              ; $537e: $00
	nop                                              ; $537f: $00
	nop                                              ; $5380: $00
	nop                                              ; $5381: $00
	cp   $fe                                         ; $5382: $fe $fe
	ld   bc, $0101                                   ; $5384: $01 $01 $01
	nop                                              ; $5387: $00
	nop                                              ; $5388: $00
	nop                                              ; $5389: $00
	nop                                              ; $538a: $00
	nop                                              ; $538b: $00
	rlca                                             ; $538c: $07
	rlca                                             ; $538d: $07
	adc  [hl]                                        ; $538e: $8e
	cp   $86                                         ; $538f: $fe $86
	or   $42                                         ; $5391: $f6 $42
	ld   d, d                                        ; $5393: $52
	jp   nz, $e2ea                                   ; $5394: $c2 $ea $e2

	halt                                             ; $5397: $76
	ldh  [c], a                                      ; $5398: $e2
	ld   a, $f2                                      ; $5399: $3e $f2
	ld   e, $f2                                      ; $539b: $1e $f2
	sbc  $c7                                         ; $539d: $de $c7
	db   $fc                                         ; $539f: $fc
	add  a                                           ; $53a0: $87
	db   $fc                                         ; $53a1: $fc
	adc  [hl]                                        ; $53a2: $8e
	db   $fc                                         ; $53a3: $fc
	adc  a                                           ; $53a4: $8f
	ei                                               ; $53a5: $fb
	rra                                              ; $53a6: $1f
	cp   $1e                                         ; $53a7: $fe $1e
	ldh  a, [$3e]                                    ; $53a9: $f0 $3e
	ldh  a, [$2e]                                    ; $53ab: $f0 $2e
	ldh  a, [$f8]                                    ; $53ad: $f0 $f8
	ld   [hl], b                                     ; $53af: $70
	ld   a, b                                        ; $53b0: $78
	ld   [$040c], sp                                 ; $53b1: $08 $0c $04
	and  $e0                                         ; $53b4: $e6 $e0
	ld   e, $18                                      ; $53b6: $1e $18
	nop                                              ; $53b8: $00
	nop                                              ; $53b9: $00
	nop                                              ; $53ba: $00
	nop                                              ; $53bb: $00
	nop                                              ; $53bc: $00
	nop                                              ; $53bd: $00
	rrca                                             ; $53be: $0f
	ld   [$171f], sp                                 ; $53bf: $08 $1f $17
	ccf                                              ; $53c2: $3f
	rrca                                             ; $53c3: $0f
	ld   a, [hl-]                                    ; $53c4: $3a
	dec  bc                                          ; $53c5: $0b
	dec  [hl]                                        ; $53c6: $35
	ld   b, $06                                      ; $53c7: $06 $06
	rlca                                             ; $53c9: $07
	ld   bc, $0000                                   ; $53ca: $01 $00 $00
	nop                                              ; $53cd: $00
	ld   [$ea3e], a                                  ; $53ce: $ea $3e $ea
	sbc  $7e                                         ; $53d1: $de $7e
	ld   a, [hl]                                     ; $53d3: $7e
	ld   l, $3e                                      ; $53d4: $2e $3e
	ld   l, $1e                                      ; $53d6: $2e $1e
	xor  [hl]                                        ; $53d8: $ae
	ld   a, [de]                                     ; $53d9: $1a
	ld   l, [hl]                                     ; $53da: $6e
	jp   c, $1a2e                                    ; $53db: $da $2e $1a

	nop                                              ; $53de: $00
	nop                                              ; $53df: $00
	ld   bc, $0300                                   ; $53e0: $01 $00 $03
	ld   bc, $0103                                   ; $53e3: $01 $03 $01
	inc  bc                                          ; $53e6: $03
	ld   bc, $0003                                   ; $53e7: $01 $03 $00
	jr   @+$12                                       ; $53ea: $18 $10

	rlca                                             ; $53ec: $07
	ld   c, $6f                                      ; $53ed: $0e $6f
	ldh  a, [$6e]                                    ; $53ef: $f0 $6e
	ldh  a, [$ee]                                    ; $53f1: $f0 $ee
	ldh  a, [$ae]                                    ; $53f3: $f0 $ae
	or   b                                           ; $53f5: $b0
	ld   a, $30                                      ; $53f6: $3e $30
	ld   [hl], $38                                   ; $53f8: $36 $38
	cpl                                              ; $53fa: $2f
	jr   c, jr_094_544c                              ; $53fb: $38 $4f

	ld   a, h                                        ; $53fd: $7c
	ret  nz                                          ; $53fe: $c0

	nop                                              ; $53ff: $00
	ld   bc, $0300                                   ; $5400: $01 $00 $03
	ld   bc, $0103                                   ; $5403: $01 $03 $01
	inc  bc                                          ; $5406: $03
	ld   bc, $0003                                   ; $5407: $01 $03 $00
	jr   jr_094_5418                                 ; $540a: $18 $0c

	ld   sp, $0113                                   ; $540c: $31 $13 $01
	nop                                              ; $540f: $00
	nop                                              ; $5410: $00
	nop                                              ; $5411: $00

jr_094_5412:
	nop                                              ; $5412: $00
	nop                                              ; $5413: $00
	add  b                                           ; $5414: $80
	nop                                              ; $5415: $00
	add  b                                           ; $5416: $80
	nop                                              ; $5417: $00

jr_094_5418:
	add  b                                           ; $5418: $80
	nop                                              ; $5419: $00
	jr   z, jr_094_544c                              ; $541a: $28 $30

	ld   hl, sp-$38                                  ; $541c: $f8 $c8
	xor  $1e                                         ; $541e: $ee $1e
	ld   l, [hl]                                     ; $5420: $6e
	ld   e, $3a                                      ; $5421: $1e $3a
	ld   a, [de]                                     ; $5423: $1a
	ld   a, [hl-]                                    ; $5424: $3a
	ld   a, [de]                                     ; $5425: $1a
	ld   a, [hl-]                                    ; $5426: $3a
	ld   a, [de]                                     ; $5427: $1a
	ld   a, d                                        ; $5428: $7a
	ld   a, [hl-]                                    ; $5429: $3a
	ld   l, d                                        ; $542a: $6a
	ld   a, [hl-]                                    ; $542b: $3a
	ld   [$a07a], a                                  ; $542c: $ea $7a $a0
	jr   nz, @-$6e                                   ; $542f: $20 $90

	jr   nz, jr_094_5412                             ; $5431: $20 $df

	sbc  a                                           ; $5433: $9f
	ldh  [rLCDC], a                                  ; $5434: $e0 $40
	ldh  a, [rAUD4LEN]                               ; $5436: $f0 $20
	db   $fc                                         ; $5438: $fc
	db   $10                                         ; $5439: $10
	rst  $38                                         ; $543a: $ff
	inc  c                                           ; $543b: $0c
	rst  $38                                         ; $543c: $ff
	inc  bc                                          ; $543d: $03
	ld   a, c                                        ; $543e: $79
	ld   [$0913], sp                                 ; $543f: $08 $13 $09
	rst  $20                                         ; $5442: $e7
	di                                               ; $5443: $f3
	rrca                                             ; $5444: $0f
	dec  b                                           ; $5445: $05
	rra                                              ; $5446: $1f
	add  hl, bc                                      ; $5447: $09
	ccf                                              ; $5448: $3f
	ld   de, $21fb                                   ; $5449: $11 $fb $21

jr_094_544c:
	di                                               ; $544c: $f3
	pop  bc                                          ; $544d: $c1
	jp   nc, $d2f2                                   ; $544e: $d2 $f2 $d2

	ldh  a, [c]                                      ; $5451: $f2
	sub  d                                           ; $5452: $92
	ldh  a, [c]                                      ; $5453: $f2
	jp   nc, $b2f2                                   ; $5454: $d2 $f2 $b2

	or   d                                           ; $5457: $b2
	sub  d                                           ; $5458: $92
	sub  d                                           ; $5459: $92
	ld   [bc], a                                     ; $545a: $02
	ld   [bc], a                                     ; $545b: $02
	ld   [bc], a                                     ; $545c: $02
	ld   [bc], a                                     ; $545d: $02

Jump_094_545e:
	ld   l, [hl]                                     ; $545e: $6e
	ldh  a, [$6e]                                    ; $545f: $f0 $6e
	ldh  a, [$ee]                                    ; $5461: $f0 $ee
	ldh  a, [$ae]                                    ; $5463: $f0 $ae
	or   b                                           ; $5465: $b0
	ld   a, $30                                      ; $5466: $3e $30
	ld   [hl], $38                                   ; $5468: $36 $38
	ld   l, a                                        ; $546a: $6f
	ld   a, b                                        ; $546b: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $546c: $cf
	db   $fc                                         ; $546d: $fc
	adc  $7f                                         ; $546e: $ce $7f
	db   $dd                                         ; $5470: $dd
	ld   a, l                                        ; $5471: $7d
	sbc  h                                           ; $5472: $9c
	db   $fc                                         ; $5473: $fc
	cp   [hl]                                        ; $5474: $be
	xor  $ff                                         ; $5475: $ee $ff
	ret                                              ; $5477: $c9


	ld   a, [hl]                                     ; $5478: $7e
	ld   d, b                                        ; $5479: $50
	cp   $90                                         ; $547a: $fe $90
	cp   $88                                         ; $547c: $fe $88
	add  b                                           ; $547e: $80
	nop                                              ; $547f: $00
	add  c                                           ; $5480: $81
	nop                                              ; $5481: $00
	ret  nz                                          ; $5482: $c0

	add  b                                           ; $5483: $80
	ldh  [rLCDC], a                                  ; $5484: $e0 $40
	ldh  a, [hScriptOpcodeParams]                                    ; $5486: $f0 $a0
	ld   a, h                                        ; $5488: $7c
	ld   [hl], b                                     ; $5489: $70
	rra                                              ; $548a: $1f
	inc  e                                           ; $548b: $1c
	inc  bc                                          ; $548c: $03
	inc  bc                                          ; $548d: $03
	pop  bc                                          ; $548e: $c1
	nop                                              ; $548f: $00
	jp   $0701                                       ; $5490: $c3 $01 $07


	inc  bc                                          ; $5493: $03
	rrca                                             ; $5494: $0f
	dec  b                                           ; $5495: $05
	rra                                              ; $5496: $1f
	add  hl, bc                                      ; $5497: $09
	ld   a, $12                                      ; $5498: $3e $12
	db   $fc                                         ; $549a: $fc
	inc  l                                           ; $549b: $2c
	pop  af                                          ; $549c: $f1
	pop  af                                          ; $549d: $f1
	jp   nc, $d2f2                                   ; $549e: $d2 $f2 $d2

	ldh  a, [c]                                      ; $54a1: $f2
	sub  d                                           ; $54a2: $92
	ldh  a, [c]                                      ; $54a3: $f2
	jp   nc, $b2f2                                   ; $54a4: $d2 $f2 $b2

	or   d                                           ; $54a7: $b2
	sub  d                                           ; $54a8: $92
	sub  d                                           ; $54a9: $92
	add  d                                           ; $54aa: $82
	add  d                                           ; $54ab: $82
	add  d                                           ; $54ac: $82
	add  d                                           ; $54ad: $82
	rst  $38                                         ; $54ae: $ff
	adc  c                                           ; $54af: $89
	rst  $38                                         ; $54b0: $ff
	sbc  b                                           ; $54b1: $98
	cp   $f0                                         ; $54b2: $fe $f0
	sbc  h                                           ; $54b4: $9c
	sbc  b                                           ; $54b5: $98
	ld   l, a                                        ; $54b6: $6f
	adc  $37                                         ; $54b7: $ce $37
	ld   h, l                                        ; $54b9: $65
	dec  de                                          ; $54ba: $1b
	or   d                                           ; $54bb: $b2
	dec  c                                           ; $54bc: $0d
	reti                                             ; $54bd: $d9


	inc  c                                           ; $54be: $0c
	inc  c                                           ; $54bf: $0c
	jp   $f1c3                                       ; $54c0: $c3 $c3 $f1


	jr   nc, jr_094_5501                             ; $54c3: $30 $3c

	inc  c                                           ; $54c5: $0c
	nop                                              ; $54c6: $00
	nop                                              ; $54c7: $00
	ldh  [$80], a                                    ; $54c8: $e0 $80
	rst  $38                                         ; $54ca: $ff
	ld   a, h                                        ; $54cb: $7c
	rst  $38                                         ; $54cc: $ff
	sbc  e                                           ; $54cd: $9b
	nop                                              ; $54ce: $00
	nop                                              ; $54cf: $00
	ld   hl, sp-$08                                  ; $54d0: $f8 $f8
	pop  af                                          ; $54d2: $f1
	nop                                              ; $54d3: $00
	ld   bc, $0300                                   ; $54d4: $01 $00 $03

jr_094_54d7:
	nop                                              ; $54d7: $00
	rrca                                             ; $54d8: $0f
	ld   bc, $07ff                                   ; $54d9: $01 $ff $07
	db   $fc                                         ; $54dc: $fc
	ld   hl, sp-$1e                                  ; $54dd: $f8 $e2
	ldh  [c], a                                      ; $54df: $e2
	ld   a, [$cefa]                                  ; $54e0: $fa $fa $ce
	cp   $f2                                         ; $54e3: $fe $f2
	cp   $f2                                         ; $54e5: $fe $f2
	ld   a, [$fefa]                                  ; $54e7: $fa $fa $fe
	cp   $fe                                         ; $54ea: $fe $fe
	adc  $ce                                         ; $54ec: $ce $ce
	adc  h                                           ; $54ee: $8c
	nop                                              ; $54ef: $00
	add  c                                           ; $54f0: $81
	nop                                              ; $54f1: $00
	ret  nz                                          ; $54f2: $c0

	add  b                                           ; $54f3: $80
	ldh  [rLCDC], a                                  ; $54f4: $e0 $40
	ldh  a, [hScriptOpcodeParams]                                    ; $54f6: $f0 $a0
	ld   a, h                                        ; $54f8: $7c
	ld   [hl], b                                     ; $54f9: $70
	rra                                              ; $54fa: $1f
	inc  e                                           ; $54fb: $1c
	inc  bc                                          ; $54fc: $03
	inc  bc                                          ; $54fd: $03
	ld   l, a                                        ; $54fe: $6f
	ldh  a, [$6e]                                    ; $54ff: $f0 $6e

jr_094_5501:
	ldh  a, [$ee]                                    ; $5501: $f0 $ee
	ldh  a, [$ae]                                    ; $5503: $f0 $ae
	or   b                                           ; $5505: $b0
	ld   a, $30                                      ; $5506: $3e $30
	ld   [hl], $38                                   ; $5508: $36 $38
	ld   l, a                                        ; $550a: $6f
	ld   a, b                                        ; $550b: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $550c: $cf
	db   $fc                                         ; $550d: $fc
	nop                                              ; $550e: $00
	rst  $38                                         ; $550f: $ff
	nop                                              ; $5510: $00
	rst  $38                                         ; $5511: $ff
	ld   [bc], a                                     ; $5512: $02
	rst  $38                                         ; $5513: $ff
	inc  b                                           ; $5514: $04
	cp   a                                           ; $5515: $bf
	dec  c                                           ; $5516: $0d
	ld   a, a                                        ; $5517: $7f
	add  hl, de                                      ; $5518: $19
	rst  $38                                         ; $5519: $ff
	ld   a, [hl-]                                    ; $551a: $3a
	rst  $38                                         ; $551b: $ff
	inc  sp                                          ; $551c: $33
	cp   [hl]                                        ; $551d: $be
	nop                                              ; $551e: $00
	rst  $38                                         ; $551f: $ff
	nop                                              ; $5520: $00
	rst  $38                                         ; $5521: $ff
	ld   b, b                                        ; $5522: $40
	rst  $38                                         ; $5523: $ff
	add  sp, -$01                                    ; $5524: $e8 $ff
	cp   h                                           ; $5526: $bc
	rst  $38                                         ; $5527: $ff
	ld   d, [hl]                                     ; $5528: $56
	rst  $38                                         ; $5529: $ff
	ei                                               ; $552a: $fb
	xor  a                                           ; $552b: $af
	rrca                                             ; $552c: $0f
	ld   bc, $5e72                                   ; $552d: $01 $72 $5e
	halt                                             ; $5530: $76
	ld   e, h                                        ; $5531: $5c
	call nc, $dc9c                                   ; $5532: $d4 $9c $dc
	sbc  h                                           ; $5535: $9c
	call c, $9c18                                    ; $5536: $dc $18 $9c
	jr   jr_094_54d7                                 ; $5539: $18 $9c

	db   $10                                         ; $553b: $10
	ld   hl, sp-$70                                  ; $553c: $f8 $90
	inc  bc                                          ; $553e: $03
	nop                                              ; $553f: $00
	inc  bc                                          ; $5540: $03
	nop                                              ; $5541: $00
	ld   bc, $0100                                   ; $5542: $01 $00 $01
	nop                                              ; $5545: $00
	ld   bc, $0000                                   ; $5546: $01 $00 $00
	nop                                              ; $5549: $00
	nop                                              ; $554a: $00
	nop                                              ; $554b: $00
	ld   bc, $8e00                                   ; $554c: $01 $00 $8e
	cp   $86                                         ; $554f: $fe $86
	or   $c2                                         ; $5551: $f6 $c2
	ld   d, d                                        ; $5553: $52
	jp   nz, $e26a                                   ; $5554: $c2 $6a $e2

	ld   [hl], $e2                                   ; $5557: $36 $e2
	ld   a, $f2                                      ; $5559: $3e $f2
	ld   e, $f2                                      ; $555b: $1e $f2
	cp   $4f                                         ; $555d: $fe $4f
	ld   a, [hl]                                     ; $555f: $7e
	ld   e, a                                        ; $5560: $5f
	ld   a, l                                        ; $5561: $7d
	sub  a                                           ; $5562: $97
	db   $f4                                         ; $5563: $f4
	and  a                                           ; $5564: $a7
	db   $e4                                         ; $5565: $e4
	rst  ToBoot                                         ; $5566: $c7

jr_094_5567:
	call nz, $8487                                   ; $5567: $c4 $87 $84
	rlca                                             ; $556a: $07
	inc  b                                           ; $556b: $04
	rlca                                             ; $556c: $07
	inc  b                                           ; $556d: $04
	ld   b, $04                                      ; $556e: $06 $04
	ld   b, $04                                      ; $5570: $06 $04
	ld   c, $08                                      ; $5572: $0e $08
	inc  a                                           ; $5574: $3c
	jr   nc, jr_094_5567                             ; $5575: $30 $f0

	ret  nz                                          ; $5577: $c0

	add  b                                           ; $5578: $80
	nop                                              ; $5579: $00
	nop                                              ; $557a: $00
	nop                                              ; $557b: $00
	nop                                              ; $557c: $00
	nop                                              ; $557d: $00
	db   $e3                                         ; $557e: $e3
	ld   bc, $01c3                                   ; $557f: $01 $c3 $01
	add  e                                           ; $5582: $83
	ld   bc, $0103                                   ; $5583: $01 $03 $01
	ld   bc, $0401                                   ; $5586: $01 $01 $04
	nop                                              ; $5589: $00
	inc  c                                           ; $558a: $0c
	nop                                              ; $558b: $00
	inc  e                                           ; $558c: $1c
	nop                                              ; $558d: $00
	ld   [bc], a                                     ; $558e: $02
	ld   [bc], a                                     ; $558f: $02
	ld   [bc], a                                     ; $5590: $02
	ld   [bc], a                                     ; $5591: $02
	ld   [bc], a                                     ; $5592: $02
	ld   [bc], a                                     ; $5593: $02
	add  d                                           ; $5594: $82
	add  d                                           ; $5595: $82
	ldh  [c], a                                      ; $5596: $e2
	ld   h, d                                        ; $5597: $62
	ld   a, $1e                                      ; $5598: $3e $1e
	ld   [bc], a                                     ; $559a: $02
	ld   [bc], a                                     ; $559b: $02
	ld   [bc], a                                     ; $559c: $02
	ld   [bc], a                                     ; $559d: $02
	ld   [hl], d                                     ; $559e: $72
	ld   e, [hl]                                     ; $559f: $5e
	halt                                             ; $55a0: $76
	ld   e, h                                        ; $55a1: $5c
	call nc, $dc9c                                   ; $55a2: $d4 $9c $dc
	sbc  h                                           ; $55a5: $9c
	call c, $9c18                                    ; $55a6: $dc $18 $9c
	jr   @-$62                                       ; $55a9: $18 $9c

	db   $10                                         ; $55ab: $10
	ld   hl, sp-$10                                  ; $55ac: $f8 $f0
	inc  bc                                          ; $55ae: $03
	nop                                              ; $55af: $00
	inc  bc                                          ; $55b0: $03
	nop                                              ; $55b1: $00
	ld   bc, $0100                                   ; $55b2: $01 $00 $01
	nop                                              ; $55b5: $00
	ld   bc, $0000                                   ; $55b6: $01 $00 $00
	nop                                              ; $55b9: $00
	nop                                              ; $55ba: $00
	nop                                              ; $55bb: $00
	rrca                                             ; $55bc: $0f
	rrca                                             ; $55bd: $0f
	ld   [hl], d                                     ; $55be: $72
	ld   e, [hl]                                     ; $55bf: $5e
	halt                                             ; $55c0: $76
	ld   e, h                                        ; $55c1: $5c
	call nc, $dc9c                                   ; $55c2: $d4 $9c $dc
	sbc  h                                           ; $55c5: $9c
	call c, $9c18                                    ; $55c6: $dc $18 $9c
	jr   jr_094_5567                                 ; $55c9: $18 $9c

	db   $10                                         ; $55cb: $10
	ld   hl, sp-$30                                  ; $55cc: $f8 $d0
	ld   [hl], d                                     ; $55ce: $72
	ld   e, [hl]                                     ; $55cf: $5e
	halt                                             ; $55d0: $76
	ld   e, h                                        ; $55d1: $5c
	call nc, $dc9c                                   ; $55d2: $d4 $9c $dc
	sbc  h                                           ; $55d5: $9c
	call c, $9c18                                    ; $55d6: $dc $18 $9c
	jr   @-$02                                       ; $55d9: $18 $fc

	ldh  a, [$f8]                                    ; $55db: $f0 $f8
	jr   jr_094_55e2                                 ; $55dd: $18 $03

	nop                                              ; $55df: $00
	inc  bc                                          ; $55e0: $03
	nop                                              ; $55e1: $00

jr_094_55e2:
	ld   bc, $0100                                   ; $55e2: $01 $00 $01
	nop                                              ; $55e5: $00
	ld   bc, $0000                                   ; $55e6: $01 $00 $00
	nop                                              ; $55e9: $00
	inc  bc                                          ; $55ea: $03
	inc  bc                                          ; $55eb: $03
	rrca                                             ; $55ec: $0f
	inc  c                                           ; $55ed: $0c
	adc  [hl]                                        ; $55ee: $8e
	cp   $86                                         ; $55ef: $fe $86
	or   $c2                                         ; $55f1: $f6 $c2
	ld   d, d                                        ; $55f3: $52
	jp   nz, $e26a                                   ; $55f4: $c2 $6a $e2

	ld   [hl], $e2                                   ; $55f7: $36 $e2
	ld   a, $f2                                      ; $55f9: $3e $f2
	sbc  $f2                                         ; $55fb: $de $f2
	ld   a, $72                                      ; $55fd: $3e $72
	ld   e, [hl]                                     ; $55ff: $5e
	halt                                             ; $5600: $76
	ld   e, h                                        ; $5601: $5c
	call nc, $dc9c                                   ; $5602: $d4 $9c $dc
	sbc  h                                           ; $5605: $9c
	call c, $9c18                                    ; $5606: $dc $18 $9c
	jr   @-$62                                       ; $5609: $18 $9c

	inc  e                                           ; $560b: $1c
	db   $fc                                         ; $560c: $fc
	ldh  a, [$03]                                    ; $560d: $f0 $03
	nop                                              ; $560f: $00
	inc  bc                                          ; $5610: $03
	nop                                              ; $5611: $00
	ld   bc, $0100                                   ; $5612: $01 $00 $01
	nop                                              ; $5615: $00
	ld   bc, $0000                                   ; $5616: $01 $00 $00
	nop                                              ; $5619: $00
	inc  e                                           ; $561a: $1c
	inc  e                                           ; $561b: $1c
	rrca                                             ; $561c: $0f
	inc  bc                                          ; $561d: $03
	ld   [hl], d                                     ; $561e: $72
	ld   e, [hl]                                     ; $561f: $5e
	halt                                             ; $5620: $76
	ld   e, h                                        ; $5621: $5c
	call nc, $dc9c                                   ; $5622: $d4 $9c $dc
	sbc  h                                           ; $5625: $9c
	call c, $9c18                                    ; $5626: $dc $18 $9c
	jr   @-$62                                       ; $5629: $18 $9c

	db   $10                                         ; $562b: $10
	ret  c                                           ; $562c: $d8

	sub  b                                           ; $562d: $90
	ld   [hl], d                                     ; $562e: $72
	ld   e, [hl]                                     ; $562f: $5e
	halt                                             ; $5630: $76
	ld   e, h                                        ; $5631: $5c
	call nc, $dc9c                                   ; $5632: $d4 $9c $dc
	sbc  h                                           ; $5635: $9c
	call c, $9c18                                    ; $5636: $dc $18 $9c
	jr   @-$62                                       ; $5639: $18 $9c

	db   $10                                         ; $563b: $10
	sbc  b                                           ; $563c: $98
	db   $10                                         ; $563d: $10
	adc  [hl]                                        ; $563e: $8e
	cp   $86                                         ; $563f: $fe $86
	or   $c2                                         ; $5641: $f6 $c2
	ld   d, d                                        ; $5643: $52
	jp   nz, $e26a                                   ; $5644: $c2 $6a $e2

	ld   [hl], $e2                                   ; $5647: $36 $e2
	ld   a, $f2                                      ; $5649: $3e $f2
	ld   e, $f2                                      ; $564b: $1e $f2
	ld   e, $03                                      ; $564d: $1e $03
	nop                                              ; $564f: $00
	inc  bc                                          ; $5650: $03
	nop                                              ; $5651: $00
	ld   bc, $0100                                   ; $5652: $01 $00 $01
	nop                                              ; $5655: $00
	ld   bc, $0000                                   ; $5656: $01 $00 $00
	nop                                              ; $5659: $00
	nop                                              ; $565a: $00
	nop                                              ; $565b: $00
	rlca                                             ; $565c: $07
	rlca                                             ; $565d: $07
	adc  [hl]                                        ; $565e: $8e
	cp   $86                                         ; $565f: $fe $86
	or   $c2                                         ; $5661: $f6 $c2
	ld   d, d                                        ; $5663: $52
	jp   nz, $e26a                                   ; $5664: $c2 $6a $e2

	ld   [hl], $e2                                   ; $5667: $36 $e2
	ld   a, $f2                                      ; $5669: $3e $f2
	ld   e, $f2                                      ; $566b: $1e $f2
	sbc  $00                                         ; $566d: $de $00
	nop                                              ; $566f: $00
	ld   bc, $0300                                   ; $5670: $01 $00 $03
	ld   bc, $0103                                   ; $5673: $01 $03 $01
	inc  bc                                          ; $5676: $03
	ld   bc, $0003                                   ; $5677: $01 $03 $00
	nop                                              ; $567a: $00
	nop                                              ; $567b: $00
	ld   bc, $0003                                   ; $567c: $01 $03 $00
	nop                                              ; $567f: $00
	nop                                              ; $5680: $00
	nop                                              ; $5681: $00
	nop                                              ; $5682: $00
	nop                                              ; $5683: $00
	add  b                                           ; $5684: $80
	nop                                              ; $5685: $00
	add  b                                           ; $5686: $80
	nop                                              ; $5687: $00
	add  b                                           ; $5688: $80
	nop                                              ; $5689: $00
	nop                                              ; $568a: $00
	nop                                              ; $568b: $00
	and  b                                           ; $568c: $a0
	ret  nz                                          ; $568d: $c0

	add  d                                           ; $568e: $82
	inc  b                                           ; $568f: $04
	adc  h                                           ; $5690: $8c
	inc  b                                           ; $5691: $04
	add  $84                                         ; $5692: $c6 $84
	push hl                                          ; $5694: $e5

jr_094_5695:
	ld   b, e                                        ; $5695: $43
	di                                               ; $5696: $f3
	jr   nz, jr_094_5695                             ; $5697: $20 $fc

	db   $10                                         ; $5699: $10
	rst  $38                                         ; $569a: $ff
	inc  c                                           ; $569b: $0c
	rst  $38                                         ; $569c: $ff
	inc  bc                                          ; $569d: $03
	pop  bc                                          ; $569e: $c1
	jr   nz, jr_094_5704                             ; $569f: $20 $63

	ld   hl, $0367                                   ; $56a1: $21 $67 $03
	adc  a                                           ; $56a4: $8f
	push bc                                          ; $56a5: $c5
	rra                                              ; $56a6: $1f
	add  hl, bc                                      ; $56a7: $09
	ccf                                              ; $56a8: $3f
	ld   de, $21fb                                   ; $56a9: $11 $fb $21
	di                                               ; $56ac: $f3
	pop  bc                                          ; $56ad: $c1
	add  d                                           ; $56ae: $82
	inc  b                                           ; $56af: $04
	adc  h                                           ; $56b0: $8c
	inc  b                                           ; $56b1: $04
	add  $84                                         ; $56b2: $c6 $84
	push hl                                          ; $56b4: $e5
	ld   b, e                                        ; $56b5: $43
	di                                               ; $56b6: $f3
	and  b                                           ; $56b7: $a0
	ld   a, h                                        ; $56b8: $7c
	ld   [hl], b                                     ; $56b9: $70
	rra                                              ; $56ba: $1f
	inc  e                                           ; $56bb: $1c
	inc  bc                                          ; $56bc: $03
	inc  bc                                          ; $56bd: $03
	pop  bc                                          ; $56be: $c1
	jr   nz, jr_094_5724                             ; $56bf: $20 $63

	ld   hl, $0367                                   ; $56c1: $21 $67 $03
	adc  a                                           ; $56c4: $8f
	push bc                                          ; $56c5: $c5
	rra                                              ; $56c6: $1f
	add  hl, bc                                      ; $56c7: $09
	ld   a, $12                                      ; $56c8: $3e $12
	db   $fc                                         ; $56ca: $fc
	inc  l                                           ; $56cb: $2c
	pop  af                                          ; $56cc: $f1
	pop  af                                          ; $56cd: $f1
	nop                                              ; $56ce: $00
	nop                                              ; $56cf: $00
	ld   bc, $0300                                   ; $56d0: $01 $00 $03
	ld   bc, $0103                                   ; $56d3: $01 $03 $01
	inc  bc                                          ; $56d6: $03
	ld   bc, $0003                                   ; $56d7: $01 $03 $00
	inc  c                                           ; $56da: $0c
	nop                                              ; $56db: $00
	dec  c                                           ; $56dc: $0d
	ld   b, $00                                      ; $56dd: $06 $00
	nop                                              ; $56df: $00
	nop                                              ; $56e0: $00
	nop                                              ; $56e1: $00
	nop                                              ; $56e2: $00
	nop                                              ; $56e3: $00
	add  b                                           ; $56e4: $80
	nop                                              ; $56e5: $00
	add  b                                           ; $56e6: $80
	nop                                              ; $56e7: $00
	add  b                                           ; $56e8: $80
	nop                                              ; $56e9: $00
	jr   nz, jr_094_56ec                             ; $56ea: $20 $00

jr_094_56ec:
	ld   h, b                                        ; $56ec: $60
	ld   b, b                                        ; $56ed: $40
	adc  b                                           ; $56ee: $88
	ld   bc, $0087                                   ; $56ef: $01 $87 $00
	add  c                                           ; $56f2: $81
	rrca                                             ; $56f3: $0f
	inc  bc                                          ; $56f4: $03
	inc  bc                                          ; $56f5: $03
	rrca                                             ; $56f6: $0f
	inc  c                                           ; $56f7: $0c
	rrca                                             ; $56f8: $0f
	add  [hl]                                        ; $56f9: $86
	nop                                              ; $56fa: $00
	ld   [$ff66], sp                                 ; $56fb: $08 $66 $ff
	add  d                                           ; $56fe: $82
	rst  $38                                         ; $56ff: $ff
	ld   [$f2ff], a                                  ; $5700: $ea $ff $f2
	rst  $38                                         ; $5703: $ff

jr_094_5704:
	db   $fc                                         ; $5704: $fc
	add  l                                           ; $5705: $85
	nop                                              ; $5706: $00
	ld   [rAUD1LEN], sp                                 ; $5707: $08 $11 $ff
	ldh  [c], a                                      ; $570a: $e2
	rst  $38                                         ; $570b: $ff
	ld   sp, $5cff                                   ; $570c: $31 $ff $5c
	rst  $38                                         ; $570f: $ff
	sbc  [hl]                                        ; $5710: $9e
	add  l                                           ; $5711: $85
	nop                                              ; $5712: $00
	ld   [$ff61], sp                                 ; $5713: $08 $61 $ff
	ld   c, $ff                                      ; $5716: $0e $ff
	rlca                                             ; $5718: $07
	rst  $38                                         ; $5719: $ff
	and  e                                           ; $571a: $a3
	rst  $38                                         ; $571b: $ff
	res  0, l                                        ; $571c: $cb $85
	nop                                              ; $571e: $00
	ld   [$ff40], sp                                 ; $571f: $08 $40 $ff
	rra                                              ; $5722: $1f
	rst  $38                                         ; $5723: $ff

jr_094_5724:
	rrca                                             ; $5724: $0f
	rst  $38                                         ; $5725: $ff
	add  a                                           ; $5726: $87
	rst  $38                                         ; $5727: $ff
	rst  $10                                         ; $5728: $d7
	add  l                                           ; $5729: $85
	nop                                              ; $572a: $00
	ld   [$ff1e], sp                                 ; $572b: $08 $1e $ff
	db   $eb                                         ; $572e: $eb
	rst  $38                                         ; $572f: $ff
	ldh  a, [rIE]                                    ; $5730: $f0 $ff
	db   $fd                                         ; $5732: $fd
	rst  $38                                         ; $5733: $ff
	ld   hl, sp-$7b                                  ; $5734: $f8 $85
	nop                                              ; $5736: $00
	ld   [bc], a                                     ; $5737: $02
	ld   bc, $feff                                   ; $5738: $01 $ff $fe
	add  h                                           ; $573b: $84
	rst  $38                                         ; $573c: $ff
	add  l                                           ; $573d: $85
	nop                                              ; $573e: $00
	ld   [bc], a                                     ; $573f: $02
	dec  de                                          ; $5740: $1b
	rst  $38                                         ; $5741: $ff
	ld   a, a                                        ; $5742: $7f
	add  e                                           ; $5743: $83
	rst  $38                                         ; $5744: $ff
	nop                                              ; $5745: $00
	ld   h, h                                        ; $5746: $64
	add  l                                           ; $5747: $85
	nop                                              ; $5748: $00
	ld   [bc], a                                     ; $5749: $02
	call nc, $feff                                   ; $574a: $d4 $ff $fe
	add  c                                           ; $574d: $81
	rst  $38                                         ; $574e: $ff
	ld   [bc], a                                     ; $574f: $02
	rst  $30                                         ; $5750: $f7
	rst  $38                                         ; $5751: $ff
	ld   [hl+], a                                    ; $5752: $22
	add  l                                           ; $5753: $85
	nop                                              ; $5754: $00
	add  hl, de                                      ; $5755: $19
	sub  c                                           ; $5756: $91
	rst  $38                                         ; $5757: $ff
	ld   a, h                                        ; $5758: $7c
	rst  $38                                         ; $5759: $ff
	rst  JumpTable                                         ; $575a: $df
	rst  $38                                         ; $575b: $ff
	rst  $28                                         ; $575c: $ef
	rst  $38                                         ; $575d: $ff
	db   $dd                                         ; $575e: $dd
	nop                                              ; $575f: $00
	inc  bc                                          ; $5760: $03
	nop                                              ; $5761: $00
	rlca                                             ; $5762: $07
	inc  bc                                          ; $5763: $03
	inc  c                                           ; $5764: $0c
	inc  b                                           ; $5765: $04
	ld   d, c                                        ; $5766: $51
	pop  hl                                          ; $5767: $e1
	jp   nz, $55c7                                   ; $5768: $c2 $c7 $55

	sbc  a                                           ; $576b: $9f
	ei                                               ; $576c: $fb
	rst  $38                                         ; $576d: $ff
	or   l                                           ; $576e: $b5
	ld   a, $80                                      ; $576f: $3e $80
	ret  nz                                          ; $5771: $c0

	dec  c                                           ; $5772: $0d
	rlca                                             ; $5773: $07
	nop                                              ; $5774: $00
	add  hl, sp                                      ; $5775: $39
	nop                                              ; $5776: $00
	rra                                              ; $5777: $1f
	db   $fd                                         ; $5778: $fd
	sbc  a                                           ; $5779: $9f
	ei                                               ; $577a: $fb
	ccf                                              ; $577b: $3f
	rst  $30                                         ; $577c: $f7
	rst  $38                                         ; $577d: $ff
	rst  $28                                         ; $577e: $ef
	ld   h, c                                        ; $577f: $61
	ld   bc, $0f80                                   ; $5780: $01 $80 $0f
	ld   [bc], a                                     ; $5783: $02
	ccf                                              ; $5784: $3f
	inc  a                                           ; $5785: $3c
	db   $fc                                         ; $5786: $fc
	add  b                                           ; $5787: $80
	ld   sp, hl                                      ; $5788: $f9
	nop                                              ; $5789: $00
	rst  $38                                         ; $578a: $ff
	add  b                                           ; $578b: $80
	db   $fc                                         ; $578c: $fc
	add  b                                           ; $578d: $80
	ldh  a, [rSC]                                    ; $578e: $f0 $02
	add  e                                           ; $5790: $83
	add  b                                           ; $5791: $80
	db   $fc                                         ; $5792: $fc
	add  b                                           ; $5793: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5794: $cf
	add  b                                           ; $5795: $80
	ccf                                              ; $5796: $3f
	add  b                                           ; $5797: $80
	rra                                              ; $5798: $1f
	add  hl, bc                                      ; $5799: $09
	ret  nz                                          ; $579a: $c0

	ldh  a, [$03]                                    ; $579b: $f0 $03
	di                                               ; $579d: $f3
	rrca                                             ; $579e: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $579f: $cf
	ld   de, $8412                                   ; $57a0: $11 $12 $84
	add  a                                           ; $57a3: $87
	add  h                                           ; $57a4: $84
	rst  $38                                         ; $57a5: $ff
	ld   [bc], a                                     ; $57a6: $02
	ld   a, a                                        ; $57a7: $7f
	ld   a, h                                        ; $57a8: $7c
	db   $fc                                         ; $57a9: $fc
	add  b                                           ; $57aa: $80
	ldh  [rDIV], a                                   ; $57ab: $e0 $04
	sbc  a                                           ; $57ad: $9f
	sub  b                                           ; $57ae: $90
	ld   [hl], b                                     ; $57af: $70
	nop                                              ; $57b0: $00
	add  b                                           ; $57b1: $80
	add  e                                           ; $57b2: $83
	rst  $38                                         ; $57b3: $ff
	add  b                                           ; $57b4: $80
	ldh  [$80], a                                    ; $57b5: $e0 $80
	inc  bc                                          ; $57b7: $03
	add  b                                           ; $57b8: $80
	rrca                                             ; $57b9: $0f
	ld   bc, $58d8                                   ; $57ba: $01 $d8 $58
	add  b                                           ; $57bd: $80
	ld   sp, $7c08                                   ; $57be: $31 $08 $7c
	rrca                                             ; $57c1: $0f
	inc  c                                           ; $57c2: $0c
	rrca                                             ; $57c3: $0f
	inc  bc                                          ; $57c4: $03
	rrca                                             ; $57c5: $0f
	nop                                              ; $57c6: $00
	rrca                                             ; $57c7: $0f
	inc  c                                           ; $57c8: $0c
	add  c                                           ; $57c9: $81
	rrca                                             ; $57ca: $0f
	ld   c, $03                                      ; $57cb: $0e $03
	rrca                                             ; $57cd: $0f
	nop                                              ; $57ce: $00
	rrca                                             ; $57cf: $0f
	call z, $cfff                                    ; $57d0: $cc $ff $cf
	rst  $38                                         ; $57d3: $ff
	inc  sp                                          ; $57d4: $33
	rst  $38                                         ; $57d5: $ff
	call z, $f3ff                                    ; $57d6: $cc $ff $f3
	rst  $38                                         ; $57d9: $ff
	db   $fc                                         ; $57da: $fc
	add  e                                           ; $57db: $83
	rst  $38                                         ; $57dc: $ff
	ld   d, d                                        ; $57dd: $52
	daa                                              ; $57de: $27
	rst  $38                                         ; $57df: $ff
	ld   e, e                                        ; $57e0: $5b
	rst  $38                                         ; $57e1: $ff
	sbc  b                                           ; $57e2: $98
	rst  $38                                         ; $57e3: $ff
	db   $eb                                         ; $57e4: $eb
	rst  $38                                         ; $57e5: $ff
	ld   [hl], e                                     ; $57e6: $73
	rst  $38                                         ; $57e7: $ff
	sbc  h                                           ; $57e8: $9c
	rst  $38                                         ; $57e9: $ff
	daa                                              ; $57ea: $27
	rst  $38                                         ; $57eb: $ff
	ret                                              ; $57ec: $c9


	rst  $38                                         ; $57ed: $ff
	dec  sp                                          ; $57ee: $3b
	rst  $38                                         ; $57ef: $ff
	ld   de, $c8ff                                   ; $57f0: $11 $ff $c8
	rst  $38                                         ; $57f3: $ff
	jr   nz, @+$01                                   ; $57f4: $20 $ff

	ld   d, c                                        ; $57f6: $51
	rst  $38                                         ; $57f7: $ff
	ld   h, h                                        ; $57f8: $64
	rst  $38                                         ; $57f9: $ff
	ld   a, d                                        ; $57fa: $7a
	rst  $38                                         ; $57fb: $ff
	sbc  h                                           ; $57fc: $9c
	rst  $38                                         ; $57fd: $ff
	db   $f4                                         ; $57fe: $f4
	rst  $38                                         ; $57ff: $ff
	pop  hl                                          ; $5800: $e1
	rst  $38                                         ; $5801: $ff
	ldh  a, [rIE]                                    ; $5802: $f0 $ff
	ld   l, b                                        ; $5804: $68
	rst  $38                                         ; $5805: $ff
	inc  h                                           ; $5806: $24
	rst  $38                                         ; $5807: $ff
	add  d                                           ; $5808: $82
	rst  $38                                         ; $5809: $ff
	ld   de, $10ff                                   ; $580a: $11 $ff $10
	rst  $38                                         ; $580d: $ff
	ret  z                                           ; $580e: $c8

	rst  $38                                         ; $580f: $ff
	db   $fc                                         ; $5810: $fc
	rst  $38                                         ; $5811: $ff
	db   $fd                                         ; $5812: $fd
	rst  $38                                         ; $5813: $ff
	ld   a, l                                        ; $5814: $7d
	rst  $38                                         ; $5815: $ff
	ccf                                              ; $5816: $3f
	rst  $38                                         ; $5817: $ff
	ld   e, $ff                                      ; $5818: $1e $ff
	rrca                                             ; $581a: $0f
	rst  $38                                         ; $581b: $ff
	ld   b, $ff                                      ; $581c: $06 $ff
	sub  $ff                                         ; $581e: $d6 $ff
	ccf                                              ; $5820: $3f
	rst  $38                                         ; $5821: $ff
	ld   a, a                                        ; $5822: $7f
	rst  $38                                         ; $5823: $ff
	sbc  a                                           ; $5824: $9f
	rst  $38                                         ; $5825: $ff
	ccf                                              ; $5826: $3f
	rst  $38                                         ; $5827: $ff
	ld   l, [hl]                                     ; $5828: $6e
	rst  $38                                         ; $5829: $ff
	ld   h, a                                        ; $582a: $67
	rst  $38                                         ; $582b: $ff
	adc  $ff                                         ; $582c: $ce $ff
	ld   l, h                                        ; $582e: $6c
	rst  $38                                         ; $582f: $ff
	ld   a, c                                        ; $5830: $79
	add  c                                           ; $5831: $81

jr_094_5832:
	rst  $38                                         ; $5832: $ff
	ld   a, [bc]                                     ; $5833: $0a
	rst  JumpTable                                         ; $5834: $df
	rst  $38                                         ; $5835: $ff
	cp   a                                           ; $5836: $bf
	rst  $38                                         ; $5837: $ff
	rst  $20                                         ; $5838: $e7
	rst  $38                                         ; $5839: $ff
	db   $fd                                         ; $583a: $fd
	rst  $38                                         ; $583b: $ff
	ld   e, a                                        ; $583c: $5f
	rst  $38                                         ; $583d: $ff
	or   l                                           ; $583e: $b5
	add  a                                           ; $583f: $87
	rst  $38                                         ; $5840: $ff
	nop                                              ; $5841: $00
	db   $fc                                         ; $5842: $fc
	add  e                                           ; $5843: $83
	rst  $38                                         ; $5844: $ff
	ld   [bc], a                                     ; $5845: $02
	dec  b                                           ; $5846: $05
	rst  $38                                         ; $5847: $ff
	cp   $81                                         ; $5848: $fe $81
	rst  $38                                         ; $584a: $ff
	rra                                              ; $584b: $1f
	or   b                                           ; $584c: $b0
	rst  $38                                         ; $584d: $ff
	rst  JumpTable                                         ; $584e: $df
	rst  $38                                         ; $584f: $ff
	ld   sp, hl                                      ; $5850: $f9
	rst  $38                                         ; $5851: $ff
	ld   h, a                                        ; $5852: $67
	rst  $38                                         ; $5853: $ff

jr_094_5854:
	rst  $30                                         ; $5854: $f7
	rst  $38                                         ; $5855: $ff
	or   l                                           ; $5856: $b5
	rst  $38                                         ; $5857: $ff
	ld   a, h                                        ; $5858: $7c
	rst  $38                                         ; $5859: $ff
	rst  ToBoot                                         ; $585a: $c7
	rst  $38                                         ; $585b: $ff
	jp   hl                                          ; $585c: $e9


	cp   $9b                                         ; $585d: $fe $9b
	db   $fd                                         ; $585f: $fd
	rst  $10                                         ; $5860: $d7
	ei                                               ; $5861: $fb
	jr   nz, jr_094_5854                             ; $5862: $20 $f0

	pop  hl                                          ; $5864: $e1
	pop  bc                                          ; $5865: $c1
	sbc  a                                           ; $5866: $9f
	rst  JumpTable                                         ; $5867: $df
	db   $fc                                         ; $5868: $fc
	cp   h                                           ; $5869: $bc
	ld   hl, sp+$78                                  ; $586a: $f8 $78
	add  b                                           ; $586c: $80
	ldh  a, [$80]                                    ; $586d: $f0 $80
	pop  bc                                          ; $586f: $c1
	add  b                                           ; $5870: $80
	ld   [bc], a                                     ; $5871: $02
	dec  bc                                          ; $5872: $0b
	inc  d                                           ; $5873: $14
	ld   [hl], h                                     ; $5874: $74
	ld   h, c                                        ; $5875: $61
	ld   bc, $0307                                   ; $5876: $01 $07 $03
	dec  bc                                          ; $5879: $0b
	rlca                                             ; $587a: $07
	rla                                              ; $587b: $17
	rrca                                             ; $587c: $0f
	ld   l, [hl]                                     ; $587d: $6e
	ld   a, [hl]                                     ; $587e: $7e
	add  b                                           ; $587f: $80
	cp   b                                           ; $5880: $b8
	ld   c, $70                                      ; $5881: $0e $70
	ld   [hl], d                                     ; $5883: $72
	jp   nz, $84c4                                   ; $5884: $c2 $c4 $84

	adc  c                                           ; $5887: $89
	ld   a, [$5360]                                  ; $5888: $fa $60 $53
	ret  nz                                          ; $588b: $c0

	nop                                              ; $588c: $00
	rra                                              ; $588d: $1f
	inc  e                                           ; $588e: $1c
	ld   a, h                                        ; $588f: $7c
	ld   a, [hl]                                     ; $5890: $7e
	add  b                                           ; $5891: $80
	add  d                                           ; $5892: $82
	ld   [bc], a                                     ; $5893: $02
	inc  a                                           ; $5894: $3c
	ld   b, c                                        ; $5895: $41
	add  d                                           ; $5896: $82
	add  b                                           ; $5897: $80
	nop                                              ; $5898: $00
	ld   l, $41                                      ; $5899: $2e $41
	add  b                                           ; $589b: $80
	add  c                                           ; $589c: $81
	jr   nz, jr_094_5832                             ; $589d: $20 $93

	ld   bc, $22be                                   ; $589f: $01 $be $22
	ld   a, [hl+]                                    ; $58a2: $2a
	ld   [hl+], a                                    ; $58a3: $22
	adc  l                                           ; $58a4: $8d
	and  h                                           ; $58a5: $a4
	add  d                                           ; $58a6: $82
	sub  b                                           ; $58a7: $90
	add  h                                           ; $58a8: $84
	ld   b, b                                        ; $58a9: $40
	dec  sp                                          ; $58aa: $3b
	ld   b, b                                        ; $58ab: $40
	and  d                                           ; $58ac: $a2
	add  b                                           ; $58ad: $80
	ld   b, c                                        ; $58ae: $41
	nop                                              ; $58af: $00
	add  b                                           ; $58b0: $80
	nop                                              ; $58b1: $00
	add  b                                           ; $58b2: $80
	nop                                              ; $58b3: $00
	ldh  [rP1], a                                    ; $58b4: $e0 $00
	ld   [hl], b                                     ; $58b6: $70
	nop                                              ; $58b7: $00
	jr   jr_094_58ba                                 ; $58b8: $18 $00

jr_094_58ba:
	inc  b                                           ; $58ba: $04
	rrca                                             ; $58bb: $0f
	inc  c                                           ; $58bc: $0c
	rrca                                             ; $58bd: $0f
	inc  bc                                          ; $58be: $03
	rrca                                             ; $58bf: $0f
	ld   [bc], a                                     ; $58c0: $02
	rrca                                             ; $58c1: $0f
	ld   [bc], a                                     ; $58c2: $02
	rrca                                             ; $58c3: $0f
	inc  c                                           ; $58c4: $0c
	rrca                                             ; $58c5: $0f
	nop                                              ; $58c6: $00
	rrca                                             ; $58c7: $0f
	nop                                              ; $58c8: $00
	add  b                                           ; $58c9: $80
	rrca                                             ; $58ca: $0f
	ld   l, c                                        ; $58cb: $69
	rst  $38                                         ; $58cc: $ff
	ld   a, a                                        ; $58cd: $7f
	rst  $38                                         ; $58ce: $ff
	sbc  a                                           ; $58cf: $9f
	rst  $38                                         ; $58d0: $ff
	db   $e3                                         ; $58d1: $e3
	rst  $38                                         ; $58d2: $ff
	call c, Call_094_5bff                            ; $58d3: $dc $ff $5b
	rst  $38                                         ; $58d6: $ff
	adc  e                                           ; $58d7: $8b
	rst  $38                                         ; $58d8: $ff
	ld   de, $1dff                                   ; $58d9: $11 $ff $1d
	rst  $38                                         ; $58dc: $ff
	ldh  a, [rIE]                                    ; $58dd: $f0 $ff
	ldh  a, [rIE]                                    ; $58df: $f0 $ff
	db   $fc                                         ; $58e1: $fc
	rst  $38                                         ; $58e2: $ff
	ld   a, a                                        ; $58e3: $7f
	rst  $38                                         ; $58e4: $ff
	sbc  a                                           ; $58e5: $9f
	rst  $38                                         ; $58e6: $ff
	ld   h, e                                        ; $58e7: $63
	rst  $38                                         ; $58e8: $ff
	ld   l, h                                        ; $58e9: $6c
	rst  $38                                         ; $58ea: $ff
	sub  a                                           ; $58eb: $97
	rst  $38                                         ; $58ec: $ff
	sbc  e                                           ; $58ed: $9b
	rst  $38                                         ; $58ee: $ff
	inc  h                                           ; $58ef: $24
	rst  $38                                         ; $58f0: $ff
	add  hl, bc                                      ; $58f1: $09
	rst  $38                                         ; $58f2: $ff
	ld   [bc], a                                     ; $58f3: $02
	rst  $38                                         ; $58f4: $ff
	nop                                              ; $58f5: $00
	rst  $38                                         ; $58f6: $ff
	nop                                              ; $58f7: $00
	rst  $38                                         ; $58f8: $ff
	ld   b, b                                        ; $58f9: $40
	rst  $38                                         ; $58fa: $ff
	db   $ec                                         ; $58fb: $ec
	rst  $38                                         ; $58fc: $ff
	adc  a                                           ; $58fd: $8f
	rst  $38                                         ; $58fe: $ff
	db   $e3                                         ; $58ff: $e3
	rst  $38                                         ; $5900: $ff
	ld   [hl], c                                     ; $5901: $71
	rst  $38                                         ; $5902: $ff
	inc  e                                           ; $5903: $1c
	rst  $38                                         ; $5904: $ff
	or   [hl]                                        ; $5905: $b6
	rst  $38                                         ; $5906: $ff
	rla                                              ; $5907: $17
	rst  $38                                         ; $5908: $ff
	rrca                                             ; $5909: $0f
	rst  $38                                         ; $590a: $ff
	ld   h, h                                        ; $590b: $64
	rst  $38                                         ; $590c: $ff
	ld   bc, $80ff                                   ; $590d: $01 $ff $80
	rst  $38                                         ; $5910: $ff
	pop  bc                                          ; $5911: $c1
	rst  $38                                         ; $5912: $ff
	jp   hl                                          ; $5913: $e9


	rst  $38                                         ; $5914: $ff
	cp   h                                           ; $5915: $bc
	rst  $38                                         ; $5916: $ff
	sbc  [hl]                                        ; $5917: $9e
	rst  $38                                         ; $5918: $ff
	rst  JumpTable                                         ; $5919: $df
	rst  $38                                         ; $591a: $ff
	xor  h                                           ; $591b: $ac
	rst  $38                                         ; $591c: $ff
	dec  c                                           ; $591d: $0d
	rst  $38                                         ; $591e: $ff
	or   $ff                                         ; $591f: $f6 $ff
	inc  bc                                          ; $5921: $03
	rst  $38                                         ; $5922: $ff
	add  e                                           ; $5923: $83
	rst  $38                                         ; $5924: $ff
	push bc                                          ; $5925: $c5
	rst  $38                                         ; $5926: $ff
	ld   h, l                                        ; $5927: $65
	cp   $34                                         ; $5928: $fe $34
	cp   $dc                                         ; $592a: $fe $dc
	rst  $38                                         ; $592c: $ff
	ccf                                              ; $592d: $3f
	rst  $38                                         ; $592e: $ff
	db   $eb                                         ; $592f: $eb
	rst  $38                                         ; $5930: $ff
	ei                                               ; $5931: $fb
	rst  $38                                         ; $5932: $ff
	rrca                                             ; $5933: $0f
	ldh  [hScriptOpcodeParams], a                                    ; $5934: $e0 $a0
	add  b                                           ; $5936: $80
	sbc  a                                           ; $5937: $9f
	add  b                                           ; $5938: $80
	ld   a, a                                        ; $5939: $7f
	inc  bc                                          ; $593a: $03
	rst  $38                                         ; $593b: $ff
	sbc  $ff                                         ; $593c: $de $ff
	cp   $81                                         ; $593e: $fe $81
	rst  $38                                         ; $5940: $ff
	nop                                              ; $5941: $00
	rst  JumpTable                                         ; $5942: $df
	add  b                                           ; $5943: $80
	rst  $38                                         ; $5944: $ff
	add  b                                           ; $5945: $80
	ld   a, a                                        ; $5946: $7f
	add  b                                           ; $5947: $80
	add  b                                           ; $5948: $80
	add  c                                           ; $5949: $81
	rst  $38                                         ; $594a: $ff
	ld   [$ff99], sp                                 ; $594b: $08 $99 $ff
	call $e3ff                                       ; $594e: $cd $ff $e3
	ld   hl, sp-$10                                  ; $5951: $f8 $f0
	or   $b6                                         ; $5953: $f6 $b6
	add  b                                           ; $5955: $80
	db   $ed                                         ; $5956: $ed
	add  b                                           ; $5957: $80
	dec  e                                           ; $5958: $1d
	dec  b                                           ; $5959: $05
	push hl                                          ; $595a: $e5
	db   $e4                                         ; $595b: $e4
	ld   hl, sp-$25                                  ; $595c: $f8 $db
	inc  l                                           ; $595e: $2c
	inc  c                                           ; $595f: $0c
	add  b                                           ; $5960: $80
	call c, $bc01                                    ; $5961: $dc $01 $bc
	cp   a                                           ; $5964: $bf
	add  b                                           ; $5965: $80
	ld   a, [hl]                                     ; $5966: $7e
	add  c                                           ; $5967: $81
	cp   $80                                         ; $5968: $fe $80
	rst  $38                                         ; $596a: $ff
	add  b                                           ; $596b: $80
	ccf                                              ; $596c: $3f
	jr   nz, @-$0a                                   ; $596d: $20 $f4

	db   $eb                                         ; $596f: $eb
	ld   [hl], $06                                   ; $5970: $36 $06
	xor  h                                           ; $5972: $ac
	inc  c                                           ; $5973: $0c
	add  hl, bc                                      ; $5974: $09
	add  hl, de                                      ; $5975: $19
	ld   [bc], a                                     ; $5976: $02
	ld   [hl+], a                                    ; $5977: $22
	ld   h, $22                                      ; $5978: $26 $22
	adc  b                                           ; $597a: $88
	ld   b, b                                        ; $597b: $40
	inc  d                                           ; $597c: $14
	nop                                              ; $597d: $00
	adc  c                                           ; $597e: $89
	ld   e, $00                                      ; $597f: $1e $00
	stop                                             ; $5981: $10 $00
	jr   nz, jr_094_5987                             ; $5983: $20 $02

	nop                                              ; $5985: $00
	ld   b, e                                        ; $5986: $43

jr_094_5987:
	ld   b, d                                        ; $5987: $42
	dec  c                                           ; $5988: $0d
	ld   c, a                                        ; $5989: $4f
	ld   b, b                                        ; $598a: $40
	ld   b, a                                        ; $598b: $47
	ld   b, $01                                      ; $598c: $06 $01
	add  b                                           ; $598e: $80
	add  b                                           ; $598f: $80
	ld   bc, $1515                                   ; $5990: $01 $15 $15
	ld   [$1400], sp                                 ; $5993: $08 $00 $14
	db   $10                                         ; $5996: $10
	rst  $20                                         ; $5997: $e7
	rrca                                             ; $5998: $0f
	adc  a                                           ; $5999: $8f
	rst  $38                                         ; $599a: $ff

jr_094_599b:
	rrca                                             ; $599b: $0f
	db   $fd                                         ; $599c: $fd
	rrca                                             ; $599d: $0f
	ei                                               ; $599e: $fb
	halt                                             ; $599f: $76
	ld   h, b                                        ; $59a0: $60
	inc  b                                           ; $59a1: $04
	xor  [hl]                                        ; $59a2: $ae
	rra                                              ; $59a3: $1f
	ld   c, $05                                      ; $59a4: $0e $05
	ld   c, a                                        ; $59a6: $4f
	ld   hl, $0080                                   ; $59a7: $21 $80 $00
	add  hl, de                                      ; $59aa: $19
	add  b                                           ; $59ab: $80
	ldh  [$e2], a                                    ; $59ac: $e0 $e2
	ld   sp, $8374                                   ; $59ae: $31 $74 $83
	nop                                              ; $59b1: $00
	ld   b, $fc                                      ; $59b2: $06 $fc
	ld   bc, $0e00                                   ; $59b4: $01 $00 $0e
	db   $10                                         ; $59b7: $10
	jr   c, jr_094_599b                              ; $59b8: $38 $e1

	ld   bc, $9935                                   ; $59ba: $01 $35 $99
	add  hl, de                                      ; $59bd: $19
	inc  bc                                          ; $59be: $03
	dec  bc                                          ; $59bf: $0b
	add  h                                           ; $59c0: $84
	rrca                                             ; $59c1: $0f
	inc  c                                           ; $59c2: $0c
	rrca                                             ; $59c3: $0f
	inc  c                                           ; $59c4: $0c
	add  c                                           ; $59c5: $81
	rrca                                             ; $59c6: $0f
	inc  b                                           ; $59c7: $04
	nop                                              ; $59c8: $00
	rrca                                             ; $59c9: $0f
	ld   bc, $0e0f                                   ; $59ca: $01 $0f $0e
	add  c                                           ; $59cd: $81
	rrca                                             ; $59ce: $0f
	ld   a, [hl+]                                    ; $59cf: $2a
	ld   de, $60ff                                   ; $59d0: $11 $ff $60
	rst  $38                                         ; $59d3: $ff
	ld   b, $ff                                      ; $59d4: $06 $ff
	add  b                                           ; $59d6: $80
	rst  $38                                         ; $59d7: $ff
	ld   a, b                                        ; $59d8: $78
	rst  $38                                         ; $59d9: $ff
	add  e                                           ; $59da: $83
	rst  $38                                         ; $59db: $ff
	inc  b                                           ; $59dc: $04
	rst  $38                                         ; $59dd: $ff
	ld   hl, sp-$01                                  ; $59de: $f8 $ff
	ldh  [c], a                                      ; $59e0: $e2
	rst  $38                                         ; $59e1: $ff
	ld   hl, $04ff                                   ; $59e2: $21 $ff $04
	rst  $38                                         ; $59e5: $ff
	ld   b, b                                        ; $59e6: $40
	rst  $38                                         ; $59e7: $ff
	inc  b                                           ; $59e8: $04
	rst  $38                                         ; $59e9: $ff
	add  b                                           ; $59ea: $80
	rst  $38                                         ; $59eb: $ff
	rrca                                             ; $59ec: $0f
	db   $fc                                         ; $59ed: $fc
	jr   nc, @-$0b                                   ; $59ee: $30 $f3

	ccf                                              ; $59f0: $3f
	rst  $38                                         ; $59f1: $ff
	or   d                                           ; $59f2: $b2
	rst  $38                                         ; $59f3: $ff
	ld   [hl], $ff                                   ; $59f4: $36 $ff
	rlca                                             ; $59f6: $07
	rst  $38                                         ; $59f7: $ff
	rrca                                             ; $59f8: $0f
	ret  nz                                          ; $59f9: $c0

	ld   b, b                                        ; $59fa: $40
	add  b                                           ; $59fb: $80

jr_094_59fc:
	ccf                                              ; $59fc: $3f
	add  c                                           ; $59fd: $81
	rst  $38                                         ; $59fe: $ff
	ld   [$ffbb], sp                                 ; $59ff: $08 $bb $ff
	ld   [hl+], a                                    ; $5a02: $22
	rst  $38                                         ; $5a03: $ff
	inc  b                                           ; $5a04: $04
	rst  $38                                         ; $5a05: $ff
	sub  c                                           ; $5a06: $91
	rst  $38                                         ; $5a07: $ff
	di                                               ; $5a08: $f3
	add  b                                           ; $5a09: $80
	inc  a                                           ; $5a0a: $3c
	add  b                                           ; $5a0b: $80
	rlc  d                                           ; $5a0c: $cb $02
	di                                               ; $5a0e: $f3
	ldh  a, [$f8]                                    ; $5a0f: $f0 $f8
	add  b                                           ; $5a11: $80
	rst  $38                                         ; $5a12: $ff
	ld   b, $fb                                      ; $5a13: $06 $fb
	rst  $38                                         ; $5a15: $ff
	cp   a                                           ; $5a16: $bf
	cp   $2f                                         ; $5a17: $fe $2f
	db   $fc                                         ; $5a19: $fc
	ld   l, l                                        ; $5a1a: $6d
	add  b                                           ; $5a1b: $80
	nop                                              ; $5a1c: $00
	add  d                                           ; $5a1d: $82
	rst  $38                                         ; $5a1e: $ff
	add  b                                           ; $5a1f: $80
	nop                                              ; $5a20: $00
	add  b                                           ; $5a21: $80
	cp   $80                                         ; $5a22: $fe $80
	nop                                              ; $5a24: $00
	nop                                              ; $5a25: $00
	rst  $38                                         ; $5a26: $ff
	add  b                                           ; $5a27: $80
	nop                                              ; $5a28: $00
	nop                                              ; $5a29: $00
	rst  $38                                         ; $5a2a: $ff
	add  b                                           ; $5a2b: $80
	nop                                              ; $5a2c: $00
	add  h                                           ; $5a2d: $84
	rst  $38                                         ; $5a2e: $ff
	add  b                                           ; $5a2f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a30: $cf
	add  b                                           ; $5a31: $80
	ccf                                              ; $5a32: $3f
	nop                                              ; $5a33: $00
	rst  $38                                         ; $5a34: $ff
	add  b                                           ; $5a35: $80
	rra                                              ; $5a36: $1f
	ld   [$03c3], sp                                 ; $5a37: $08 $c3 $03
	jr   nc, jr_094_59fc                             ; $5a3a: $30 $c0

	ret  z                                           ; $5a3c: $c8

	ldh  a, [$f6]                                    ; $5a3d: $f0 $f6
	ld   hl, sp-$07                                  ; $5a3f: $f8 $f9
	add  a                                           ; $5a41: $87
	rst  $38                                         ; $5a42: $ff
	add  b                                           ; $5a43: $80
	ld   a, a                                        ; $5a44: $7f
	add  b                                           ; $5a45: $80
	rra                                              ; $5a46: $1f
	add  b                                           ; $5a47: $80
	rrca                                             ; $5a48: $0f
	nop                                              ; $5a49: $00
	rst  $38                                         ; $5a4a: $ff
	add  b                                           ; $5a4b: $80
	cp   $89                                         ; $5a4c: $fe $89
	rst  $38                                         ; $5a4e: $ff
	add  b                                           ; $5a4f: $80
	adc  a                                           ; $5a50: $8f
	add  b                                           ; $5a51: $80
	rrca                                             ; $5a52: $0f
	ld   [$0383], sp                                 ; $5a53: $08 $83 $03
	ld   b, c                                        ; $5a56: $41
	add  c                                           ; $5a57: $81
	and  c                                           ; $5a58: $a1
	pop  bc                                          ; $5a59: $c1
	ret  nc                                          ; $5a5a: $d0

	ldh  [$e8], a                                    ; $5a5b: $e0 $e8
	add  c                                           ; $5a5d: $81
	ldh  a, [rSC]                                    ; $5a5e: $f0 $02
	db   $f4                                         ; $5a60: $f4
	ld   hl, sp+$7b                                  ; $5a61: $f8 $7b
	add  b                                           ; $5a63: $80
	add  l                                           ; $5a64: $85
	ld   bc, $d899                                   ; $5a65: $01 $99 $d8
	add  [hl]                                        ; $5a68: $86
	jp   c, $de03                                    ; $5a69: $da $03 $de

	cp   $ee                                         ; $5a6c: $fe $ee
	ld   [hl], b                                     ; $5a6e: $70
	add  e                                           ; $5a6f: $83
	nop                                              ; $5a70: $00
	add  b                                           ; $5a71: $80
	ld   b, b                                        ; $5a72: $40
	inc  b                                           ; $5a73: $04
	ld   b, a                                        ; $5a74: $47
	ld   b, b                                        ; $5a75: $40
	add  l                                           ; $5a76: $85
	call nz, $8004                                   ; $5a77: $c4 $04 $80
	add  h                                           ; $5a7a: $84
	ld   bc, $5a80                                   ; $5a7b: $01 $80 $5a
	add  b                                           ; $5a7e: $80
	inc  b                                           ; $5a7f: $04
	ld   bc, $1008                                   ; $5a80: $01 $08 $10
	add  e                                           ; $5a83: $83
	nop                                              ; $5a84: $00
	ld   d, $f0                                      ; $5a85: $16 $f0
	nop                                              ; $5a87: $00
	rst  $38                                         ; $5a88: $ff
	nop                                              ; $5a89: $00
	rrca                                             ; $5a8a: $0f
	nop                                              ; $5a8b: $00
	rst  $30                                         ; $5a8c: $f7
	ldh  a, [$7f]                                    ; $5a8d: $f0 $7f
	halt                                             ; $5a8f: $76
	ld   [hl], d                                     ; $5a90: $72
	ld   a, b                                        ; $5a91: $78
	ld   [bc], a                                     ; $5a92: $02
	ld   a, h                                        ; $5a93: $7c
	ld   b, l                                        ; $5a94: $45
	ld   a, $12                                      ; $5a95: $3e $12
	rra                                              ; $5a97: $1f
	ret  z                                           ; $5a98: $c8

	rlca                                             ; $5a99: $07
	and  e                                           ; $5a9a: $a3
	nop                                              ; $5a9b: $00
	ld   l, a                                        ; $5a9c: $6f
	add  [hl]                                        ; $5a9d: $86
	add  hl, bc                                      ; $5a9e: $09
	inc  bc                                          ; $5a9f: $03
	dec  bc                                          ; $5aa0: $0b
	add  e                                           ; $5aa1: $83
	ld   c, $6e                                      ; $5aa2: $0e $6e
	add  b                                           ; $5aa4: $80
	add  [hl]                                        ; $5aa5: $86
	inc  bc                                          ; $5aa6: $03
	and  $0e                                         ; $5aa7: $e6 $0e
	rrca                                             ; $5aa9: $0f
	nop                                              ; $5aaa: $00
	add  c                                           ; $5aab: $81
	rrca                                             ; $5aac: $0f
	ld   [bc], a                                     ; $5aad: $02
	nop                                              ; $5aae: $00
	rrca                                             ; $5aaf: $0f
	nop                                              ; $5ab0: $00
	add  e                                           ; $5ab1: $83
	rrca                                             ; $5ab2: $0f
	inc  d                                           ; $5ab3: $14
	ld   c, $0f                                      ; $5ab4: $0e $0f
	jp   hl                                          ; $5ab6: $e9


	rst  $38                                         ; $5ab7: $ff
	rst  $20                                         ; $5ab8: $e7
	rst  $38                                         ; $5ab9: $ff
	nop                                              ; $5aba: $00
	rst  $38                                         ; $5abb: $ff
	ld   bc, $0eff                                   ; $5abc: $01 $ff $0e
	cp   $f2                                         ; $5abf: $fe $f2
	db   $fd                                         ; $5ac1: $fd
	ld   sp, hl                                      ; $5ac2: $f9
	ei                                               ; $5ac3: $fb
	inc  de                                          ; $5ac4: $13
	rst  $30                                         ; $5ac5: $f7
	add  a                                           ; $5ac6: $87
	rst  $28                                         ; $5ac7: $ef
	adc  a                                           ; $5ac8: $8f
	add  b                                           ; $5ac9: $80
	rst  JumpTable                                         ; $5aca: $df
	add  b                                           ; $5acb: $80
	cp   a                                           ; $5acc: $bf
	add  b                                           ; $5acd: $80
	ld   a, a                                        ; $5ace: $7f
	adc  c                                           ; $5acf: $89
	rst  $38                                         ; $5ad0: $ff
	add  b                                           ; $5ad1: $80
	cp   $80                                         ; $5ad2: $fe $80
	ld   hl, sp+$20                                  ; $5ad4: $f8 $20
	pop  hl                                          ; $5ad6: $e1
	ldh  [$c3], a                                    ; $5ad7: $e0 $c3
	ret  nz                                          ; $5ad9: $c0

	add  [hl]                                        ; $5ada: $86
	add  b                                           ; $5adb: $80
	inc  c                                           ; $5adc: $0c
	nop                                              ; $5add: $00
	or   $fc                                         ; $5ade: $f6 $fc
	db   $fd                                         ; $5ae0: $fd
	cp   $02                                         ; $5ae1: $fe $02
	inc  bc                                          ; $5ae3: $03
	jr   c, jr_094_5ae6                              ; $5ae4: $38 $00

jr_094_5ae6:
	rst  $38                                         ; $5ae6: $ff
	nop                                              ; $5ae7: $00
	call nz, $0d01                                   ; $5ae8: $c4 $01 $0d
	inc  bc                                          ; $5aeb: $03
	inc  sp                                          ; $5aec: $33
	rrca                                             ; $5aed: $0f
	jr   nc, jr_094_5af0                             ; $5aee: $30 $00

jr_094_5af0:
	add  b                                           ; $5af0: $80
	nop                                              ; $5af1: $00
	ld   [hl], b                                     ; $5af2: $70
	add  b                                           ; $5af3: $80
	ld   a, a                                        ; $5af4: $7f
	nop                                              ; $5af5: $00
	ldh  a, [$80]                                    ; $5af6: $f0 $80
	rrca                                             ; $5af8: $0f
	add  h                                           ; $5af9: $84
	rst  $38                                         ; $5afa: $ff
	dec  bc                                          ; $5afb: $0b
	ld   a, a                                        ; $5afc: $7f
	cp   $3e                                         ; $5afd: $fe $3e
	ld   a, [hl]                                     ; $5aff: $7e
	ld   e, $be                                      ; $5b00: $1e $be

jr_094_5b02:
	ld   c, $4f                                      ; $5b02: $0e $4f
	adc  a                                           ; $5b04: $8f
	cp   a                                           ; $5b05: $bf
	rst  ToBoot                                         ; $5b06: $c7
	rst  $10                                         ; $5b07: $d7
	add  b                                           ; $5b08: $80
	rst  $20                                         ; $5b09: $e7
	add  b                                           ; $5b0a: $80
	di                                               ; $5b0b: $f3
	ld   [bc], a                                     ; $5b0c: $02
	cp   $3e                                         ; $5b0d: $fe $3e
	ccf                                              ; $5b0f: $3f
	add  b                                           ; $5b10: $80
	rra                                              ; $5b11: $1f
	add  b                                           ; $5b12: $80
	rrca                                             ; $5b13: $0f
	add  b                                           ; $5b14: $80
	rlca                                             ; $5b15: $07
	add  b                                           ; $5b16: $80
	add  a                                           ; $5b17: $87
	add  b                                           ; $5b18: $80
	jp   $e380                                       ; $5b19: $c3 $80 $e3


	add  b                                           ; $5b1c: $80
	rlca                                             ; $5b1d: $07
	inc  b                                           ; $5b1e: $04
	add  e                                           ; $5b1f: $83
	inc  bc                                          ; $5b20: $03
	ld   b, e                                        ; $5b21: $43
	add  e                                           ; $5b22: $83
	and  c                                           ; $5b23: $a1
	add  c                                           ; $5b24: $81
	pop  bc                                          ; $5b25: $c1
	ld   [bc], a                                     ; $5b26: $02
	pop  de                                          ; $5b27: $d1
	pop  hl                                          ; $5b28: $e1
	add  sp, -$80                                    ; $5b29: $e8 $80
	ld   [hl], b                                     ; $5b2b: $70
	ld   [bc], a                                     ; $5b2c: $02
	or   b                                           ; $5b2d: $b0
	adc  e                                           ; $5b2e: $8b
	jp   $e080                                       ; $5b2f: $c3 $80 $e0


	add  b                                           ; $5b32: $80
	ldh  a, [$80]                                    ; $5b33: $f0 $80
	ld   hl, sp-$80                                  ; $5b35: $f8 $80
	db   $fc                                         ; $5b37: $fc
	add  b                                           ; $5b38: $80
	cp   $82                                         ; $5b39: $fe $82
	rst  $38                                         ; $5b3b: $ff
	inc  bc                                          ; $5b3c: $03
	db   $fc                                         ; $5b3d: $fc
	ld   hl, sp-$06                                  ; $5b3e: $f8 $fa
	db   $fc                                         ; $5b40: $fc
	add  b                                           ; $5b41: $80
	ld   a, h                                        ; $5b42: $7c
	ld   bc, $1e1d                                   ; $5b43: $01 $1d $1e
	add  b                                           ; $5b46: $80
	ld   c, $80                                      ; $5b47: $0e $80
	ld   b, $80                                      ; $5b49: $06 $80
	ld   [bc], a                                     ; $5b4b: $02
	ld   [bc], a                                     ; $5b4c: $02
	add  b                                           ; $5b4d: $80
	add  c                                           ; $5b4e: $81
	inc  e                                           ; $5b4f: $1c
	add  c                                           ; $5b50: $81
	db   $ec                                         ; $5b51: $ec
	add  [hl]                                        ; $5b52: $86
	add  sp, $01                                     ; $5b53: $e8 $01
	db   $fc                                         ; $5b55: $fc
	db   $f4                                         ; $5b56: $f4
	add  b                                           ; $5b57: $80
	ld   [hl], h                                     ; $5b58: $74
	add  hl, bc                                      ; $5b59: $09
	add  hl, de                                      ; $5b5a: $19
	and  b                                           ; $5b5b: $a0
	and  c                                           ; $5b5c: $a1
	and  b                                           ; $5b5d: $a0
	ld   b, e                                        ; $5b5e: $43
	ld   h, e                                        ; $5b5f: $63
	ld   b, b                                        ; $5b60: $40
	ld   bc, $0100                                   ; $5b61: $01 $00 $01
	add  c                                           ; $5b64: $81
	db   $10                                         ; $5b65: $10
	dec  bc                                          ; $5b66: $0b
	nop                                              ; $5b67: $00
	jr   jr_094_5b7a                                 ; $5b68: $18 $10

	cp   h                                           ; $5b6a: $bc
	nop                                              ; $5b6b: $00
	add  $00                                         ; $5b6c: $c6 $00
	ld   h, e                                        ; $5b6e: $63
	nop                                              ; $5b6f: $00
	or   b                                           ; $5b70: $b0
	add  b                                           ; $5b71: $80
	ld   e, c                                        ; $5b72: $59
	add  b                                           ; $5b73: $80
	ret  nz                                          ; $5b74: $c0

	rlca                                             ; $5b75: $07
	ld   b, b                                        ; $5b76: $40
	inc  c                                           ; $5b77: $0c
	nop                                              ; $5b78: $00
	rlca                                             ; $5b79: $07

jr_094_5b7a:
	nop                                              ; $5b7a: $00
	inc  sp                                          ; $5b7b: $33
	nop                                              ; $5b7c: $00
	jr   nz, jr_094_5b02                             ; $5b7d: $20 $83

	nop                                              ; $5b7f: $00
	add  hl, bc                                      ; $5b80: $09
	add  b                                           ; $5b81: $80
	nop                                              ; $5b82: $00
	add  c                                           ; $5b83: $81
	ld   bc, $0333                                   ; $5b84: $01 $33 $03
	rst  $28                                         ; $5b87: $ef
	inc  c                                           ; $5b88: $0c
	call $800d                                       ; $5b89: $cd $0d $80
	dec  e                                           ; $5b8c: $1d
	inc  c                                           ; $5b8d: $0c
	ld   a, $3a                                      ; $5b8e: $3e $3a
	ld   a, h                                        ; $5b90: $7c
	ld   [hl], h                                     ; $5b91: $74
	db   $f4                                         ; $5b92: $f4
	push hl                                          ; $5b93: $e5
	xor  c                                           ; $5b94: $a9
	res  2, e                                        ; $5b95: $cb $93
	db   $10                                         ; $5b97: $10
	add  b                                           ; $5b98: $80
	add  e                                           ; $5b99: $83
	di                                               ; $5b9a: $f3
	add  e                                           ; $5b9b: $83
	rrca                                             ; $5b9c: $0f
	ld   b, $01                                      ; $5b9d: $06 $01
	ld   c, $00                                      ; $5b9f: $0e $00
	dec  c                                           ; $5ba1: $0d
	ld   bc, $090d                                   ; $5ba2: $01 $0d $09
	add  c                                           ; $5ba5: $81
	dec  bc                                          ; $5ba6: $0b
	ld   [bc], a                                     ; $5ba7: $02
	jp   $cfff                                       ; $5ba8: $c3 $ff $cf


	add  b                                           ; $5bab: $80
	cp   a                                           ; $5bac: $bf
	add  b                                           ; $5bad: $80
	ld   a, a                                        ; $5bae: $7f
	add  a                                           ; $5baf: $87
	rst  $38                                         ; $5bb0: $ff
	add  b                                           ; $5bb1: $80
	db   $fc                                         ; $5bb2: $fc
	add  b                                           ; $5bb3: $80
	di                                               ; $5bb4: $f3
	adc  d                                           ; $5bb5: $8a
	rst  $38                                         ; $5bb6: $ff
	ld   [bc], a                                     ; $5bb7: $02
	rra                                              ; $5bb8: $1f
	nop                                              ; $5bb9: $00
	ldh  [$87], a                                    ; $5bba: $e0 $87
	rst  $38                                         ; $5bbc: $ff
	add  b                                           ; $5bbd: $80
	ldh  a, [rSC]                                    ; $5bbe: $f0 $02
	jp   $fcc0                                       ; $5bc0: $c3 $c0 $fc


	add  b                                           ; $5bc3: $80
	ccf                                              ; $5bc4: $3f
	add  h                                           ; $5bc5: $84
	rst  $38                                         ; $5bc6: $ff
	rlca                                             ; $5bc7: $07
	ld   hl, sp-$01                                  ; $5bc8: $f8 $ff
	ret  nz                                          ; $5bca: $c0

	rst  $38                                         ; $5bcb: $ff
	nop                                              ; $5bcc: $00
	rst  JumpTable                                         ; $5bcd: $df
	nop                                              ; $5bce: $00
	rst  $20                                         ; $5bcf: $e7
	add  h                                           ; $5bd0: $84
	rst  $38                                         ; $5bd1: $ff
	add  hl, bc                                      ; $5bd2: $09
	nop                                              ; $5bd3: $00
	rst  $38                                         ; $5bd4: $ff
	nop                                              ; $5bd5: $00
	ld   a, a                                        ; $5bd6: $7f
	nop                                              ; $5bd7: $00
	rst  $38                                         ; $5bd8: $ff
	nop                                              ; $5bd9: $00
	rst  $38                                         ; $5bda: $ff
	nop                                              ; $5bdb: $00
	add  b                                           ; $5bdc: $80
	add  b                                           ; $5bdd: $80
	ld   sp, hl                                      ; $5bde: $f9
	add  b                                           ; $5bdf: $80
	db   $fd                                         ; $5be0: $fd
	add  b                                           ; $5be1: $80
	cp   $0a                                         ; $5be2: $fe $0a
	ld   a, a                                        ; $5be4: $7f
	rst  $38                                         ; $5be5: $ff
	rrca                                             ; $5be6: $0f
	rst  $38                                         ; $5be7: $ff
	inc  bc                                          ; $5be8: $03
	db   $eb                                         ; $5be9: $eb
	nop                                              ; $5bea: $00
	rst  $38                                         ; $5beb: $ff
	nop                                              ; $5bec: $00
	ld   a, e                                        ; $5bed: $7b
	db   $e3                                         ; $5bee: $e3
	add  b                                           ; $5bef: $80
	pop  af                                          ; $5bf0: $f1
	add  c                                           ; $5bf1: $81
	ld   sp, hl                                      ; $5bf2: $f9
	add  c                                           ; $5bf3: $81
	ld   a, c                                        ; $5bf4: $79
	ld   [$a07f], sp                                 ; $5bf5: $08 $7f $a0
	cp   a                                           ; $5bf8: $bf
	nop                                              ; $5bf9: $00
	sbc  a                                           ; $5bfa: $9f
	nop                                              ; $5bfb: $00
	add  e                                           ; $5bfc: $83
	sbc  b                                           ; $5bfd: $98
	cp   d                                           ; $5bfe: $ba

Call_094_5bff:
	add  b                                           ; $5bff: $80
	adc  h                                           ; $5c00: $8c
	ld   bc, $b584                                   ; $5c01: $01 $84 $b5
	add  b                                           ; $5c04: $80
	add  $07                                         ; $5c05: $c6 $07
	jp   Jump_094_43cb                               ; $5c07: $c3 $cb $43


	push de                                          ; $5c0a: $d5
	ld   bc, $00fc                                   ; $5c0b: $01 $fc $00
	di                                               ; $5c0e: $f3
	add  c                                           ; $5c0f: $81
	ld   a, a                                        ; $5c10: $7f
	add  d                                           ; $5c11: $82
	ccf                                              ; $5c12: $3f
	nop                                              ; $5c13: $00
	sbc  a                                           ; $5c14: $9f
	add  c                                           ; $5c15: $81

jr_094_5c16:
	rra                                              ; $5c16: $1f
	inc  b                                           ; $5c17: $04
	ld   c, a                                        ; $5c18: $4f
	adc  a                                           ; $5c19: $8f
	xor  a                                           ; $5c1a: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c1b: $cf
	pop  hl                                          ; $5c1c: $e1
	add  b                                           ; $5c1d: $80
	pop  bc                                          ; $5c1e: $c1
	nop                                              ; $5c1f: $00
	ret  nz                                          ; $5c20: $c0

	add  b                                           ; $5c21: $80
	ldh  [rSB], a                                    ; $5c22: $e0 $01
	db   $e3                                         ; $5c24: $e3
	ldh  [$80], a                                    ; $5c25: $e0 $80
	ldh  a, [rP1]                                    ; $5c27: $f0 $00
	or   $81                                         ; $5c29: $f6 $81
	ldh  a, [$80]                                    ; $5c2b: $f0 $80
	ld   hl, sp+$04                                  ; $5c2d: $f8 $04
	add  d                                           ; $5c2f: $82
	ld   a, d                                        ; $5c30: $7a
	rst  $38                                         ; $5c31: $ff
	db   $fd                                         ; $5c32: $fd
	rst  $38                                         ; $5c33: $ff
	add  c                                           ; $5c34: $81
	cp   $86                                         ; $5c35: $fe $86
	rst  $38                                         ; $5c37: $ff
	inc  b                                           ; $5c38: $04
	db   $db                                         ; $5c39: $db
	jr   @+$19                                       ; $5c3a: $18 $17

	dec  e                                           ; $5c3c: $1d
	add  hl, hl                                      ; $5c3d: $29
	add  b                                           ; $5c3e: $80
	ld   c, $01                                      ; $5c3f: $0e $01
	rrca                                             ; $5c41: $0f
	adc  a                                           ; $5c42: $8f
	add  e                                           ; $5c43: $83
	rrca                                             ; $5c44: $0f
	ld   b, $1e                                      ; $5c45: $06 $1e
	ld   b, $88                                      ; $5c47: $06 $88
	nop                                              ; $5c49: $00
	rrca                                             ; $5c4a: $0f
	ld   c, $fe                                      ; $5c4b: $0e $fe
	add  b                                           ; $5c4d: $80
	ld   bc, $ff80                                   ; $5c4e: $01 $80 $ff
	add  b                                           ; $5c51: $80
	cp   $03                                         ; $5c52: $fe $03
	db   $fd                                         ; $5c54: $fd
	adc  l                                           ; $5c55: $8d
	adc  e                                           ; $5c56: $8b
	dec  sp                                          ; $5c57: $3b
	add  b                                           ; $5c58: $80
	scf                                              ; $5c59: $37
	rlca                                             ; $5c5a: $07
	inc  sp                                          ; $5c5b: $33
	di                                               ; $5c5c: $f3

Jump_094_5c5d:
	ld   b, $26                                      ; $5c5d: $06 $26
	rst  $28                                         ; $5c5f: $ef
	ld   c, a                                        ; $5c60: $4f
	cp   a                                           ; $5c61: $bf
	ccf                                              ; $5c62: $3f
	add  h                                           ; $5c63: $84
	rst  $38                                         ; $5c64: $ff
	ld   [bc], a                                     ; $5c65: $02
	rst  $30                                         ; $5c66: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c67: $cf
	dec  sp                                          ; $5c68: $3b
	add  b                                           ; $5c69: $80
	cp   e                                           ; $5c6a: $bb
	inc  c                                           ; $5c6b: $0c
	dec  sp                                          ; $5c6c: $3b
	cp   b                                           ; $5c6d: $b8
	cp   e                                           ; $5c6e: $bb
	cp   b                                           ; $5c6f: $b8
	or   h                                           ; $5c70: $b4
	or   b                                           ; $5c71: $b0
	xor  b                                           ; $5c72: $a8
	and  b                                           ; $5c73: $a0
	sub  b                                           ; $5c74: $90
	add  b                                           ; $5c75: $80
	and  b                                           ; $5c76: $a0
	add  b                                           ; $5c77: $80
	ld   c, a                                        ; $5c78: $4f
	add  c                                           ; $5c79: $81
	rlca                                             ; $5c7a: $07
	nop                                              ; $5c7b: $00
	rrca                                             ; $5c7c: $0f
	add  e                                           ; $5c7d: $83
	dec  bc                                          ; $5c7e: $0b
	rlca                                             ; $5c7f: $07
	rlca                                             ; $5c80: $07
	dec  c                                           ; $5c81: $0d
	rlca                                             ; $5c82: $07
	ld   c, $00                                      ; $5c83: $0e $00
	ld   c, $9e                                      ; $5c85: $0e $9e
	sbc  a                                           ; $5c87: $9f
	add  b                                           ; $5c88: $80
	add  a                                           ; $5c89: $87
	ld   [bc], a                                     ; $5c8a: $02
	and  c                                           ; $5c8b: $a1
	add  c                                           ; $5c8c: $81
	or   b                                           ; $5c8d: $b0
	add  c                                           ; $5c8e: $81
	add  b                                           ; $5c8f: $80
	add  b                                           ; $5c90: $80
	nop                                              ; $5c91: $00
	nop                                              ; $5c92: $00
	jr   jr_094_5c16                                 ; $5c93: $18 $81

	nop                                              ; $5c95: $00
	ld   bc, $fff7                                   ; $5c96: $01 $f7 $ff
	add  b                                           ; $5c99: $80
	cp   $82                                         ; $5c9a: $fe $82
	db   $fc                                         ; $5c9c: $fc
	add  b                                           ; $5c9d: $80
	ld   hl, sp-$7e                                  ; $5c9e: $f8 $82
	ld   a, b                                        ; $5ca0: $78
	dec  de                                          ; $5ca1: $1b
	ld   [hl], c                                     ; $5ca2: $71
	ld   [hl], b                                     ; $5ca3: $70
	dec  b                                           ; $5ca4: $05
	ld   hl, sp-$0b                                  ; $5ca5: $f8 $f5
	ldh  a, [$ea]                                    ; $5ca7: $f0 $ea
	ldh  [$d5], a                                    ; $5ca9: $e0 $d5
	ret  nz                                          ; $5cab: $c0

	xor  e                                           ; $5cac: $ab
	add  b                                           ; $5cad: $80
	ld   d, [hl]                                     ; $5cae: $56
	ld   bc, $032d                                   ; $5caf: $01 $2d $03
	sbc  e                                           ; $5cb2: $9b
	rlca                                             ; $5cb3: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cb4: $cf
	jr   @+$62                                       ; $5cb5: $18 $60

	ld   h, a                                        ; $5cb7: $67
	add  h                                           ; $5cb8: $84
	sbc  h                                           ; $5cb9: $9c
	jr   jr_094_5d34                                 ; $5cba: $18 $78

	ld   [hl], b                                     ; $5cbc: $70
	ldh  a, [$80]                                    ; $5cbd: $f0 $80
	ret  nz                                          ; $5cbf: $c0

	add  d                                           ; $5cc0: $82
	add  b                                           ; $5cc1: $80
	inc  de                                          ; $5cc2: $13
	rst  $38                                         ; $5cc3: $ff
	ld   a, a                                        ; $5cc4: $7f
	add  c                                           ; $5cc5: $81
	nop                                              ; $5cc6: $00
	inc  bc                                          ; $5cc7: $03
	ld   bc, $030f                                   ; $5cc8: $01 $0f $03
	ld   e, $0e                                      ; $5ccb: $1e $0e
	add  hl, sp                                      ; $5ccd: $39
	add  hl, de                                      ; $5cce: $19
	halt                                             ; $5ccf: $76
	ld   [hl], $ed                                   ; $5cd0: $36 $ed
	ld   l, l                                        ; $5cd2: $6d
	inc  e                                           ; $5cd3: $1c
	sbc  h                                           ; $5cd4: $9c
	di                                               ; $5cd5: $f3
	ld   [hl], e                                     ; $5cd6: $73
	add  b                                           ; $5cd7: $80
	call z, $3380                                    ; $5cd8: $cc $80 $33
	add  b                                           ; $5cdb: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cdc: $cf
	add  b                                           ; $5cdd: $80
	inc  a                                           ; $5cde: $3c
	dec  b                                           ; $5cdf: $05
	ld   [hl], b                                     ; $5ce0: $70
	ld   [hl], e                                     ; $5ce1: $73
	jp   Jump_094_70cf                               ; $5ce2: $c3 $cf $70


	ld   a, a                                        ; $5ce5: $7f
	add  b                                           ; $5ce6: $80
	add  b                                           ; $5ce7: $80
	add  b                                           ; $5ce8: $80
	ld   a, a                                        ; $5ce9: $7f
	add  b                                           ; $5cea: $80
	rst  $38                                         ; $5ceb: $ff
	add  b                                           ; $5cec: $80
	add  b                                           ; $5ced: $80
	inc  bc                                          ; $5cee: $03
	nop                                              ; $5cef: $00
	ld   a, a                                        ; $5cf0: $7f
	ld   b, b                                        ; $5cf1: $40
	ret  nz                                          ; $5cf2: $c0

	add  b                                           ; $5cf3: $80
	nop                                              ; $5cf4: $00
	ld   bc, $8c73                                   ; $5cf5: $01 $73 $8c
	add  b                                           ; $5cf8: $80
	ld   [hl], e                                     ; $5cf9: $73
	add  b                                           ; $5cfa: $80
	adc  h                                           ; $5cfb: $8c
	add  b                                           ; $5cfc: $80
	di                                               ; $5cfd: $f3
	add  b                                           ; $5cfe: $80
	ld   a, h                                        ; $5cff: $7c
	ld   b, $0c                                      ; $5d00: $06 $0c
	adc  h                                           ; $5d02: $8c
	ld   [hl], e                                     ; $5d03: $73
	inc  bc                                          ; $5d04: $03
	ld   e, $0e                                      ; $5d05: $1e $0e
	ldh  [$80], a                                    ; $5d07: $e0 $80
	rst  $28                                         ; $5d09: $ef
	dec  c                                           ; $5d0a: $0d
	ccf                                              ; $5d0b: $3f
	rst  $38                                         ; $5d0c: $ff
	ld   e, $bf                                      ; $5d0d: $1e $bf
	nop                                              ; $5d0f: $00
	ld   a, [hl]                                     ; $5d10: $7e
	nop                                              ; $5d11: $00
	rst  $20                                         ; $5d12: $e7
	nop                                              ; $5d13: $00
	ld   a, a                                        ; $5d14: $7f
	nop                                              ; $5d15: $00
	cp   $00                                         ; $5d16: $fe $00
	ld   a, b                                        ; $5d18: $78
	add  c                                           ; $5d19: $81
	db   $fc                                         ; $5d1a: $fc
	ld   [bc], a                                     ; $5d1b: $02
	db   $fd                                         ; $5d1c: $fd
	nop                                              ; $5d1d: $00
	rst  $38                                         ; $5d1e: $ff
	add  c                                           ; $5d1f: $81
	nop                                              ; $5d20: $00
	ld   [bc], a                                     ; $5d21: $02
	db   $fc                                         ; $5d22: $fc
	nop                                              ; $5d23: $00
	db   $fc                                         ; $5d24: $fc
	add  c                                           ; $5d25: $81
	nop                                              ; $5d26: $00
	nop                                              ; $5d27: $00
	ld   bc, $0083                                   ; $5d28: $01 $83 $00
	ld   b, $e0                                      ; $5d2b: $06 $e0
	nop                                              ; $5d2d: $00
	db   $fd                                         ; $5d2e: $fd
	nop                                              ; $5d2f: $00
	rra                                              ; $5d30: $1f
	nop                                              ; $5d31: $00
	inc  bc                                          ; $5d32: $03
	add  c                                           ; $5d33: $81

jr_094_5d34:
	nop                                              ; $5d34: $00
	ld   bc, $868e                                   ; $5d35: $01 $8e $86
	add  d                                           ; $5d38: $82
	call nz, $e581                                   ; $5d39: $c4 $81 $e5
	rlca                                             ; $5d3c: $07
	ld   h, l                                        ; $5d3d: $65
	ld   a, l                                        ; $5d3e: $7d
	ld   [hl], h                                     ; $5d3f: $74
	pop  af                                          ; $5d40: $f1
	sub  b                                           ; $5d41: $90
	ldh  a, [$e0]                                    ; $5d42: $f0 $e0
	adc  a                                           ; $5d44: $8f
	add  b                                           ; $5d45: $80
	ld   c, a                                        ; $5d46: $4f
	dec  c                                           ; $5d47: $0d
	ld   a, $be                                      ; $5d48: $3e $be
	ld   [hl], c                                     ; $5d4a: $71
	halt                                             ; $5d4b: $76
	ld   c, b                                        ; $5d4c: $48
	ld   [hl], b                                     ; $5d4d: $70
	nop                                              ; $5d4e: $00
	ld   b, e                                        ; $5d4f: $43
	nop                                              ; $5d50: $00
	adc  a                                           ; $5d51: $8f
	inc  bc                                          ; $5d52: $03
	ccf                                              ; $5d53: $3f
	rrca                                             ; $5d54: $0f
	ret  nz                                          ; $5d55: $c0

	add  b                                           ; $5d56: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d57: $cf
	ld   b, $3e                                      ; $5d58: $06 $3e

Jump_094_5d5a:
	rst  $38                                         ; $5d5a: $ff
	jr   nc, jr_094_5d99                             ; $5d5b: $30 $3c

	inc  c                                           ; $5d5d: $0c
	call c, $801c                                    ; $5d5e: $dc $1c $80
	ld   sp, $6101                                   ; $5d61: $31 $01 $61
	ld   h, b                                        ; $5d64: $60
	add  b                                           ; $5d65: $80
	ldh  [$03], a                                    ; $5d66: $e0 $03
	ld   a, a                                        ; $5d68: $7f
	nop                                              ; $5d69: $00
	add  c                                           ; $5d6a: $81
	ld   bc, $0380                                   ; $5d6b: $01 $80 $03
	add  b                                           ; $5d6e: $80
	rrca                                             ; $5d6f: $0f
	add  b                                           ; $5d70: $80
	rra                                              ; $5d71: $1f
	add  b                                           ; $5d72: $80
	ccf                                              ; $5d73: $3f
	add  b                                           ; $5d74: $80
	ld   a, a                                        ; $5d75: $7f
	db   $10                                         ; $5d76: $10
	rst  $38                                         ; $5d77: $ff
	ld   a, [hl]                                     ; $5d78: $7e
	adc  h                                           ; $5d79: $8c
	ld   c, $04                                      ; $5d7a: $0e $04
	rrca                                             ; $5d7c: $0f
	nop                                              ; $5d7d: $00
	rrca                                             ; $5d7e: $0f
	nop                                              ; $5d7f: $00
	rrca                                             ; $5d80: $0f
	nop                                              ; $5d81: $00
	rrca                                             ; $5d82: $0f
	ld   b, $0f                                      ; $5d83: $06 $0f
	ld   [$010f], sp                                 ; $5d85: $08 $0f $01
	add  b                                           ; $5d88: $80
	rrca                                             ; $5d89: $0f
	ld   bc, $8c00                                   ; $5d8a: $01 $00 $8c
	add  e                                           ; $5d8d: $83
	nop                                              ; $5d8e: $00
	dec  bc                                          ; $5d8f: $0b
	ret  nz                                          ; $5d90: $c0

	add  b                                           ; $5d91: $80
	ld   b, $80                                      ; $5d92: $06 $80
	ld   h, b                                        ; $5d94: $60
	ret  nz                                          ; $5d95: $c0

	ldh  a, [$e0]                                    ; $5d96: $f0 $e0
	add  e                                           ; $5d98: $83

jr_094_5d99:
	ld   [hl], b                                     ; $5d99: $70
	ld   [hl], e                                     ; $5d9a: $73
	ld   [hl], b                                     ; $5d9b: $70
	add  b                                           ; $5d9c: $80
	ld   h, b                                        ; $5d9d: $60
	add  [hl]                                        ; $5d9e: $86
	jr   nz, @+$04                                   ; $5d9f: $20 $02

	inc  hl                                          ; $5da1: $23
	jr   nz, jr_094_5e02                             ; $5da2: $20 $5e

	add  c                                           ; $5da4: $81
	rrca                                             ; $5da5: $0f
	nop                                              ; $5da6: $00
	rst  $28                                         ; $5da7: $ef
	add  a                                           ; $5da8: $87
	rra                                              ; $5da9: $1f
	dec  c                                           ; $5daa: $0d
	rst  $38                                         ; $5dab: $ff
	rrca                                             ; $5dac: $0f
	ld   d, c                                        ; $5dad: $51
	nop                                              ; $5dae: $00
	inc  bc                                          ; $5daf: $03
	ld   bc, $8387                                   ; $5db0: $01 $87 $83
	xor  $e6                                         ; $5db3: $ee $e6
	db   $fd                                         ; $5db5: $fd
	db   $ed                                         ; $5db6: $ed
	ld   sp, hl                                      ; $5db7: $f9
	reti                                             ; $5db8: $d9


	add  b                                           ; $5db9: $80
	jp   c, $f403                                    ; $5dba: $da $03 $f4

	or   h                                           ; $5dbd: $b4
	ld   e, e                                        ; $5dbe: $5b
	db   $db                                         ; $5dbf: $db
	add  b                                           ; $5dc0: $80
	or   a                                           ; $5dc1: $b7
	add  b                                           ; $5dc2: $80
	ld   l, [hl]                                     ; $5dc3: $6e
	rrca                                             ; $5dc4: $0f
	call c, $b9dd                                    ; $5dc5: $dc $dd $b9
	cp   e                                           ; $5dc8: $bb
	ld   [hl], e                                     ; $5dc9: $73
	ld   [hl], a                                     ; $5dca: $77
	rst  $20                                         ; $5dcb: $e7
	rst  $28                                         ; $5dcc: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5dcd: $cf
	rst  JumpTable                                         ; $5dce: $df
	sbc  b                                           ; $5dcf: $98
	cp   b                                           ; $5dd0: $b8
	jr   nc, jr_094_5e43                             ; $5dd1: $30 $70

jr_094_5dd3:
	ld   b, b                                        ; $5dd3: $40
	ret  nz                                          ; $5dd4: $c0

	add  d                                           ; $5dd5: $82
	add  b                                           ; $5dd6: $80
	adc  b                                           ; $5dd7: $88
	nop                                              ; $5dd8: $00
	rrca                                             ; $5dd9: $0f
	ld   bc, $0300                                   ; $5dda: $01 $00 $03
	ld   bc, $0307                                   ; $5ddd: $01 $07 $03
	ld   c, $06                                      ; $5de0: $0e $06
	inc  e                                           ; $5de2: $1c
	inc  c                                           ; $5de3: $0c
	add  hl, sp                                      ; $5de4: $39
	add  hl, de                                      ; $5de5: $19
	ld   e, c                                        ; $5de6: $59
	add  hl, de                                      ; $5de7: $19
	and  $66                                         ; $5de8: $e6 $66
	add  b                                           ; $5dea: $80
	ret                                              ; $5deb: $c9


	add  b                                           ; $5dec: $80
	sub  a                                           ; $5ded: $97
	add  b                                           ; $5dee: $80
	ld   l, $07                                      ; $5def: $2e $07
	ld   e, h                                        ; $5df1: $5c
	ld   e, l                                        ; $5df2: $5d
	cp   c                                           ; $5df3: $b9
	cp   e                                           ; $5df4: $bb
	ld   [hl], d                                     ; $5df5: $72
	halt                                             ; $5df6: $76
	add  b                                           ; $5df7: $80
	add  a                                           ; $5df8: $87
	add  b                                           ; $5df9: $80
	ld   a, [hl]                                     ; $5dfa: $7e
	add  b                                           ; $5dfb: $80
	ldh  [rTAC], a                                   ; $5dfc: $e0 $07
	sbc  b                                           ; $5dfe: $98
	add  b                                           ; $5dff: $80
	jr   c, jr_094_5e42                              ; $5e00: $38 $40

jr_094_5e02:
	jr   nz, @-$7e                                   ; $5e02: $20 $80

	ld   e, a                                        ; $5e04: $5f
	rra                                              ; $5e05: $1f
	add  b                                           ; $5e06: $80
	ccf                                              ; $5e07: $3f
	ld   [bc], a                                     ; $5e08: $02
	ld   h, b                                        ; $5e09: $60
	ldh  [rP1], a                                    ; $5e0a: $e0 $00
	add  b                                           ; $5e0c: $80
	rra                                              ; $5e0d: $1f
	add  l                                           ; $5e0e: $85
	nop                                              ; $5e0f: $00
	add  b                                           ; $5e10: $80
	add  c                                           ; $5e11: $81
	add  b                                           ; $5e12: $80
	and  $80                                         ; $5e13: $e6 $80
	rst  $38                                         ; $5e15: $ff
	add  b                                           ; $5e16: $80
	ld   [hl], e                                     ; $5e17: $73
	inc  bc                                          ; $5e18: $03
	jr   c, jr_094_5dd3                              ; $5e19: $38 $b8

	sbc  h                                           ; $5e1b: $9c
	inc  e                                           ; $5e1c: $1c
	add  d                                           ; $5e1d: $82
	rrca                                             ; $5e1e: $0f
	add  hl, bc                                      ; $5e1f: $09

jr_094_5e20:
	inc  bc                                          ; $5e20: $03
	inc  sp                                          ; $5e21: $33
	jr   nc, jr_094_5e20                             ; $5e22: $30 $fc

	swap b                                           ; $5e24: $cb $30
	db   $dd                                         ; $5e26: $dd
	ret  c                                           ; $5e27: $d8

	db   $eb                                         ; $5e28: $eb
	jp   hl                                          ; $5e29: $e9


	add  b                                           ; $5e2a: $80
	ld   l, e                                        ; $5e2b: $6b
	add  b                                           ; $5e2c: $80
	ld   a, l                                        ; $5e2d: $7d
	add  b                                           ; $5e2e: $80
	cp   l                                           ; $5e2f: $bd
	add  b                                           ; $5e30: $80
	db   $dd                                         ; $5e31: $dd
	add  b                                           ; $5e32: $80
	db   $fc                                         ; $5e33: $fc
	inc  bc                                          ; $5e34: $03
	cp   a                                           ; $5e35: $bf
	ccf                                              ; $5e36: $3f
	ldh  a, [rSVBK]                                  ; $5e37: $f0 $70
	add  b                                           ; $5e39: $80
	cp   $86                                         ; $5e3a: $fe $86
	rst  $38                                         ; $5e3c: $ff
	add  b                                           ; $5e3d: $80
	rrca                                             ; $5e3e: $0f
	add  b                                           ; $5e3f: $80
	ret  nz                                          ; $5e40: $c0

	add  d                                           ; $5e41: $82

jr_094_5e42:
	nop                                              ; $5e42: $00

jr_094_5e43:
	ld   [bc], a                                     ; $5e43: $02
	rst  $20                                         ; $5e44: $e7
	add  sp, -$40                                    ; $5e45: $e8 $c0
	add  c                                           ; $5e47: $81
	ret  nc                                          ; $5e48: $d0

	nop                                              ; $5e49: $00
	add  b                                           ; $5e4a: $80
	add  c                                           ; $5e4b: $81
	and  b                                           ; $5e4c: $a0
	inc  bc                                          ; $5e4d: $03
	ld   a, $3d                                      ; $5e4e: $3e $3d
	ccf                                              ; $5e50: $3f
	inc  bc                                          ; $5e51: $03
	add  b                                           ; $5e52: $80
	nop                                              ; $5e53: $00
	nop                                              ; $5e54: $00
	rst  $38                                         ; $5e55: $ff
	add  a                                           ; $5e56: $87
	nop                                              ; $5e57: $00
	rrca                                             ; $5e58: $0f
	ld   [bc], a                                     ; $5e59: $02
	nop                                              ; $5e5a: $00
	nop                                              ; $5e5b: $00

Jump_094_5e5c:
	sub  e                                           ; $5e5c: $93
	rst  $38                                         ; $5e5d: $ff
	ld   bc, $ffe0                                   ; $5e5e: $01 $e0 $ff
	add  h                                           ; $5e61: $84
	ldh  a, [$80]                                    ; $5e62: $f0 $80
	pop  af                                          ; $5e64: $f1
	nop                                              ; $5e65: $00
	ldh  [$83], a                                    ; $5e66: $e0 $83
	rst  $38                                         ; $5e68: $ff
	ld   bc, $ff00                                   ; $5e69: $01 $00 $ff
	add  h                                           ; $5e6c: $84
	nop                                              ; $5e6d: $00
	add  b                                           ; $5e6e: $80
	rst  $38                                         ; $5e6f: $ff
	nop                                              ; $5e70: $00
	ld   de, $f18d                                   ; $5e71: $11 $8d $f1
	nop                                              ; $5e74: $00
	rra                                              ; $5e75: $1f
	sub  h                                           ; $5e76: $94
	rst  $38                                         ; $5e77: $ff
	ld   [bc], a                                     ; $5e78: $02
	ld   hl, sp-$01                                  ; $5e79: $f8 $ff
	rst  $30                                         ; $5e7b: $f7
	add  b                                           ; $5e7c: $80
	or   $80                                         ; $5e7d: $f6 $80
	pop  af                                          ; $5e7f: $f1
	ld   [bc], a                                     ; $5e80: $02
	rst  $38                                         ; $5e81: $ff
	rst  $28                                         ; $5e82: $ef
	ldh  [$80], a                                    ; $5e83: $e0 $80
	rst  $38                                         ; $5e85: $ff
	inc  b                                           ; $5e86: $04
	ld   hl, sp-$01                                  ; $5e87: $f8 $ff
	rst  $30                                         ; $5e89: $f7
	rst  $38                                         ; $5e8a: $ff
	rrca                                             ; $5e8b: $0f
	add  b                                           ; $5e8c: $80
	sbc  a                                           ; $5e8d: $9f
	add  b                                           ; $5e8e: $80
	ld   [hl], a                                     ; $5e8f: $77
	add  b                                           ; $5e90: $80
	or   $80                                         ; $5e91: $f6 $80
	cp   b                                           ; $5e93: $b8
	nop                                              ; $5e94: $00
	nop                                              ; $5e95: $00
	add  b                                           ; $5e96: $80
	rst  $38                                         ; $5e97: $ff
	ld   [bc], a                                     ; $5e98: $02
	rra                                              ; $5e99: $1f
	rst  $38                                         ; $5e9a: $ff
	ldh  [$82], a                                    ; $5e9b: $e0 $82
	rst  $38                                         ; $5e9d: $ff
	add  b                                           ; $5e9e: $80
	ld   a, a                                        ; $5e9f: $7f
	add  d                                           ; $5ea0: $82
	rst  $38                                         ; $5ea1: $ff
	nop                                              ; $5ea2: $00
	nop                                              ; $5ea3: $00
	add  b                                           ; $5ea4: $80
	rst  $38                                         ; $5ea5: $ff
	inc  b                                           ; $5ea6: $04
	rst  ToBoot                                         ; $5ea7: $c7
	rst  $38                                         ; $5ea8: $ff
	add  hl, sp                                      ; $5ea9: $39
	rst  $38                                         ; $5eaa: $ff
	cp   $81                                         ; $5eab: $fe $81
	rst  $38                                         ; $5ead: $ff
	add  b                                           ; $5eae: $80
	db   $fd                                         ; $5eaf: $fd
	add  b                                           ; $5eb0: $80
	cp   $01                                         ; $5eb1: $fe $01
	rst  $38                                         ; $5eb3: $ff
	nop                                              ; $5eb4: $00
	add  [hl]                                        ; $5eb5: $86
	rst  $38                                         ; $5eb6: $ff
	rlca                                             ; $5eb7: $07
	ld   a, a                                        ; $5eb8: $7f
	rst  $38                                         ; $5eb9: $ff
	cp   a                                           ; $5eba: $bf
	rst  $38                                         ; $5ebb: $ff
	sbc  a                                           ; $5ebc: $9f
	cp   a                                           ; $5ebd: $bf
	rrca                                             ; $5ebe: $0f
	rst  $28                                         ; $5ebf: $ef
	add  l                                           ; $5ec0: $85
	rst  $38                                         ; $5ec1: $ff
	dec  d                                           ; $5ec2: $15
	cp   $ff                                         ; $5ec3: $fe $ff
	ld   hl, sp-$01                                  ; $5ec5: $f8 $ff
	pop  hl                                          ; $5ec7: $e1
	cp   $87                                         ; $5ec8: $fe $87
	ld   sp, hl                                      ; $5eca: $f9
	sbc  c                                           ; $5ecb: $99
	rst  $38                                         ; $5ecc: $ff
	ld   hl, sp-$01                                  ; $5ecd: $f8 $ff
	pop  hl                                          ; $5ecf: $e1
	cp   $87                                         ; $5ed0: $fe $87
	ld   sp, hl                                      ; $5ed2: $f9
	ld   a, [de]                                     ; $5ed3: $1a
	ldh  [c], a                                      ; $5ed4: $e2
	ld   [hl], l                                     ; $5ed5: $75
	sub  l                                           ; $5ed6: $95
	xor  d                                           ; $5ed7: $aa
	ld   a, [hl+]                                    ; $5ed8: $2a
	add  b                                           ; $5ed9: $80
	ld   d, l                                        ; $5eda: $55
	nop                                              ; $5edb: $00
	ld   [hl], c                                     ; $5edc: $71
	adc  l                                           ; $5edd: $8d
	adc  c                                           ; $5ede: $89
	ld   [bc], a                                     ; $5edf: $02
	rlca                                             ; $5ee0: $07
	rst  $38                                         ; $5ee1: $ff
	nop                                              ; $5ee2: $00
	add  b                                           ; $5ee3: $80
	rst  $38                                         ; $5ee4: $ff
	nop                                              ; $5ee5: $00
	nop                                              ; $5ee6: $00
	add  b                                           ; $5ee7: $80
	xor  d                                           ; $5ee8: $aa
	add  b                                           ; $5ee9: $80
	ld   d, l                                        ; $5eea: $55
	add  d                                           ; $5eeb: $82
	rst  $38                                         ; $5eec: $ff
	add  b                                           ; $5eed: $80
	nop                                              ; $5eee: $00
	add  b                                           ; $5eef: $80
	rst  $38                                         ; $5ef0: $ff
	nop                                              ; $5ef1: $00
	nop                                              ; $5ef2: $00
	add  b                                           ; $5ef3: $80
	rst  $38                                         ; $5ef4: $ff
	nop                                              ; $5ef5: $00
	nop                                              ; $5ef6: $00
	add  b                                           ; $5ef7: $80
	xor  d                                           ; $5ef8: $aa
	add  b                                           ; $5ef9: $80
	ld   d, l                                        ; $5efa: $55
	add  b                                           ; $5efb: $80
	rst  $38                                         ; $5efc: $ff
	add  b                                           ; $5efd: $80
	cp   $80                                         ; $5efe: $fe $80
	nop                                              ; $5f00: $00
	add  b                                           ; $5f01: $80
	rst  JumpTable                                         ; $5f02: $df
	inc  bc                                          ; $5f03: $03
	ld   e, $de                                      ; $5f04: $1e $de
	db   $fd                                         ; $5f06: $fd
	dec  a                                           ; $5f07: $3d
	add  b                                           ; $5f08: $80
	cp   e                                           ; $5f09: $bb
	add  hl, bc                                      ; $5f0a: $09
	ld   [hl], a                                     ; $5f0b: $77
	ld   d, e                                        ; $5f0c: $53
	ld   c, e                                        ; $5f0d: $4b
	rlca                                             ; $5f0e: $07
	add  a                                           ; $5f0f: $87
	and  a                                           ; $5f10: $a7
	sub  a                                           ; $5f11: $97
	inc  c                                           ; $5f12: $0c
	xor  d                                           ; $5f13: $aa
	ld   a, c                                        ; $5f14: $79
	add  b                                           ; $5f15: $80
	ldh  a, [$80]                                    ; $5f16: $f0 $80
	ldh  [$80], a                                    ; $5f18: $e0 $80
	ret  nz                                          ; $5f1a: $c0

	add  b                                           ; $5f1b: $80
	adc  [hl]                                        ; $5f1c: $8e
	add  b                                           ; $5f1d: $80
	cp   a                                           ; $5f1e: $bf
	inc  bc                                          ; $5f1f: $03
	cp   $7e                                         ; $5f20: $fe $7e
	ld   [hl], h                                     ; $5f22: $74
	db   $f4                                         ; $5f23: $f4
	add  b                                           ; $5f24: $80
	ccf                                              ; $5f25: $3f
	add  b                                           ; $5f26: $80
	ld   a, a                                        ; $5f27: $7f
	add  b                                           ; $5f28: $80
	cp   a                                           ; $5f29: $bf
	add  b                                           ; $5f2a: $80
	ld   a, a                                        ; $5f2b: $7f
	ld   [$797d], sp                                 ; $5f2c: $08 $7d $79
	ld   a, d                                        ; $5f2f: $7a
	ld   a, h                                        ; $5f30: $7c
	sbc  l                                           ; $5f31: $9d
	sbc  [hl]                                        ; $5f32: $9e
	adc  [hl]                                        ; $5f33: $8e
	add  [hl]                                        ; $5f34: $86
	or   $81                                         ; $5f35: $f6 $81
	rst  $38                                         ; $5f37: $ff
	ld   c, $f3                                      ; $5f38: $0e $f3
	ldh  a, [c]                                      ; $5f3a: $f2
	db   $fd                                         ; $5f3b: $fd
	ld   hl, sp-$05                                  ; $5f3c: $f8 $fb
	db   $fc                                         ; $5f3e: $fc
	ld   a, h                                        ; $5f3f: $7c
	ld   e, $de                                      ; $5f40: $1e $de
	ld   b, $66                                      ; $5f42: $06 $66
	ld   b, b                                        ; $5f44: $40
	ld   a, b                                        ; $5f45: $78
	ld   b, a                                        ; $5f46: $47
	ld   d, b                                        ; $5f47: $50
	add  b                                           ; $5f48: $80
	daa                                              ; $5f49: $27
	dec  c                                           ; $5f4a: $0d
	jr   nc, jr_094_5f87                             ; $5f4b: $30 $3a

	ld   a, d                                        ; $5f4d: $7a
	ld   sp, hl                                      ; $5f4e: $f9
	ld   a, c                                        ; $5f4f: $79
	or   l                                           ; $5f50: $b5
	dec  [hl]                                        ; $5f51: $35
	ld   e, c                                        ; $5f52: $59
	sbc  c                                           ; $5f53: $99
	xor  h                                           ; $5f54: $ac
	call z, $ffdf                                    ; $5f55: $cc $df $ff
	nop                                              ; $5f58: $00
	add  b                                           ; $5f59: $80
	rst  $38                                         ; $5f5a: $ff
	nop                                              ; $5f5b: $00
	nop                                              ; $5f5c: $00
	add  b                                           ; $5f5d: $80
	xor  d                                           ; $5f5e: $aa
	add  b                                           ; $5f5f: $80
	ld   d, l                                        ; $5f60: $55
	add  b                                           ; $5f61: $80
	cp   $80                                         ; $5f62: $fe $80
	rst  $38                                         ; $5f64: $ff
	add  b                                           ; $5f65: $80
	nop                                              ; $5f66: $00
	add  b                                           ; $5f67: $80
	rst  $38                                         ; $5f68: $ff
	nop                                              ; $5f69: $00
	nop                                              ; $5f6a: $00
	add  b                                           ; $5f6b: $80
	rst  $38                                         ; $5f6c: $ff
	nop                                              ; $5f6d: $00
	nop                                              ; $5f6e: $00
	add  b                                           ; $5f6f: $80
	xor  d                                           ; $5f70: $aa
	add  b                                           ; $5f71: $80
	ld   d, l                                        ; $5f72: $55
	add  b                                           ; $5f73: $80
	xor  d                                           ; $5f74: $aa
	add  b                                           ; $5f75: $80
	ld   d, l                                        ; $5f76: $55
	add  b                                           ; $5f77: $80
	nop                                              ; $5f78: $00
	dec  b                                           ; $5f79: $05
	ld   [bc], a                                     ; $5f7a: $02
	ld   h, d                                        ; $5f7b: $62
	ld   [hl], l                                     ; $5f7c: $75
	sub  l                                           ; $5f7d: $95
	xor  d                                           ; $5f7e: $aa
	ld   a, [hl+]                                    ; $5f7f: $2a

Call_094_5f80:
	add  b                                           ; $5f80: $80
	ld   d, l                                        ; $5f81: $55
	add  b                                           ; $5f82: $80
	jr   z, jr_094_5f8c                              ; $5f83: $28 $07

	ld   b, b                                        ; $5f85: $40
	ld   b, c                                        ; $5f86: $41

jr_094_5f87:
	nop                                              ; $5f87: $00
	ld   c, $05                                      ; $5f88: $0e $05
	ld   [hl], l                                     ; $5f8a: $75
	push de                                          ; $5f8b: $d5

jr_094_5f8c:
	xor  d                                           ; $5f8c: $aa
	add  b                                           ; $5f8d: $80
	ld   d, h                                        ; $5f8e: $54
	add  b                                           ; $5f8f: $80
	and  b                                           ; $5f90: $a0
	dec  b                                           ; $5f91: $05
	nop                                              ; $5f92: $00
	rlca                                             ; $5f93: $07
	ld   [bc], a                                     ; $5f94: $02
	ld   a, [hl-]                                    ; $5f95: $3a
	inc  d                                           ; $5f96: $14
	call nc, $a880                                   ; $5f97: $d4 $80 $a8
	add  b                                           ; $5f9a: $80
	ld   d, h                                        ; $5f9b: $54
	add  b                                           ; $5f9c: $80
	rst  $38                                         ; $5f9d: $ff
	add  [hl]                                        ; $5f9e: $86
	nop                                              ; $5f9f: $00
	add  b                                           ; $5fa0: $80
	ld   b, l                                        ; $5fa1: $45
	add  b                                           ; $5fa2: $80
	xor  d                                           ; $5fa3: $aa
	add  b                                           ; $5fa4: $80
	nop                                              ; $5fa5: $00
	add  b                                           ; $5fa6: $80
	rst  $38                                         ; $5fa7: $ff
	add  [hl]                                        ; $5fa8: $86
	nop                                              ; $5fa9: $00
	add  b                                           ; $5faa: $80
	ld   d, l                                        ; $5fab: $55
	add  b                                           ; $5fac: $80
	xor  d                                           ; $5fad: $aa
	add  b                                           ; $5fae: $80
	nop                                              ; $5faf: $00
	ld   bc, $fdfe                                   ; $5fb0: $01 $fe $fd
	add  b                                           ; $5fb3: $80
	dec  b                                           ; $5fb4: $05
	ld   bc, $0b0f                                   ; $5fb5: $01 $0f $0b
	add  b                                           ; $5fb8: $80
	inc  de                                          ; $5fb9: $13
	ld   [$a6ae], sp                                 ; $5fba: $08 $ae $a6
	ld   e, h                                        ; $5fbd: $5c
	ld   c, h                                        ; $5fbe: $4c
	cp   c                                           ; $5fbf: $b9
	sbc  c                                           ; $5fc0: $99
	ld   [hl], c                                     ; $5fc1: $71
	ld   sp, $803f                                   ; $5fc2: $31 $3f $80
	ld   [bc], a                                     ; $5fc5: $02
	ld   bc, $5595                                   ; $5fc6: $01 $95 $55
	add  b                                           ; $5fc9: $80
	dec  [hl]                                        ; $5fca: $35
	ld   [bc], a                                     ; $5fcb: $02
	dec  hl                                          ; $5fcc: $2b
	xor  e                                           ; $5fcd: $ab
	ei                                               ; $5fce: $fb
	add  c                                           ; $5fcf: $81
	di                                               ; $5fd0: $f3
	inc  b                                           ; $5fd1: $04
	ldh  a, [$e8]                                    ; $5fd2: $f0 $e8
	push hl                                          ; $5fd4: $e5
	cp   $f4                                         ; $5fd5: $fe $f4
	add  c                                           ; $5fd7: $81
	add  sp, $03                                     ; $5fd8: $e8 $03
	ret  z                                           ; $5fda: $c8

	ei                                               ; $5fdb: $fb
	sbc  b                                           ; $5fdc: $98
	sub  b                                           ; $5fdd: $90
	add  b                                           ; $5fde: $80
	sub  h                                           ; $5fdf: $94
	ld   e, $14                                      ; $5fe0: $1e $14
	ld   b, h                                        ; $5fe2: $44
	inc  h                                           ; $5fe3: $24
	daa                                              ; $5fe4: $27
	inc  h                                           ; $5fe5: $24
	db   $e3                                         ; $5fe6: $e3
	ld   b, b                                        ; $5fe7: $40
	inc  b                                           ; $5fe8: $04
	nop                                              ; $5fe9: $00
	ld   a, [$0104]                             ; $5fea: $fa $04 $01
	ld   [bc], a                                     ; $5fed: $02
	nop                                              ; $5fee: $00
	ld   bc, $000f                                   ; $5fef: $01 $0f $00
	pop  af                                          ; $5ff2: $f1
	rrca                                             ; $5ff3: $0f
	ld   c, $ff                                      ; $5ff4: $0e $ff
	db   $10                                         ; $5ff6: $10
	and  a                                           ; $5ff7: $a7
	cp   a                                           ; $5ff8: $bf
	di                                               ; $5ff9: $f3
	ld   a, a                                        ; $5ffa: $7f
	ld   a, e                                        ; $5ffb: $7b
	cp   l                                           ; $5ffc: $bd
	dec  a                                           ; $5ffd: $3d
	sbc  $5e                                         ; $5ffe: $de $5e
	add  b                                           ; $6000: $80
	ld   e, a                                        ; $6001: $5f
	add  b                                           ; $6002: $80
	xor  a                                           ; $6003: $af
	add  b                                           ; $6004: $80
	and  a                                           ; $6005: $a7
	ld   bc, $e7f7                                   ; $6006: $01 $f7 $e7
	add  b                                           ; $6009: $80
	db   $e3                                         ; $600a: $e3
	nop                                              ; $600b: $00
	add  sp, -$7f                                    ; $600c: $e8 $81
	ldh  a, [rSB]                                    ; $600e: $f0 $01
	pop  af                                          ; $6010: $f1
	ld   sp, hl                                      ; $6011: $f9
	add  b                                           ; $6012: $80
	ld   a, b                                        ; $6013: $78
	add  b                                           ; $6014: $80
	inc  a                                           ; $6015: $3c
	add  b                                           ; $6016: $80
	sbc  h                                           ; $6017: $9c
	dec  b                                           ; $6018: $05
	nop                                              ; $6019: $00
	ccf                                              ; $601a: $3f
	push af                                          ; $601b: $f5
	push bc                                          ; $601c: $c5
	rst  $38                                         ; $601d: $ff
	ldh  a, [$80]                                    ; $601e: $f0 $80
	inc  a                                           ; $6020: $3c
	ld   de, $0001                                   ; $6021: $11 $01 $00
	add  $c0                                         ; $6024: $c6 $c0
	jr   z, jr_094_6048                              ; $6026: $28 $20

	jr   jr_094_603a                                 ; $6028: $18 $10

	rlca                                             ; $602a: $07
	rst  $38                                         ; $602b: $ff
	ld   [hl], l                                     ; $602c: $75
	ld   d, l                                        ; $602d: $55
	jp   z, $152a                                    ; $602e: $ca $2a $15

	ld   d, l                                        ; $6031: $55
	xor  d                                           ; $6032: $aa
	ld   a, [hl+]                                    ; $6033: $2a
	add  b                                           ; $6034: $80
	dec  d                                           ; $6035: $15
	add  b                                           ; $6036: $80
	ld   a, [bc]                                     ; $6037: $0a
	add  b                                           ; $6038: $80
	dec  b                                           ; $6039: $05

jr_094_603a:
	add  b                                           ; $603a: $80
	xor  d                                           ; $603b: $aa
	add  b                                           ; $603c: $80
	push de                                          ; $603d: $d5
	add  b                                           ; $603e: $80
	xor  d                                           ; $603f: $aa
	add  b                                           ; $6040: $80
	push de                                          ; $6041: $d5
	add  b                                           ; $6042: $80
	xor  d                                           ; $6043: $aa
	add  b                                           ; $6044: $80
	push de                                          ; $6045: $d5

jr_094_6046:
	add  b                                           ; $6046: $80
	xor  d                                           ; $6047: $aa

jr_094_6048:
	add  b                                           ; $6048: $80
	push de                                          ; $6049: $d5
	add  b                                           ; $604a: $80
	xor  b                                           ; $604b: $a8
	add  b                                           ; $604c: $80
	ld   d, b                                        ; $604d: $50
	add  b                                           ; $604e: $80
	and  b                                           ; $604f: $a0
	add  b                                           ; $6050: $80
	ld   d, b                                        ; $6051: $50
	add  b                                           ; $6052: $80
	and  b                                           ; $6053: $a0
	add  b                                           ; $6054: $80
	ld   d, b                                        ; $6055: $50
	add  b                                           ; $6056: $80
	and  b                                           ; $6057: $a0
	add  b                                           ; $6058: $80
	ld   b, b                                        ; $6059: $40
	nop                                              ; $605a: $00
	rst  $38                                         ; $605b: $ff
	add  e                                           ; $605c: $83
	nop                                              ; $605d: $00
	add  d                                           ; $605e: $82
	rst  $38                                         ; $605f: $ff
	rlca                                             ; $6060: $07
	xor  d                                           ; $6061: $aa
	rst  $38                                         ; $6062: $ff
	nop                                              ; $6063: $00
	rst  $38                                         ; $6064: $ff
	nop                                              ; $6065: $00
	rst  $38                                         ; $6066: $ff
	ld   [hl], $63                                   ; $6067: $36 $63
	add  b                                           ; $6069: $80
	add  e                                           ; $606a: $83
	add  b                                           ; $606b: $80
	inc  bc                                          ; $606c: $03
	add  b                                           ; $606d: $80
	ei                                               ; $606e: $fb
	add  b                                           ; $606f: $80
	rst  $30                                         ; $6070: $f7
	ld   b, $a7                                      ; $6071: $06 $a7
	rst  $30                                         ; $6073: $f7
	rla                                              ; $6074: $17
	rst  $20                                         ; $6075: $e7
	rlca                                             ; $6076: $07
	rst  $20                                         ; $6077: $e7
	xor  a                                           ; $6078: $af
	add  b                                           ; $6079: $80
	rst  $20                                         ; $607a: $e7
	add  c                                           ; $607b: $81
	rst  $28                                         ; $607c: $ef
	add  b                                           ; $607d: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $607e: $cf
	add  b                                           ; $607f: $80
	adc  $82                                         ; $6080: $ce $82
	adc  [hl]                                        ; $6082: $8e
	add  b                                           ; $6083: $80
	ld   c, $07                                      ; $6084: $0e $07
	nop                                              ; $6086: $00
	ld   h, e                                        ; $6087: $63
	ld   h, a                                        ; $6088: $67
	ld   b, a                                        ; $6089: $47
	ld   h, a                                        ; $608a: $67
	daa                                              ; $608b: $27
	ld   b, a                                        ; $608c: $47
	ld   h, a                                        ; $608d: $67
	add  b                                           ; $608e: $80
	rst  $20                                         ; $608f: $e7
	ld   b, $a7                                      ; $6090: $06 $a7
	rst  $20                                         ; $6092: $e7
	db   $e3                                         ; $6093: $e3
	di                                               ; $6094: $f3
	ld   [hl], c                                     ; $6095: $71
	inc  de                                          ; $6096: $13
	ld   de, $ff80                                   ; $6097: $11 $80 $ff
	add  b                                           ; $609a: $80
	db   $fc                                         ; $609b: $fc
	dec  d                                           ; $609c: $15
	pop  af                                          ; $609d: $f1
	rst  $30                                         ; $609e: $f7
	and  $e8                                         ; $609f: $e6 $e8
	ret                                              ; $60a1: $c9


	push de                                          ; $60a2: $d5
	sub  b                                           ; $60a3: $90
	and  [hl]                                        ; $60a4: $a6
	ld   [hl+], a                                    ; $60a5: $22
	jp   hl                                          ; $60a6: $e9


	ldh  [rAUD3HIGH], a                              ; $60a7: $e0 $1e
	rla                                              ; $60a9: $17
	inc  de                                          ; $60aa: $13
	db   $d3                                         ; $60ab: $d3
	ret                                              ; $60ac: $c9


	jp   hl                                          ; $60ad: $e9


	xor  b                                           ; $60ae: $a8
	ld   l, b                                        ; $60af: $68
	ld   a, [hl+]                                    ; $60b0: $2a
	adc  d                                           ; $60b1: $8a
	ld   b, e                                        ; $60b2: $43
	add  b                                           ; $60b3: $80
	inc  de                                          ; $60b4: $13
	inc  b                                           ; $60b5: $04
	inc  sp                                          ; $60b6: $33
	ld   [hl], e                                     ; $60b7: $73
	dec  sp                                          ; $60b8: $3b
	ld   [hl], $8e                                   ; $60b9: $36 $8e
	add  b                                           ; $60bb: $80
	rst  ToBoot                                         ; $60bc: $c7
	add  b                                           ; $60bd: $80
	pop  bc                                          ; $60be: $c1
	add  b                                           ; $60bf: $80
	ret  nz                                          ; $60c0: $c0

	add  b                                           ; $60c1: $80

Jump_094_60c2:
	ld   h, b                                        ; $60c2: $60
	add  b                                           ; $60c3: $80
	jr   z, jr_094_6046                              ; $60c4: $28 $80

	inc  c                                           ; $60c6: $0c
	add  b                                           ; $60c7: $80
	ld   b, [hl]                                     ; $60c8: $46
	inc  bc                                          ; $60c9: $03
	dec  bc                                          ; $60ca: $0b
	ld   [$0406], sp                                 ; $60cb: $08 $06 $04
	add  b                                           ; $60ce: $80
	add  b                                           ; $60cf: $80
	ld   bc, $4243                                   ; $60d0: $01 $43 $42
	add  b                                           ; $60d3: $80
	add  b                                           ; $60d4: $80
	rlca                                             ; $60d5: $07
	sub  b                                           ; $60d6: $90
	add  b                                           ; $60d7: $80
	ld   c, b                                        ; $60d8: $48
	ld   b, b                                        ; $60d9: $40
	ld   b, [hl]                                     ; $60da: $46
	ld   b, b                                        ; $60db: $40
	db   $eb                                         ; $60dc: $eb
	ld   a, [bc]                                     ; $60dd: $0a
	add  b                                           ; $60de: $80
	dec  b                                           ; $60df: $05
	add  b                                           ; $60e0: $80
	ld   [bc], a                                     ; $60e1: $02
	add  b                                           ; $60e2: $80
	dec  b                                           ; $60e3: $05
	add  b                                           ; $60e4: $80
	ld   a, [bc]                                     ; $60e5: $0a
	add  b                                           ; $60e6: $80
	dec  b                                           ; $60e7: $05
	ld   bc, $0a8a                                   ; $60e8: $01 $8a $0a
	add  b                                           ; $60eb: $80
	ld   bc, $0001                                   ; $60ec: $01 $01 $00
	add  b                                           ; $60ef: $80
	add  b                                           ; $60f0: $80
	ld   b, b                                        ; $60f1: $40
	add  b                                           ; $60f2: $80
	add  b                                           ; $60f3: $80
	add  b                                           ; $60f4: $80
	nop                                              ; $60f5: $00
	add  b                                           ; $60f6: $80
	add  b                                           ; $60f7: $80
	add  b                                           ; $60f8: $80
	ld   b, b                                        ; $60f9: $40
	add  b                                           ; $60fa: $80
	nop                                              ; $60fb: $00
	add  b                                           ; $60fc: $80
	ld   b, b                                        ; $60fd: $40
	ld   [bc], a                                     ; $60fe: $02
	xor  d                                           ; $60ff: $aa
	rst  $38                                         ; $6100: $ff
	xor  d                                           ; $6101: $aa
	add  l                                           ; $6102: $85
	rst  $38                                         ; $6103: $ff
	add  b                                           ; $6104: $80
	nop                                              ; $6105: $00
	nop                                              ; $6106: $00
	rst  $38                                         ; $6107: $ff
	add  c                                           ; $6108: $81
	nop                                              ; $6109: $00
	rlca                                             ; $610a: $07
	ld   d, l                                        ; $610b: $55
	rst  $38                                         ; $610c: $ff
	xor  d                                           ; $610d: $aa
	rst  $38                                         ; $610e: $ff
	rst  $20                                         ; $610f: $e7
	rst  $30                                         ; $6110: $f7
	rst  $38                                         ; $6111: $ff
	rst  $28                                         ; $6112: $ef
	add  b                                           ; $6113: $80
	rst  $38                                         ; $6114: $ff
	ld   [bc], a                                     ; $6115: $02
	ld   bc, $fe00                                   ; $6116: $01 $00 $fe
	add  c                                           ; $6119: $81
	nop                                              ; $611a: $00
	ld   b, $57                                      ; $611b: $06 $57
	rst  $10                                         ; $611d: $d7
	sub  a                                           ; $611e: $97
	rst  $10                                         ; $611f: $d7
	and  $a6                                         ; $6120: $e6 $a6
	add  [hl]                                        ; $6122: $86
	add  b                                           ; $6123: $80
	sub  [hl]                                        ; $6124: $96
	inc  bc                                          ; $6125: $03
	ld   [hl], $46                                   ; $6126: $36 $46
	ld   b, $74                                      ; $6128: $06 $74
	add  c                                           ; $612a: $81
	inc  b                                           ; $612b: $04
	add  b                                           ; $612c: $80
	ld   c, $01                                      ; $612d: $0e $01
	dec  c                                           ; $612f: $0d
	dec  l                                           ; $6130: $2d
	add  h                                           ; $6131: $84
	inc  l                                           ; $6132: $2c
	add  b                                           ; $6133: $80
	inc  c                                           ; $6134: $0c
	nop                                              ; $6135: $00
	inc  h                                           ; $6136: $24
	add  c                                           ; $6137: $81
	inc  b                                           ; $6138: $04
	ld   [de], a                                     ; $6139: $12
	add  d                                           ; $613a: $82
	add  e                                           ; $613b: $83
	jr   nz, jr_094_6143                             ; $613c: $20 $05

	ld   [hl], h                                     ; $613e: $74
	ld   d, $0e                                      ; $613f: $16 $0e
	rlca                                             ; $6141: $07
	or   a                                           ; $6142: $b7

jr_094_6143:
	rst  ToBoot                                         ; $6143: $c7
	cp   a                                           ; $6144: $bf
	call Call_094_7d4d                               ; $6145: $cd $4d $7d
	add  hl, sp                                      ; $6148: $39
	dec  a                                           ; $6149: $3d
	cp   a                                           ; $614a: $bf
	ld   hl, sp+$3e                                  ; $614b: $f8 $3e
	add  a                                           ; $614d: $87
	rst  $38                                         ; $614e: $ff
	ld   a, [bc]                                     ; $614f: $0a
	ld   a, a                                        ; $6150: $7f
	rst  $38                                         ; $6151: $ff
	cp   a                                           ; $6152: $bf
	rst  $38                                         ; $6153: $ff
	inc  e                                           ; $6154: $1c
	ld   a, e                                        ; $6155: $7b
	dec  bc                                          ; $6156: $0b
	ei                                               ; $6157: $fb
	dec  bc                                          ; $6158: $0b
	rst  $38                                         ; $6159: $ff
	ld   e, a                                        ; $615a: $5f
	add  a                                           ; $615b: $87
	rst  $38                                         ; $615c: $ff
	ld   bc, $46ba                                   ; $615d: $01 $ba $46
	add  b                                           ; $6160: $80
	and  h                                           ; $6161: $a4
	add  b                                           ; $6162: $80
	xor  l                                           ; $6163: $ad
	add  b                                           ; $6164: $80
	xor  b                                           ; $6165: $a8
	add  b                                           ; $6166: $80
	and  b                                           ; $6167: $a0
	add  h                                           ; $6168: $84
	ret  z                                           ; $6169: $c8

	ld   bc, $202f                                   ; $616a: $01 $2f $20
	add  b                                           ; $616d: $80
	nop                                              ; $616e: $00
	ld   b, $48                                      ; $616f: $06 $48
	nop                                              ; $6171: $00
	ldh  [$80], a                                    ; $6172: $e0 $80
	sub  b                                           ; $6174: $90
	add  b                                           ; $6175: $80
	ld   l, b                                        ; $6176: $68
	add  c                                           ; $6177: $81
	ld   b, b                                        ; $6178: $40
	dec  b                                           ; $6179: $05
	jr   nc, jr_094_619c                             ; $617a: $30 $20

	or   d                                           ; $617c: $b2
	ld   [bc], a                                     ; $617d: $02
	ld   b, l                                        ; $617e: $45
	dec  b                                           ; $617f: $05
	add  b                                           ; $6180: $80
	ld   [bc], a                                     ; $6181: $02
	add  b                                           ; $6182: $80
	dec  b                                           ; $6183: $05
	add  b                                           ; $6184: $80
	ld   [bc], a                                     ; $6185: $02
	add  b                                           ; $6186: $80
	dec  b                                           ; $6187: $05
	add  b                                           ; $6188: $80
	ld   [bc], a                                     ; $6189: $02
	add  b                                           ; $618a: $80
	ld   bc, $8080                                   ; $618b: $01 $80 $80
	add  b                                           ; $618e: $80
	ld   b, b                                        ; $618f: $40
	add  b                                           ; $6190: $80
	and  b                                           ; $6191: $a0
	add  b                                           ; $6192: $80
	ld   b, b                                        ; $6193: $40
	add  b                                           ; $6194: $80
	and  b                                           ; $6195: $a0
	add  b                                           ; $6196: $80
	nop                                              ; $6197: $00
	add  b                                           ; $6198: $80
	add  b                                           ; $6199: $80
	add  h                                           ; $619a: $84
	nop                                              ; $619b: $00

jr_094_619c:
	add  b                                           ; $619c: $80
	ld   d, l                                        ; $619d: $55
	add  b                                           ; $619e: $80
	xor  d                                           ; $619f: $aa
	add  d                                           ; $61a0: $82
	rst  $38                                         ; $61a1: $ff
	rlca                                             ; $61a2: $07
	ld   d, l                                        ; $61a3: $55
	rst  $38                                         ; $61a4: $ff
	nop                                              ; $61a5: $00
	rst  $38                                         ; $61a6: $ff
	ld   e, [hl]                                     ; $61a7: $5e
	nop                                              ; $61a8: $00
	ld   bc, $8000                                   ; $61a9: $01 $00 $80
	ld   d, l                                        ; $61ac: $55
	add  b                                           ; $61ad: $80
	and  b                                           ; $61ae: $a0
	nop                                              ; $61af: $00
	push af                                          ; $61b0: $f5
	add  c                                           ; $61b1: $81
	ei                                               ; $61b2: $fb
	add  hl, bc                                      ; $61b3: $09
	ld   d, c                                        ; $61b4: $51
	ei                                               ; $61b5: $fb
	nop                                              ; $61b6: $00
	ei                                               ; $61b7: $fb
	rrca                                             ; $61b8: $0f
	nop                                              ; $61b9: $00
	stop                                             ; $61ba: $10 $00
	dec  [hl]                                        ; $61bc: $35
	ld   d, l                                        ; $61bd: $55
	add  b                                           ; $61be: $80
	add  b                                           ; $61bf: $80
	nop                                              ; $61c0: $00
	push de                                          ; $61c1: $d5
	add  b                                           ; $61c2: $80
	reti                                             ; $61c3: $d9


	dec  b                                           ; $61c4: $05
	jp   hl                                          ; $61c5: $e9


	ld   c, c                                        ; $61c6: $49
	push hl                                          ; $61c7: $e5
	nop                                              ; $61c8: $00
	push hl                                          ; $61c9: $e5
	add  c                                           ; $61ca: $81
	add  b                                           ; $61cb: $80
	dec  de                                          ; $61cc: $1b
	ld   bc, $2819                                   ; $61cd: $01 $19 $28
	add  b                                           ; $61d0: $80
	ld   c, $09                                      ; $61d1: $0e $09
	rrca                                             ; $61d3: $0f
	sub  a                                           ; $61d4: $97
	add  a                                           ; $61d5: $87
	sbc  e                                           ; $61d6: $9b
	sub  e                                           ; $61d7: $93
	sbc  l                                           ; $61d8: $9d
	sbc  c                                           ; $61d9: $99
	sbc  [hl]                                        ; $61da: $9e
	sbc  l                                           ; $61db: $9d
	ret  nz                                          ; $61dc: $c0

	add  b                                           ; $61dd: $80
	rst  $38                                         ; $61de: $ff

jr_094_61df:
	ld   bc, $3efe                                   ; $61df: $01 $fe $3e
	add  b                                           ; $61e2: $80
	ld   a, c                                        ; $61e3: $79
	ld   b, $e7                                      ; $61e4: $06 $e7
	pop  de                                          ; $61e6: $d1
	xor  a                                           ; $61e7: $af
	add  l                                           ; $61e8: $85
	rst  $38                                         ; $61e9: $ff
	db   $e3                                         ; $61ea: $e3
	rst  $38                                         ; $61eb: $ff
	add  b                                           ; $61ec: $80
	ld   a, a                                        ; $61ed: $7f
	nop                                              ; $61ee: $00
	db   $fc                                         ; $61ef: $fc
	add  l                                           ; $61f0: $85
	rst  $38                                         ; $61f1: $ff
	nop                                              ; $61f2: $00
	ei                                               ; $61f3: $fb
	add  c                                           ; $61f4: $81
	rst  $38                                         ; $61f5: $ff
	ld   bc, $fef6                                   ; $61f6: $01 $f6 $fe
	add  b                                           ; $61f9: $80
	db   $fd                                         ; $61fa: $fd
	ld   bc, $c838                                   ; $61fb: $01 $38 $c8
	add  b                                           ; $61fe: $80
	ret  c                                           ; $61ff: $d8

	add  b                                           ; $6200: $80
	sbc  d                                           ; $6201: $9a
	add  b                                           ; $6202: $80
	cp   d                                           ; $6203: $ba
	add  b                                           ; $6204: $80
	ld   a, d                                        ; $6205: $7a
	add  b                                           ; $6206: $80
	ld   a, [hl]                                     ; $6207: $7e
	add  d                                           ; $6208: $82
	rst  $38                                         ; $6209: $ff
	ld   b, $2f                                      ; $620a: $06 $2f
	jr   nz, jr_094_6226                             ; $620c: $20 $18

	db   $10                                         ; $620e: $10
	ld   d, b                                        ; $620f: $50
	db   $10                                         ; $6210: $10
	ld   l, h                                        ; $6211: $6c
	add  c                                           ; $6212: $81
	adc  b                                           ; $6213: $88
	rlca                                             ; $6214: $07
	or   b                                           ; $6215: $b0
	ldh  [$fa], a                                    ; $6216: $e0 $fa
	ld   [hl], b                                     ; $6218: $70
	ld   [hl], h                                     ; $6219: $74
	ld   [hl], b                                     ; $621a: $70
	add  b                                           ; $621b: $80
	ld   [bc], a                                     ; $621c: $02
	add  b                                           ; $621d: $80
	dec  b                                           ; $621e: $05
	add  b                                           ; $621f: $80
	ld   [bc], a                                     ; $6220: $02
	add  b                                           ; $6221: $80
	ld   bc, $0280                                   ; $6222: $01 $80 $02
	add  b                                           ; $6225: $80

jr_094_6226:
	ld   bc, $0280                                   ; $6226: $01 $80 $02
	add  b                                           ; $6229: $80
	ld   bc, $aa80                                   ; $622a: $01 $80 $aa
	add  b                                           ; $622d: $80
	push de                                          ; $622e: $d5
	add  b                                           ; $622f: $80
	xor  d                                           ; $6230: $aa
	add  b                                           ; $6231: $80
	push de                                          ; $6232: $d5
	add  b                                           ; $6233: $80
	xor  d                                           ; $6234: $aa
	add  b                                           ; $6235: $80
	push de                                          ; $6236: $d5
	add  b                                           ; $6237: $80
	xor  d                                           ; $6238: $aa
	add  b                                           ; $6239: $80
	call nc, $8080                                   ; $623a: $d4 $80 $80
	add  h                                           ; $623d: $84
	nop                                              ; $623e: $00
	add  b                                           ; $623f: $80
	add  b                                           ; $6240: $80
	add  h                                           ; $6241: $84
	nop                                              ; $6242: $00
	nop                                              ; $6243: $00
	add  hl, bc                                      ; $6244: $09
	add  c                                           ; $6245: $81
	or   $8a                                         ; $6246: $f6 $8a
	rst  $38                                         ; $6248: $ff
	add  b                                           ; $6249: $80
	adc  $82                                         ; $624a: $ce $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $624c: $cf
	add  d                                           ; $624d: $82
	rst  $28                                         ; $624e: $ef
	add  h                                           ; $624f: $84
	rst  $38                                         ; $6250: $ff
	add  hl, bc                                      ; $6251: $09
	ld   h, b                                        ; $6252: $60
	rra                                              ; $6253: $1f
	ld   c, a                                        ; $6254: $4f
	cpl                                              ; $6255: $2f
	rla                                              ; $6256: $17
	rlca                                             ; $6257: $07
	ccf                                              ; $6258: $3f
	scf                                              ; $6259: $37
	ccf                                              ; $625a: $3f
	jr   c, jr_094_61df                              ; $625b: $38 $82

	dec  sp                                          ; $625d: $3b
	add  b                                           ; $625e: $80
	dec  a                                           ; $625f: $3d
	ld   bc, $fb1b                                   ; $6260: $01 $1b $fb
	add  b                                           ; $6263: $80
	rst  $30                                         ; $6264: $f7
	inc  bc                                          ; $6265: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6266: $cf
	rst  $28                                         ; $6267: $ef
	ld   e, a                                        ; $6268: $5f
	sbc  a                                           ; $6269: $9f
	add  b                                           ; $626a: $80
	ld   a, a                                        ; $626b: $7f
	add  b                                           ; $626c: $80
	rst  $38                                         ; $626d: $ff
	inc  b                                           ; $626e: $04
	cp   $ff                                         ; $626f: $fe $ff
	db   $fd                                         ; $6271: $fd
	rst  $38                                         ; $6272: $ff
	db   $ec                                         ; $6273: $ec
	add  c                                           ; $6274: $81
	rst  $38                                         ; $6275: $ff
	nop                                              ; $6276: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6277: $cf
	add  c                                           ; $6278: $81
	rst  $38                                         ; $6279: $ff
	inc  de                                          ; $627a: $13
	cp   [hl]                                        ; $627b: $be
	cp   $59                                         ; $627c: $fe $59
	ld   hl, sp-$09                                  ; $627e: $f8 $f7
	pop  af                                          ; $6280: $f1
	xor  e                                           ; $6281: $ab
	db   $e3                                         ; $6282: $e3
	ld   a, [bc]                                     ; $6283: $0a
	cp   b                                           ; $6284: $b8
	cp   l                                           ; $6285: $bd
	cp   b                                           ; $6286: $b8
	ld   hl, sp-$39                                  ; $6287: $f8 $c7
	sub  a                                           ; $6289: $97
	adc  a                                           ; $628a: $8f
	ld   a, a                                        ; $628b: $7f
	rra                                              ; $628c: $1f
	rst  $38                                         ; $628d: $ff
	ld   a, a                                        ; $628e: $7f
	add  c                                           ; $628f: $81
	rst  $38                                         ; $6290: $ff
	ld   [bc], a                                     ; $6291: $02
	cp   $01                                         ; $6292: $fe $01
	nop                                              ; $6294: $00
	add  b                                           ; $6295: $80
	ld   bc, $820d                                   ; $6296: $01 $0d $82
	ld   [bc], a                                     ; $6299: $02
	ld   b, l                                        ; $629a: $45
	add  l                                           ; $629b: $85
	and  d                                           ; $629c: $a2
	jp   nz, $e5d5                                   ; $629d: $c2 $d5 $e5

	rst  $28                                         ; $62a0: $ef
	add  b                                           ; $62a1: $80
	rst  $38                                         ; $62a2: $ff
	nop                                              ; $62a3: $00
	ld   a, [hl+]                                    ; $62a4: $2a
	xor  d                                           ; $62a5: $aa
	add  b                                           ; $62a6: $80
	call nc, $a880                                   ; $62a7: $d4 $80 $a8
	add  b                                           ; $62aa: $80
	call nc, $a880                                   ; $62ab: $d4 $80 $a8
	add  b                                           ; $62ae: $80
	call nc, $aa04                                   ; $62af: $d4 $04 $aa
	ld   a, [hl+]                                    ; $62b2: $2a
	ld   d, l                                        ; $62b3: $55
	sub  l                                           ; $62b4: $95
	ld   b, b                                        ; $62b5: $40
	adc  [hl]                                        ; $62b6: $8e
	nop                                              ; $62b7: $00
	adc  c                                           ; $62b8: $89
	rst  $38                                         ; $62b9: $ff
	add  b                                           ; $62ba: $80

jr_094_62bb:
	ldh  [rAUD4LEN], a                               ; $62bb: $e0 $20
	call c, $e0c0                                    ; $62bd: $dc $c0 $e0
	db   $fc                                         ; $62c0: $fc
	ld   a, [$f7f9]                                  ; $62c1: $fa $f9 $f7
	pop  af                                          ; $62c4: $f1
	db   $ed                                         ; $62c5: $ed
	db   $e3                                         ; $62c6: $e3
	db   $db                                         ; $62c7: $db
	rst  ToBoot                                         ; $62c8: $c7
	or   a                                           ; $62c9: $b7
	adc  a                                           ; $62ca: $8f
	ld   l, a                                        ; $62cb: $6f
	rra                                              ; $62cc: $1f
	sbc  a                                           ; $62cd: $9f
	nop                                              ; $62ce: $00
	db   $fc                                         ; $62cf: $fc
	dec  a                                           ; $62d0: $3d
	pop  bc                                          ; $62d1: $c1
	ld   bc, $c2f9                                   ; $62d2: $01 $f9 $c2
	cp   $f6                                         ; $62d5: $fe $f6
	ld   a, [$f7ef]                                  ; $62d7: $fa $ef $f7
	rst  JumpTable                                         ; $62da: $df
	rst  $38                                         ; $62db: $ff
	ld   a, $f6                                      ; $62dc: $3e $f6
	add  b                                           ; $62de: $80
	cp   $14                                         ; $62df: $fe $14
	rst  $38                                         ; $62e1: $ff
	ld   [hl], a                                     ; $62e2: $77
	rst  $38                                         ; $62e3: $ff
	adc  a                                           ; $62e4: $8f
	rst  $38                                         ; $62e5: $ff
	ld   a, [$f3ff]                                  ; $62e6: $fa $ff $f3
	ld   a, a                                        ; $62e9: $7f
	inc  l                                           ; $62ea: $2c
	ld   a, [hl]                                     ; $62eb: $7e
	ld   d, h                                        ; $62ec: $54
	ld   hl, sp-$37                                  ; $62ed: $f8 $c9
	call nz, $c7dd                                   ; $62ef: $c4 $dd $c7
	cpl                                              ; $62f2: $2f
	adc  a                                           ; $62f3: $8f
	ld   c, a                                        ; $62f4: $4f
	rrca                                             ; $62f5: $0f
	add  c                                           ; $62f6: $81
	rra                                              ; $62f7: $1f
	ld   [bc], a                                     ; $62f8: $02
	ld   e, $bb                                      ; $62f9: $1e $bb
	jr   c, @-$7e                                    ; $62fb: $38 $80

	jr   nc, jr_094_6310                             ; $62fd: $30 $11

	ld   h, [hl]                                     ; $62ff: $66
	ld   h, b                                        ; $6300: $60
	ld   a, [$fef8]                                  ; $6301: $fa $f8 $fe
	ret  nz                                          ; $6304: $c0

	ld   hl, sp-$80                                  ; $6305: $f8 $80
	jp   nz, $8e00                                   ; $6307: $c2 $00 $8e

	ld   [$101c], sp                                 ; $630a: $08 $1c $10
	jr   c, jr_094_632f                              ; $630d: $38 $20

	ld   [hl], b                                     ; $630f: $70

jr_094_6310:
	ld   b, b                                        ; $6310: $40
	add  b                                           ; $6311: $80
	jp   z, $dd05                                    ; $6312: $ca $05 $dd

	push hl                                          ; $6315: $e5
	and  $fa                                         ; $6316: $e6 $fa
	ei                                               ; $6318: $fb
	db   $fd                                         ; $6319: $fd
	add  b                                           ; $631a: $80
	db   $fc                                         ; $631b: $fc
	add  c                                           ; $631c: $81
	db   $fd                                         ; $631d: $fd
	add  c                                           ; $631e: $81
	cp   $01                                         ; $631f: $fe $01
	ld   bc, $80ff                                   ; $6321: $01 $ff $80
	db   $fc                                         ; $6324: $fc
	inc  b                                           ; $6325: $04
	di                                               ; $6326: $f3
	ldh  a, [$cc]                                    ; $6327: $f0 $cc
	ret  nz                                          ; $6329: $c0

	or   b                                           ; $632a: $b0
	add  c                                           ; $632b: $81
	add  b                                           ; $632c: $80
	nop                                              ; $632d: $00
	ld   b, b                                        ; $632e: $40

jr_094_632f:
	add  c                                           ; $632f: $81
	nop                                              ; $6330: $00
	ld   b, $46                                      ; $6331: $06 $46
	nop                                              ; $6333: $00
	jp   z, $1400                                    ; $6334: $ca $00 $14

	nop                                              ; $6337: $00
	jr   nz, jr_094_62bb                             ; $6338: $20 $81

	db   $10                                         ; $633a: $10
	dec  c                                           ; $633b: $0d
	ld   d, b                                        ; $633c: $50
	jr   nc, jr_094_6377                             ; $633d: $30 $38

	jr   nz, jr_094_6341                             ; $633f: $20 $00

jr_094_6341:
	ld   b, b                                        ; $6341: $40
	ld   l, [hl]                                     ; $6342: $6e
	ld   bc, $0302                                   ; $6343: $01 $02 $03
	dec  c                                           ; $6346: $0d
	rrca                                             ; $6347: $0f
	dec  bc                                          ; $6348: $0b
	rrca                                             ; $6349: $0f
	add  d                                           ; $634a: $82
	rra                                              ; $634b: $1f
	inc  c                                           ; $634c: $0c
	sbc  a                                           ; $634d: $9f
	rra                                              ; $634e: $1f
	scf                                              ; $634f: $37
	ccf                                              ; $6350: $3f
	adc  a                                           ; $6351: $8f
	add  c                                           ; $6352: $81
	ld   bc, $e2fe                                   ; $6353: $01 $fe $e2
	rst  $38                                         ; $6356: $ff
	db   $ed                                         ; $6357: $ed
	rst  $38                                         ; $6358: $ff
	pop  af                                          ; $6359: $f1
	add  l                                           ; $635a: $85
	rst  $38                                         ; $635b: $ff
	ld   b, $fa                                      ; $635c: $06 $fa
	cp   h                                           ; $635e: $bc
	add  d                                           ; $635f: $82
	ld   hl, sp-$60                                  ; $6360: $f8 $a0
	ld   hl, sp-$64                                  ; $6362: $f8 $9c
	add  c                                           ; $6364: $81
	ldh  a, [rP1]                                    ; $6365: $f0 $00
	ld   hl, sp-$7f                                  ; $6367: $f8 $81
	ldh  [rDIV], a                                   ; $6369: $e0 $04
	ldh  a, [$c0]                                    ; $636b: $f0 $c0
	inc  h                                           ; $636d: $24
	nop                                              ; $636e: $00
	inc  c                                           ; $636f: $0c
	add  c                                           ; $6370: $81
	nop                                              ; $6371: $00
	inc  b                                           ; $6372: $04
	add  hl, de                                      ; $6373: $19
	ld   bc, $0105                                   ; $6374: $01 $05 $01

jr_094_6377:
	ld   sp, $0180                                   ; $6377: $31 $80 $01
	dec  b                                           ; $637a: $05
	nop                                              ; $637b: $00
	ld   l, b                                        ; $637c: $68
	inc  b                                           ; $637d: $04
	add  hl, hl                                      ; $637e: $29
	ld   b, b                                        ; $637f: $40
	ldh  [$81], a                                    ; $6380: $e0 $81
	add  b                                           ; $6382: $80
	nop                                              ; $6383: $00
	ret  nz                                          ; $6384: $c0

	add  e                                           ; $6385: $83
	nop                                              ; $6386: $00
	ld   bc, $0181                                   ; $6387: $01 $81 $01
	add  b                                           ; $638a: $80
	ld   [bc], a                                     ; $638b: $02
	add  d                                           ; $638c: $82
	nop                                              ; $638d: $00
	add  b                                           ; $638e: $80

jr_094_638f:
	rrca                                             ; $638f: $0f
	add  b                                           ; $6390: $80
	ld   a, $80                                      ; $6391: $3e $80
	ld   a, b                                        ; $6393: $78
	add  b                                           ; $6394: $80
	ldh  [$80], a                                    ; $6395: $e0 $80
	add  c                                           ; $6397: $81
	add  b                                           ; $6398: $80
	rlca                                             ; $6399: $07
	nop                                              ; $639a: $00
	ld   bc, $0083                                   ; $639b: $01 $83 $00
	nop                                              ; $639e: $00
	ld   bc, $0083                                   ; $639f: $01 $83 $00
	inc  b                                           ; $63a2: $04
	ld   b, b                                        ; $63a3: $40
	nop                                              ; $63a4: $00
	ret  nz                                          ; $63a5: $c0

	nop                                              ; $63a6: $00
	add  b                                           ; $63a7: $80
	add  e                                           ; $63a8: $83
	nop                                              ; $63a9: $00
	nop                                              ; $63aa: $00
	add  b                                           ; $63ab: $80
	add  l                                           ; $63ac: $85
	nop                                              ; $63ad: $00
	dec  b                                           ; $63ae: $05
	ld   b, b                                        ; $63af: $40
	add  b                                           ; $63b0: $80
	dec  d                                           ; $63b1: $15
	rst  $38                                         ; $63b2: $ff
	ld   d, l                                        ; $63b3: $55
	rst  $38                                         ; $63b4: $ff
	add  b                                           ; $63b5: $80
	xor  d                                           ; $63b6: $aa
	add  d                                           ; $63b7: $82
	nop                                              ; $63b8: $00
	add  b                                           ; $63b9: $80
	xor  d                                           ; $63ba: $aa
	add  b                                           ; $63bb: $80
	ld   d, l                                        ; $63bc: $55
	add  b                                           ; $63bd: $80
	xor  [hl]                                        ; $63be: $ae
	ld   [bc], a                                     ; $63bf: $02
	ld   bc, $fdfe                                   ; $63c0: $01 $fe $fd
	add  c                                           ; $63c3: $81
	db   $fc                                         ; $63c4: $fc
	ld   [bc], a                                     ; $63c5: $02
	ld   a, [$f4f8]                                  ; $63c6: $fa $f8 $f4
	add  c                                           ; $63c9: $81
	ldh  a, [rDIV]                                   ; $63ca: $f0 $04
	add  sp, -$20                                    ; $63cc: $e8 $e0
	ret  nc                                          ; $63ce: $d0

	ret  nz                                          ; $63cf: $c0

	ldh  [$81], a                                    ; $63d0: $e0 $81
	nop                                              ; $63d2: $00
	ld   [bc], a                                     ; $63d3: $02
	inc  b                                           ; $63d4: $04
	nop                                              ; $63d5: $00
	ld   a, [bc]                                     ; $63d6: $0a
	add  l                                           ; $63d7: $85
	inc  b                                           ; $63d8: $04
	dec  bc                                          ; $63d9: $0b
	ld   b, h                                        ; $63da: $44
	ld   b, $18                                      ; $63db: $06 $18
	ld   b, b                                        ; $63dd: $40
	ld   bc, $3000                                   ; $63de: $01 $00 $30
	nop                                              ; $63e1: $00
	inc  bc                                          ; $63e2: $03
	ld   bc, $0104                              ; $63e3: $01 $04 $01
	add  b                                           ; $63e6: $80
	inc  bc                                          ; $63e7: $03
	ld   a, [bc]                                     ; $63e8: $0a
	ld   l, e                                        ; $63e9: $6b
	inc  bc                                          ; $63ea: $03
	ld   a, [de]                                     ; $63eb: $1a
	dec  bc                                          ; $63ec: $0b
	add  b                                           ; $63ed: $80
	ccf                                              ; $63ee: $3f
	ld   e, a                                        ; $63ef: $5f
	ld   a, a                                        ; $63f0: $7f
	cp   a                                           ; $63f1: $bf
	rst  $38                                         ; $63f2: $ff
	ld   a, a                                        ; $63f3: $7f
	add  l                                           ; $63f4: $85
	rst  $38                                         ; $63f5: $ff
	ld   [bc], a                                     ; $63f6: $02
	cp   $ff                                         ; $63f7: $fe $ff
	cp   $81                                         ; $63f9: $fe $81
	rst  $38                                         ; $63fb: $ff
	ld   de, $fffc                                   ; $63fc: $11 $fc $ff
	ld   a, [$e7fd]                                  ; $63ff: $fa $fd $e7
	ei                                               ; $6402: $fb
	sbc  a                                           ; $6403: $9f
	or   $77                                         ; $6404: $f6 $77
	db   $e4                                         ; $6406: $e4
	xor  $c8                                         ; $6407: $ee $c8
	inc  h                                           ; $6409: $24
	ret  nz                                          ; $640a: $c0

	nop                                              ; $640b: $00
	ret  nz                                          ; $640c: $c0

	jr   nz, jr_094_638f                             ; $640d: $20 $80

	add  b                                           ; $640f: $80
	add  a                                           ; $6410: $87
	dec  b                                           ; $6411: $05
	rst  JumpTable                                         ; $6412: $df
	ld   e, $be                                      ; $6413: $1e $be
	ld   a, $7e                                      ; $6415: $3e $7e
	ld   a, l                                        ; $6417: $7d
	add  b                                           ; $6418: $80
	inc  b                                           ; $6419: $04
	ld   [bc], a                                     ; $641a: $02
	ld   c, a                                        ; $641b: $4f
	inc  b                                           ; $641c: $04
	add  $81                                         ; $641d: $c6 $81
	ld   b, $00                                      ; $641f: $06 $00
	ld   h, $80                                      ; $6421: $26 $80
	daa                                              ; $6423: $27
	ld   bc, $e7a7                                   ; $6424: $01 $a7 $e7
	add  b                                           ; $6427: $80
	and  $00                                         ; $6428: $e6 $00
	push hl                                          ; $642a: $e5
	add  b                                           ; $642b: $80
	dec  h                                           ; $642c: $25
	nop                                              ; $642d: $00
	ld   a, [bc]                                     ; $642e: $0a
	add  c                                           ; $642f: $81
	nop                                              ; $6430: $00
	add  b                                           ; $6431: $80
	ld   bc, $8701                                   ; $6432: $01 $01 $87
	rlca                                             ; $6435: $07
	add  b                                           ; $6436: $80
	rrca                                             ; $6437: $0f
	ld   [de], a                                     ; $6438: $12
	rra                                              ; $6439: $1f
	ld   e, $3f                                      ; $643a: $1e $3f
	inc  a                                           ; $643c: $3c
	ld   a, [hl]                                     ; $643d: $7e
	ld   [hl], b                                     ; $643e: $70
	sub  e                                           ; $643f: $93
	ld   e, $7f                                      ; $6440: $1e $7f
	ld   a, b                                        ; $6442: $78
	cp   $f0                                         ; $6443: $fe $f0
	ld   hl, sp-$40                                  ; $6445: $f8 $c0
	ldh  a, [$80]                                    ; $6447: $f0 $80
	ret  nz                                          ; $6449: $c0

	nop                                              ; $644a: $00
	add  b                                           ; $644b: $80
	add  c                                           ; $644c: $81
	nop                                              ; $644d: $00
	nop                                              ; $644e: $00
	ret  nz                                          ; $644f: $c0

	add  e                                           ; $6450: $83
	add  b                                           ; $6451: $80
	nop                                              ; $6452: $00
	and  b                                           ; $6453: $a0
	add  a                                           ; $6454: $87
	ret  nz                                          ; $6455: $c0

	nop                                              ; $6456: $00
	rst  JumpTable                                         ; $6457: $df
	add  e                                           ; $6458: $83
	rst  $38                                         ; $6459: $ff
	dec  bc                                          ; $645a: $0b
	xor  $ff                                         ; $645b: $ee $ff
	ld   b, h                                        ; $645d: $44
	rst  $38                                         ; $645e: $ff
	nop                                              ; $645f: $00
	rst  $38                                         ; $6460: $ff
	nop                                              ; $6461: $00
	rst  $38                                         ; $6462: $ff
	ld   [$7dff], sp                                 ; $6463: $08 $ff $7d
	ret  nz                                          ; $6466: $c0

	add  b                                           ; $6467: $80
	ret  nc                                          ; $6468: $d0

	add  b                                           ; $6469: $80
	ret  c                                           ; $646a: $d8

	ld   bc, $ecfc                                   ; $646b: $01 $fc $ec
	add  b                                           ; $646e: $80
	xor  $01                                         ; $646f: $ee $01
	cp   $f6                                         ; $6471: $fe $f6
	add  b                                           ; $6473: $80
	db   $f4                                         ; $6474: $f4
	inc  c                                           ; $6475: $0c
	add  sp, -$20                                    ; $6476: $e8 $e0
	cp   [hl]                                        ; $6478: $be
	ld   b, $6f                                      ; $6479: $06 $6f
	ld   [bc], a                                     ; $647b: $02
	inc  bc                                          ; $647c: $03
	nop                                              ; $647d: $00
	ld   [de], a                                     ; $647e: $12
	jr   nz, jr_094_64a9                             ; $647f: $20 $28

	jr   nz, jr_094_6486                             ; $6481: $20 $03

	add  c                                           ; $6483: $81
	dec  d                                           ; $6484: $15
	inc  b                                           ; $6485: $04

jr_094_6486:
	dec  b                                           ; $6486: $05
	inc  b                                           ; $6487: $04
	sbc  h                                           ; $6488: $9c
	inc  c                                           ; $6489: $0c
	adc  h                                           ; $648a: $8c
	add  e                                           ; $648b: $83
	rrca                                             ; $648c: $0f
	nop                                              ; $648d: $00
	db   $eb                                         ; $648e: $eb
	add  c                                           ; $648f: $81
	rst  $28                                         ; $6490: $ef
	ld   [hl+], a                                    ; $6491: $22
	pop  hl                                          ; $6492: $e1
	inc  bc                                          ; $6493: $03
	nop                                              ; $6494: $00
	ld   bc, $ff03                                   ; $6495: $01 $03 $ff
	ei                                               ; $6498: $fb
	ld   a, a                                        ; $6499: $7f
	halt                                             ; $649a: $76
	cp   [hl]                                        ; $649b: $be
	xor  b                                           ; $649c: $a8
	reti                                             ; $649d: $d9


	ret  nz                                          ; $649e: $c0

	rst  $20                                         ; $649f: $e7
	ldh  [$fe], a                                    ; $64a0: $e0 $fe
	push bc                                          ; $64a2: $c5
	db   $fc                                         ; $64a3: $fc
	jp   c, $04f8                                    ; $64a4: $da $f8 $04

	add  b                                           ; $64a7: $80
	ld   l, b                                        ; $64a8: $68

jr_094_64a9:
	nop                                              ; $64a9: $00
	db   $10                                         ; $64aa: $10
	ret  nz                                          ; $64ab: $c0

	ld   h, b                                        ; $64ac: $60
	add  b                                           ; $64ad: $80
	ld   b, b                                        ; $64ae: $40
	nop                                              ; $64af: $00
	add  c                                           ; $64b0: $81
	nop                                              ; $64b1: $00
	inc  bc                                          ; $64b2: $03
	nop                                              ; $64b3: $00
	ld   b, $81                                      ; $64b4: $06 $81
	nop                                              ; $64b6: $00
	jr   @+$0e                                       ; $64b7: $18 $0c

	nop                                              ; $64b9: $00
	jr   c, jr_094_64bc                              ; $64ba: $38 $00

jr_094_64bc:
	ld   [hl], b                                     ; $64bc: $70
	nop                                              ; $64bd: $00
	ret  nz                                          ; $64be: $c0

	nop                                              ; $64bf: $00
	add  c                                           ; $64c0: $81
	nop                                              ; $64c1: $00
	ld   [bc], a                                     ; $64c2: $02
	nop                                              ; $64c3: $00
	ld   b, $02                                      ; $64c4: $06 $02
	db   $10                                         ; $64c6: $10
	ld   de, $0001                                   ; $64c7: $11 $01 $00
	jr   c, jr_094_64cc                              ; $64ca: $38 $00

jr_094_64cc:
	ld   b, e                                        ; $64cc: $43
	ld   a, $ff                                      ; $64cd: $3e $ff
	ld   a, a                                        ; $64cf: $7f
	dec  a                                           ; $64d0: $3d
	add  b                                           ; $64d1: $80
	nop                                              ; $64d2: $00
	ld   bc, $f0ff                                   ; $64d3: $01 $ff $f0
	add  b                                           ; $64d6: $80
	rst  $38                                         ; $64d7: $ff
	inc  c                                           ; $64d8: $0c
	ret  nz                                          ; $64d9: $c0

	pop  af                                          ; $64da: $f1
	ld   bc, $0f4f                                   ; $64db: $01 $4f $0f
	rst  $38                                         ; $64de: $ff
	inc  a                                           ; $64df: $3c
	cp   a                                           ; $64e0: $bf
	add  b                                           ; $64e1: $80
	adc  l                                           ; $64e2: $8d
	ld   bc, $8fef                                   ; $64e3: $01 $ef $8f
	add  b                                           ; $64e6: $80
	db   $ed                                         ; $64e7: $ed
	add  hl, bc                                      ; $64e8: $09
	sbc  l                                           ; $64e9: $9d
	inc  c                                           ; $64ea: $0c
	rst  $38                                         ; $64eb: $ff
	ld   hl, sp-$02                                  ; $64ec: $f8 $fe
	ret  nz                                          ; $64ee: $c0

	ld   hl, sp+$00                                  ; $64ef: $f8 $00
	rst  $38                                         ; $64f1: $ff
	ccf                                              ; $64f2: $3f
	add  h                                           ; $64f3: $84
	rst  $38                                         ; $64f4: $ff
	inc  bc                                          ; $64f5: $03
	add  c                                           ; $64f6: $81
	ld   bc, $0383                                   ; $64f7: $01 $83 $03
	add  b                                           ; $64fa: $80
	rlca                                             ; $64fb: $07
	add  b                                           ; $64fc: $80
	ccf                                              ; $64fd: $3f
	nop                                              ; $64fe: $00
	rst  $38                                         ; $64ff: $ff
	add  b                                           ; $6500: $80
	cp   $02                                         ; $6501: $fe $02
	db   $fd                                         ; $6503: $fd
	db   $fc                                         ; $6504: $fc
	ld   a, [$f980]                                  ; $6505: $fa $80 $f9
	nop                                              ; $6508: $00
	db   $e4                                         ; $6509: $e4
	add  c                                           ; $650a: $81
	ret  nz                                          ; $650b: $c0

	nop                                              ; $650c: $00
	ldh  [$80], a                                    ; $650d: $e0 $80
	add  b                                           ; $650f: $80
	ld   [bc], a                                     ; $6510: $02
	ld   b, b                                        ; $6511: $40
	nop                                              ; $6512: $00
	add  b                                           ; $6513: $80
	add  b                                           ; $6514: $80
	ld   b, b                                        ; $6515: $40
	add  b                                           ; $6516: $80
	add  b                                           ; $6517: $80
	add  b                                           ; $6518: $80
	ld   b, b                                        ; $6519: $40
	nop                                              ; $651a: $00
	nop                                              ; $651b: $00
	adc  c                                           ; $651c: $89
	rst  $38                                         ; $651d: $ff
	ld   [$ff7f], sp                                 ; $651e: $08 $7f $ff
	dec  sp                                          ; $6521: $3b
	rst  $38                                         ; $6522: $ff
	sbc  e                                           ; $6523: $9b
	ret  nz                                          ; $6524: $c0

	and  b                                           ; $6525: $a0
	add  b                                           ; $6526: $80
	ld   b, b                                        ; $6527: $40
	add  a                                           ; $6528: $87
	nop                                              ; $6529: $00
	add  b                                           ; $652a: $80
	inc  bc                                          ; $652b: $03
	nop                                              ; $652c: $00
	adc  a                                           ; $652d: $8f
	add  c                                           ; $652e: $81
	nop                                              ; $652f: $00
	ld   [bc], a                                     ; $6530: $02
	db   $10                                         ; $6531: $10
	ld   [$8128], sp                                 ; $6532: $08 $28 $81
	stop                                             ; $6535: $10 $00
	ld   d, b                                        ; $6537: $50
	add  c                                           ; $6538: $81
	jr   nz, jr_094_653b                             ; $6539: $20 $00

jr_094_653b:
	and  b                                           ; $653b: $a0
	add  b                                           ; $653c: $80
	ld   h, b                                        ; $653d: $60
	add  d                                           ; $653e: $82
	nop                                              ; $653f: $00
	ld   b, $07                                      ; $6540: $06 $07
	rla                                              ; $6542: $17
	rra                                              ; $6543: $1f
	cpl                                              ; $6544: $2f
	ccf                                              ; $6545: $3f
	rra                                              ; $6546: $1f
	ccf                                              ; $6547: $3f
	add  d                                           ; $6548: $82
	ld   a, a                                        ; $6549: $7f
	dec  d                                           ; $654a: $15
	db   $fc                                         ; $654b: $fc
	ld   hl, sp+$40                                  ; $654c: $f8 $40
	ld   a, b                                        ; $654e: $78
	or   h                                           ; $654f: $b4
	or   b                                           ; $6550: $b0
	ld   d, b                                        ; $6551: $50
	ret  nc                                          ; $6552: $d0

	add  b                                           ; $6553: $80
	ldh  [$ec], a                                    ; $6554: $e0 $ec
	ld   hl, sp-$0d                                  ; $6556: $f8 $f3
	db   $fc                                         ; $6558: $fc
	db   $fd                                         ; $6559: $fd
	rst  $38                                         ; $655a: $ff
	add  hl, bc                                      ; $655b: $09
	nop                                              ; $655c: $00
	jr   jr_094_655f                                 ; $655d: $18 $00

jr_094_655f:
	inc  sp                                          ; $655f: $33
	inc  bc                                          ; $6560: $03
	add  b                                           ; $6561: $80
	rrca                                             ; $6562: $0f
	add  b                                           ; $6563: $80
	ld   e, a                                        ; $6564: $5f
	nop                                              ; $6565: $00
	rst  JumpTable                                         ; $6566: $df
	add  d                                           ; $6567: $82
	cp   a                                           ; $6568: $bf
	dec  b                                           ; $6569: $05
	ccf                                              ; $656a: $3f
	reti                                             ; $656b: $d9


	ld   d, $7c                                      ; $656c: $16 $7c
	ld   l, h                                        ; $656e: $6c
	add  sp, -$80                                    ; $656f: $e8 $80
	jp   hl                                          ; $6571: $e9


	add  c                                           ; $6572: $81
	db   $eb                                         ; $6573: $eb
	nop                                              ; $6574: $00
	db   $e3                                         ; $6575: $e3
	add  b                                           ; $6576: $80
	ret  nz                                          ; $6577: $c0

	ld   d, $cf                                      ; $6578: $16 $cf
	adc  $cf                                         ; $657a: $ce $cf
	adc  $00                                         ; $657c: $ce $00
	ld   bc, $7d7e                                   ; $657e: $01 $7e $7d
	rst  $38                                         ; $6581: $ff
	jp   $40fe                                       ; $6582: $c3 $fe $40


	add  b                                           ; $6585: $80
	rra                                              ; $6586: $1f
	nop                                              ; $6587: $00
	ld   hl, sp-$78                                  ; $6588: $f8 $88
	xor  a                                           ; $658a: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $658b: $cf
	stop                                             ; $658c: $10 $00
	sbc  a                                           ; $658e: $9f
	ccf                                              ; $658f: $3f
	add  b                                           ; $6590: $80
	cp   a                                           ; $6591: $bf
	dec  b                                           ; $6592: $05
	sbc  a                                           ; $6593: $9f
	rra                                              ; $6594: $1f
	ld   b, b                                        ; $6595: $40
	nop                                              ; $6596: $00
	sbc  a                                           ; $6597: $9f
	rra                                              ; $6598: $1f
	add  d                                           ; $6599: $82
	ccf                                              ; $659a: $3f
	add  b                                           ; $659b: $80
	rrca                                             ; $659c: $0f
	add  b                                           ; $659d: $80
	pop  bc                                          ; $659e: $c1
	add  b                                           ; $659f: $80
	ldh  [$80], a                                    ; $65a0: $e0 $80
	ldh  a, [$80]                                    ; $65a2: $f0 $80
	inc  bc                                          ; $65a4: $03
	add  h                                           ; $65a5: $84
	rst  $38                                         ; $65a6: $ff
	ld   bc, $fafe                                   ; $65a7: $01 $fe $fa
	add  b                                           ; $65aa: $80
	ld   sp, hl                                      ; $65ab: $f9
	add  b                                           ; $65ac: $80
	ld   a, d                                        ; $65ad: $7a
	add  b                                           ; $65ae: $80
	add  hl, sp                                      ; $65af: $39
	rlca                                             ; $65b0: $07
	ld   a, [$e3e2]                                  ; $65b1: $fa $e2 $e3
	db   $dd                                         ; $65b4: $dd
	call c, $fdbc                                    ; $65b5: $dc $bc $fd
	ld   e, $19                                      ; $65b8: $1e $19
	ld   [bc], a                                     ; $65ba: $02
	add  [hl]                                        ; $65bb: $86
	nop                                              ; $65bc: $00
	ld   bc, $639c                                   ; $65bd: $01 $9c $63
	add  b                                           ; $65c0: $80
	rst  ToBoot                                         ; $65c1: $c7
	add  b                                           ; $65c2: $80
	sbc  a                                           ; $65c3: $9f
	add  b                                           ; $65c4: $80
	ld   a, h                                        ; $65c5: $7c
	nop                                              ; $65c6: $00
	rst  $38                                         ; $65c7: $ff
	add  l                                           ; $65c8: $85
	nop                                              ; $65c9: $00
	ld   bc, $f807                                   ; $65ca: $01 $07 $f8
	add  b                                           ; $65cd: $80
	ldh  [$80], a                                    ; $65ce: $e0 $80
	inc  b                                           ; $65d0: $04
	add  b                                           ; $65d1: $80
	inc  de                                          ; $65d2: $13
	nop                                              ; $65d3: $00

jr_094_65d4:
	rst  $38                                         ; $65d4: $ff
	add  l                                           ; $65d5: $85
	nop                                              ; $65d6: $00
	ld   bc, $39c6                                   ; $65d7: $01 $c6 $39
	add  b                                           ; $65da: $80
	cp   $80                                         ; $65db: $fe $80
	ld   a, a                                        ; $65dd: $7f
	add  b                                           ; $65de: $80
	sbc  a                                           ; $65df: $9f
	nop                                              ; $65e0: $00
	rst  $38                                         ; $65e1: $ff
	add  e                                           ; $65e2: $83
	nop                                              ; $65e3: $00
	inc  bc                                          ; $65e4: $03
	ld   bc, $7600                                   ; $65e5: $01 $00 $76
	adc  b                                           ; $65e8: $88
	add  b                                           ; $65e9: $80
	ld   h, [hl]                                     ; $65ea: $66
	ld   bc, $a9a8                                   ; $65eb: $01 $a8 $a9
	add  b                                           ; $65ee: $80
	xor  l                                           ; $65ef: $ad
	nop                                              ; $65f0: $00
	cp   $83                                         ; $65f1: $fe $83
	nop                                              ; $65f3: $00
	inc  b                                           ; $65f4: $04
	ldh  [rP1], a                                    ; $65f5: $e0 $00
	inc  e                                           ; $65f7: $1c
	db   $e3                                         ; $65f8: $e3
	ldh  [$80], a                                    ; $65f9: $e0 $80
	db   $fc                                         ; $65fb: $fc
	add  c                                           ; $65fc: $81
	rst  $38                                         ; $65fd: $ff
	add  [hl]                                        ; $65fe: $86
	nop                                              ; $65ff: $00
	ld   bc, $de21                                   ; $6600: $01 $21 $de
	add  b                                           ; $6603: $80
	db   $dd                                         ; $6604: $dd
	add  b                                           ; $6605: $80
	dec  de                                          ; $6606: $1b
	ld   [bc], a                                     ; $6607: $02
	inc  e                                           ; $6608: $1c
	call nz, $8527                                   ; $6609: $c4 $27 $85
	nop                                              ; $660c: $00
	ld   bc, $f30c                                   ; $660d: $01 $0c $f3
	add  b                                           ; $6610: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6611: $cf
	add  b                                           ; $6612: $80
	inc  a                                           ; $6613: $3c
	add  b                                           ; $6614: $80
	jp   nz, $ff00                                   ; $6615: $c2 $00 $ff

	add  e                                           ; $6618: $83
	nop                                              ; $6619: $00
	add  hl, bc                                      ; $661a: $09
	inc  bc                                          ; $661b: $03
	nop                                              ; $661c: $00
	inc  c                                           ; $661d: $0c
	di                                               ; $661e: $f3
	jp   $00cf                                       ; $661f: $c3 $cf $00


	jr   nc, jr_094_662b                             ; $6622: $30 $07

	rst  ToBoot                                         ; $6624: $c7
	add  [hl]                                        ; $6625: $86
	nop                                              ; $6626: $00
	inc  bc                                          ; $6627: $03
	ldh  a, [rIF]                                    ; $6628: $f0 $0f
	ccf                                              ; $662a: $3f

jr_094_662b:
	cp   a                                           ; $662b: $bf
	add  b                                           ; $662c: $80
	cp   h                                           ; $662d: $bc
	ld   [bc], a                                     ; $662e: $02
	dec  de                                          ; $662f: $1b
	ld   e, e                                        ; $6630: $5b
	ccf                                              ; $6631: $3f
	add  l                                           ; $6632: $85
	nop                                              ; $6633: $00
	ld   bc, $c738                                   ; $6634: $01 $38 $c7
	add  b                                           ; $6637: $80
	cpl                                              ; $6638: $2f
	add  b                                           ; $6639: $80
	rst  JumpTable                                         ; $663a: $df
	add  b                                           ; $663b: $80
	cp   h                                           ; $663c: $bc
	nop                                              ; $663d: $00
	rst  $38                                         ; $663e: $ff
	add  l                                           ; $663f: $85
	nop                                              ; $6640: $00
	ld   bc, $d12e                                   ; $6641: $01 $2e $d1
	add  b                                           ; $6644: $80
	pop  af                                          ; $6645: $f1
	add  b                                           ; $6646: $80
	sub  c                                           ; $6647: $91
	add  b                                           ; $6648: $80
	ld   [hl], c                                     ; $6649: $71
	nop                                              ; $664a: $00
	rst  $38                                         ; $664b: $ff
	add  l                                           ; $664c: $85
	nop                                              ; $664d: $00
	ld   bc, $07f8                                   ; $664e: $01 $f8 $07
	add  b                                           ; $6651: $80
	jr   jr_094_65d4                                 ; $6652: $18 $80

	rrca                                             ; $6654: $0f
	add  b                                           ; $6655: $80
	inc  de                                          ; $6656: $13
	add  b                                           ; $6657: $80
	ldh  [rTIMA], a                                  ; $6658: $e0 $05
	add  e                                           ; $665a: $83
	add  b                                           ; $665b: $80
	inc  c                                           ; $665c: $0c
	nop                                              ; $665d: $00
	jr   nc, jr_094_6660                             ; $665e: $30 $00

jr_094_6660:
	add  b                                           ; $6660: $80
	jr   nc, jr_094_666b                             ; $6661: $30 $08

	ccf                                              ; $6663: $3f
	rrca                                             ; $6664: $0f
	ld   c, $07                                      ; $6665: $0e $07
	ld   b, $1a                                      ; $6667: $06 $1a
	and  $0c                                         ; $6669: $e6 $0c

jr_094_666b:
	rrca                                             ; $666b: $0f
	add  b                                           ; $666c: $80
	inc  bc                                          ; $666d: $03
	add  l                                           ; $666e: $85
	nop                                              ; $666f: $00
	add  b                                           ; $6670: $80
	ldh  [$03], a                                    ; $6671: $e0 $03
	call c, $f83c                                    ; $6673: $dc $3c $f8
	rst  $20                                         ; $6676: $e7
	add  b                                           ; $6677: $80
	jr   @+$06                                       ; $6678: $18 $04

	rst  $20                                         ; $667a: $e7
	ld   h, a                                        ; $667b: $67
	ld   a, b                                        ; $667c: $78
	jr   jr_094_669e                                 ; $667d: $18 $1f

	add  b                                           ; $667f: $80
	inc  bc                                          ; $6680: $03
	nop                                              ; $6681: $00
	nop                                              ; $6682: $00
	add  b                                           ; $6683: $80
	ld   bc, $0e80                                   ; $6684: $01 $80 $0e
	ld   bc, $aa56                                   ; $6687: $01 $56 $aa
	add  b                                           ; $668a: $80
	xor  e                                           ; $668b: $ab
	ld   bc, $2723                                   ; $668c: $01 $23 $27
	add  b                                           ; $668f: $80
	rst  $20                                         ; $6690: $e7
	add  b                                           ; $6691: $80
	ld   b, $07                                      ; $6692: $06 $07

jr_094_6694:
	push hl                                          ; $6694: $e5
	ld   l, l                                        ; $6695: $6d
	rst  $28                                         ; $6696: $ef
	adc  a                                           ; $6697: $8f
	rst  $28                                         ; $6698: $ef
	rrca                                             ; $6699: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $669a: $cf
	ccf                                              ; $669b: $3f
	add  b                                           ; $669c: $80
	adc  a                                           ; $669d: $8f

jr_094_669e:
	inc  bc                                          ; $669e: $03
	rst  $20                                         ; $669f: $e7
	db   $e4                                         ; $66a0: $e4
	sbc  h                                           ; $66a1: $9c
	sbc  a                                           ; $66a2: $9f
	add  b                                           ; $66a3: $80
	ld   a, a                                        ; $66a4: $7f
	nop                                              ; $66a5: $00
	rst  $38                                         ; $66a6: $ff
	add  b                                           ; $66a7: $80

jr_094_66a8:
	ldh  a, [$0d]                                    ; $66a8: $f0 $0d
	adc  $cf                                         ; $66aa: $ce $cf
	cp   b                                           ; $66ac: $b8
	or   c                                           ; $66ad: $b1
	add  sp, -$1d                                    ; $66ae: $e8 $e3
	db   $d3                                         ; $66b0: $d3
	rst  $10                                         ; $66b1: $d7
	rst  $20                                         ; $66b2: $e7
	db   $e3                                         ; $66b3: $e3
	inc  sp                                          ; $66b4: $33
	ld   sp, $c8c9                                   ; $66b5: $31 $c9 $c8
	add  b                                           ; $66b8: $80
	ldh  a, [rAUD1HIGH]                              ; $66b9: $f0 $14
	ld   a, [hl-]                                    ; $66bb: $3a
	ld   a, [$fe06]                                  ; $66bc: $fa $06 $fe
	add  hl, sp                                      ; $66bf: $39
	ld   hl, sp-$06                                  ; $66c0: $f8 $fa
	ldh  a, [$f4]                                    ; $66c2: $f0 $f4
	db   $e3                                         ; $66c4: $e3
	db   $eb                                         ; $66c5: $eb
	rst  $28                                         ; $66c6: $ef
	xor  $0e                                         ; $66c7: $ee $0e
	add  hl, de                                      ; $66c9: $19
	ld   e, c                                        ; $66ca: $59
	sub  a                                           ; $66cb: $97
	ld   d, a                                        ; $66cc: $57
	ld   b, b                                        ; $66cd: $40
	jr   nz, jr_094_66ef                             ; $66ce: $20 $1f

	add  b                                           ; $66d0: $80
	ld   a, a                                        ; $66d1: $7f
	add  b                                           ; $66d2: $80
	rst  $38                                         ; $66d3: $ff
	add  b                                           ; $66d4: $80
	ldh  [$0b], a                                    ; $66d5: $e0 $0b
	db   $fc                                         ; $66d7: $fc
	inc  a                                           ; $66d8: $3c
	add  hl, sp                                      ; $66d9: $39
	reti                                             ; $66da: $d9


	rst  $10                                         ; $66db: $d7
	sub  a                                           ; $66dc: $97
	sbc  a                                           ; $66dd: $9f
	ccf                                              ; $66de: $3f
	jr   c, jr_094_66a8                              ; $66df: $38 $c7

	adc  $ee                                         ; $66e1: $ce $ee
	add  b                                           ; $66e3: $80
	add  sp, -$80                                    ; $66e4: $e8 $80
	push hl                                          ; $66e6: $e5
	ld   bc, $7363                                   ; $66e7: $01 $63 $73
	add  d                                           ; $66ea: $82
	rst  $30                                         ; $66eb: $f7
	inc  bc                                          ; $66ec: $03
	ldh  a, [$f8]                                    ; $66ed: $f0 $f8

jr_094_66ef:
	sbc  a                                           ; $66ef: $9f
	ld   h, a                                        ; $66f0: $67
	add  b                                           ; $66f1: $80
	rra                                              ; $66f2: $1f
	add  b                                           ; $66f3: $80
	db   $fc                                         ; $66f4: $fc
	add  b                                           ; $66f5: $80
	ei                                               ; $66f6: $fb
	add  b                                           ; $66f7: $80
	rst  $20                                         ; $66f8: $e7
	add  b                                           ; $66f9: $80
	sbc  [hl]                                        ; $66fa: $9e
	add  b                                           ; $66fb: $80
	ld   a, b                                        ; $66fc: $78
	add  b                                           ; $66fd: $80
	dec  h                                           ; $66fe: $25
	add  b                                           ; $66ff: $80
	sub  c                                           ; $6700: $91
	add  b                                           ; $6701: $80
	ld   [hl], c                                     ; $6702: $71
	add  d                                           ; $6703: $82
	pop  de                                          ; $6704: $d1
	add  b                                           ; $6705: $80
	sub  c                                           ; $6706: $91
	add  b                                           ; $6707: $80
	ld   sp, $f180                                   ; $6708: $31 $80 $f1
	add  b                                           ; $670b: $80
	pop  de                                          ; $670c: $d1
	add  b                                           ; $670d: $80
	inc  c                                           ; $670e: $0c
	add  b                                           ; $670f: $80
	rlca                                             ; $6710: $07
	add  b                                           ; $6711: $80
	jr   jr_094_6694                                 ; $6712: $18 $80

	rra                                              ; $6714: $1f
	add  b                                           ; $6715: $80
	rrca                                             ; $6716: $0f
	add  b                                           ; $6717: $80
	inc  de                                          ; $6718: $13
	add  b                                           ; $6719: $80
	db   $10                                         ; $671a: $10
	add  b                                           ; $671b: $80
	inc  de                                          ; $671c: $13
	inc  bc                                          ; $671d: $03
	jr   nz, jr_094_6722                             ; $671e: $20 $02

	jr   nz, jr_094_6722                             ; $6720: $20 $00

jr_094_6722:
	add  b                                           ; $6722: $80
	ld   [bc], a                                     ; $6723: $02
	ld   b, $20                                      ; $6724: $06 $20
	nop                                              ; $6726: $00
	dec  e                                           ; $6727: $1d
	jr   nz, jr_094_6746                             ; $6728: $20 $1c

	ld   [bc], a                                     ; $672a: $02
	ld   bc, $0082                                   ; $672b: $01 $82 $00
	add  b                                           ; $672e: $80
	inc  bc                                          ; $672f: $03
	add  b                                           ; $6730: $80
	ld   b, $80                                      ; $6731: $06 $80
	ld   a, [hl-]                                    ; $6733: $3a
	add  b                                           ; $6734: $80
	jp   nz, $020d                                   ; $6735: $c2 $0d $02

	ldh  [c], a                                      ; $6738: $e2
	inc  bc                                          ; $6739: $03
	jp   $1c3e                                       ; $673a: $c3 $3e $1c


	inc  bc                                          ; $673d: $03
	ld   c, c                                        ; $673e: $49

jr_094_673f:
	or   b                                           ; $673f: $b0
	ld   a, a                                        ; $6740: $7f
	ret  nz                                          ; $6741: $c0

	ld   a, e                                        ; $6742: $7b
	inc  bc                                          ; $6743: $03
	ccf                                              ; $6744: $3f
	add  b                                           ; $6745: $80

jr_094_6746:
	ld   e, a                                        ; $6746: $5f
	add  b                                           ; $6747: $80
	ld   l, a                                        ; $6748: $6f
	add  b                                           ; $6749: $80
	xor  a                                           ; $674a: $af
	inc  b                                           ; $674b: $04
	inc  [hl]                                        ; $674c: $34
	scf                                              ; $674d: $37
	ret  nc                                          ; $674e: $d0

	inc  sp                                          ; $674f: $33
	rrca                                             ; $6750: $0f
	add  b                                           ; $6751: $80
	ld   l, h                                        ; $6752: $6c
	add  c                                           ; $6753: $81
	rst  $28                                         ; $6754: $ef
	add  b                                           ; $6755: $80
	rst  $30                                         ; $6756: $f7
	add  b                                           ; $6757: $80
	rst  ToBoot                                         ; $6758: $c7
	ld   [$d717], sp                                 ; $6759: $08 $17 $d7
	inc  h                                           ; $675c: $24
	db   $e4                                         ; $675d: $e4
	ret  nc                                          ; $675e: $d0

	pop  de                                          ; $675f: $d1
	add  h                                           ; $6760: $84
	ld   b, $78                                      ; $6761: $06 $78
	add  b                                           ; $6763: $80
	jr   jr_094_6775                                 ; $6764: $18 $0f

	ld   sp, hl                                      ; $6766: $f9
	ld   hl, sp-$01                                  ; $6767: $f8 $ff
	ldh  a, [$f7]                                    ; $6769: $f0 $f7
	ld   bc, $030f                                   ; $676b: $01 $0f $03
	ld   e, $0e                                      ; $676e: $1e $0e
	daa                                              ; $6770: $27
	ret  nz                                          ; $6771: $c0

	cp   $f8                                         ; $6772: $fe $f8
	db   $fd                                         ; $6774: $fd

jr_094_6775:
	db   $fc                                         ; $6775: $fc
	add  c                                           ; $6776: $81
	rst  $38                                         ; $6777: $ff
	add  b                                           ; $6778: $80
	di                                               ; $6779: $f3
	rrca                                             ; $677a: $0f
	push hl                                          ; $677b: $e5
	and  l                                           ; $677c: $a5
	xor  d                                           ; $677d: $aa
	ld   l, d                                        ; $677e: $6a
	ld   h, l                                        ; $677f: $65
	ld   l, d                                        ; $6780: $6a
	nop                                              ; $6781: $00
	cp   a                                           ; $6782: $bf
	rrca                                             ; $6783: $0f
	ld   a, a                                        ; $6784: $7f
	ccf                                              ; $6785: $3f
	ld   a, a                                        ; $6786: $7f
	cp   $ff                                         ; $6787: $fe $ff
	adc  $cf                                         ; $6789: $ce $cf
	add  b                                           ; $678b: $80
	and  a                                           ; $678c: $a7
	dec  b                                           ; $678d: $05
	ld   d, a                                        ; $678e: $57
	ld   d, h                                        ; $678f: $54
	inc  h                                           ; $6790: $24
	and  a                                           ; $6791: $a7
	ld   b, a                                        ; $6792: $47
	rst  ToBoot                                         ; $6793: $c7
	add  b                                           ; $6794: $80
	reti                                             ; $6795: $d9


	inc  c                                           ; $6796: $0c
	rst  JumpTable                                         ; $6797: $df
	reti                                             ; $6798: $d9


	jp   hl                                          ; $6799: $e9


	db   $ec                                         ; $679a: $ec
	inc  l                                           ; $679b: $2c
	rst  $28                                         ; $679c: $ef
	rrca                                             ; $679d: $0f
	rst  $38                                         ; $679e: $ff
	rst  ToBoot                                         ; $679f: $c7
	rst  $28                                         ; $67a0: $ef
	pop  hl                                          ; $67a1: $e1
	ld   sp, hl                                      ; $67a2: $f9
	ei                                               ; $67a3: $fb
	add  b                                           ; $67a4: $80
	ld   a, [$fb81]                                  ; $67a5: $fa $81 $fb
	add  b                                           ; $67a8: $80
	pop  af                                          ; $67a9: $f1
	rrca                                             ; $67aa: $0f
	or   $76                                         ; $67ab: $f6 $76
	ld   [hl], a                                     ; $67ad: $77
	or   h                                           ; $67ae: $b4
	xor  h                                           ; $67af: $ac
	rst  $28                                         ; $67b0: $ef
	rst  ToBoot                                         ; $67b1: $c7
	call nz, $00c3                                   ; $67b2: $c4 $c3 $00
	jr   c, jr_094_673f                              ; $67b5: $38 $88

	adc  [hl]                                        ; $67b7: $8e
	ldh  [c], a                                      ; $67b8: $e2
	ldh  [$fc], a                                    ; $67b9: $e0 $fc
	add  b                                           ; $67bb: $80
	ld   a, d                                        ; $67bc: $7a
	ld   b, $96                                      ; $67bd: $06 $96
	rla                                              ; $67bf: $17
	ld   h, l                                        ; $67c0: $65
	dec  d                                           ; $67c1: $15
	add  hl, bc                                      ; $67c2: $09
	ld   c, c                                        ; $67c3: $49
	or   c                                           ; $67c4: $b1
	add  b                                           ; $67c5: $80
	ld   sp, $5182                                   ; $67c6: $31 $82 $51
	add  [hl]                                        ; $67c9: $86
	ld   [hl], c                                     ; $67ca: $71
	add  b                                           ; $67cb: $80
	dec  d                                           ; $67cc: $15
	add  b                                           ; $67cd: $80
	ld   d, $82                                      ; $67ce: $16 $82
	rla                                              ; $67d0: $17

Jump_094_67d1:
	add  b                                           ; $67d1: $80
	ld   b, $80                                      ; $67d2: $06 $80
	dec  b                                           ; $67d4: $05
	add  b                                           ; $67d5: $80
	dec  d                                           ; $67d6: $15
	add  b                                           ; $67d7: $80
	inc  de                                          ; $67d8: $13
	add  h                                           ; $67d9: $84
	nop                                              ; $67da: $00
	add  b                                           ; $67db: $80
	rra                                              ; $67dc: $1f
	add  b                                           ; $67dd: $80
	inc  de                                          ; $67de: $13
	add  b                                           ; $67df: $80
	dec  d                                           ; $67e0: $15
	nop                                              ; $67e1: $00
	ccf                                              ; $67e2: $3f
	add  b                                           ; $67e3: $80
	rra                                              ; $67e4: $1f
	ld   [bc], a                                     ; $67e5: $02
	add  hl, de                                      ; $67e6: $19
	ld   h, $18                                      ; $67e7: $26 $18
	add  b                                           ; $67e9: $80
	nop                                              ; $67ea: $00
	ld   bc, $0018                                   ; $67eb: $01 $18 $00
	add  b                                           ; $67ee: $80
	rst  $38                                         ; $67ef: $ff
	add  b                                           ; $67f0: $80
	jr   @-$7e                                       ; $67f1: $18 $80

	jr   z, jr_094_6775                              ; $67f3: $28 $80

	ret  z                                           ; $67f5: $c8

	dec  bc                                          ; $67f6: $0b
	rst  $38                                         ; $67f7: $ff
	cp   a                                           ; $67f8: $bf
	ld   l, h                                        ; $67f9: $6c
	inc  hl                                          ; $67fa: $23
	rla                                              ; $67fb: $17
	rlca                                             ; $67fc: $07
	cpl                                              ; $67fd: $2f
	ld   c, $5e                                      ; $67fe: $0e $5e
	dec  e                                           ; $6800: $1d

jr_094_6801:
	inc  a                                           ; $6801: $3c
	ld   a, $80                                      ; $6802: $3e $80
	ld   a, c                                        ; $6804: $79
	add  b                                           ; $6805: $80
	ld   [hl], e                                     ; $6806: $73
	ld   [bc], a                                     ; $6807: $02
	rst  $20                                         ; $6808: $e7
	and  [hl]                                        ; $6809: $a6
	ld   a, $80                                      ; $680a: $3e $80
	xor  l                                           ; $680c: $ad
	db   $10                                         ; $680d: $10
	ld   e, d                                        ; $680e: $5a
	ld   e, e                                        ; $680f: $5b
	or   h                                           ; $6810: $b4
	or   [hl]                                        ; $6811: $b6
	add  sp, -$11                                    ; $6812: $e8 $ef
	db   $d3                                         ; $6814: $d3
	sub  $b6                                         ; $6815: $d6 $b6
	cp   h                                           ; $6817: $bc
	ld   h, h                                        ; $6818: $64
	ld   l, l                                        ; $6819: $6d
	db   $ed                                         ; $681a: $ed
	xor  b                                           ; $681b: $a8
	jr   c, jr_094_6801                              ; $681c: $38 $e3

	ld   h, e                                        ; $681e: $63
	add  b                                           ; $681f: $80
	rlca                                             ; $6820: $07
	inc  bc                                          ; $6821: $03
	rra                                              ; $6822: $1f
	ld   e, $3e                                      ; $6823: $1e $3e
	dec  a                                           ; $6825: $3d
	add  b                                           ; $6826: $80
	ld   a, l                                        ; $6827: $7d
	inc  b                                           ; $6828: $04
	rst  $38                                         ; $6829: $ff
	ld   sp, hl                                      ; $682a: $f9
	rst  $38                                         ; $682b: $ff
	di                                               ; $682c: $f3
	rst  $30                                         ; $682d: $f7
	add  b                                           ; $682e: $80
	ld   [$af80], a                                  ; $682f: $ea $80 $af
	ld   bc, $6667                                   ; $6832: $01 $67 $66
	add  b                                           ; $6835: $80
	and  $82                                         ; $6836: $e6 $82
	sub  $00                                         ; $6838: $d6 $00
	xor  [hl]                                        ; $683a: $ae
	add  c                                           ; $683b: $81
	xor  h                                           ; $683c: $ac
	ld   [bc], a                                     ; $683d: $02
	ld   d, h                                        ; $683e: $54
	sub  c                                           ; $683f: $91
	ld   sp, $1380                                   ; $6840: $31 $80 $13
	nop                                              ; $6843: $00
	rlca                                             ; $6844: $07
	add  b                                           ; $6845: $80
	ld   a, [bc]                                     ; $6846: $0a
	add  c                                           ; $6847: $81
	dec  bc                                          ; $6848: $0b
	add  b                                           ; $6849: $80
	ld   a, [bc]                                     ; $684a: $0a
	dec  b                                           ; $684b: $05
	dec  bc                                          ; $684c: $0b
	rlca                                             ; $684d: $07
	ld   c, c                                        ; $684e: $49
	ld   b, b                                        ; $684f: $40
	ld   bc, $8000                                   ; $6850: $01 $00 $80
	rst  ToBoot                                         ; $6853: $c7
	add  b                                           ; $6854: $80
	db   $e3                                         ; $6855: $e3
	ld   [$39f9], sp                                 ; $6856: $08 $f9 $39
	db   $fc                                         ; $6859: $fc
	inc  e                                           ; $685a: $1c
	cp   a                                           ; $685b: $bf
	adc  a                                           ; $685c: $8f
	rra                                              ; $685d: $1f
	rlca                                             ; $685e: $07
	rst  $30                                         ; $685f: $f7
	add  b                                           ; $6860: $80
	add  hl, hl                                      ; $6861: $29
	ld   a, [bc]                                     ; $6862: $0a
	halt                                             ; $6863: $76
	or   $3b                                         ; $6864: $f6 $3b
	ei                                               ; $6866: $fb
	sbc  l                                           ; $6867: $9d
	db   $fd                                         ; $6868: $fd
	adc  $cc                                         ; $6869: $ce $cc
	call $667e                                       ; $686b: $cd $7e $66
	add  b                                           ; $686e: $80
	rst  $20                                         ; $686f: $e7
	dec  b                                           ; $6870: $05
	jp   z, $f2c1                                    ; $6871: $ca $c1 $f2

	ldh  a, [$fc]                                    ; $6874: $f0 $fc
	ld   a, h                                        ; $6876: $7c
	add  e                                           ; $6877: $83
	ld   a, [hl]                                     ; $6878: $7e
	nop                                              ; $6879: $00
	db   $fc                                         ; $687a: $fc
	add  b                                           ; $687b: $80
	db   $fd                                         ; $687c: $fd
	inc  bc                                          ; $687d: $03
	ld   a, h                                        ; $687e: $7c
	ld   a, b                                        ; $687f: $78
	sbc  c                                           ; $6880: $99
	ld   [hl], c                                     ; $6881: $71
	add  b                                           ; $6882: $80
	ld   de, $9180                                   ; $6883: $11 $80 $91
	ld   bc, $5554                                   ; $6886: $01 $54 $55
	add  d                                           ; $6889: $82
	rst  $10                                         ; $688a: $d7
	add  b                                           ; $688b: $80
	rla                                              ; $688c: $17
	inc  bc                                          ; $688d: $03
	db   $d3                                         ; $688e: $d3
	rst  $10                                         ; $688f: $d7
	dec  d                                           ; $6890: $15
	nop                                              ; $6891: $00
	add  b                                           ; $6892: $80
	rla                                              ; $6893: $17
	add  b                                           ; $6894: $80
	dec  de                                          ; $6895: $1b
	add  b                                           ; $6896: $80
	dec  e                                           ; $6897: $1d
	add  b                                           ; $6898: $80
	ld   c, $80                                      ; $6899: $0e $80
	db   $10                                         ; $689b: $10
	add  d                                           ; $689c: $82
	rra                                              ; $689d: $1f
	ld   b, $24                                      ; $689e: $06 $24
	sub  b                                           ; $68a0: $90
	sub  a                                           ; $68a1: $97
	sub  b                                           ; $68a2: $90
	or   d                                           ; $68a3: $b2
	sub  d                                           ; $68a4: $92
	sub  e                                           ; $68a5: $93
	add  c                                           ; $68a6: $81
	sub  b                                           ; $68a7: $90
	add  b                                           ; $68a8: $80
	or   a                                           ; $68a9: $b7
	add  b                                           ; $68aa: $80
	sub  b                                           ; $68ab: $90
	add  b                                           ; $68ac: $80
	or   a                                           ; $68ad: $b7
	nop                                              ; $68ae: $00
	ld   l, d                                        ; $68af: $6a
	add  e                                           ; $68b0: $83
	dec  b                                           ; $68b1: $05
	inc  bc                                          ; $68b2: $03
	db   $fd                                         ; $68b3: $fd
	inc  bc                                          ; $68b4: $03
	ld   bc, $8000                                   ; $68b5: $01 $00 $80
	ldh  [$80], a                                    ; $68b8: $e0 $80
	rra                                              ; $68ba: $1f
	add  b                                           ; $68bb: $80
	ldh  [$0b], a                                    ; $68bc: $e0 $0b
	or   b                                           ; $68be: $b0
	ld   c, $7e                                      ; $68bf: $0e $7e
	dec  e                                           ; $68c1: $1d
	dec  a                                           ; $68c2: $3d
	inc  c                                           ; $68c3: $0c
	dec  c                                           ; $68c4: $0d
	ld   a, [bc]                                     ; $68c5: $0a
	add  sp, $0b                                     ; $68c6: $e8 $0b
	ld   [$8000], sp                                 ; $68c8: $08 $00 $80
	ldh  a, [$80]                                    ; $68cb: $f0 $80
	rlca                                             ; $68cd: $07
	nop                                              ; $68ce: $00
	nop                                              ; $68cf: $00
	add  b                                           ; $68d0: $80
	rst  $28                                         ; $68d1: $ef
	add  d                                           ; $68d2: $82
	rst  $30                                         ; $68d3: $f7
	add  b                                           ; $68d4: $80
	ld   l, e                                        ; $68d5: $6b
	add  b                                           ; $68d6: $80
	ld   c, d                                        ; $68d7: $4a
	add  b                                           ; $68d8: $80
	dec  c                                           ; $68d9: $0d
	rla                                              ; $68da: $17
	ld   c, l                                        ; $68db: $4d
	call Call_094_43cb                               ; $68dc: $cd $cb $43
	rst  $20                                         ; $68df: $e7
	rst  $30                                         ; $68e0: $f7
	add  $eb                                         ; $68e1: $c6 $eb
	adc  b                                           ; $68e3: $88
	push de                                          ; $68e4: $d5
	db   $10                                         ; $68e5: $10
	ld   [$1383], sp                                 ; $68e6: $08 $83 $13
	ld   c, $be                                      ; $68e9: $0e $be
	adc  h                                           ; $68eb: $8c
	ld   a, h                                        ; $68ec: $7c
	jr   @-$03                                       ; $68ed: $18 $fb

	inc  l                                           ; $68ef: $2c
	db   $ec                                         ; $68f0: $ec
	inc  [hl]                                        ; $68f1: $34
	or   b                                           ; $68f2: $b0
	add  b                                           ; $68f3: $80
	sub  b                                           ; $68f4: $90
	add  hl, bc                                      ; $68f5: $09
	db   $10                                         ; $68f6: $10
	inc  d                                           ; $68f7: $14
	ld   c, b                                        ; $68f8: $48
	ld   l, b                                        ; $68f9: $68
	ret  nc                                          ; $68fa: $d0

	ldh  [$0c], a                                    ; $68fb: $e0 $0c
	inc  d                                           ; $68fd: $14
	inc  b                                           ; $68fe: $04
	rst  $38                                         ; $68ff: $ff
	add  b                                           ; $6900: $80
	dec  b                                           ; $6901: $05
	add  b                                           ; $6902: $80
	inc  b                                           ; $6903: $04
	ld   bc, $1505                                   ; $6904: $01 $05 $15
	add  b                                           ; $6907: $80
	ld   [$030c], sp                                 ; $6908: $08 $0c $03
	jr   nz, jr_094_6919                             ; $690b: $20 $0c

	rrca                                             ; $690d: $0f
	jr   c, jr_094_6918                              ; $690e: $38 $08

	nop                                              ; $6910: $00
	adc  b                                           ; $6911: $88
	add  e                                           ; $6912: $83
	rst  JumpTable                                         ; $6913: $df
	reti                                             ; $6914: $d9


	rst  $20                                         ; $6915: $e7
	ld   h, h                                        ; $6916: $64
	add  b                                           ; $6917: $80

jr_094_6918:
	ld   a, d                                        ; $6918: $7a

jr_094_6919:
	inc  b                                           ; $6919: $04
	ld   a, h                                        ; $691a: $7c
	cp   l                                           ; $691b: $bd
	cp   [hl]                                        ; $691c: $be
	sbc  $df                                         ; $691d: $de $df
	add  b                                           ; $691f: $80
	rra                                              ; $6920: $1f
	add  b                                           ; $6921: $80
	rrca                                             ; $6922: $0f
	add  b                                           ; $6923: $80
	di                                               ; $6924: $f3
	add  b                                           ; $6925: $80
	db   $ed                                         ; $6926: $ed
	add  b                                           ; $6927: $80
	xor  $80                                         ; $6928: $ee $80
	rst  JumpTable                                         ; $692a: $df
	add  b                                           ; $692b: $80
	ld   b, a                                        ; $692c: $47
	ld   [bc], a                                     ; $692d: $02
	ld   b, d                                        ; $692e: $42
	ld   b, e                                        ; $692f: $43
	or   c                                           ; $6930: $b1
	add  b                                           ; $6931: $80
	or   e                                           ; $6932: $b3
	db   $10                                         ; $6933: $10
	ld   [hl], h                                     ; $6934: $74
	inc  [hl]                                        ; $6935: $34
	sub  a                                           ; $6936: $97
	sub  e                                           ; $6937: $93
	db   $db                                         ; $6938: $db
	ret  nz                                          ; $6939: $c0

jr_094_693a:
	rst  $28                                         ; $693a: $ef
	ld   l, a                                        ; $693b: $6f
	ld   l, l                                        ; $693c: $6d
	rla                                              ; $693d: $17
	rra                                              ; $693e: $1f
	rst  $38                                         ; $693f: $ff
	dec  d                                           ; $6940: $15
	rst  $38                                         ; $6941: $ff
	pop  hl                                          ; $6942: $e1
	rst  $38                                         ; $6943: $ff
	rlca                                             ; $6944: $07
	add  c                                           ; $6945: $81
	rla                                              ; $6946: $17
	inc  bc                                          ; $6947: $03
	sub  c                                           ; $6948: $91
	ld   de, $1777                                   ; $6949: $11 $77 $17
	add  b                                           ; $694c: $80
	rst  $10                                         ; $694d: $d7
	add  h                                           ; $694e: $84
	rst  $30                                         ; $694f: $f7
	nop                                              ; $6950: $00
	xor  $81                                         ; $6951: $ee $81
	rra                                              ; $6953: $1f
	add  b                                           ; $6954: $80
	ld   e, $80                                      ; $6955: $1e $80
	db   $10                                         ; $6957: $10
	add  b                                           ; $6958: $80
	inc  de                                          ; $6959: $13
	add  b                                           ; $695a: $80
	db   $10                                         ; $695b: $10
	dec  b                                           ; $695c: $05
	inc  de                                          ; $695d: $13
	inc  bc                                          ; $695e: $03
	inc  de                                          ; $695f: $13
	db   $10                                         ; $6960: $10
	inc  sp                                          ; $6961: $33
	or   b                                           ; $6962: $b0
	add  e                                           ; $6963: $83
	or   d                                           ; $6964: $b2
	add  c                                           ; $6965: $81
	ld   [hl-], a                                    ; $6966: $32
	add  d                                           ; $6967: $82
	ld   [hl], $80                                   ; $6968: $36 $80
	jr   nc, jr_094_696e                             ; $696a: $30 $02

	rst  $28                                         ; $696c: $ef
	rst  $38                                         ; $696d: $ff

jr_094_696e:
	db   $ed                                         ; $696e: $ed
	add  c                                           ; $696f: $81
	pop  de                                          ; $6970: $d1
	add  c                                           ; $6971: $81
	db   $fd                                         ; $6972: $fd
	nop                                              ; $6973: $00
	pop  bc                                          ; $6974: $c1
	add  h                                           ; $6975: $84
	rst  $38                                         ; $6976: $ff
	add  b                                           ; $6977: $80
	ld   hl, sp+$00                                  ; $6978: $f8 $00
	or   [hl]                                        ; $697a: $b6
	add  c                                           ; $697b: $81
	ld   b, l                                        ; $697c: $45
	add  c                                           ; $697d: $81
	rst  $30                                         ; $697e: $f7
	nop                                              ; $697f: $00
	inc  b                                           ; $6980: $04
	add  b                                           ; $6981: $80
	rst  $38                                         ; $6982: $ff
	add  c                                           ; $6983: $81
	cp   $03                                         ; $6984: $fe $03
	ld   b, $f8                                      ; $6986: $06 $f8
	ld   e, e                                        ; $6988: $5b
	db   $db                                         ; $6989: $db
	add  c                                           ; $698a: $81
	ld   e, d                                        ; $698b: $5a
	nop                                              ; $698c: $00
	jp   c, $bd80                                    ; $698d: $da $80 $bd

	add  b                                           ; $6990: $80
	dec  l                                           ; $6991: $2d
	add  b                                           ; $6992: $80
	ld   e, d                                        ; $6993: $5a
	add  b                                           ; $6994: $80
	sub  $0b                                         ; $6995: $d6 $0b
	or   h                                           ; $6997: $b4
	db   $f4                                         ; $6998: $f4
	inc  sp                                          ; $6999: $33
	pop  af                                          ; $699a: $f1
	ld   h, h                                        ; $699b: $64
	ld   h, b                                        ; $699c: $60
	ld   e, b                                        ; $699d: $58
	reti                                             ; $699e: $d9


	sbc  c                                           ; $699f: $99
	sbc  [hl]                                        ; $69a0: $9e
	ld   e, h                                        ; $69a1: $5c
	db   $db                                         ; $69a2: $db
	add  b                                           ; $69a3: $80
	ld   c, b                                        ; $69a4: $48
	add  d                                           ; $69a5: $82
	ld   l, b                                        ; $69a6: $68
	add  hl, bc                                      ; $69a7: $09
	nop                                              ; $69a8: $00
	add  b                                           ; $69a9: $80
	ld   [$8000], sp                                 ; $69aa: $08 $00 $80
	ret  nz                                          ; $69ad: $c0

	ld   d, b                                        ; $69ae: $50
	stop                                             ; $69af: $10 $00
	ldh  a, [$83]                                    ; $69b1: $f0 $83
	nop                                              ; $69b3: $00
	inc  bc                                          ; $69b4: $03
	ld   e, $02                                      ; $69b5: $1e $02
	inc  bc                                          ; $69b7: $03
	jr   jr_094_693a                                 ; $69b8: $18 $80

	ld   [bc], a                                     ; $69ba: $02
	inc  b                                           ; $69bb: $04
	inc  b                                           ; $69bc: $04
	dec  b                                           ; $69bd: $05
	add  hl, bc                                      ; $69be: $09
	ld   [$8107], sp                                 ; $69bf: $08 $07 $81
	nop                                              ; $69c2: $00
	add  b                                           ; $69c3: $80
	add  b                                           ; $69c4: $80
	nop                                              ; $69c5: $00
	rst  $38                                         ; $69c6: $ff
	add  b                                           ; $69c7: $80
	daa                                              ; $69c8: $27
	dec  b                                           ; $69c9: $05
	ld   [hl], $16                                   ; $69ca: $36 $16
	dec  de                                          ; $69cc: $1b
	dec  bc                                          ; $69cd: $0b
	ld   c, c                                        ; $69ce: $49
	ld   a, c                                        ; $69cf: $79
	add  b                                           ; $69d0: $80
	add  hl, de                                      ; $69d1: $19
	nop                                              ; $69d2: $00
	or   $82                                         ; $69d3: $f6 $82
	ld   [hl], d                                     ; $69d5: $72
	nop                                              ; $69d6: $00
	push af                                          ; $69d7: $f5
	add  b                                           ; $69d8: $80
	cp   e                                           ; $69d9: $bb

Jump_094_69da:
	inc  bc                                          ; $69da: $03
	ret  c                                           ; $69db: $d8

	jp   c, Jump_094_5c5d                            ; $69dc: $da $5d $5c

	add  b                                           ; $69df: $80
	ld   e, [hl]                                     ; $69e0: $5e
	add  b                                           ; $69e1: $80
	sbc  a                                           ; $69e2: $9f
	add  b                                           ; $69e3: $80
	xor  e                                           ; $69e4: $ab
	add  b                                           ; $69e5: $80
	call nc, $5a01                                   ; $69e6: $d4 $01 $5a
	and  l                                           ; $69e9: $a5
	add  b                                           ; $69ea: $80

jr_094_69eb:
	rst  $38                                         ; $69eb: $ff
	dec  c                                           ; $69ec: $0d
	ld   a, a                                        ; $69ed: $7f
	ld   [de], a                                     ; $69ee: $12
	ld   [$fa8b], a                                  ; $69ef: $ea $8b $fa
	add  hl, bc                                      ; $69f2: $09
	ld   a, e                                        ; $69f3: $7b
	ld   a, d                                        ; $69f4: $7a
	cp   d                                           ; $69f5: $ba
	cp   e                                           ; $69f6: $bb
	db   $db                                         ; $69f7: $db
	jp   c, Jump_094_5d5a                            ; $69f8: $da $5a $5d

	add  e                                           ; $69fb: $83
	rla                                              ; $69fc: $17
	nop                                              ; $69fd: $00
	rst  $30                                         ; $69fe: $f7
	add  e                                           ; $69ff: $83
	rla                                              ; $6a00: $17
	add  b                                           ; $6a01: $80
	ld   [hl], a                                     ; $6a02: $77
	add  b                                           ; $6a03: $80
	scf                                              ; $6a04: $37
	nop                                              ; $6a05: $00
	push af                                          ; $6a06: $f5
	add  c                                           ; $6a07: $81
	rra                                              ; $6a08: $1f
	rlca                                             ; $6a09: $07
	rrca                                             ; $6a0a: $0f
	rra                                              ; $6a0b: $1f
	inc  e                                           ; $6a0c: $1c
	rra                                              ; $6a0d: $1f
	inc  e                                           ; $6a0e: $1c
	rra                                              ; $6a0f: $1f
	inc  e                                           ; $6a10: $1c
	inc  c                                           ; $6a11: $0c
	add  b                                           ; $6a12: $80
	rra                                              ; $6a13: $1f
	add  b                                           ; $6a14: $80
	ld   c, $00                                      ; $6a15: $0e $00
	add  hl, sp                                      ; $6a17: $39
	add  l                                           ; $6a18: $85
	ld   [hl-], a                                    ; $6a19: $32
	nop                                              ; $6a1a: $00
	db   $10                                         ; $6a1b: $10
	add  d                                           ; $6a1c: $82
	scf                                              ; $6a1d: $37
	add  c                                           ; $6a1e: $81
	ccf                                              ; $6a1f: $3f
	nop                                              ; $6a20: $00
	ret  nz                                          ; $6a21: $c0

	add  l                                           ; $6a22: $85
	rst  $38                                         ; $6a23: $ff
	nop                                              ; $6a24: $00
	nop                                              ; $6a25: $00
	add  l                                           ; $6a26: $85
	rst  $38                                         ; $6a27: $ff
	nop                                              ; $6a28: $00
	inc  bc                                          ; $6a29: $03
	add  c                                           ; $6a2a: $81
	db   $fd                                         ; $6a2b: $fd
	nop                                              ; $6a2c: $00
	ld   sp, hl                                      ; $6a2d: $f9
	add  b                                           ; $6a2e: $80
	ei                                               ; $6a2f: $fb
	ld   bc, $02fa                                   ; $6a30: $01 $fa $02
	add  h                                           ; $6a33: $84
	ld   a, [$fd03]                                  ; $6a34: $fa $03 $fd
	push af                                          ; $6a37: $f5
	ld   h, d                                        ; $6a38: $62
	ld   a, d                                        ; $6a39: $7a
	add  e                                           ; $6a3a: $83
	ld   c, e                                        ; $6a3b: $4b
	nop                                              ; $6a3c: $00
	ld   d, e                                        ; $6a3d: $53
	add  b                                           ; $6a3e: $80
	ld   h, l                                        ; $6a3f: $65
	add  hl, bc                                      ; $6a40: $09
	and  l                                           ; $6a41: $a5
	xor  c                                           ; $6a42: $a9
	or   d                                           ; $6a43: $b2
	or   [hl]                                        ; $6a44: $b6
	dec  de                                          ; $6a45: $1b
	ret  c                                           ; $6a46: $d8

	inc  h                                           ; $6a47: $24
	and  h                                           ; $6a48: $a4
	inc  h                                           ; $6a49: $24
	ld   h, $80                                      ; $6a4a: $26 $80
	ld   a, [hl+]                                    ; $6a4c: $2a
	ld   bc, $4928                                   ; $6a4d: $01 $28 $49
	add  b                                           ; $6a50: $80
	sub  h                                           ; $6a51: $94
	ld   b, $95                                      ; $6a52: $06 $95
	and  l                                           ; $6a54: $a5
	jp   z, Jump_094_69da                            ; $6a55: $ca $da $69

	sub  [hl]                                        ; $6a58: $96
	nop                                              ; $6a59: $00
	add  b                                           ; $6a5a: $80
	ld   bc, $0080                                   ; $6a5b: $01 $80 $00
	ld   a, [de]                                     ; $6a5e: $1a
	rlca                                             ; $6a5f: $07
	dec  b                                           ; $6a60: $05
	inc  bc                                          ; $6a61: $03
	ld   bc, $0080                                   ; $6a62: $01 $80 $00
	ld   h, b                                        ; $6a65: $60
	and  b                                           ; $6a66: $a0
	cp   b                                           ; $6a67: $b8
	ld   c, b                                        ; $6a68: $48
	jr   nc, jr_094_69eb                             ; $6a69: $30 $80

	ret  nz                                          ; $6a6b: $c0

	ld   b, b                                        ; $6a6c: $40
	add  b                                           ; $6a6d: $80
	nop                                              ; $6a6e: $00
	ld   [hl], b                                     ; $6a6f: $70
	ld   d, b                                        ; $6a70: $50
	ldh  [$c0], a                                    ; $6a71: $e0 $c0
	ld   bc, $0600                                   ; $6a73: $01 $00 $06
	inc  b                                           ; $6a76: $04
	inc  e                                           ; $6a77: $1c
	ld   [de], a                                     ; $6a78: $12
	ld   a, d                                        ; $6a79: $7a
	add  c                                           ; $6a7a: $81
	ld   h, l                                        ; $6a7b: $65
	ld   [bc], a                                     ; $6a7c: $02
	ld   a, l                                        ; $6a7d: $7d
	ld   c, l                                        ; $6a7e: $4d
	call $8a80                                       ; $6a7f: $cd $80 $8a
	ld   bc, $5a4a                                   ; $6a82: $01 $4a $5a
	add  b                                           ; $6a85: $80
	ld   d, l                                        ; $6a86: $55
	dec  b                                           ; $6a87: $05
	dec  [hl]                                        ; $6a88: $35
	or   l                                           ; $6a89: $b5
	ld   [hl-], a                                    ; $6a8a: $32
	cp   d                                           ; $6a8b: $ba
	ld   b, e                                        ; $6a8c: $43
	ld   c, a                                        ; $6a8d: $4f
	add  b                                           ; $6a8e: $80
	ld   c, c                                        ; $6a8f: $49
	ld   bc, $5751                                   ; $6a90: $01 $51 $57
	add  b                                           ; $6a93: $80
	call nc, $a481                                   ; $6a94: $d4 $81 $a4
	nop                                              ; $6a97: $00
	and  [hl]                                        ; $6a98: $a6
	add  b                                           ; $6a99: $80
	ld   d, h                                        ; $6a9a: $54
	add  b                                           ; $6a9b: $80
	xor  l                                           ; $6a9c: $ad
	ld   [$6a6b], sp                                 ; $6a9d: $08 $6b $6a
	ld   a, [hl+]                                    ; $6aa0: $2a
	dec  hl                                          ; $6aa1: $2b
	xor  e                                           ; $6aa2: $ab
	xor  d                                           ; $6aa3: $aa
	xor  [hl]                                        ; $6aa4: $ae
	or   b                                           ; $6aa5: $b0
	ret  nz                                          ; $6aa6: $c0

	add  c                                           ; $6aa7: $81
	rst  JumpTable                                         ; $6aa8: $df
	add  b                                           ; $6aa9: $80
	cp   [hl]                                        ; $6aaa: $be
	ld   bc, $6781                                   ; $6aab: $01 $81 $67
	add  c                                           ; $6aae: $81
	rla                                              ; $6aaf: $17
	add  b                                           ; $6ab0: $80
	rst  $30                                         ; $6ab1: $f7
	add  d                                           ; $6ab2: $82
	rla                                              ; $6ab3: $17
	add  c                                           ; $6ab4: $81
	rst  $30                                         ; $6ab5: $f7
	add  b                                           ; $6ab6: $80
	rla                                              ; $6ab7: $17
	add  b                                           ; $6ab8: $80
	rst  $30                                         ; $6ab9: $f7
	nop                                              ; $6aba: $00
	dec  e                                           ; $6abb: $1d
	add  b                                           ; $6abc: $80
	rra                                              ; $6abd: $1f
	add  d                                           ; $6abe: $82
	inc  c                                           ; $6abf: $0c
	inc  b                                           ; $6ac0: $04
	rrca                                             ; $6ac1: $0f
	inc  e                                           ; $6ac2: $1c
	rrca                                             ; $6ac3: $0f
	inc  c                                           ; $6ac4: $0c
	inc  d                                           ; $6ac5: $14
	add  c                                           ; $6ac6: $81
	nop                                              ; $6ac7: $00
	ld   bc, $3e1e                                   ; $6ac8: $01 $1e $3e
	add  d                                           ; $6acb: $82
	nop                                              ; $6acc: $00
	add  b                                           ; $6acd: $80
	ld   bc, $3f81                                   ; $6ace: $01 $81 $3f
	add  b                                           ; $6ad1: $80
	ld   a, [hl+]                                    ; $6ad2: $2a
	add  b                                           ; $6ad3: $80
	dec  d                                           ; $6ad4: $15
	ld   bc, $d52a                                   ; $6ad5: $01 $2a $d5
	add  e                                           ; $6ad8: $83
	nop                                              ; $6ad9: $00
	add  c                                           ; $6ada: $81
	rst  $38                                         ; $6adb: $ff
	add  b                                           ; $6adc: $80
	ld   d, l                                        ; $6add: $55
	add  b                                           ; $6ade: $80
	xor  d                                           ; $6adf: $aa
	add  b                                           ; $6ae0: $80
	ld   d, l                                        ; $6ae1: $55
	inc  b                                           ; $6ae2: $04
	and  b                                           ; $6ae3: $a0
	ld   e, [hl]                                     ; $6ae4: $5e
	nop                                              ; $6ae5: $00
	ld   bc, $8000                                   ; $6ae6: $01 $00 $80
	ccf                                              ; $6ae9: $3f
	dec  d                                           ; $6aea: $15
	rst  $38                                         ; $6aeb: $ff
	add  sp, -$11                                    ; $6aec: $e8 $ef
	ld   d, a                                        ; $6aee: $57
	ld   e, h                                        ; $6aef: $5c
	adc  h                                           ; $6af0: $8c
	sbc  b                                           ; $6af1: $98
	dec  de                                          ; $6af2: $1b
	inc  de                                          ; $6af3: $13
	rla                                              ; $6af4: $17
	add  a                                           ; $6af5: $87
	ld   b, h                                        ; $6af6: $44
	inc  a                                           ; $6af7: $3c
	inc  bc                                          ; $6af8: $03
	ei                                               ; $6af9: $fb
	nop                                              ; $6afa: $00
	ld   [hl], c                                     ; $6afb: $71
	ld   bc, $8ff8                                   ; $6afc: $01 $f8 $8f
	rst  $30                                         ; $6aff: $f7
	rst  $38                                         ; $6b00: $ff
	add  b                                           ; $6b01: $80
	ld   a, a                                        ; $6b02: $7f
	rra                                              ; $6b03: $1f
	ld   [hl], a                                     ; $6b04: $77
	rst  $38                                         ; $6b05: $ff
	add  a                                           ; $6b06: $87
	or   h                                           ; $6b07: $b4
	cp   l                                           ; $6b08: $bd
	dec  b                                           ; $6b09: $05
	rra                                              ; $6b0a: $1f
	ld   [$c40c], sp                                 ; $6b0b: $08 $0c $c4
	call nc, $d2d6                                   ; $6b0e: $d4 $d6 $d2
	db   $eb                                         ; $6b11: $eb
	db   $db                                         ; $6b12: $db
	di                                               ; $6b13: $f3
	ccf                                              ; $6b14: $3f
	rst  $38                                         ; $6b15: $ff
	ld   bc, $d352                                   ; $6b16: $01 $52 $d3
	add  h                                           ; $6b19: $84
	call z, Call_094_4bc0                            ; $6b1a: $cc $c0 $4b
	ret  nc                                          ; $6b1d: $d0

	db   $d3                                         ; $6b1e: $d3
	call c, $dd40                                    ; $6b1f: $dc $40 $dd
	sbc  b                                           ; $6b22: $98
	sbc  c                                           ; $6b23: $99
	add  b                                           ; $6b24: $80
	db   $e4                                         ; $6b25: $e4
	ld   h, $81                                      ; $6b26: $26 $81
	ld   c, h                                        ; $6b28: $4c
	call z, $3d30                                    ; $6b29: $cc $30 $3d
	ld   b, b                                        ; $6b2c: $40
	db   $fc                                         ; $6b2d: $fc
	inc  bc                                          ; $6b2e: $03
	or   b                                           ; $6b2f: $b0
	rrca                                             ; $6b30: $0f
	ld   c, h                                        ; $6b31: $4c
	rst  JumpTable                                         ; $6b32: $df
	ld   d, d                                        ; $6b33: $52
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b34: $cf
	dec  c                                           ; $6b35: $0d
	rrca                                             ; $6b36: $0f
	add  b                                           ; $6b37: $80
	dec  h                                           ; $6b38: $25
	and  l                                           ; $6b39: $a5
	jr   nz, jr_094_6b5d                             ; $6b3a: $20 $21

	jr   nc, jr_094_6b74                             ; $6b3c: $30 $36

	ret  nc                                          ; $6b3e: $d0

	add  hl, de                                      ; $6b3f: $19
	ret  nz                                          ; $6b40: $c0

	jp   nc, $a0c0                                   ; $6b41: $d2 $c0 $a0

	add  b                                           ; $6b44: $80
	adc  h                                           ; $6b45: $8c
	adc  a                                           ; $6b46: $8f
	ccf                                              ; $6b47: $3f
	adc  c                                           ; $6b48: $89
	jp   hl                                          ; $6b49: $e9


	ld   [bc], a                                     ; $6b4a: $02
	ldh  [c], a                                      ; $6b4b: $e2
	jr   nc, @-$4e                                   ; $6b4c: $30 $b0

	add  b                                           ; $6b4e: $80
	ld   l, $80                                      ; $6b4f: $2e $80
	rra                                              ; $6b51: $1f
	add  b                                           ; $6b52: $80
	ld   sp, hl                                      ; $6b53: $f9
	add  b                                           ; $6b54: $80
	add  $04                                         ; $6b55: $c6 $04
	ld   a, c                                        ; $6b57: $79
	ld   a, b                                        ; $6b58: $78
	ld   a, [hl]                                     ; $6b59: $7e
	nop                                              ; $6b5a: $00
	add  b                                           ; $6b5b: $80
	add  b                                           ; $6b5c: $80

jr_094_6b5d:
	db   $fc                                         ; $6b5d: $fc
	add  b                                           ; $6b5e: $80
	inc  bc                                          ; $6b5f: $03
	ld   [$0080], sp                                 ; $6b60: $08 $80 $00
	ld   h, b                                        ; $6b63: $60
	add  b                                           ; $6b64: $80
	sub  b                                           ; $6b65: $90
	ldh  [$e8], a                                    ; $6b66: $e0 $e8
	ldh  a, [rAUD1LEN]                               ; $6b68: $f0 $11
	add  e                                           ; $6b6a: $83
	rla                                              ; $6b6b: $17
	add  b                                           ; $6b6c: $80
	rst  $30                                         ; $6b6d: $f7
	add  d                                           ; $6b6e: $82
	rla                                              ; $6b6f: $17
	add  b                                           ; $6b70: $80
	ld   de, $1780                                   ; $6b71: $11 $80 $17

jr_094_6b74:
	nop                                              ; $6b74: $00
	xor  $83                                         ; $6b75: $ee $83
	nop                                              ; $6b77: $00
	add  b                                           ; $6b78: $80
	inc  bc                                          ; $6b79: $03
	add  b                                           ; $6b7a: $80
	rrca                                             ; $6b7b: $0f
	add  l                                           ; $6b7c: $85
	rra                                              ; $6b7d: $1f
	add  b                                           ; $6b7e: $80
	db   $10                                         ; $6b7f: $10
	add  c                                           ; $6b80: $81
	nop                                              ; $6b81: $00
	inc  bc                                          ; $6b82: $03
	rra                                              ; $6b83: $1f
	nop                                              ; $6b84: $00
	jr   nz, jr_094_6b87                             ; $6b85: $20 $00

jr_094_6b87:
	add  b                                           ; $6b87: $80
	ld   a, [de]                                     ; $6b88: $1a
	add  b                                           ; $6b89: $80
	jr   nz, @-$7e                                   ; $6b8a: $20 $80

	nop                                              ; $6b8c: $00
	nop                                              ; $6b8d: $00
	ccf                                              ; $6b8e: $3f
	add  c                                           ; $6b8f: $81
	nop                                              ; $6b90: $00
	inc  bc                                          ; $6b91: $03
	ld   a, $00                                      ; $6b92: $3e $00
	jp   nz, $8002                                   ; $6b94: $c2 $02 $80

	ld   l, h                                        ; $6b97: $6c
	ld   bc, $8182                                   ; $6b98: $01 $82 $81
	add  b                                           ; $6b9b: $80
	ld   bc, $0502                                   ; $6b9c: $01 $02 $05
	inc  bc                                          ; $6b9f: $03
	db   $ec                                         ; $6ba0: $ec
	add  b                                           ; $6ba1: $80
	ld   d, b                                        ; $6ba2: $50
	add  hl, bc                                      ; $6ba3: $09
	ld   d, c                                        ; $6ba4: $51
	ld   e, l                                        ; $6ba5: $5d
	db   $db                                         ; $6ba6: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ba7: $cf
	rst  $28                                         ; $6ba8: $ef
	rst  $20                                         ; $6ba9: $e7
	rst  $30                                         ; $6baa: $f7
	pop  af                                          ; $6bab: $f1
	pop  hl                                          ; $6bac: $e1
	ldh  [$80], a                                    ; $6bad: $e0 $80
	sbc  b                                           ; $6baf: $98
	ld   bc, $01fe                                   ; $6bb0: $01 $fe $01
	adc  e                                           ; $6bb3: $8b
	rst  $38                                         ; $6bb4: $ff
	add  b                                           ; $6bb5: $80
	ld   a, a                                        ; $6bb6: $7f
	add  h                                           ; $6bb7: $84
	rst  $38                                         ; $6bb8: $ff
	ld   [bc], a                                     ; $6bb9: $02
	ld   e, a                                        ; $6bba: $5f
	rra                                              ; $6bbb: $1f
	ld   e, a                                        ; $6bbc: $5f
	add  b                                           ; $6bbd: $80
	rra                                              ; $6bbe: $1f
	dec  bc                                          ; $6bbf: $0b
	inc  e                                           ; $6bc0: $1c
	db   $fd                                         ; $6bc1: $fd
	ld   hl, sp-$07                                  ; $6bc2: $f8 $f9
	pop  hl                                          ; $6bc4: $e1
	ldh  a, [c]                                      ; $6bc5: $f2
	db   $ed                                         ; $6bc6: $ed
	pop  af                                          ; $6bc7: $f1
	di                                               ; $6bc8: $f3
	or   e                                           ; $6bc9: $b3
	inc  sp                                          ; $6bca: $33
	or   e                                           ; $6bcb: $b3
	add  c                                           ; $6bcc: $81
	scf                                              ; $6bcd: $37
	rrca                                             ; $6bce: $0f
	rst  $30                                         ; $6bcf: $f7
	ld   [hl], a                                     ; $6bd0: $77
	rst  $20                                         ; $6bd1: $e7
	rlca                                             ; $6bd2: $07
	rla                                              ; $6bd3: $17
	rlca                                             ; $6bd4: $07
	ld   b, b                                        ; $6bd5: $40
	or   a                                           ; $6bd6: $b7
	dec  de                                          ; $6bd7: $1b
	ld   e, e                                        ; $6bd8: $5b
	inc  c                                           ; $6bd9: $0c
	inc  l                                           ; $6bda: $2c
	add  b                                           ; $6bdb: $80
	sub  b                                           ; $6bdc: $90
	di                                               ; $6bdd: $f3
	ldh  a, [$80]                                    ; $6bde: $f0 $80
	or   b                                           ; $6be0: $b0
	nop                                              ; $6be1: $00
	inc  d                                           ; $6be2: $14
	add  b                                           ; $6be3: $80
	ld   d, $24                                      ; $6be4: $16 $24
	db   $10                                         ; $6be6: $10
	or   a                                           ; $6be7: $b7
	inc  sp                                          ; $6be8: $33
	ccf                                              ; $6be9: $3f
	nop                                              ; $6bea: $00
	or   h                                           ; $6beb: $b4
	nop                                              ; $6bec: $00
	ret  nz                                          ; $6bed: $c0

	pop  bc                                          ; $6bee: $c1
	ld   hl, sp+$3a                                  ; $6bef: $f8 $3a
	ld   a, [$3d0c]                                  ; $6bf1: $fa $0c $3d
	ld   b, $0e                                      ; $6bf4: $06 $0e
	ld   bc, $67f9                                   ; $6bf6: $01 $f9 $67
	ld   [hl], b                                     ; $6bf9: $70
	ld   [$187f], sp                                 ; $6bfa: $08 $7f $18
	cp   b                                           ; $6bfd: $b8
	ld   a, $7e                                      ; $6bfe: $3e $7e
	ld   c, a                                        ; $6c00: $4f
	rst  $38                                         ; $6c01: $ff
	inc  bc                                          ; $6c02: $03
	ld   [hl], e                                     ; $6c03: $73
	cp   a                                           ; $6c04: $bf
	rst  $38                                         ; $6c05: $ff
	rra                                              ; $6c06: $1f
	inc  e                                           ; $6c07: $1c
	ld   hl, sp-$06                                  ; $6c08: $f8 $fa
	db   $fc                                         ; $6c0a: $fc
	add  c                                           ; $6c0b: $81
	db   $fd                                         ; $6c0c: $fd
	add  b                                           ; $6c0d: $80
	ld   a, l                                        ; $6c0e: $7d
	add  b                                           ; $6c0f: $80
	cp   [hl]                                        ; $6c10: $be
	add  e                                           ; $6c11: $83

jr_094_6c12:
	cp   $01                                         ; $6c12: $fe $01
	jr   @+$19                                       ; $6c14: $18 $17

	add  b                                           ; $6c16: $80
	ld   [hl], a                                     ; $6c17: $77
	adc  c                                           ; $6c18: $89
	rst  $30                                         ; $6c19: $f7
	ld   bc, $d1d7                                   ; $6c1a: $01 $d7 $d1
	adc  b                                           ; $6c1d: $88
	rra                                              ; $6c1e: $1f
	add  b                                           ; $6c1f: $80
	dec  e                                           ; $6c20: $1d
	add  b                                           ; $6c21: $80
	rla                                              ; $6c22: $17
	inc  b                                           ; $6c23: $04
	dec  e                                           ; $6c24: $1d
	ld   [hl+], a                                    ; $6c25: $22
	nop                                              ; $6c26: $00
	ret  nz                                          ; $6c27: $c0

	ldh  [$80], a                                    ; $6c28: $e0 $80
	db   $fc                                         ; $6c2a: $fc
	ld   bc, $ff1f                                   ; $6c2b: $01 $1f $ff
	add  b                                           ; $6c2e: $80
	rra                                              ; $6c2f: $1f
	add  b                                           ; $6c30: $80
	ld   bc, $0082                                   ; $6c31: $01 $82 $00
	ld   [bc], a                                     ; $6c34: $02
	rlca                                             ; $6c35: $07
	inc  bc                                          ; $6c36: $03
	dec  bc                                          ; $6c37: $0b
	add  c                                           ; $6c38: $81
	rlca                                             ; $6c39: $07
	add  b                                           ; $6c3a: $80
	rst  ToBoot                                         ; $6c3b: $c7
	nop                                              ; $6c3c: $00
	rst  $30                                         ; $6c3d: $f7
	add  b                                           ; $6c3e: $80
	ei                                               ; $6c3f: $fb
	nop                                              ; $6c40: $00
	db   $fd                                         ; $6c41: $fd
	add  b                                           ; $6c42: $80
	dec  e                                           ; $6c43: $1d
	ld   [bc], a                                     ; $6c44: $02
	inc  bc                                          ; $6c45: $03
	nop                                              ; $6c46: $00
	cp   $80                                         ; $6c47: $fe $80
	ld   hl, sp+$05                                  ; $6c49: $f8 $05
	rst  $20                                         ; $6c4b: $e7
	jp   hl                                          ; $6c4c: $e9


	pop  de                                          ; $6c4d: $d1
	sbc  $f2                                         ; $6c4e: $de $f2
	di                                               ; $6c50: $f3
	add  b                                           ; $6c51: $80
	db   $fc                                         ; $6c52: $fc
	add  b                                           ; $6c53: $80
	rst  $20                                         ; $6c54: $e7
	add  b                                           ; $6c55: $80
	reti                                             ; $6c56: $d9


	ld   [bc], a                                     ; $6c57: $02
	cp   [hl]                                        ; $6c58: $be
	pop  bc                                          ; $6c59: $c1
	ld   a, a                                        ; $6c5a: $7f
	add  b                                           ; $6c5b: $80
	ccf                                              ; $6c5c: $3f
	add  b                                           ; $6c5d: $80
	rra                                              ; $6c5e: $1f
	inc  b                                           ; $6c5f: $04
	rrca                                             ; $6c60: $0f
	adc  a                                           ; $6c61: $8f
	inc  bc                                          ; $6c62: $03
	ld   b, e                                        ; $6c63: $43
	ret  nz                                          ; $6c64: $c0

	add  b                                           ; $6c65: $80
	ld   [hl], b                                     ; $6c66: $70
	inc  bc                                          ; $6c67: $03
	ld   hl, sp-$01                                  ; $6c68: $f8 $ff
	ld   [hl], a                                     ; $6c6a: $77
	adc  a                                           ; $6c6b: $8f
	add  b                                           ; $6c6c: $80
	ret  nz                                          ; $6c6d: $c0

	add  d                                           ; $6c6e: $82
	add  b                                           ; $6c6f: $80
	add  b                                           ; $6c70: $80
	ret  nz                                          ; $6c71: $c0

	ld   bc, $1fe0                                   ; $6c72: $01 $e0 $1f
	add  b                                           ; $6c75: $80
	nop                                              ; $6c76: $00
	inc  b                                           ; $6c77: $04
	dec  e                                           ; $6c78: $1d
	db   $dd                                         ; $6c79: $dd
	call c, $06ed                                    ; $6c7a: $dc $ed $06
	add  b                                           ; $6c7d: $80
	inc  b                                           ; $6c7e: $04
	ld   b, $10                                      ; $6c7f: $06 $10
	ld   [$002f], sp                                 ; $6c81: $08 $2f $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c84: $cf
	rrca                                             ; $6c85: $0f
	rra                                              ; $6c86: $1f
	add  b                                           ; $6c87: $80
	rst  JumpTable                                         ; $6c88: $df
	add  b                                           ; $6c89: $80
	ld   e, a                                        ; $6c8a: $5f
	inc  bc                                          ; $6c8b: $03
	rra                                              ; $6c8c: $1f
	rst  $28                                         ; $6c8d: $ef
	nop                                              ; $6c8e: $00
	jr   nc, jr_094_6c12                             ; $6c8f: $30 $81

	nop                                              ; $6c91: $00
	rlca                                             ; $6c92: $07
	ret  nz                                          ; $6c93: $c0

	ld   [$c0f0], sp                                 ; $6c94: $08 $f0 $c0
	sub  $80                                         ; $6c97: $d6 $80
	add  l                                           ; $6c99: $85
	add  d                                           ; $6c9a: $82
	add  b                                           ; $6c9b: $80
	add  [hl]                                        ; $6c9c: $86
	inc  b                                           ; $6c9d: $04
	adc  d                                           ; $6c9e: $8a
	nop                                              ; $6c9f: $00
	ld   bc, $0100                                   ; $6ca0: $01 $00 $01
	add  c                                           ; $6ca3: $81
	ld   [bc], a                                     ; $6ca4: $02
	add  b                                           ; $6ca5: $80
	ld   b, $0e                                      ; $6ca6: $06 $0e
	ld   e, $18                                      ; $6ca8: $1e $18
	rst  $38                                         ; $6caa: $ff
	ld   [hl], b                                     ; $6cab: $70
	ld   a, b                                        ; $6cac: $78
	and  b                                           ; $6cad: $a0
	xor  a                                           ; $6cae: $af
	rst  $20                                         ; $6caf: $e7
	db   $e4                                         ; $6cb0: $e4
	inc  l                                           ; $6cb1: $2c

jr_094_6cb2:
	add  sp, $18                                     ; $6cb2: $e8 $18
	add  e                                           ; $6cb4: $83
	inc  bc                                          ; $6cb5: $03
	sbc  a                                           ; $6cb6: $9f
	add  b                                           ; $6cb7: $80
	inc  e                                           ; $6cb8: $1c
	ld   bc, $d313                                   ; $6cb9: $01 $13 $d3
	add  b                                           ; $6cbc: $80
	cpl                                              ; $6cbd: $2f
	add  b                                           ; $6cbe: $80
	ld   d, a                                        ; $6cbf: $57
	add  c                                           ; $6cc0: $81
	rst  $38                                         ; $6cc1: $ff
	add  b                                           ; $6cc2: $80
	ccf                                              ; $6cc3: $3f
	add  b                                           ; $6cc4: $80

jr_094_6cc5:
	adc  a                                           ; $6cc5: $8f
	nop                                              ; $6cc6: $00
	rst  $38                                         ; $6cc7: $ff
	add  b                                           ; $6cc8: $80

jr_094_6cc9:
	ld   a, a                                        ; $6cc9: $7f
	add  b                                           ; $6cca: $80
	sbc  a                                           ; $6ccb: $9f
	add  b                                           ; $6ccc: $80
	rst  $28                                         ; $6ccd: $ef
	ld   bc, $f9ff                                   ; $6cce: $01 $ff $f9
	add  b                                           ; $6cd1: $80
	scf                                              ; $6cd2: $37
	add  b                                           ; $6cd3: $80
	ld   d, a                                        ; $6cd4: $57
	add  b                                           ; $6cd5: $80
	or   a                                           ; $6cd6: $b7
	add  b                                           ; $6cd7: $80
	sub  a                                           ; $6cd8: $97
	add  b                                           ; $6cd9: $80
	or   a                                           ; $6cda: $b7
	add  d                                           ; $6cdb: $82
	rst  $10                                         ; $6cdc: $d7
	ld   bc, $9197                                   ; $6cdd: $01 $97 $91
	add  b                                           ; $6ce0: $80
	ld   a, [bc]                                     ; $6ce1: $0a
	add  b                                           ; $6ce2: $80
	dec  d                                           ; $6ce3: $15
	add  b                                           ; $6ce4: $80
	ld   a, [bc]                                     ; $6ce5: $0a

jr_094_6ce6:
	add  b                                           ; $6ce6: $80
	dec  d                                           ; $6ce7: $15
	add  b                                           ; $6ce8: $80
	ld   a, [bc]                                     ; $6ce9: $0a
	add  b                                           ; $6cea: $80
	dec  d                                           ; $6ceb: $15
	add  b                                           ; $6cec: $80
	ld   a, [bc]                                     ; $6ced: $0a
	ld   bc, $ea15                                   ; $6cee: $01 $15 $ea
	db   $fd                                         ; $6cf1: $fd
	nop                                              ; $6cf2: $00
	or   e                                           ; $6cf3: $b3
	ld   [bc], a                                     ; $6cf4: $02
	sbc  h                                           ; $6cf5: $9c
	nop                                              ; $6cf6: $00
	nop                                              ; $6cf7: $00
	rst  $38                                         ; $6cf8: $ff
	add  b                                           ; $6cf9: $80
	nop                                              ; $6cfa: $00
	sbc  l                                           ; $6cfb: $9d
	rst  $38                                         ; $6cfc: $ff
	adc  c                                           ; $6cfd: $89
	ccf                                              ; $6cfe: $3f
	ld   [bc], a                                     ; $6cff: $02
	ld   a, $3f                                      ; $6d00: $3e $3f
	dec  a                                           ; $6d02: $3d
	add  c                                           ; $6d03: $81
	inc  a                                           ; $6d04: $3c
	add  c                                           ; $6d05: $81
	dec  a                                           ; $6d06: $3d
	add  b                                           ; $6d07: $80
	ccf                                              ; $6d08: $3f
	ld   [bc], a                                     ; $6d09: $02
	inc  a                                           ; $6d0a: $3c
	ccf                                              ; $6d0b: $3f
	ld   a, $80                                      ; $6d0c: $3e $80
	ccf                                              ; $6d0e: $3f
	add  b                                           ; $6d0f: $80
	inc  a                                           ; $6d10: $3c
	add  b                                           ; $6d11: $80
	ccf                                              ; $6d12: $3f
	ld   bc, $c000                                   ; $6d13: $01 $00 $c0
	add  c                                           ; $6d16: $81
	rst  $38                                         ; $6d17: $ff
	dec  bc                                          ; $6d18: $0b
	cp   a                                           ; $6d19: $bf
	pop  bc                                          ; $6d1a: $c1
	dec  h                                           ; $6d1b: $25
	db   $f4                                         ; $6d1c: $f4
	ld   a, [bc]                                     ; $6d1d: $0a
	ld   a, d                                        ; $6d1e: $7a
	ld   b, b                                        ; $6d1f: $40
	ld   h, b                                        ; $6d20: $60
	inc  e                                           ; $6d21: $1c
	db   $fc                                         ; $6d22: $fc
	add  b                                           ; $6d23: $80
	ld   h, b                                        ; $6d24: $60
	add  b                                           ; $6d25: $80
	ld   d, h                                        ; $6d26: $54
	add  b                                           ; $6d27: $80
	ld   a, [hl+]                                    ; $6d28: $2a
	nop                                              ; $6d29: $00
	nop                                              ; $6d2a: $00
	add  b                                           ; $6d2b: $80
	add  c                                           ; $6d2c: $81
	ld   [bc], a                                     ; $6d2d: $02

jr_094_6d2e:
	rst  $20                                         ; $6d2e: $e7
	rst  $10                                         ; $6d2f: $d7
	jr   nc, jr_094_6cb2                             ; $6d30: $30 $80

	ld   h, b                                        ; $6d32: $60
	nop                                              ; $6d33: $00
	nop                                              ; $6d34: $00
	add  b                                           ; $6d35: $80
	rst  $38                                         ; $6d36: $ff
	ld   bc, $0300                                   ; $6d37: $01 $00 $03
	adc  b                                           ; $6d3a: $88
	ld   hl, sp-$80                                  ; $6d3b: $f8 $80
	ld   a, b                                        ; $6d3d: $78
	add  d                                           ; $6d3e: $82
	jr   c, jr_094_6cc5                              ; $6d3f: $38 $84

	cp   b                                           ; $6d41: $b8
	add  b                                           ; $6d42: $80
	ld   a, b                                        ; $6d43: $78
	add  b                                           ; $6d44: $80
	ld   hl, sp-$80                                  ; $6d45: $f8 $80
	jr   c, jr_094_6cc9                              ; $6d47: $38 $80

	ld   hl, sp+$07                                  ; $6d49: $f8 $07
	nop                                              ; $6d4b: $00
	jp   $383f                                       ; $6d4c: $c3 $3f $38


	ccf                                              ; $6d4f: $3f
	inc  a                                           ; $6d50: $3c
	ccf                                              ; $6d51: $3f
	ld   a, $81                                      ; $6d52: $3e $81
	ccf                                              ; $6d54: $3f
	ld   b, $3e                                      ; $6d55: $06 $3e

jr_094_6d57:
	ccf                                              ; $6d57: $3f
	ld   a, $3f                                      ; $6d58: $3e $3f
	ld   a, $3f                                      ; $6d5a: $3e $3f
	ld   a, $85                                      ; $6d5c: $3e $85
	ccf                                              ; $6d5e: $3f
	inc  b                                           ; $6d5f: $04
	ld   a, $3f                                      ; $6d60: $3e $3f
	inc  a                                           ; $6d62: $3c
	ccf                                              ; $6d63: $3f

jr_094_6d64:
	jr   c, jr_094_6ce6                              ; $6d64: $38 $80

	ccf                                              ; $6d66: $3f
	inc  d                                           ; $6d67: $14
	nop                                              ; $6d68: $00
	ret  nz                                          ; $6d69: $c0

	rst  $38                                         ; $6d6a: $ff
	nop                                              ; $6d6b: $00
	rst  $38                                         ; $6d6c: $ff
	nop                                              ; $6d6d: $00
	rst  $38                                         ; $6d6e: $ff
	ld   a, h                                        ; $6d6f: $7c
	db   $d3                                         ; $6d70: $d3
	ld   de, $21e1                                   ; $6d71: $11 $e1 $21
	pop  de                                          ; $6d74: $d1
	ld   d, c                                        ; $6d75: $51
	sub  l                                           ; $6d76: $95
	dec  d                                           ; $6d77: $15
	cp   l                                           ; $6d78: $bd
	inc  a                                           ; $6d79: $3c
	jr   jr_094_6d57                                 ; $6d7a: $18 $db

	jp   $b580                                       ; $6d7c: $c3 $80 $b5


	add  b                                           ; $6d7f: $80
	ld   e, c                                        ; $6d80: $59
	inc  b                                           ; $6d81: $04
	nop                                              ; $6d82: $00
	rst  $38                                         ; $6d83: $ff
	nop                                              ; $6d84: $00
	rst  $38                                         ; $6d85: $ff
	nop                                              ; $6d86: $00
	add  b                                           ; $6d87: $80
	rst  $38                                         ; $6d88: $ff
	dec  b                                           ; $6d89: $05
	nop                                              ; $6d8a: $00
	inc  bc                                          ; $6d8b: $03
	ld   hl, sp+$38                                  ; $6d8c: $f8 $38
	ld   hl, sp+$78                                  ; $6d8e: $f8 $78
	sub  e                                           ; $6d90: $93
	ld   hl, sp+$02                                  ; $6d91: $f8 $02
	ld   a, b                                        ; $6d93: $78
	ld   hl, sp+$38                                  ; $6d94: $f8 $38
	add  b                                           ; $6d96: $80
	ld   hl, sp+$01                                  ; $6d97: $f8 $01
	nop                                              ; $6d99: $00
	jp   $3f81                                       ; $6d9a: $c3 $81 $3f


	ld   c, $35                                      ; $6d9d: $0e $35
	ccf                                              ; $6d9f: $3f
	inc  [hl]                                        ; $6da0: $34
	ccf                                              ; $6da1: $3f
	ld   l, $3f                                      ; $6da2: $2e $3f
	inc  h                                           ; $6da4: $24
	ccf                                              ; $6da5: $3f
	add  hl, sp                                      ; $6da6: $39
	ccf                                              ; $6da7: $3f
	ld   [hl], $3d                                   ; $6da8: $36 $3d
	add  hl, sp                                      ; $6daa: $39
	ld   a, [hl-]                                    ; $6dab: $3a
	jr   c, jr_094_6d2e                              ; $6dac: $38 $80

	ld   [hl-], a                                    ; $6dae: $32
	nop                                              ; $6daf: $00
	ld   [hl+], a                                    ; $6db0: $22
	add  d                                           ; $6db1: $82
	inc  hl                                          ; $6db2: $23
	nop                                              ; $6db3: $00
	jr   nz, @-$7c                                   ; $6db4: $20 $82

	ccf                                              ; $6db6: $3f
	ld   bc, $c000                                   ; $6db7: $01 $00 $c0
	add  c                                           ; $6dba: $81
	rst  $38                                         ; $6dbb: $ff
	ld   b, $b3                                      ; $6dbc: $06 $b3
	db   $fc                                         ; $6dbe: $fc
	and  c                                           ; $6dbf: $a1
	di                                               ; $6dc0: $f3
	inc  h                                           ; $6dc1: $24

jr_094_6dc2:
	rst  ToBoot                                         ; $6dc2: $c7
	nop                                              ; $6dc3: $00

jr_094_6dc4:
	add  b                                           ; $6dc4: $80
	add  hl, sp                                      ; $6dc5: $39
	add  b                                           ; $6dc6: $80
	ld   b, l                                        ; $6dc7: $45
	dec  bc                                          ; $6dc8: $0b
	add  hl, sp                                      ; $6dc9: $39
	cp   d                                           ; $6dca: $ba
	sub  $54                                         ; $6dcb: $d6 $54
	ld   a, h                                        ; $6dcd: $7c
	ld   d, h                                        ; $6dce: $54
	jr   c, jr_094_6d64                              ; $6dcf: $38 $93

	add  e                                           ; $6dd1: $83
	ld   b, l                                        ; $6dd2: $45
	ld   d, l                                        ; $6dd3: $55
	db   $10                                         ; $6dd4: $10
	add  d                                           ; $6dd5: $82
	rst  $38                                         ; $6dd6: $ff
	ld   bc, $0300                                   ; $6dd7: $01 $00 $03
	add  c                                           ; $6dda: $81
	ld   hl, sp+$04                                  ; $6ddb: $f8 $04
	ret  c                                           ; $6ddd: $d8

	jr   c, @+$4a                                    ; $6dde: $38 $48

	ld   a, b                                        ; $6de0: $78
	ret  c                                           ; $6de1: $d8

	add  c                                           ; $6de2: $81
	ld   hl, sp+$02                                  ; $6de3: $f8 $02
	ret  c                                           ; $6de5: $d8

jr_094_6de6:
	ld   hl, sp-$28                                  ; $6de6: $f8 $d8
	add  c                                           ; $6de8: $81
	ld   hl, sp+$08                                  ; $6de9: $f8 $08
	add  sp, -$08                                    ; $6deb: $e8 $f8
	add  sp, -$08                                    ; $6ded: $e8 $f8
	ret  c                                           ; $6def: $d8

	ld   hl, sp-$28                                  ; $6df0: $f8 $d8
	ld   hl, sp+$08                                  ; $6df2: $f8 $08
	add  d                                           ; $6df4: $82
	ld   hl, sp+$01                                  ; $6df5: $f8 $01
	nop                                              ; $6df7: $00
	jp   $3f88                                       ; $6df8: $c3 $88 $3f


	add  c                                           ; $6dfb: $81
	ld   a, $82                                      ; $6dfc: $3e $82
	ccf                                              ; $6dfe: $3f
	add  l                                           ; $6dff: $85
	ld   a, $82                                      ; $6e00: $3e $82
	inc  a                                           ; $6e02: $3c
	add  b                                           ; $6e03: $80
	ccf                                              ; $6e04: $3f
	ld   bc, $c000                                   ; $6e05: $01 $00 $c0
	add  c                                           ; $6e08: $81
	rst  $38                                         ; $6e09: $ff
	ld   b, $cb                                      ; $6e0a: $06 $cb
	rst  $38                                         ; $6e0c: $ff
	adc  l                                           ; $6e0d: $8d
	rst  ToBoot                                         ; $6e0e: $c7
	add  d                                           ; $6e0f: $82
	inc  bc                                          ; $6e10: $03
	ld   bc, $2180                                   ; $6e11: $01 $80 $21
	ld   bc, $7471                                   ; $6e14: $01 $71 $74
	add  c                                           ; $6e17: $81
	xor  l                                           ; $6e18: $ad
	ld   [$f821], sp                                 ; $6e19: $08 $21 $f8
	ld   d, b                                        ; $6e1c: $50
	and  b                                           ; $6e1d: $a0
	ret  nc                                          ; $6e1e: $d0

	ld   d, h                                        ; $6e1f: $54
	or   b                                           ; $6e20: $b0
	or   [hl]                                        ; $6e21: $b6
	ld   [bc], a                                     ; $6e22: $02
	add  b                                           ; $6e23: $80
	nop                                              ; $6e24: $00
	add  b                                           ; $6e25: $80
	rst  $38                                         ; $6e26: $ff
	ld   bc, $0300                                   ; $6e27: $01 $00 $03
	add  a                                           ; $6e2a: $87
	ld   hl, sp+$02                                  ; $6e2b: $f8 $02
	ld   a, b                                        ; $6e2d: $78
	ld   hl, sp+$78                                  ; $6e2e: $f8 $78
	adc  b                                           ; $6e30: $88
	ld   hl, sp-$7c                                  ; $6e31: $f8 $84
	ld   a, b                                        ; $6e33: $78
	add  b                                           ; $6e34: $80
	ld   hl, sp+$01                                  ; $6e35: $f8 $01
	nop                                              ; $6e37: $00
	jp   $3f92                                       ; $6e38: $c3 $92 $3f


	add  b                                           ; $6e3b: $80
	ld   a, $80                                      ; $6e3c: $3e $80
	inc  a                                           ; $6e3e: $3c
	add  b                                           ; $6e3f: $80
	jr   c, jr_094_6dc2                              ; $6e40: $38 $80

	jr   nc, jr_094_6dc4                             ; $6e42: $30 $80

	ccf                                              ; $6e44: $3f
	ld   bc, $c000                                   ; $6e45: $01 $00 $c0
	add  b                                           ; $6e48: $80
	rst  $38                                         ; $6e49: $ff
	add  b                                           ; $6e4a: $80
	db   $fd                                         ; $6e4b: $fd
	add  b                                           ; $6e4c: $80
	ld   sp, hl                                      ; $6e4d: $f9
	add  b                                           ; $6e4e: $80
	push af                                          ; $6e4f: $f5
	dec  c                                           ; $6e50: $0d
	db   $ed                                         ; $6e51: $ed
	ld   sp, hl                                      ; $6e52: $f9
	db   $dd                                         ; $6e53: $dd
	push af                                          ; $6e54: $f5
	cp   l                                           ; $6e55: $bd
	sub  c                                           ; $6e56: $91
	ld   de, $b731                                   ; $6e57: $11 $31 $b7
	rst  $20                                         ; $6e5a: $e7
	ld   l, b                                        ; $6e5b: $68
	ld   c, b                                        ; $6e5c: $48
	ld   c, e                                        ; $6e5d: $4b
	dec  bc                                          ; $6e5e: $0b
	add  b                                           ; $6e5f: $80
	add  hl, de                                      ; $6e60: $19
	add  b                                           ; $6e61: $80
	dec  de                                          ; $6e62: $1b
	add  b                                           ; $6e63: $80
	jr   c, jr_094_6de6                              ; $6e64: $38 $80

	rst  $38                                         ; $6e66: $ff
	ld   bc, $0300                                   ; $6e67: $01 $00 $03
	sub  b                                           ; $6e6a: $90
	ld   hl, sp-$7e                                  ; $6e6b: $f8 $82
	xor  b                                           ; $6e6d: $a8
	add  b                                           ; $6e6e: $80
	ret  c                                           ; $6e6f: $d8

	add  d                                           ; $6e70: $82

jr_094_6e71:
	xor  b                                           ; $6e71: $a8
	add  b                                           ; $6e72: $80

jr_094_6e73:
	ld   hl, sp+$01                                  ; $6e73: $f8 $01
	nop                                              ; $6e75: $00
	jp   $3f81                                       ; $6e76: $c3 $81 $3f


	ld   bc, $3e3d                                   ; $6e79: $01 $3d $3e
	add  b                                           ; $6e7c: $80
	dec  a                                           ; $6e7d: $3d
	nop                                              ; $6e7e: $00
	ccf                                              ; $6e7f: $3f
	add  l                                           ; $6e80: $85
	dec  sp                                          ; $6e81: $3b
	inc  b                                           ; $6e82: $04
	jr   c, jr_094_6ec2                              ; $6e83: $38 $3d

	ccf                                              ; $6e85: $3f
	ld   a, $3c                                      ; $6e86: $3e $3c
	adc  b                                           ; $6e88: $88

jr_094_6e89:
	ccf                                              ; $6e89: $3f
	ld   bc, $c000                                   ; $6e8a: $01 $00 $c0
	add  b                                           ; $6e8d: $80
	rst  $38                                         ; $6e8e: $ff
	ld   [bc], a                                     ; $6e8f: $02
	rrca                                             ; $6e90: $0f

jr_094_6e91:
	ei                                               ; $6e91: $fb
	rst  $30                                         ; $6e92: $f7
	add  b                                           ; $6e93: $80
	ei                                               ; $6e94: $fb
	ld   bc, $fdf7                                   ; $6e95: $01 $f7 $fd

jr_094_6e98:
	add  b                                           ; $6e98: $80
	db   $dd                                         ; $6e99: $dd
	ld   bc, $8c8d                                   ; $6e9a: $01 $8d $8c
	add  b                                           ; $6e9d: $80
	adc  l                                           ; $6e9e: $8d
	rlca                                             ; $6e9f: $07
	jp   nz, $00db                                   ; $6ea0: $c2 $db $00

	pop  af                                          ; $6ea3: $f1
	ldh  [$0e], a                                    ; $6ea4: $e0 $0e
	rrca                                             ; $6ea6: $0f
	add  c                                           ; $6ea7: $81

jr_094_6ea8:
	add  b                                           ; $6ea8: $80
	or   b                                           ; $6ea9: $b0
	add  c                                           ; $6eaa: $81
	add  b                                           ; $6eab: $80
	add  b                                           ; $6eac: $80
	rst  $38                                         ; $6ead: $ff
	ld   bc, $0300                                   ; $6eae: $01 $00 $03
	adc  h                                           ; $6eb1: $8c
	ld   hl, sp+$07                                  ; $6eb2: $f8 $07
	ld   a, b                                        ; $6eb4: $78
	ld   hl, sp-$48                                  ; $6eb5: $f8 $b8
	jr   c, jr_094_6e71                              ; $6eb7: $38 $b8

	jr   c, jr_094_6e73                              ; $6eb9: $38 $b8

	jr   c, @-$7e                                    ; $6ebb: $38 $80

	ld   a, b                                        ; $6ebd: $78
	add  h                                           ; $6ebe: $84
	ld   hl, sp+$01                                  ; $6ebf: $f8 $01
	nop                                              ; $6ec1: $00

jr_094_6ec2:
	jp   $3f81                                       ; $6ec2: $c3 $81 $3f


jr_094_6ec5:
	ld   [$3f2f], sp                                 ; $6ec5: $08 $2f $3f
	scf                                              ; $6ec8: $37

jr_094_6ec9:
	ccf                                              ; $6ec9: $3f
	dec  sp                                          ; $6eca: $3b
	ld   a, $24                                      ; $6ecb: $3e $24

jr_094_6ecd:
	ld   a, $38                                      ; $6ecd: $3e $38
	add  h                                           ; $6ecf: $84
	dec  a                                           ; $6ed0: $3d

jr_094_6ed1:
	add  hl, bc                                      ; $6ed1: $09
	ld   a, $38                                      ; $6ed2: $3e $38
	ld   a, $24                                      ; $6ed4: $3e $24
	ccf                                              ; $6ed6: $3f

jr_094_6ed7:
	dec  sp                                          ; $6ed7: $3b
	ccf                                              ; $6ed8: $3f
	scf                                              ; $6ed9: $37
	ccf                                              ; $6eda: $3f
	cpl                                              ; $6edb: $2f
	add  b                                           ; $6edc: $80
	ccf                                              ; $6edd: $3f
	ld   bc, $c000                                   ; $6ede: $01 $00 $c0
	add  h                                           ; $6ee1: $84
	rst  $38                                         ; $6ee2: $ff
	add  b                                           ; $6ee3: $80
	ld   a, a                                        ; $6ee4: $7f
	add  b                                           ; $6ee5: $80
	cp   [hl]                                        ; $6ee6: $be
	rlca                                             ; $6ee7: $07
	adc  l                                           ; $6ee8: $8d
	cp   h                                           ; $6ee9: $bc
	or   c                                           ; $6eea: $b1
	adc  [hl]                                        ; $6eeb: $8e
	cp   [hl]                                        ; $6eec: $be
	add  b                                           ; $6eed: $80
	or   b                                           ; $6eee: $b0
	add  b                                           ; $6eef: $80
	add  b                                           ; $6ef0: $80
	adc  h                                           ; $6ef1: $8c
	add  b                                           ; $6ef2: $80
	cp   [hl]                                        ; $6ef3: $be
	add  b                                           ; $6ef4: $80
	ld   a, a                                        ; $6ef5: $7f
	add  h                                           ; $6ef6: $84
	rst  $38                                         ; $6ef7: $ff
	ld   bc, $0300                                   ; $6ef8: $01 $00 $03
	add  l                                           ; $6efb: $85
	ld   hl, sp+$03                                  ; $6efc: $f8 $03
	ret  c                                           ; $6efe: $d8

	jr   c, jr_094_6e89                              ; $6eff: $38 $88

	sbc  b                                           ; $6f01: $98
	add  h                                           ; $6f02: $84
	ld   [$1880], sp                                 ; $6f03: $08 $80 $18
	ld   [bc], a                                     ; $6f06: $02
	jr   z, jr_094_6f41                              ; $6f07: $28 $38

	jr   jr_094_6e91                                 ; $6f09: $18 $86

	ld   hl, sp+$01                                  ; $6f0b: $f8 $01
	nop                                              ; $6f0d: $00
	jp   $3f80                                       ; $6f0e: $c3 $80 $3f


	add  b                                           ; $6f11: $80
	jr   c, jr_094_6ea8                              ; $6f12: $38 $94

	ld   a, [hl-]                                    ; $6f14: $3a
	add  b                                           ; $6f15: $80
	jr   c, jr_094_6e98                              ; $6f16: $38 $80

	ccf                                              ; $6f18: $3f
	ld   bc, $c000                                   ; $6f19: $01 $00 $c0

jr_094_6f1c:
	add  b                                           ; $6f1c: $80
	rst  $38                                         ; $6f1d: $ff
	nop                                              ; $6f1e: $00
	nop                                              ; $6f1f: $00
	add  b                                           ; $6f20: $80
	rst  $38                                         ; $6f21: $ff
	add  b                                           ; $6f22: $80
	cp   $07                                         ; $6f23: $fe $07
	add  c                                           ; $6f25: $81
	rst  $38                                         ; $6f26: $ff

jr_094_6f27:
	jp   nz, $c3fe                                   ; $6f27: $c2 $fe $c3

	rst  $38                                         ; $6f2a: $ff
	add  b                                           ; $6f2b: $80
	cp   $80                                         ; $6f2c: $fe $80
	rst  $38                                         ; $6f2e: $ff
	add  b                                           ; $6f2f: $80
	cp   $80                                         ; $6f30: $fe $80
	rst  $38                                         ; $6f32: $ff
	add  b                                           ; $6f33: $80
	cp   $80                                         ; $6f34: $fe $80
	rst  $38                                         ; $6f36: $ff
	add  c                                           ; $6f37: $81
	nop                                              ; $6f38: $00
	add  b                                           ; $6f39: $80
	rst  $38                                         ; $6f3a: $ff
	ld   bc, $0300                                   ; $6f3b: $01 $00 $03
	add  b                                           ; $6f3e: $80
	ld   hl, sp-$7e                                  ; $6f3f: $f8 $82

jr_094_6f41:
	ld   a, b                                        ; $6f41: $78
	add  b                                           ; $6f42: $80
	jr   c, jr_094_6ec5                              ; $6f43: $38 $80

	ld   a, b                                        ; $6f45: $78
	add  b                                           ; $6f46: $80
	jr   c, jr_094_6ec9                              ; $6f47: $38 $80

	ld   a, b                                        ; $6f49: $78
	add  b                                           ; $6f4a: $80
	jr   c, jr_094_6ecd                              ; $6f4b: $38 $80

	ld   a, b                                        ; $6f4d: $78
	add  b                                           ; $6f4e: $80
	jr   c, jr_094_6ed1                              ; $6f4f: $38 $80

	ld   a, b                                        ; $6f51: $78
	add  b                                           ; $6f52: $80
	jr   c, jr_094_6ed7                              ; $6f53: $38 $82

	ld   a, b                                        ; $6f55: $78
	add  b                                           ; $6f56: $80
	ld   hl, sp+$01                                  ; $6f57: $f8 $01
	nop                                              ; $6f59: $00
	jp   $3f84                                       ; $6f5a: $c3 $84 $3f


	add  b                                           ; $6f5d: $80
	ld   a, $80                                      ; $6f5e: $3e $80
	inc  a                                           ; $6f60: $3c
	add  b                                           ; $6f61: $80
	dec  a                                           ; $6f62: $3d
	add  d                                           ; $6f63: $82
	add  hl, sp                                      ; $6f64: $39
	ld   bc, $3135                                   ; $6f65: $01 $35 $31
	add  b                                           ; $6f68: $80
	inc  [hl]                                        ; $6f69: $34
	nop                                              ; $6f6a: $00
	dec  h                                           ; $6f6b: $25
	add  b                                           ; $6f6c: $80
	add  hl, hl                                      ; $6f6d: $29
	nop                                              ; $6f6e: $00
	ld   hl, $3080                                   ; $6f6f: $21 $80 $30
	add  d                                           ; $6f72: $82
	ccf                                              ; $6f73: $3f
	ld   bc, $c000                                   ; $6f74: $01 $00 $c0
	add  h                                           ; $6f77: $84
	rst  $38                                         ; $6f78: $ff
	inc  bc                                          ; $6f79: $03
	nop                                              ; $6f7a: $00
	ld   a, h                                        ; $6f7b: $7c
	cp   $7a                                         ; $6f7c: $fe $7a
	add  c                                           ; $6f7e: $81
	db   $fc                                         ; $6f7f: $fc
	add  b                                           ; $6f80: $80
	db   $fd                                         ; $6f81: $fd
	nop                                              ; $6f82: $00
	dec  b                                           ; $6f83: $05
	add  b                                           ; $6f84: $80
	sbc  l                                           ; $6f85: $9d
	ld   [bc], a                                     ; $6f86: $02
	ld   bc, $9d99                                   ; $6f87: $01 $99 $9d
	add  b                                           ; $6f8a: $80
	db   $fd                                         ; $6f8b: $fd
	nop                                              ; $6f8c: $00
	inc  b                                           ; $6f8d: $04
	add  b                                           ; $6f8e: $80
	nop                                              ; $6f8f: $00
	add  d                                           ; $6f90: $82
	rst  $38                                         ; $6f91: $ff
	ld   bc, $0300                                   ; $6f92: $01 $00 $03
	add  h                                           ; $6f95: $84
	ld   hl, sp-$80                                  ; $6f96: $f8 $80
	ld   a, b                                        ; $6f98: $78
	nop                                              ; $6f99: $00
	jr   c, jr_094_6f1c                              ; $6f9a: $38 $80

	cp   b                                           ; $6f9c: $b8
	nop                                              ; $6f9d: $00
	ld   a, b                                        ; $6f9e: $78
	add  e                                           ; $6f9f: $83
	ld   e, b                                        ; $6fa0: $58
	nop                                              ; $6fa1: $00
	jr   c, jr_094_6f27                              ; $6fa2: $38 $83

	jr   z, jr_094_6fa6                              ; $6fa4: $28 $00

jr_094_6fa6:
	ld   [$1880], sp                                 ; $6fa6: $08 $80 $18
	add  d                                           ; $6fa9: $82
	ld   hl, sp+$01                                  ; $6faa: $f8 $01
	nop                                              ; $6fac: $00
	db   $fc                                         ; $6fad: $fc
	rst  $38                                         ; $6fae: $ff
	nop                                              ; $6faf: $00
	rst  $38                                         ; $6fb0: $ff
	nop                                              ; $6fb1: $00
	rst  $38                                         ; $6fb2: $ff
	nop                                              ; $6fb3: $00
	rst  $38                                         ; $6fb4: $ff
	nop                                              ; $6fb5: $00
	reti                                             ; $6fb6: $d9


	nop                                              ; $6fb7: $00
	nop                                              ; $6fb8: $00
	ld   bc, $fe8b                                   ; $6fb9: $01 $8b $fe
	add  b                                           ; $6fbc: $80
	nop                                              ; $6fbd: $00
	adc  h                                           ; $6fbe: $8c
	cp   $80                                         ; $6fbf: $fe $80
	nop                                              ; $6fc1: $00
	adc  h                                           ; $6fc2: $8c
	cp   $80                                         ; $6fc3: $fe $80
	nop                                              ; $6fc5: $00
	nop                                              ; $6fc6: $00
	rst  $38                                         ; $6fc7: $ff
	and  e                                           ; $6fc8: $a3
	nop                                              ; $6fc9: $00
	ld   b, $18                                      ; $6fca: $06 $18
	nop                                              ; $6fcc: $00
	inc  h                                           ; $6fcd: $24
	jr   jr_094_702a                                 ; $6fce: $18 $5a

	inc  a                                           ; $6fd0: $3c
	cp   l                                           ; $6fd1: $bd
	add  b                                           ; $6fd2: $80
	ld   a, [hl]                                     ; $6fd3: $7e
	ld   bc, $ff00                                   ; $6fd4: $01 $00 $ff
	rst  $38                                         ; $6fd7: $ff
	nop                                              ; $6fd8: $00
	sbc  h                                           ; $6fd9: $9c
	nop                                              ; $6fda: $00
	inc  bc                                          ; $6fdb: $03
	ld   a, a                                        ; $6fdc: $7f
	nop                                              ; $6fdd: $00
	ei                                               ; $6fde: $fb
	ld   a, e                                        ; $6fdf: $7b
	add  b                                           ; $6fe0: $80
	ld   h, [hl]                                     ; $6fe1: $66
	ld   [$4d4c], sp                                 ; $6fe2: $08 $4c $4d
	ld   e, c                                        ; $6fe5: $59
	ld   e, e                                        ; $6fe6: $5b
	inc  sp                                          ; $6fe7: $33
	scf                                              ; $6fe8: $37
	ld   h, a                                        ; $6fe9: $67
	ld   l, a                                        ; $6fea: $6f
	ld   c, a                                        ; $6feb: $4f
	adc  d                                           ; $6fec: $8a
	ld   e, a                                        ; $6fed: $5f
	nop                                              ; $6fee: $00
	ld   b, b                                        ; $6fef: $40
	add  b                                           ; $6ff0: $80
	ld   a, a                                        ; $6ff1: $7f
	inc  bc                                          ; $6ff2: $03
	add  b                                           ; $6ff3: $80
	nop                                              ; $6ff4: $00
	add  b                                           ; $6ff5: $80
	nop                                              ; $6ff6: $00
	add  b                                           ; $6ff7: $80
	rst  $38                                         ; $6ff8: $ff
	add  c                                           ; $6ff9: $81
	nop                                              ; $6ffa: $00
	sub  a                                           ; $6ffb: $97
	rst  $38                                         ; $6ffc: $ff
	inc  bc                                          ; $6ffd: $03
	ld   a, a                                        ; $6ffe: $7f
	nop                                              ; $6fff: $00
	rst  $38                                         ; $7000: $ff
	ld   a, a                                        ; $7001: $7f
	add  c                                           ; $7002: $81
	ld   b, b                                        ; $7003: $40
	sub  a                                           ; $7004: $97
	ld   e, a                                        ; $7005: $5f
	inc  bc                                          ; $7006: $03
	sbc  a                                           ; $7007: $9f
	nop                                              ; $7008: $00
	ei                                               ; $7009: $fb
	ld   a, e                                        ; $700a: $7b
	add  b                                           ; $700b: $80
	ld   h, [hl]                                     ; $700c: $66
	ld   [$4d4c], sp                                 ; $700d: $08 $4c $4d
	ld   e, c                                        ; $7010: $59
	ld   e, e                                        ; $7011: $5b
	inc  sp                                          ; $7012: $33
	scf                                              ; $7013: $37
	ld   h, a                                        ; $7014: $67
	ld   l, a                                        ; $7015: $6f
	ld   c, a                                        ; $7016: $4f
	adc  a                                           ; $7017: $8f
	ld   e, a                                        ; $7018: $5f
	ld   a, [bc]                                     ; $7019: $0a
	and  b                                           ; $701a: $a0
	nop                                              ; $701b: $00
	jr   nz, jr_094_701e                             ; $701c: $20 $00

jr_094_701e:
	stop                                             ; $701e: $10 $00
	stop                                             ; $7020: $10 $00
	jr   nz, jr_094_7024                             ; $7022: $20 $00

jr_094_7024:
	ld   b, b                                        ; $7024: $40
	sub  e                                           ; $7025: $93
	nop                                              ; $7026: $00
	nop                                              ; $7027: $00
	cp   a                                           ; $7028: $bf
	adc  b                                           ; $7029: $88

jr_094_702a:
	ld   e, a                                        ; $702a: $5f
	nop                                              ; $702b: $00
	ld   b, b                                        ; $702c: $40
	add  b                                           ; $702d: $80
	ld   a, a                                        ; $702e: $7f
	ld   [bc], a                                     ; $702f: $02
	add  b                                           ; $7030: $80
	nop                                              ; $7031: $00
	ld   a, a                                        ; $7032: $7f
	adc  l                                           ; $7033: $8d
	nop                                              ; $7034: $00
	adc  c                                           ; $7035: $89
	rst  $38                                         ; $7036: $ff
	nop                                              ; $7037: $00
	nop                                              ; $7038: $00
	add  b                                           ; $7039: $80
	rst  $38                                         ; $703a: $ff
	add  b                                           ; $703b: $80
	nop                                              ; $703c: $00
	nop                                              ; $703d: $00
	rst  $38                                         ; $703e: $ff
	adc  l                                           ; $703f: $8d
	nop                                              ; $7040: $00
	dec  bc                                          ; $7041: $0b
	db   $fd                                         ; $7042: $fd
	ld   a, [$f6fe]                                  ; $7043: $fa $fe $f6
	db   $fc                                         ; $7046: $fc
	db   $ec                                         ; $7047: $ec
	ld   a, [$f2da]                                  ; $7048: $fa $da $f2
	or   d                                           ; $704b: $b2
	and  $66                                         ; $704c: $e6 $66
	add  b                                           ; $704e: $80
	sbc  $02                                         ; $704f: $de $02
	ld   bc, $fe00                                   ; $7051: $01 $00 $fe
	xor  l                                           ; $7054: $ad
	nop                                              ; $7055: $00
	nop                                              ; $7056: $00
	ret  nz                                          ; $7057: $c0

	adc  e                                           ; $7058: $8b
	ld   a, a                                        ; $7059: $7f
	ld   [bc], a                                     ; $705a: $02
	ld   b, b                                        ; $705b: $40
	nop                                              ; $705c: $00
	ccf                                              ; $705d: $3f
	adc  e                                           ; $705e: $8b
	ld   a, a                                        ; $705f: $7f
	ld   bc, $0040                                   ; $7060: $01 $40 $00
	adc  h                                           ; $7063: $8c
	rst  $38                                         ; $7064: $ff
	add  b                                           ; $7065: $80
	nop                                              ; $7066: $00
	adc  h                                           ; $7067: $8c
	rst  $38                                         ; $7068: $ff
	add  b                                           ; $7069: $80
	nop                                              ; $706a: $00
	nop                                              ; $706b: $00
	ccf                                              ; $706c: $3f
	adc  e                                           ; $706d: $8b
	ld   a, a                                        ; $706e: $7f
	ld   [bc], a                                     ; $706f: $02
	ld   b, b                                        ; $7070: $40
	nop                                              ; $7071: $00
	rst  $38                                         ; $7072: $ff
	adc  [hl]                                        ; $7073: $8e
	nop                                              ; $7074: $00
	adc  e                                           ; $7075: $8b
	rst  $38                                         ; $7076: $ff
	add  b                                           ; $7077: $80
	nop                                              ; $7078: $00
	nop                                              ; $7079: $00
	rst  $38                                         ; $707a: $ff
	adc  l                                           ; $707b: $8d
	nop                                              ; $707c: $00
	inc  bc                                          ; $707d: $03
	ld   a, a                                        ; $707e: $7f
	nop                                              ; $707f: $00
	ei                                               ; $7080: $fb
	ld   a, e                                        ; $7081: $7b
	add  b                                           ; $7082: $80
	ld   h, [hl]                                     ; $7083: $66
	dec  bc                                          ; $7084: $0b
	ld   c, h                                        ; $7085: $4c
	ld   c, l                                        ; $7086: $4d
	ld   e, c                                        ; $7087: $59
	ld   e, e                                        ; $7088: $5b
	inc  sp                                          ; $7089: $33
	scf                                              ; $708a: $37
	ld   h, a                                        ; $708b: $67
	ld   l, a                                        ; $708c: $6f
	ld   c, a                                        ; $708d: $4f
	ld   e, a                                        ; $708e: $5f
	rra                                              ; $708f: $1f
	nop                                              ; $7090: $00
	add  b                                           ; $7091: $80
	rst  $38                                         ; $7092: $ff
	add  c                                           ; $7093: $81
	nop                                              ; $7094: $00
	add  d                                           ; $7095: $82
	rst  $38                                         ; $7096: $ff
	add  b                                           ; $7097: $80
	cp   a                                           ; $7098: $bf
	add  b                                           ; $7099: $80
	cp   h                                           ; $709a: $bc
	add  b                                           ; $709b: $80
	adc  a                                           ; $709c: $8f
	nop                                              ; $709d: $00
	nop                                              ; $709e: $00
	add  b                                           ; $709f: $80
	ld   a, a                                        ; $70a0: $7f
	add  c                                           ; $70a1: $81
	nop                                              ; $70a2: $00
	add  h                                           ; $70a3: $84
	rst  $38                                         ; $70a4: $ff
	add  d                                           ; $70a5: $82
	ld   l, a                                        ; $70a6: $6f
	nop                                              ; $70a7: $00
	nop                                              ; $70a8: $00
	add  b                                           ; $70a9: $80
	rst  $38                                         ; $70aa: $ff
	add  c                                           ; $70ab: $81
	nop                                              ; $70ac: $00
	add  [hl]                                        ; $70ad: $86
	rst  $38                                         ; $70ae: $ff
	add  b                                           ; $70af: $80
	cp   a                                           ; $70b0: $bf
	nop                                              ; $70b1: $00
	nop                                              ; $70b2: $00
	add  b                                           ; $70b3: $80
	rst  $38                                         ; $70b4: $ff
	add  c                                           ; $70b5: $81
	nop                                              ; $70b6: $00
	add  d                                           ; $70b7: $82
	rst  $38                                         ; $70b8: $ff
	add  d                                           ; $70b9: $82
	push af                                          ; $70ba: $f5
	add  b                                           ; $70bb: $80
	inc  bc                                          ; $70bc: $03
	nop                                              ; $70bd: $00
	nop                                              ; $70be: $00
	add  b                                           ; $70bf: $80
	rst  $38                                         ; $70c0: $ff
	add  c                                           ; $70c1: $81
	nop                                              ; $70c2: $00
	add  d                                           ; $70c3: $82
	rst  $38                                         ; $70c4: $ff
	add  d                                           ; $70c5: $82
	xor  $80                                         ; $70c6: $ee $80
	inc  b                                           ; $70c8: $04
	nop                                              ; $70c9: $00
	nop                                              ; $70ca: $00
	add  b                                           ; $70cb: $80
	rst  $38                                         ; $70cc: $ff
	add  c                                           ; $70cd: $81
	nop                                              ; $70ce: $00

Jump_094_70cf:
	add  d                                           ; $70cf: $82
	rst  $38                                         ; $70d0: $ff
	add  b                                           ; $70d1: $80
	cp   $80                                         ; $70d2: $fe $80
	db   $dd                                         ; $70d4: $dd
	inc  b                                           ; $70d5: $04
	ld   l, e                                        ; $70d6: $6b
	ld   l, d                                        ; $70d7: $6a
	nop                                              ; $70d8: $00
	rst  $38                                         ; $70d9: $ff
	cp   $81                                         ; $70da: $fe $81
	ld   [bc], a                                     ; $70dc: $02
	add  d                                           ; $70dd: $82
	ld   a, [$3a80]                                  ; $70de: $fa $80 $3a
	add  b                                           ; $70e1: $80
	jp   c, $ea01                                    ; $70e2: $da $01 $ea

	xor  b                                           ; $70e5: $a8
	add  h                                           ; $70e6: $84
	ld   e, a                                        ; $70e7: $5f
	add  b                                           ; $70e8: $80
	ld   e, [hl]                                     ; $70e9: $5e
	add  b                                           ; $70ea: $80
	ld   e, l                                        ; $70eb: $5d
	add  b                                           ; $70ec: $80
	ld   e, [hl]                                     ; $70ed: $5e
	add  c                                           ; $70ee: $81
	ld   e, a                                        ; $70ef: $5f
	nop                                              ; $70f0: $00
	rra                                              ; $70f1: $1f
	add  b                                           ; $70f2: $80
	cp   [hl]                                        ; $70f3: $be
	add  b                                           ; $70f4: $80
	cp   h                                           ; $70f5: $bc
	add  b                                           ; $70f6: $80
	cp   e                                           ; $70f7: $bb
	add  b                                           ; $70f8: $80
	rra                                              ; $70f9: $1f
	add  b                                           ; $70fa: $80
	xor  a                                           ; $70fb: $af
	add  b                                           ; $70fc: $80
	ld   a, h                                        ; $70fd: $7c
	add  d                                           ; $70fe: $82
	rst  $38                                         ; $70ff: $ff
	add  b                                           ; $7100: $80
	rst  $28                                         ; $7101: $ef
	add  b                                           ; $7102: $80
	ld   l, a                                        ; $7103: $6f
	add  b                                           ; $7104: $80
	xor  a                                           ; $7105: $af
	add  d                                           ; $7106: $82
	xor  [hl]                                        ; $7107: $ae
	add  b                                           ; $7108: $80
	ld   [hl], c                                     ; $7109: $71
	add  d                                           ; $710a: $82
	rst  $38                                         ; $710b: $ff
	add  b                                           ; $710c: $80
	cp   e                                           ; $710d: $bb
	add  h                                           ; $710e: $84
	cp   l                                           ; $710f: $bd
	add  b                                           ; $7110: $80
	xor  l                                           ; $7111: $ad
	add  b                                           ; $7112: $80
	rst  JumpTable                                         ; $7113: $df
	add  d                                           ; $7114: $82
	rst  $38                                         ; $7115: $ff
	add  b                                           ; $7116: $80
	rst  $28                                         ; $7117: $ef
	add  b                                           ; $7118: $80
	rst  JumpTable                                         ; $7119: $df
	add  d                                           ; $711a: $82
	cp   a                                           ; $711b: $bf
	add  b                                           ; $711c: $80
	rst  JumpTable                                         ; $711d: $df
	add  b                                           ; $711e: $80
	rst  $20                                         ; $711f: $e7
	add  d                                           ; $7120: $82
	rst  $38                                         ; $7121: $ff
	add  b                                           ; $7122: $80
	xor  $80                                         ; $7123: $ee $80
	adc  [hl]                                        ; $7125: $8e
	add  b                                           ; $7126: $80
	ld   l, [hl]                                     ; $7127: $6e
	add  b                                           ; $7128: $80
	adc  [hl]                                        ; $7129: $8e
	add  b                                           ; $712a: $80
	db   $ed                                         ; $712b: $ed
	add  b                                           ; $712c: $80
	sbc  a                                           ; $712d: $9f
	add  d                                           ; $712e: $82
	rst  $38                                         ; $712f: $ff
	add  b                                           ; $7130: $80
	xor  e                                           ; $7131: $ab
	add  d                                           ; $7132: $82
	xor  a                                           ; $7133: $af
	add  d                                           ; $7134: $82
	cp   a                                           ; $7135: $bf
	add  b                                           ; $7136: $80
	ld   a, a                                        ; $7137: $7f
	add  c                                           ; $7138: $81
	rst  $38                                         ; $7139: $ff
	nop                                              ; $713a: $00
	db   $fd                                         ; $713b: $fd
	add  b                                           ; $713c: $80
	ld   [$9a80], a                                  ; $713d: $ea $80 $9a
	add  d                                           ; $7140: $82
	ld   a, d                                        ; $7141: $7a
	add  b                                           ; $7142: $80
	ld   a, [$7a80]                                  ; $7143: $fa $80 $7a
	add  c                                           ; $7146: $81
	ld   a, [$b800]                                  ; $7147: $fa $00 $b8
	adc  l                                           ; $714a: $8d
	ld   e, a                                        ; $714b: $5f
	nop                                              ; $714c: $00
	rra                                              ; $714d: $1f
	add  d                                           ; $714e: $82
	rst  $38                                         ; $714f: $ff
	add  d                                           ; $7150: $82
	cp   l                                           ; $7151: $bd
	add  b                                           ; $7152: $80
	and  b                                           ; $7153: $a0
	add  d                                           ; $7154: $82
	cp   l                                           ; $7155: $bd
	add  b                                           ; $7156: $80
	or   c                                           ; $7157: $b1
	add  h                                           ; $7158: $84
	rst  $38                                         ; $7159: $ff
	add  b                                           ; $715a: $80
	cp   a                                           ; $715b: $bf
	add  b                                           ; $715c: $80
	cp   e                                           ; $715d: $bb
	add  h                                           ; $715e: $84
	cp   l                                           ; $715f: $bd
	sub  h                                           ; $7160: $94
	rst  $38                                         ; $7161: $ff
	add  b                                           ; $7162: $80
	cp   a                                           ; $7163: $bf
	add  b                                           ; $7164: $80
	cp   e                                           ; $7165: $bb
	add  h                                           ; $7166: $84
	cp   l                                           ; $7167: $bd
	add  d                                           ; $7168: $82
	rst  $38                                         ; $7169: $ff
	add  b                                           ; $716a: $80
	rst  ToBoot                                         ; $716b: $c7
	add  b                                           ; $716c: $80
	rst  $38                                         ; $716d: $ff
	add  b                                           ; $716e: $80
	add  e                                           ; $716f: $83
	add  b                                           ; $7170: $80
	rst  $30                                         ; $7171: $f7
	add  b                                           ; $7172: $80
	rst  $28                                         ; $7173: $ef
	ld   bc, $d5d7                                   ; $7174: $01 $d7 $d5
	adc  l                                           ; $7177: $8d
	ld   a, [$b800]                                  ; $7178: $fa $00 $b8
	adc  b                                           ; $717b: $88
	ld   e, a                                        ; $717c: $5f
	nop                                              ; $717d: $00
	ld   b, b                                        ; $717e: $40
	add  b                                           ; $717f: $80
	ld   a, a                                        ; $7180: $7f
	ld   [bc], a                                     ; $7181: $02
	add  b                                           ; $7182: $80
	nop                                              ; $7183: $00

jr_094_7184:
	add  b                                           ; $7184: $80
	add  b                                           ; $7185: $80
	xor  h                                           ; $7186: $ac
	add  b                                           ; $7187: $80

jr_094_7188:
	pop  de                                          ; $7188: $d1
	add  h                                           ; $7189: $84
	rst  $38                                         ; $718a: $ff
	nop                                              ; $718b: $00
	nop                                              ; $718c: $00
	add  b                                           ; $718d: $80
	rst  $38                                         ; $718e: $ff
	add  c                                           ; $718f: $81
	nop                                              ; $7190: $00
	add  b                                           ; $7191: $80
	xor  l                                           ; $7192: $ad
	add  b                                           ; $7193: $80
	rst  JumpTable                                         ; $7194: $df
	add  h                                           ; $7195: $84
	rst  $38                                         ; $7196: $ff
	nop                                              ; $7197: $00
	nop                                              ; $7198: $00
	add  b                                           ; $7199: $80
	rst  $38                                         ; $719a: $ff
	add  c                                           ; $719b: $81
	nop                                              ; $719c: $00
	adc  b                                           ; $719d: $88
	rst  $38                                         ; $719e: $ff
	nop                                              ; $719f: $00
	nop                                              ; $71a0: $00
	add  b                                           ; $71a1: $80
	rst  $38                                         ; $71a2: $ff
	add  c                                           ; $71a3: $81
	nop                                              ; $71a4: $00
	add  b                                           ; $71a5: $80
	xor  l                                           ; $71a6: $ad
	add  b                                           ; $71a7: $80
	rst  JumpTable                                         ; $71a8: $df
	add  h                                           ; $71a9: $84
	rst  $38                                         ; $71aa: $ff
	nop                                              ; $71ab: $00
	nop                                              ; $71ac: $00
	add  b                                           ; $71ad: $80
	rst  $38                                         ; $71ae: $ff
	add  c                                           ; $71af: $81
	nop                                              ; $71b0: $00
	add  b                                           ; $71b1: $80
	xor  l                                           ; $71b2: $ad
	add  b                                           ; $71b3: $80
	rst  JumpTable                                         ; $71b4: $df
	add  h                                           ; $71b5: $84

jr_094_71b6:
	rst  $38                                         ; $71b6: $ff
	nop                                              ; $71b7: $00
	nop                                              ; $71b8: $00
	add  b                                           ; $71b9: $80

jr_094_71ba:
	cp   $81                                         ; $71ba: $fe $81
	nop                                              ; $71bc: $00
	add  b                                           ; $71bd: $80
	or   a                                           ; $71be: $b7
	add  b                                           ; $71bf: $80
	cp   c                                           ; $71c0: $b9
	add  h                                           ; $71c1: $84
	rst  $38                                         ; $71c2: $ff
	nop                                              ; $71c3: $00
	nop                                              ; $71c4: $00
	add  b                                           ; $71c5: $80
	rst  $38                                         ; $71c6: $ff
	add  b                                           ; $71c7: $80
	nop                                              ; $71c8: $00
	dec  bc                                          ; $71c9: $0b
	ld   [bc], a                                     ; $71ca: $02
	ld   a, [$f6fe]                                  ; $71cb: $fa $fe $f6
	db   $fc                                         ; $71ce: $fc
	db   $ec                                         ; $71cf: $ec
	ld   a, [$f2da]                                  ; $71d0: $fa $da $f2
	or   d                                           ; $71d3: $b2
	and  $66                                         ; $71d4: $e6 $66
	add  b                                           ; $71d6: $80
	sbc  $02                                         ; $71d7: $de $02
	ld   bc, $0100                                   ; $71d9: $01 $00 $01
	sbc  l                                           ; $71dc: $9d
	rst  $38                                         ; $71dd: $ff
	nop                                              ; $71de: $00
	dec  b                                           ; $71df: $05
	adc  l                                           ; $71e0: $8d
	ld   [bc], a                                     ; $71e1: $02
	nop                                              ; $71e2: $00
	rlca                                             ; $71e3: $07
	add  e                                           ; $71e4: $83
	nop                                              ; $71e5: $00
	ld   [bc], a                                     ; $71e6: $02
	inc  a                                           ; $71e7: $3c
	nop                                              ; $71e8: $00
	ld   a, [hl]                                     ; $71e9: $7e
	adc  l                                           ; $71ea: $8d
	nop                                              ; $71eb: $00
	ld   [bc], a                                     ; $71ec: $02
	ld   a, [hl]                                     ; $71ed: $7e
	nop                                              ; $71ee: $00
	inc  a                                           ; $71ef: $3c
	adc  c                                           ; $71f0: $89
	nop                                              ; $71f1: $00
	inc  b                                           ; $71f2: $04
	stop                                             ; $71f3: $10 $00
	jr   nz, jr_094_71f7                             ; $71f5: $20 $00

jr_094_71f7:
	jr   nz, jr_094_7184                             ; $71f7: $20 $8b

	nop                                              ; $71f9: $00
	ld   [bc], a                                     ; $71fa: $02
	jr   z, jr_094_71fd                              ; $71fb: $28 $00

jr_094_71fd:
	jr   c, jr_094_7188                              ; $71fd: $38 $89

	nop                                              ; $71ff: $00
	inc  b                                           ; $7200: $04
	inc  a                                           ; $7201: $3c
	nop                                              ; $7202: $00
	ld   a, [hl]                                     ; $7203: $7e
	nop                                              ; $7204: $00
	ld   b, b                                        ; $7205: $40
	add  c                                           ; $7206: $81
	nop                                              ; $7207: $00
	inc  c                                           ; $7208: $0c
	ld   b, $00                                      ; $7209: $06 $00
	inc  c                                           ; $720b: $0c
	nop                                              ; $720c: $00
	jr   jr_094_720f                                 ; $720d: $18 $00

jr_094_720f:
	jr   nc, jr_094_7211                             ; $720f: $30 $00

jr_094_7211:
	ld   h, b                                        ; $7211: $60
	nop                                              ; $7212: $00
	ld   a, $00                                      ; $7213: $3e $00
	ld   a, [hl]                                     ; $7215: $7e
	adc  c                                           ; $7216: $89
	nop                                              ; $7217: $00
	inc  b                                           ; $7218: $04
	inc  a                                           ; $7219: $3c
	nop                                              ; $721a: $00
	ld   a, [hl]                                     ; $721b: $7e
	nop                                              ; $721c: $00
	ld   b, b                                        ; $721d: $40
	add  c                                           ; $721e: $81
	nop                                              ; $721f: $00

jr_094_7220:
	ld   [bc], a                                     ; $7220: $02
	ld   a, $00                                      ; $7221: $3e $00
	ld   a, $83                                      ; $7223: $3e $83
	nop                                              ; $7225: $00
	inc  b                                           ; $7226: $04
	ld   b, b                                        ; $7227: $40
	nop                                              ; $7228: $00
	ld   a, [hl]                                     ; $7229: $7e
	nop                                              ; $722a: $00
	inc  a                                           ; $722b: $3c
	adc  c                                           ; $722c: $89
	nop                                              ; $722d: $00
	nop                                              ; $722e: $00
	inc  c                                           ; $722f: $0c
	add  c                                           ; $7230: $81
	nop                                              ; $7231: $00
	nop                                              ; $7232: $00
	jr   jr_094_71b6                                 ; $7233: $18 $81

	nop                                              ; $7235: $00
	nop                                              ; $7236: $00
	jr   nc, jr_094_71ba                             ; $7237: $30 $81

	nop                                              ; $7239: $00
	inc  b                                           ; $723a: $04
	ld   h, b                                        ; $723b: $60
	nop                                              ; $723c: $00
	ld   a, [hl-]                                    ; $723d: $3a
	nop                                              ; $723e: $00
	ld   a, d                                        ; $723f: $7a
	add  c                                           ; $7240: $81
	nop                                              ; $7241: $00
	nop                                              ; $7242: $00
	inc  b                                           ; $7243: $04
	adc  c                                           ; $7244: $89
	nop                                              ; $7245: $00
	ld   [bc], a                                     ; $7246: $02
	ld   a, h                                        ; $7247: $7c
	nop                                              ; $7248: $00
	inc  a                                           ; $7249: $3c
	add  e                                           ; $724a: $83
	nop                                              ; $724b: $00
	inc  b                                           ; $724c: $04
	inc  a                                           ; $724d: $3c
	nop                                              ; $724e: $00
	ld   a, $00                                      ; $724f: $3e $00
	ld   b, b                                        ; $7251: $40
	add  c                                           ; $7252: $81
	nop                                              ; $7253: $00
	inc  b                                           ; $7254: $04
	ld   b, b                                        ; $7255: $40
	nop                                              ; $7256: $00
	ld   a, [hl]                                     ; $7257: $7e
	nop                                              ; $7258: $00
	inc  a                                           ; $7259: $3c
	adc  c                                           ; $725a: $89
	nop                                              ; $725b: $00
	inc  b                                           ; $725c: $04
	inc  a                                           ; $725d: $3c
	nop                                              ; $725e: $00
	ld   a, [hl]                                     ; $725f: $7e
	nop                                              ; $7260: $00
	ld   [bc], a                                     ; $7261: $02
	add  c                                           ; $7262: $81
	nop                                              ; $7263: $00
	ld   [bc], a                                     ; $7264: $02
	inc  a                                           ; $7265: $3c
	nop                                              ; $7266: $00
	ld   a, $85                                      ; $7267: $3e $85
	nop                                              ; $7269: $00
	ld   [bc], a                                     ; $726a: $02
	ld   a, [hl]                                     ; $726b: $7e
	nop                                              ; $726c: $00
	inc  a                                           ; $726d: $3c
	adc  c                                           ; $726e: $89
	nop                                              ; $726f: $00
	ld   [bc], a                                     ; $7270: $02
	ld   a, [hl]                                     ; $7271: $7e
	nop                                              ; $7272: $00
	inc  a                                           ; $7273: $3c
	add  c                                           ; $7274: $81
	nop                                              ; $7275: $00
	nop                                              ; $7276: $00
	ld   b, [hl]                                     ; $7277: $46
	add  c                                           ; $7278: $81
	nop                                              ; $7279: $00
	nop                                              ; $727a: $00
	inc  c                                           ; $727b: $0c
	add  a                                           ; $727c: $87
	nop                                              ; $727d: $00
	nop                                              ; $727e: $00
	ld   [$0089], sp                                 ; $727f: $08 $89 $00
	ld   [bc], a                                     ; $7282: $02
	inc  a                                           ; $7283: $3c
	nop                                              ; $7284: $00
	ld   a, [hl]                                     ; $7285: $7e
	add  e                                           ; $7286: $83
	nop                                              ; $7287: $00
	ld   [bc], a                                     ; $7288: $02
	ld   a, [hl]                                     ; $7289: $7e
	nop                                              ; $728a: $00
	ld   a, [hl]                                     ; $728b: $7e
	add  l                                           ; $728c: $85
	nop                                              ; $728d: $00
	ld   [bc], a                                     ; $728e: $02
	ld   a, [hl]                                     ; $728f: $7e
	nop                                              ; $7290: $00
	inc  a                                           ; $7291: $3c
	adc  c                                           ; $7292: $89
	nop                                              ; $7293: $00
	ld   [bc], a                                     ; $7294: $02
	inc  a                                           ; $7295: $3c
	nop                                              ; $7296: $00
	ld   a, [hl]                                     ; $7297: $7e
	add  l                                           ; $7298: $85
	nop                                              ; $7299: $00
	ld   [bc], a                                     ; $729a: $02
	ld   a, [hl]                                     ; $729b: $7e
	nop                                              ; $729c: $00
	jr   c, jr_094_7220                              ; $729d: $38 $81

	nop                                              ; $729f: $00
	nop                                              ; $72a0: $00
	inc  c                                           ; $72a1: $0c
	add  c                                           ; $72a2: $81
	nop                                              ; $72a3: $00
	nop                                              ; $72a4: $00
	ld   [$00ff], sp                                 ; $72a5: $08 $ff $00
	rst  $38                                         ; $72a8: $ff
	nop                                              ; $72a9: $00
	add  c                                           ; $72aa: $81
	nop                                              ; $72ab: $00
	add  b                                           ; $72ac: $80
	rst  $38                                         ; $72ad: $ff
	nop                                              ; $72ae: $00
	nop                                              ; $72af: $00
	add  e                                           ; $72b0: $83
	rst  $38                                         ; $72b1: $ff
	add  b                                           ; $72b2: $80
	pop  hl                                          ; $72b3: $e1
	add  b                                           ; $72b4: $80
	dec  c                                           ; $72b5: $0d
	add  b                                           ; $72b6: $80
	and  c                                           ; $72b7: $a1
	add  b                                           ; $72b8: $80
	dec  c                                           ; $72b9: $0d
	ld   [bc], a                                     ; $72ba: $02

jr_094_72bb:
	nop                                              ; $72bb: $00
	rst  $38                                         ; $72bc: $ff
	nop                                              ; $72bd: $00
	add  e                                           ; $72be: $83
	rst  $38                                         ; $72bf: $ff
	add  b                                           ; $72c0: $80
	rst  $28                                         ; $72c1: $ef
	add  b                                           ; $72c2: $80
	add  b                                           ; $72c3: $80
	add  b                                           ; $72c4: $80
	rst  $28                                         ; $72c5: $ef
	add  b                                           ; $72c6: $80
	xor  e                                           ; $72c7: $ab
	ld   [bc], a                                     ; $72c8: $02
	nop                                              ; $72c9: $00
	rst  $38                                         ; $72ca: $ff
	nop                                              ; $72cb: $00
	adc  c                                           ; $72cc: $89
	rst  $38                                         ; $72cd: $ff
	add  b                                           ; $72ce: $80
	jp   $0002                                       ; $72cf: $c3 $02 $00


	rst  $38                                         ; $72d2: $ff
	nop                                              ; $72d3: $00
	add  e                                           ; $72d4: $83
	rst  $38                                         ; $72d5: $ff
	add  d                                           ; $72d6: $82
	db   $ec                                         ; $72d7: $ec
	add  b                                           ; $72d8: $80
	ld   bc, $ef80                                   ; $72d9: $01 $80 $ef
	ld   [bc], a                                     ; $72dc: $02
	nop                                              ; $72dd: $00
	rst  $38                                         ; $72de: $ff
	nop                                              ; $72df: $00
	add  e                                           ; $72e0: $83
	rst  $38                                         ; $72e1: $ff
	add  b                                           ; $72e2: $80
	db   $fd                                         ; $72e3: $fd
	add  b                                           ; $72e4: $80
	ei                                               ; $72e5: $fb
	add  b                                           ; $72e6: $80
	rst  $30                                         ; $72e7: $f7
	add  b                                           ; $72e8: $80
	rst  $20                                         ; $72e9: $e7
	ld   [bc], a                                     ; $72ea: $02
	nop                                              ; $72eb: $00
	rst  $38                                         ; $72ec: $ff
	nop                                              ; $72ed: $00
	add  l                                           ; $72ee: $85
	rst  $38                                         ; $72ef: $ff
	add  b                                           ; $72f0: $80
	sbc  a                                           ; $72f1: $9f
	add  b                                           ; $72f2: $80
	xor  $80                                         ; $72f3: $ee $80
	cp   $02                                         ; $72f5: $fe $02
	nop                                              ; $72f7: $00
	rst  $38                                         ; $72f8: $ff
	nop                                              ; $72f9: $00
	add  e                                           ; $72fa: $83
	rst  $38                                         ; $72fb: $ff
	add  h                                           ; $72fc: $84
	rst  JumpTable                                         ; $72fd: $df
	add  b                                           ; $72fe: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72ff: $cf
	ld   [bc], a                                     ; $7300: $02
	ld   bc, $03fc                                   ; $7301: $01 $fc $03
	sub  a                                           ; $7304: $97
	cp   $06                                         ; $7305: $fe $06
	db   $fd                                         ; $7307: $fd
	db   $fc                                         ; $7308: $fc
	ld   [bc], a                                     ; $7309: $02
	nop                                              ; $730a: $00
	ld   [bc], a                                     ; $730b: $02
	db   $fc                                         ; $730c: $fc
	inc  bc                                          ; $730d: $03
	adc  e                                           ; $730e: $8b
	cp   $00                                         ; $730f: $fe $00
	nop                                              ; $7311: $00
	add  b                                           ; $7312: $80
	rst  $38                                         ; $7313: $ff
	ld   bc, $ff00                                   ; $7314: $01 $00 $ff
	sub  [hl]                                        ; $7317: $96
	nop                                              ; $7318: $00
	nop                                              ; $7319: $00
	rst  $38                                         ; $731a: $ff
	add  b                                           ; $731b: $80
	nop                                              ; $731c: $00
	nop                                              ; $731d: $00
	add  b                                           ; $731e: $80
	adc  l                                           ; $731f: $8d
	cp   a                                           ; $7320: $bf
	nop                                              ; $7321: $00
	ret  nz                                          ; $7322: $c0

	xor  l                                           ; $7323: $ad
	nop                                              ; $7324: $00
	ld   bc, $a15e                                   ; $7325: $01 $5e $a1
	add  b                                           ; $7328: $80
	adc  l                                           ; $7329: $8d
	add  b                                           ; $732a: $80
	ld   hl, $eb80                                   ; $732b: $21 $80 $eb
	add  b                                           ; $732e: $80
	sbc  b                                           ; $732f: $98
	add  d                                           ; $7330: $82
	rst  $38                                         ; $7331: $ff
	add  b                                           ; $7332: $80
	nop                                              ; $7333: $00
	add  b                                           ; $7334: $80
	sbc  e                                           ; $7335: $9b
	add  b                                           ; $7336: $80
	jr   nz, jr_094_72bb                             ; $7337: $20 $82

	cp   e                                           ; $7339: $bb
	add  b                                           ; $733a: $80
	add  b                                           ; $733b: $80
	add  d                                           ; $733c: $82
	rst  $38                                         ; $733d: $ff
	add  b                                           ; $733e: $80
	nop                                              ; $733f: $00
	add  [hl]                                        ; $7340: $86
	xor  l                                           ; $7341: $ad
	add  b                                           ; $7342: $80
	res  0, d                                        ; $7343: $cb $82
	rst  $38                                         ; $7345: $ff
	add  b                                           ; $7346: $80
	nop                                              ; $7347: $00
	add  b                                           ; $7348: $80
	xor  e                                           ; $7349: $ab
	add  b                                           ; $734a: $80
	xor  l                                           ; $734b: $ad
	add  d                                           ; $734c: $82
	ld   l, l                                        ; $734d: $6d
	add  b                                           ; $734e: $80
	rst  $28                                         ; $734f: $ef
	add  d                                           ; $7350: $82
	rst  $38                                         ; $7351: $ff
	add  b                                           ; $7352: $80
	nop                                              ; $7353: $00
	add  b                                           ; $7354: $80
	sub  a                                           ; $7355: $97
	add  [hl]                                        ; $7356: $86
	rst  $30                                         ; $7357: $f7
	add  d                                           ; $7358: $82
	rst  $38                                         ; $7359: $ff
	add  b                                           ; $735a: $80
	nop                                              ; $735b: $00
	add  b                                           ; $735c: $80
	cp   $82                                         ; $735d: $fe $82
	db   $fd                                         ; $735f: $fd
	add  b                                           ; $7360: $80
	ei                                               ; $7361: $fb
	add  b                                           ; $7362: $80
	rst  ToBoot                                         ; $7363: $c7
	add  d                                           ; $7364: $82
	rst  $38                                         ; $7365: $ff
	add  b                                           ; $7366: $80
	nop                                              ; $7367: $00
	add  b                                           ; $7368: $80
	rst  $10                                         ; $7369: $d7
	add  b                                           ; $736a: $80
	reti                                             ; $736b: $d9


	add  h                                           ; $736c: $84
	rst  JumpTable                                         ; $736d: $df
	add  d                                           ; $736e: $82
	rst  $38                                         ; $736f: $ff
	add  c                                           ; $7370: $81
	nop                                              ; $7371: $00
	inc  bc                                          ; $7372: $03
	ld   e, a                                        ; $7373: $5f
	rlca                                             ; $7374: $07
	ld   e, b                                        ; $7375: $58
	ld   e, e                                        ; $7376: $5b
	adc  c                                           ; $7377: $89
	ld   e, b                                        ; $7378: $58
	nop                                              ; $7379: $00
	db   $fc                                         ; $737a: $fc
	adc  l                                           ; $737b: $8d
	nop                                              ; $737c: $00
	ld   bc, $807f                                   ; $737d: $01 $7f $80
	adc  d                                           ; $7380: $8a
	rst  $38                                         ; $7381: $ff
	add  b                                           ; $7382: $80
	nop                                              ; $7383: $00
	nop                                              ; $7384: $00
	ld   [bc], a                                     ; $7385: $02
	adc  [hl]                                        ; $7386: $8e
	ld   a, [$0200]                                  ; $7387: $fa $00 $02
	adc  b                                           ; $738a: $88
	cp   $04                                         ; $738b: $fe $04
	db   $fd                                         ; $738d: $fd
	db   $fc                                         ; $738e: $fc
	ld   [bc], a                                     ; $738f: $02
	nop                                              ; $7390: $00
	db   $fc                                         ; $7391: $fc
	adc  e                                           ; $7392: $8b
	rst  $38                                         ; $7393: $ff
	add  b                                           ; $7394: $80
	nop                                              ; $7395: $00
	nop                                              ; $7396: $00
	ld   e, e                                        ; $7397: $5b
	adc  c                                           ; $7398: $89
	ld   e, b                                        ; $7399: $58
	ld   bc, $5f5c                                   ; $739a: $01 $5c $5f
	add  c                                           ; $739d: $81
	nop                                              ; $739e: $00
	inc  bc                                          ; $739f: $03
	ld   a, [$3ac0]                                  ; $73a0: $fa $c0 $3a
	jp   c, $3a95                                    ; $73a3: $da $95 $3a

	ld   bc, $fa1a                                   ; $73a6: $01 $1a $fa
	add  b                                           ; $73a9: $80
	nop                                              ; $73aa: $00
	inc  b                                           ; $73ab: $04
	ret  nz                                          ; $73ac: $c0

	nop                                              ; $73ad: $00
	ld   e, a                                        ; $73ae: $5f
	ccf                                              ; $73af: $3f
	sbc  a                                           ; $73b0: $9f
	add  a                                           ; $73b1: $87
	ld   a, a                                        ; $73b2: $7f
	add  b                                           ; $73b3: $80
	ld   b, c                                        ; $73b4: $41
	ld   bc, $0040                                   ; $73b5: $01 $40 $00
	add  d                                           ; $73b8: $82
	ei                                               ; $73b9: $fb
	add  b                                           ; $73ba: $80
	ld   hl, sp-$80                                  ; $73bb: $f8 $80
	ei                                               ; $73bd: $fb
	add  b                                           ; $73be: $80
	ld   hl, sp-$80                                  ; $73bf: $f8 $80
	ei                                               ; $73c1: $fb
	add  b                                           ; $73c2: $80
	ld   hl, sp-$80                                  ; $73c3: $f8 $80
	nop                                              ; $73c5: $00
	add  d                                           ; $73c6: $82
	rst  $38                                         ; $73c7: $ff
	add  b                                           ; $73c8: $80
	nop                                              ; $73c9: $00
	add  b                                           ; $73ca: $80
	rst  $38                                         ; $73cb: $ff
	add  b                                           ; $73cc: $80
	nop                                              ; $73cd: $00
	add  b                                           ; $73ce: $80
	rst  $38                                         ; $73cf: $ff
	add  d                                           ; $73d0: $82
	nop                                              ; $73d1: $00
	add  d                                           ; $73d2: $82
	rst  $38                                         ; $73d3: $ff
	add  b                                           ; $73d4: $80
	nop                                              ; $73d5: $00
	add  b                                           ; $73d6: $80
	rst  $38                                         ; $73d7: $ff
	add  b                                           ; $73d8: $80
	nop                                              ; $73d9: $00
	add  b                                           ; $73da: $80
	rst  $38                                         ; $73db: $ff
	add  c                                           ; $73dc: $81
	nop                                              ; $73dd: $00
	ld   bc, $7e41                                   ; $73de: $01 $41 $7e
	add  a                                           ; $73e1: $87

jr_094_73e2:
	ld   a, a                                        ; $73e2: $7f
	dec  b                                           ; $73e3: $05
	rst  JumpTable                                         ; $73e4: $df
	ccf                                              ; $73e5: $3f
	ld   h, b                                        ; $73e6: $60
	nop                                              ; $73e7: $00
	jr   c, jr_094_73e2                              ; $73e8: $38 $f8

	add  b                                           ; $73ea: $80
	ei                                               ; $73eb: $fb
	add  b                                           ; $73ec: $80
	ld   hl, sp-$80                                  ; $73ed: $f8 $80
	ei                                               ; $73ef: $fb
	add  b                                           ; $73f0: $80
	ld   hl, sp-$7e                                  ; $73f1: $f8 $82
	ei                                               ; $73f3: $fb
	add  c                                           ; $73f4: $81
	nop                                              ; $73f5: $00
	sbc  [hl]                                        ; $73f6: $9e
	rst  $38                                         ; $73f7: $ff
	sbc  l                                           ; $73f8: $9d
	ld   e, l                                        ; $73f9: $5d
	nop                                              ; $73fa: $00
	and  [hl]                                        ; $73fb: $a6
	adc  l                                           ; $73fc: $8d
	ld   hl, sp+$00                                  ; $73fd: $f8 $00
	call z, $1f8d                                    ; $73ff: $cc $8d $1f
	ld   [bc], a                                     ; $7402: $02
	ret  nc                                          ; $7403: $d0

	nop                                              ; $7404: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7405: $cf
	add  c                                           ; $7406: $81
	rst  JumpTable                                         ; $7407: $df
	add  b                                           ; $7408: $80
	rra                                              ; $7409: $1f
	add  b                                           ; $740a: $80
	rst  JumpTable                                         ; $740b: $df
	add  b                                           ; $740c: $80
	rra                                              ; $740d: $1f
	add  b                                           ; $740e: $80
	rst  JumpTable                                         ; $740f: $df
	add  b                                           ; $7410: $80
	rra                                              ; $7411: $1f
	ld   [bc], a                                     ; $7412: $02
	sub  b                                           ; $7413: $90
	ccf                                              ; $7414: $3f
	add  b                                           ; $7415: $80
	sub  a                                           ; $7416: $97
	ld   a, a                                        ; $7417: $7f
	ld   b, $df                                      ; $7418: $06 $df
	ccf                                              ; $741a: $3f
	ld   h, b                                        ; $741b: $60
	nop                                              ; $741c: $00
	ret  nz                                          ; $741d: $c0

	rst  $38                                         ; $741e: $ff
	nop                                              ; $741f: $00
	adc  e                                           ; $7420: $8b
	rst  $38                                         ; $7421: $ff
	ld   [hl], c                                     ; $7422: $71
	ld   bc, $008e                                   ; $7423: $01 $8e $00
	add  b                                           ; $7426: $80
	ld   a, [bc]                                     ; $7427: $0a
	add  d                                           ; $7428: $82
	nop                                              ; $7429: $00
	add  b                                           ; $742a: $80
	ld   bc, $0086                                   ; $742b: $01 $86 $00
	add  b                                           ; $742e: $80
	xor  a                                           ; $742f: $af
	add  b                                           ; $7430: $80
	ld   d, a                                        ; $7431: $57
	add  b                                           ; $7432: $80
	xor  e                                           ; $7433: $ab
	add  b                                           ; $7434: $80

jr_094_7435:
	ld   d, l                                        ; $7435: $55
	add  b                                           ; $7436: $80
	ld   a, [hl+]                                    ; $7437: $2a
	add  b                                           ; $7438: $80
	dec  d                                           ; $7439: $15
	add  b                                           ; $743a: $80
	xor  d                                           ; $743b: $aa
	add  b                                           ; $743c: $80
	ld   d, l                                        ; $743d: $55
	jr   nz, jr_094_7435                             ; $743e: $20 $f5

	rst  $38                                         ; $7440: $ff
	ldh  [rIE], a                                    ; $7441: $e0 $ff
	ldh  [rIE], a                                    ; $7443: $e0 $ff
	ldh  a, [rIE]                                    ; $7445: $f0 $ff
	ld   hl, sp-$01                                  ; $7447: $f8 $ff
	ld   hl, sp-$01                                  ; $7449: $f8 $ff
	ld   hl, sp-$01                                  ; $744b: $f8 $ff
	add  sp, -$01                                    ; $744d: $e8 $ff
	ld   b, l                                        ; $744f: $45
	rst  $38                                         ; $7450: $ff
	rrca                                             ; $7451: $0f
	rst  $38                                         ; $7452: $ff
	rrca                                             ; $7453: $0f
	rst  $38                                         ; $7454: $ff
	rrca                                             ; $7455: $0f
	rst  $38                                         ; $7456: $ff
	rrca                                             ; $7457: $0f
	rst  $38                                         ; $7458: $ff
	rrca                                             ; $7459: $0f
	rst  $38                                         ; $745a: $ff
	rra                                              ; $745b: $1f
	rst  $38                                         ; $745c: $ff
	rra                                              ; $745d: $1f
	rst  $38                                         ; $745e: $ff
	ld   e, a                                        ; $745f: $5f
	sub  e                                           ; $7460: $93
	rst  $38                                         ; $7461: $ff
	ld   a, [hl-]                                    ; $7462: $3a
	db   $fd                                         ; $7463: $fd
	rst  $38                                         ; $7464: $ff
	ld   hl, sp-$01                                  ; $7465: $f8 $ff
	ldh  a, [rIE]                                    ; $7467: $f0 $ff
	ldh  [rIE], a                                    ; $7469: $e0 $ff
	push bc                                          ; $746b: $c5
	ld   hl, sp-$2a                                  ; $746c: $f8 $d6
	rst  $38                                         ; $746e: $ff
	db   $f4                                         ; $746f: $f4
	rst  $38                                         ; $7470: $ff
	and  b                                           ; $7471: $a0
	rst  $38                                         ; $7472: $ff
	nop                                              ; $7473: $00
	rst  $38                                         ; $7474: $ff
	nop                                              ; $7475: $00
	rst  $38                                         ; $7476: $ff
	nop                                              ; $7477: $00
	rst  $38                                         ; $7478: $ff
	nop                                              ; $7479: $00
	rst  $38                                         ; $747a: $ff
	ld   d, b                                        ; $747b: $50
	rlca                                             ; $747c: $07
	xor  b                                           ; $747d: $a8
	rst  $38                                         ; $747e: $ff
	nop                                              ; $747f: $00
	rst  $38                                         ; $7480: $ff
	nop                                              ; $7481: $00
	rst  $38                                         ; $7482: $ff
	nop                                              ; $7483: $00
	rst  $38                                         ; $7484: $ff
	nop                                              ; $7485: $00
	rst  $38                                         ; $7486: $ff
	nop                                              ; $7487: $00
	rst  $38                                         ; $7488: $ff
	ld   a, [hl+]                                    ; $7489: $2a
	rst  $38                                         ; $748a: $ff
	ld   a, a                                        ; $748b: $7f
	rst  $38                                         ; $748c: $ff
	ld   d, b                                        ; $748d: $50
	rst  $38                                         ; $748e: $ff
	dec  b                                           ; $748f: $05
	rst  $38                                         ; $7490: $ff
	nop                                              ; $7491: $00
	rst  $38                                         ; $7492: $ff
	nop                                              ; $7493: $00
	rst  $38                                         ; $7494: $ff
	nop                                              ; $7495: $00
	rst  $38                                         ; $7496: $ff
	nop                                              ; $7497: $00
	rst  $38                                         ; $7498: $ff
	add  b                                           ; $7499: $80
	rst  $38                                         ; $749a: $ff
	call nc, $01ff                                   ; $749b: $d4 $ff $01
	add  c                                           ; $749e: $81
	rst  $38                                         ; $749f: $ff
	inc  c                                           ; $74a0: $0c
	cp   a                                           ; $74a1: $bf
	rst  $38                                         ; $74a2: $ff
	rla                                              ; $74a3: $17
	rst  $38                                         ; $74a4: $ff
	inc  bc                                          ; $74a5: $03
	rst  $38                                         ; $74a6: $ff
	ld   bc, $00ff                                   ; $74a7: $01 $ff $00
	rst  $38                                         ; $74aa: $ff
	nop                                              ; $74ab: $00
	rst  $38                                         ; $74ac: $ff
	ld   d, l                                        ; $74ad: $55
	adc  e                                           ; $74ae: $8b
	rst  $38                                         ; $74af: $ff

jr_094_74b0:
	ld   [$ff7f], sp                                 ; $74b0: $08 $7f $ff
	ld   [hl], b                                     ; $74b3: $70
	inc  a                                           ; $74b4: $3c
	dec  a                                           ; $74b5: $3d
	rst  $38                                         ; $74b6: $ff
	adc  $ff                                         ; $74b7: $ce $ff
	ccf                                              ; $74b9: $3f
	add  b                                           ; $74ba: $80
	rst  $38                                         ; $74bb: $ff
	rra                                              ; $74bc: $1f
	ld   l, a                                        ; $74bd: $6f
	rst  $28                                         ; $74be: $ef
	add  a                                           ; $74bf: $87
	rst  $38                                         ; $74c0: $ff
	add  b                                           ; $74c1: $80
	add  a                                           ; $74c2: $87
	ldh  [$1f], a                                    ; $74c3: $e0 $1f
	add  [hl]                                        ; $74c5: $86
	or   [hl]                                        ; $74c6: $b6
	nop                                              ; $74c7: $00
	xor  c                                           ; $74c8: $a9
	add  b                                           ; $74c9: $80
	ld   e, h                                        ; $74ca: $5c
	ret  nz                                          ; $74cb: $c0

	db   $f4                                         ; $74cc: $f4
	ldh  a, [$6d]                                    ; $74cd: $f0 $6d
	db   $ec                                         ; $74cf: $ec
	inc  c                                           ; $74d0: $0c
	xor  $e2                                         ; $74d1: $ee $e2
	db   $10                                         ; $74d3: $10
	inc  de                                          ; $74d4: $13
	nop                                              ; $74d5: $00
	db   $fc                                         ; $74d6: $fc
	nop                                              ; $74d7: $00
	ldh  a, [rP1]                                    ; $74d8: $f0 $00
	rst  $38                                         ; $74da: $ff
	nop                                              ; $74db: $00
	rrca                                             ; $74dc: $0f
	adc  e                                           ; $74dd: $8b
	nop                                              ; $74de: $00
	ld   [bc], a                                     ; $74df: $02
	rst  $38                                         ; $74e0: $ff
	nop                                              ; $74e1: $00
	rst  $38                                         ; $74e2: $ff
	adc  e                                           ; $74e3: $8b
	nop                                              ; $74e4: $00
	add  b                                           ; $74e5: $80
	dec  d                                           ; $74e6: $15
	add  b                                           ; $74e7: $80
	xor  d                                           ; $74e8: $aa
	add  b                                           ; $74e9: $80
	ld   d, l                                        ; $74ea: $55
	add  b                                           ; $74eb: $80
	xor  d                                           ; $74ec: $aa
	add  b                                           ; $74ed: $80
	ld   d, l                                        ; $74ee: $55
	add  b                                           ; $74ef: $80
	ld   [$0580], sp                                 ; $74f0: $08 $80 $05
	add  b                                           ; $74f3: $80
	ld   a, [hl+]                                    ; $74f4: $2a
	add  b                                           ; $74f5: $80
	ld   d, l                                        ; $74f6: $55
	add  b                                           ; $74f7: $80
	xor  d                                           ; $74f8: $aa
	add  b                                           ; $74f9: $80
	ld   d, l                                        ; $74fa: $55
	add  b                                           ; $74fb: $80
	xor  e                                           ; $74fc: $ab
	add  b                                           ; $74fd: $80
	ld   a, a                                        ; $74fe: $7f
	add  b                                           ; $74ff: $80
	xor  e                                           ; $7500: $ab

Jump_094_7501:
	add  b                                           ; $7501: $80
	ld   d, a                                        ; $7502: $57
	add  b                                           ; $7503: $80
	xor  a                                           ; $7504: $af
	add  b                                           ; $7505: $80
	ld   e, a                                        ; $7506: $5f
	add  b                                           ; $7507: $80
	cp   a                                           ; $7508: $bf
	daa                                              ; $7509: $27
	ei                                               ; $750a: $fb
	rst  $38                                         ; $750b: $ff
	ei                                               ; $750c: $fb
	rst  $38                                         ; $750d: $ff
	ld   a, [$d0ff]                                  ; $750e: $fa $ff $d0
	rst  $38                                         ; $7511: $ff
	ret  nz                                          ; $7512: $c0

	rst  $38                                         ; $7513: $ff
	ret  nz                                          ; $7514: $c0

	rst  $38                                         ; $7515: $ff
	ret  nz                                          ; $7516: $c0

	rst  $38                                         ; $7517: $ff
	ld   b, b                                        ; $7518: $40
	rst  $38                                         ; $7519: $ff
	nop                                              ; $751a: $00
	rst  $38                                         ; $751b: $ff
	nop                                              ; $751c: $00
	rst  $38                                         ; $751d: $ff
	nop                                              ; $751e: $00
	rst  $38                                         ; $751f: $ff
	dec  d                                           ; $7520: $15
	rst  $38                                         ; $7521: $ff

jr_094_7522:
	rra                                              ; $7522: $1f
	rst  $38                                         ; $7523: $ff
	rra                                              ; $7524: $1f
	rst  $38                                         ; $7525: $ff
	rra                                              ; $7526: $1f
	rst  $38                                         ; $7527: $ff
	jr   jr_094_7522                                 ; $7528: $18 $f8

	daa                                              ; $752a: $27
	ldh  [$58], a                                    ; $752b: $e0 $58
	ret  nz                                          ; $752d: $c0

	jr   nz, jr_094_74b0                             ; $752e: $20 $80

	ld   b, b                                        ; $7530: $40
	rst  $38                                         ; $7531: $ff
	add  b                                           ; $7532: $80
	ld   hl, sp+$04                                  ; $7533: $f8 $04
	rst  ToBoot                                         ; $7535: $c7
	ret  nz                                          ; $7536: $c0

	jr   c, jr_094_7539                              ; $7537: $38 $00

jr_094_7539:
	ret  nz                                          ; $7539: $c0

	add  l                                           ; $753a: $85
	nop                                              ; $753b: $00
	inc  b                                           ; $753c: $04
	ld   a, b                                        ; $753d: $78
	add  b                                           ; $753e: $80
	ld   a, b                                        ; $753f: $78
	nop                                              ; $7540: $00
	add  b                                           ; $7541: $80
	adc  c                                           ; $7542: $89
	nop                                              ; $7543: $00
	inc  b                                           ; $7544: $04
	ld   b, $01                                      ; $7545: $06 $01
	ld   b, $00                                      ; $7547: $06 $00
	ld   bc, $0089                                   ; $7549: $01 $89 $00
	add  e                                           ; $754c: $83
	rst  $38                                         ; $754d: $ff
	ld   b, $7f                                      ; $754e: $06 $7f
	push af                                          ; $7550: $f5
	sub  l                                           ; $7551: $95
	ld   a, [$c7e2]                                  ; $7552: $fa $e2 $c7
	ret  nz                                          ; $7555: $c0

	add  b                                           ; $7556: $80
	add  e                                           ; $7557: $83
	add  b                                           ; $7558: $80
	rra                                              ; $7559: $1f
	nop                                              ; $755a: $00
	nop                                              ; $755b: $00
	add  e                                           ; $755c: $83
	rst  $38                                         ; $755d: $ff
	add  b                                           ; $755e: $80
	ld   a, a                                        ; $755f: $7f
	add  b                                           ; $7560: $80
	xor  a                                           ; $7561: $af
	inc  de                                          ; $7562: $13
	push de                                          ; $7563: $d5
	dec  d                                           ; $7564: $15
	ld   a, [$fdca]                                  ; $7565: $fa $ca $fd
	push af                                          ; $7568: $f5
	xor  l                                           ; $7569: $ad
	rst  $38                                         ; $756a: $ff
	ld   b, b                                        ; $756b: $40
	rst  $38                                         ; $756c: $ff
	ldh  [rIE], a                                    ; $756d: $e0 $ff
	ldh  a, [rIE]                                    ; $756f: $f0 $ff
	ld   a, [$feff]                                  ; $7571: $fa $ff $fe
	rst  $38                                         ; $7574: $ff
	cp   $ff                                         ; $7575: $fe $ff
	add  b                                           ; $7577: $80
	ld   a, a                                        ; $7578: $7f
	db   $10                                         ; $7579: $10
	ld   b, b                                        ; $757a: $40
	rst  $38                                         ; $757b: $ff
	rra                                              ; $757c: $1f
	rst  $38                                         ; $757d: $ff
	rrca                                             ; $757e: $0f
	rst  $38                                         ; $757f: $ff
	rrca                                             ; $7580: $0f
	rst  $38                                         ; $7581: $ff
	ld   a, [bc]                                     ; $7582: $0a
	rst  $38                                         ; $7583: $ff
	nop                                              ; $7584: $00
	rst  $38                                         ; $7585: $ff
	nop                                              ; $7586: $00
	rst  $38                                         ; $7587: $ff
	nop                                              ; $7588: $00
	rst  $38                                         ; $7589: $ff
	ld   d, l                                        ; $758a: $55
	add  b                                           ; $758b: $80
	di                                               ; $758c: $f3
	ld   [bc], a                                     ; $758d: $02
	rst  $38                                         ; $758e: $ff
	inc  a                                           ; $758f: $3c
	ccf                                              ; $7590: $3f
	add  b                                           ; $7591: $80

jr_094_7592:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7592: $cf
	add  b                                           ; $7593: $80
	di                                               ; $7594: $f3
	dec  b                                           ; $7595: $05
	rst  $38                                         ; $7596: $ff
	nop                                              ; $7597: $00
	inc  bc                                          ; $7598: $03
	pop  bc                                          ; $7599: $c1
	ret  nz                                          ; $759a: $c0

	rst  $38                                         ; $759b: $ff
	add  b                                           ; $759c: $80
	ldh  [rDIV], a                                   ; $759d: $e0 $04
	dec  e                                           ; $759f: $1d
	db   $fc                                         ; $75a0: $fc
	rst  $20                                         ; $75a1: $e7
	rst  $38                                         ; $75a2: $ff
	ld   hl, sp-$80                                  ; $75a3: $f8 $80
	db   $fc                                         ; $75a5: $fc
	add  b                                           ; $75a6: $80
	db   $fd                                         ; $75a7: $fd
	add  b                                           ; $75a8: $80
	ld   b, $80                                      ; $75a9: $06 $80
	ld   hl, sp+$01                                  ; $75ab: $f8 $01
	rst  $38                                         ; $75ad: $ff
	add  b                                           ; $75ae: $80
	add  e                                           ; $75af: $83
	nop                                              ; $75b0: $00
	nop                                              ; $75b1: $00
	ld   b, b                                        ; $75b2: $40
	add  b                                           ; $75b3: $80
	nop                                              ; $75b4: $00
	add  b                                           ; $75b5: $80
	add  b                                           ; $75b6: $80
	add  d                                           ; $75b7: $82
	nop                                              ; $75b8: $00
	ld   bc, $4080                                   ; $75b9: $01 $80 $40
	adc  e                                           ; $75bc: $8b
	nop                                              ; $75bd: $00
	ld   [bc], a                                     ; $75be: $02
	ld   bc, $fe00                                   ; $75bf: $01 $00 $fe
	add  e                                           ; $75c2: $83
	rst  $38                                         ; $75c3: $ff
	ld   [hl], $bf                                   ; $75c4: $36 $bf
	rst  $38                                         ; $75c6: $ff
	dec  d                                           ; $75c7: $15
	rst  $38                                         ; $75c8: $ff
	nop                                              ; $75c9: $00
	rst  $38                                         ; $75ca: $ff
	nop                                              ; $75cb: $00
	rst  $38                                         ; $75cc: $ff
	nop                                              ; $75cd: $00
	rst  $38                                         ; $75ce: $ff
	xor  d                                           ; $75cf: $aa
	rst  $38                                         ; $75d0: $ff
	cp   $ff                                         ; $75d1: $fe $ff
	sbc  $ff                                         ; $75d3: $de $ff
	sbc  d                                           ; $75d5: $9a
	rst  $38                                         ; $75d6: $ff
	db   $10                                         ; $75d7: $10
	rst  $38                                         ; $75d8: $ff
	nop                                              ; $75d9: $00
	rst  $38                                         ; $75da: $ff
	nop                                              ; $75db: $00
	rst  $38                                         ; $75dc: $ff
	nop                                              ; $75dd: $00
	rst  $38                                         ; $75de: $ff
	and  b                                           ; $75df: $a0
	rst  $38                                         ; $75e0: $ff
	and  b                                           ; $75e1: $a0
	rst  $38                                         ; $75e2: $ff
	add  b                                           ; $75e3: $80
	rst  $38                                         ; $75e4: $ff
	add  b                                           ; $75e5: $80
	rst  $38                                         ; $75e6: $ff
	nop                                              ; $75e7: $00
	rst  $38                                         ; $75e8: $ff
	nop                                              ; $75e9: $00
	rst  $38                                         ; $75ea: $ff
	nop                                              ; $75eb: $00
	rst  $38                                         ; $75ec: $ff
	ld   [bc], a                                     ; $75ed: $02
	rst  $38                                         ; $75ee: $ff
	ld   [bc], a                                     ; $75ef: $02
	rst  $38                                         ; $75f0: $ff
	ld   bc, $00fe                                   ; $75f1: $01 $fe $00
	cp   $01                                         ; $75f4: $fe $01
	db   $fc                                         ; $75f6: $fc
	inc  b                                           ; $75f7: $04
	db   $fc                                         ; $75f8: $fc
	ld   a, [hl+]                                    ; $75f9: $2a
	ld   hl, sp+$78                                  ; $75fa: $f8 $78
	add  c                                           ; $75fc: $81
	ld   hl, sp+$02                                  ; $75fd: $f8 $02
	ld   a, h                                        ; $75ff: $7c
	nop                                              ; $7600: $00
	add  b                                           ; $7601: $80
	add  e                                           ; $7602: $83
	nop                                              ; $7603: $00
	ld   [$0009], sp                                 ; $7604: $08 $09 $00
	rla                                              ; $7607: $17
	nop                                              ; $7608: $00
	ld   h, $00                                      ; $7609: $26 $00
	jr   jr_094_760d                                 ; $760b: $18 $00

jr_094_760d:
	jr   nz, jr_094_7592                             ; $760d: $20 $83

	nop                                              ; $760f: $00
	inc  b                                           ; $7610: $04
	ccf                                              ; $7611: $3f
	nop                                              ; $7612: $00
	rst  $38                                         ; $7613: $ff
	nop                                              ; $7614: $00
	ret  nz                                          ; $7615: $c0

	adc  c                                           ; $7616: $89
	nop                                              ; $7617: $00
	inc  b                                           ; $7618: $04
	cp   $00                                         ; $7619: $fe $00
	rst  $38                                         ; $761b: $ff
	nop                                              ; $761c: $00
	ld   bc, $0083                                   ; $761d: $01 $83 $00
	ld   [bc], a                                     ; $7620: $02
	ld   bc, $0100                                   ; $7621: $01 $00 $01
	add  e                                           ; $7624: $83
	nop                                              ; $7625: $00
	ld   a, [bc]                                     ; $7626: $0a
	ret  nz                                          ; $7627: $c0

	nop                                              ; $7628: $00
	ld   hl, sp+$00                                  ; $7629: $f8 $00
	ld   a, $00                                      ; $762b: $3e $00
	rlca                                             ; $762d: $07
	nop                                              ; $762e: $00
	add  c                                           ; $762f: $81
	nop                                              ; $7630: $00
	add  b                                           ; $7631: $80
	add  e                                           ; $7632: $83
	nop                                              ; $7633: $00
	ld   [bc], a                                     ; $7634: $02
	add  b                                           ; $7635: $80
	nop                                              ; $7636: $00
	ld   b, b                                        ; $7637: $40
	add  c                                           ; $7638: $81
	nop                                              ; $7639: $00
	ld   b, $20                                      ; $763a: $06 $20
	nop                                              ; $763c: $00
	and  $fa                                         ; $763d: $e6 $fa
	rst  $38                                         ; $763f: $ff
	db   $fd                                         ; $7640: $fd
	rst  $38                                         ; $7641: $ff
	add  c                                           ; $7642: $81
	cp   $86                                         ; $7643: $fe $86
	rst  $38                                         ; $7645: $ff
	ld   bc, $bf40                                   ; $7646: $01 $40 $bf
	add  b                                           ; $7649: $80
	ld   e, a                                        ; $764a: $5f
	add  b                                           ; $764b: $80
	xor  a                                           ; $764c: $af
	add  b                                           ; $764d: $80
	ld   e, a                                        ; $764e: $5f
	ld   bc, $2faf                                   ; $764f: $01 $af $2f
	add  b                                           ; $7652: $80
	ld   d, a                                        ; $7653: $57
	ld   bc, $aeee                                   ; $7654: $01 $ee $ae
	add  c                                           ; $7657: $81
	sub  l                                           ; $7658: $95
	inc  bc                                          ; $7659: $03
	rst  $38                                         ; $765a: $ff
	ld   d, h                                        ; $765b: $54
	rst  $38                                         ; $765c: $ff
	cp   $83                                         ; $765d: $fe $83
	rst  $38                                         ; $765f: $ff
	add  b                                           ; $7660: $80
	ld   d, a                                        ; $7661: $57
	add  b                                           ; $7662: $80
	xor  e                                           ; $7663: $ab
	add  b                                           ; $7664: $80
	ld   d, l                                        ; $7665: $55
	inc  b                                           ; $7666: $04
	ld   bc, $07ff                                   ; $7667: $01 $ff $07
	rst  $38                                         ; $766a: $ff
	ld   sp, hl                                      ; $766b: $f9
	add  b                                           ; $766c: $80
	sbc  [hl]                                        ; $766d: $9e
	add  hl, bc                                      ; $766e: $09
	pop  hl                                          ; $766f: $e1
	ld   hl, $c7ff                                   ; $7670: $21 $ff $c7
	rst  $38                                         ; $7673: $ff
	ei                                               ; $7674: $fb
	rst  $38                                         ; $7675: $ff
	db   $e3                                         ; $7676: $e3
	db   $fc                                         ; $7677: $fc
	inc  e                                           ; $7678: $1c
	add  b                                           ; $7679: $80
	rst  $38                                         ; $767a: $ff
	add  b                                           ; $767b: $80
	cp   $80                                         ; $767c: $fe $80
	nop                                              ; $767e: $00
	nop                                              ; $767f: $00
	ld   hl, sp-$80                                  ; $7680: $f8 $80
	ei                                               ; $7682: $fb
	ld   a, [hl+]                                    ; $7683: $2a
	ld   sp, hl                                      ; $7684: $f9

jr_094_7685:
	pop  af                                          ; $7685: $f1
	db   $fc                                         ; $7686: $fc

jr_094_7687:
	adc  $fa                                         ; $7687: $ce $fa
	ccf                                              ; $7689: $3f
	cp   b                                           ; $768a: $b8
	nop                                              ; $768b: $00
	add  b                                           ; $768c: $80
	nop                                              ; $768d: $00
	add  b                                           ; $768e: $80
	nop                                              ; $768f: $00
	inc  bc                                          ; $7690: $03
	nop                                              ; $7691: $00
	adc  a                                           ; $7692: $8f
	nop                                              ; $7693: $00
	or   b                                           ; $7694: $b0
	add  b                                           ; $7695: $80
	ld   e, $00                                      ; $7696: $1e $00
	jr   nz, @-$7e                                   ; $7698: $20 $80

	ld   c, h                                        ; $769a: $4c
	nop                                              ; $769b: $00
	ld   a, $03                                      ; $769c: $3e $03
	di                                               ; $769e: $f3
	rra                                              ; $769f: $1f
	call c, Call_094_7b7f                            ; $76a0: $dc $7f $7b
	rst  $38                                         ; $76a3: $ff
	rst  $20                                         ; $76a4: $e7
	db   $fc                                         ; $76a5: $fc
	rst  JumpTable                                         ; $76a6: $df
	ldh  [$bc], a                                    ; $76a7: $e0 $bc
	add  b                                           ; $76a9: $80
	or   l                                           ; $76aa: $b5
	rst  $38                                         ; $76ab: $ff
	nop                                              ; $76ac: $00
	rst  $38                                         ; $76ad: $ff
	ld   d, l                                        ; $76ae: $55
	adc  c                                           ; $76af: $89
	rst  $38                                         ; $76b0: $ff
	inc  b                                           ; $76b1: $04
	xor  d                                           ; $76b2: $aa
	rst  $38                                         ; $76b3: $ff
	ld   [bc], a                                     ; $76b4: $02
	rst  $38                                         ; $76b5: $ff
	ld   d, a                                        ; $76b6: $57
	adc  c                                           ; $76b7: $89
	rst  $38                                         ; $76b8: $ff
	ld   [bc], a                                     ; $76b9: $02
	cp   a                                           ; $76ba: $bf
	rst  $38                                         ; $76bb: $ff
	cp   a                                           ; $76bc: $bf
	adc  e                                           ; $76bd: $8b
	rst  $38                                         ; $76be: $ff
	ld   [bc], a                                     ; $76bf: $02
	ei                                               ; $76c0: $fb
	ld   hl, sp-$0c                                  ; $76c1: $f8 $f4
	add  e                                           ; $76c3: $83
	ldh  a, [rSC]                                    ; $76c4: $f0 $02
	pop  af                                          ; $76c6: $f1
	ldh  a, [$e8]                                    ; $76c7: $f0 $e8
	add  c                                           ; $76c9: $81
	ldh  [rSC], a                                    ; $76ca: $e0 $02
	db   $d3                                         ; $76cc: $d3
	ret  nz                                          ; $76cd: $c0

	and  d                                           ; $76ce: $a2
	add  c                                           ; $76cf: $81
	nop                                              ; $76d0: $00
	ld   a, [bc]                                     ; $76d1: $0a
	ret  nz                                          ; $76d2: $c0

	nop                                              ; $76d3: $00
	ld   bc, $8f00                                   ; $76d4: $01 $00 $8f
	nop                                              ; $76d7: $00
	ld   a, [hl]                                     ; $76d8: $7e
	nop                                              ; $76d9: $00
	ldh  a, [rP1]                                    ; $76da: $f0 $00
	add  b                                           ; $76dc: $80
	add  l                                           ; $76dd: $85
	nop                                              ; $76de: $00
	ld   [bc], a                                     ; $76df: $02
	rst  $38                                         ; $76e0: $ff
	nop                                              ; $76e1: $00
	rst  $38                                         ; $76e2: $ff
	add  e                                           ; $76e3: $83
	nop                                              ; $76e4: $00
	ld   [bc], a                                     ; $76e5: $02
	ld   b, b                                        ; $76e6: $40
	nop                                              ; $76e7: $00
	ld   b, b                                        ; $76e8: $40
	add  e                                           ; $76e9: $83
	nop                                              ; $76ea: $00
	inc  b                                           ; $76eb: $04
	cp   $00                                         ; $76ec: $fe $00
	rst  $38                                         ; $76ee: $ff
	nop                                              ; $76ef: $00
	ld   bc, $008b                                   ; $76f0: $01 $8b $00
	inc  c                                           ; $76f3: $0c
	ldh  [rP1], a                                    ; $76f4: $e0 $00
	db   $fc                                         ; $76f6: $fc
	nop                                              ; $76f7: $00
	rra                                              ; $76f8: $1f
	nop                                              ; $76f9: $00
	inc  bc                                          ; $76fa: $03
	nop                                              ; $76fb: $00
	ld   h, b                                        ; $76fc: $60
	nop                                              ; $76fd: $00
	ld   d, b                                        ; $76fe: $50
	nop                                              ; $76ff: $00
	jr   nz, jr_094_7685                             ; $7700: $20 $83

	nop                                              ; $7702: $00
	nop                                              ; $7703: $00
	jr   jr_094_7687                                 ; $7704: $18 $81

	nop                                              ; $7706: $00
	ld   [bc], a                                     ; $7707: $02
	ret  nz                                          ; $7708: $c0

	nop                                              ; $7709: $00
	ret  z                                           ; $770a: $c8

	add  d                                           ; $770b: $82
	nop                                              ; $770c: $00
	add  b                                           ; $770d: $80
	ld   bc, $0080                                   ; $770e: $01 $80 $00
	add  b                                           ; $7711: $80
	ld   [$8480], sp                                 ; $7712: $08 $80 $84
	add  b                                           ; $7715: $80
	push bc                                          ; $7716: $c5
	ld   [bc], a                                     ; $7717: $02
	ld   d, a                                        ; $7718: $57
	ld   a, l                                        ; $7719: $7d
	jp   z, $d580                                    ; $771a: $ca $80 $d5

	add  b                                           ; $771d: $80
	jp   z, Jump_094_7501                            ; $771e: $ca $01 $75

	push hl                                          ; $7721: $e5
	add  b                                           ; $7722: $80
	ld   [$a501], a                                  ; $7723: $ea $01 $a5
	push hl                                          ; $7726: $e5
	add  b                                           ; $7727: $80
	xor  $03                                         ; $7728: $ee $03
	ld   a, a                                        ; $772a: $7f
	rst  $30                                         ; $772b: $f7
	ld   [hl-], a                                    ; $772c: $32
	adc  d                                           ; $772d: $8a
	add  b                                           ; $772e: $80
	dec  b                                           ; $772f: $05
	add  b                                           ; $7730: $80
	ld   [bc], a                                     ; $7731: $02
	add  b                                           ; $7732: $80
	dec  b                                           ; $7733: $05
	add  b                                           ; $7734: $80
	xor  d                                           ; $7735: $aa
	add  b                                           ; $7736: $80
	ld   d, l                                        ; $7737: $55
	add  b                                           ; $7738: $80
	xor  e                                           ; $7739: $ab
	add  b                                           ; $773a: $80
	ld   d, a                                        ; $773b: $57
	ld   [bc], a                                     ; $773c: $02
	cp   $81                                         ; $773d: $fe $81
	add  e                                           ; $773f: $83
	add  b                                           ; $7740: $80
	di                                               ; $7741: $f3
	rlca                                             ; $7742: $07
	set  0, d                                        ; $7743: $cb $c2
	dec  sp                                          ; $7745: $3b
	add  hl, hl                                      ; $7746: $29
	ld   hl, sp-$27                                  ; $7747: $f8 $d9
	db   $fd                                         ; $7749: $fd
	cp   h                                           ; $774a: $bc
	add  c                                           ; $774b: $81
	db   $fd                                         ; $774c: $fd
	ld   b, $7d                                      ; $774d: $06 $7d
	rst  $38                                         ; $774f: $ff
	ei                                               ; $7750: $fb
	rst  $38                                         ; $7751: $ff
	add  c                                           ; $7752: $81
	rst  $38                                         ; $7753: $ff
	ld   a, l                                        ; $7754: $7d
	add  b                                           ; $7755: $80
	rst  $38                                         ; $7756: $ff
	ld   c, $1f                                      ; $7757: $0e $1f
	rst  $38                                         ; $7759: $ff
	rst  $20                                         ; $775a: $e7
	ld   a, l                                        ; $775b: $7d
	ei                                               ; $775c: $fb
	sbc  l                                           ; $775d: $9d
	db   $fd                                         ; $775e: $fd
	sbc  e                                           ; $775f: $9b
	nop                                              ; $7760: $00
	dec  bc                                          ; $7761: $0b
	db   $10                                         ; $7762: $10
	ld   h, [hl]                                     ; $7763: $66
	add  b                                           ; $7764: $80
	sbc  a                                           ; $7765: $9f
	ld   hl, sp-$80                                  ; $7766: $f8 $80
	cp   $12                                         ; $7768: $fe $12
	ld   sp, hl                                      ; $776a: $f9
	ld   hl, sp-$2f                                  ; $776b: $f8 $d1
	ldh  a, [$2f]                                    ; $776d: $f0 $2f
	ldh  [$71], a                                    ; $776f: $e0 $71
	nop                                              ; $7771: $00
	add  a                                           ; $7772: $87
	ld   bc, $071f                                   ; $7773: $01 $1f $07
	cp   $1f                                         ; $7776: $fe $1f
	ld   a, c                                        ; $7778: $79
	ld   a, a                                        ; $7779: $7f
	rst  ToBoot                                         ; $777a: $c7
	rst  $38                                         ; $777b: $ff
	ccf                                              ; $777c: $3f
	add  b                                           ; $777d: $80
	rst  $38                                         ; $777e: $ff
	ld   bc, $8778                                   ; $777f: $01 $78 $87
	add  e                                           ; $7782: $83
	rst  $38                                         ; $7783: $ff
	ld   a, [bc]                                     ; $7784: $0a
	ld   a, a                                        ; $7785: $7f
	rst  $38                                         ; $7786: $ff
	dec  hl                                          ; $7787: $2b
	rst  $38                                         ; $7788: $ff
	ld   bc, $00ff                                   ; $7789: $01 $ff $00
	rst  $38                                         ; $778c: $ff
	nop                                              ; $778d: $00
	rst  $38                                         ; $778e: $ff
	ld   d, l                                        ; $778f: $55
	adc  c                                           ; $7790: $89
	rst  $38                                         ; $7791: $ff
	inc  b                                           ; $7792: $04
	cp   $ff                                         ; $7793: $fe $ff
	ld   [hl], h                                     ; $7795: $74
	rst  $38                                         ; $7796: $ff
	ld   [hl], l                                     ; $7797: $75
	add  a                                           ; $7798: $87
	rst  $38                                         ; $7799: $ff
	db   $10                                         ; $779a: $10
	push de                                          ; $779b: $d5
	rst  $38                                         ; $779c: $ff
	add  b                                           ; $779d: $80
	rst  $38                                         ; $779e: $ff
	ld   bc, $71fe                                   ; $779f: $01 $fe $71
	ret  nz                                          ; $77a2: $c0

	call z, $d8c0                                    ; $77a3: $cc $c0 $d8
	ret  nz                                          ; $77a6: $c0

	ret  nc                                          ; $77a7: $d0

	ret  nz                                          ; $77a8: $c0

	and  b                                           ; $77a9: $a0
	add  b                                           ; $77aa: $80
	ld   b, b                                        ; $77ab: $40
	add  c                                           ; $77ac: $81
	nop                                              ; $77ad: $00
	ld   c, $80                                      ; $77ae: $0e $80
	nop                                              ; $77b0: $00
	ld   [$1900], sp                                 ; $77b1: $08 $00 $19
	nop                                              ; $77b4: $00
	ld   [hl+], a                                    ; $77b5: $22
	nop                                              ; $77b6: $00
	stop                                             ; $77b7: $10 $00
	ld   b, h                                        ; $77b9: $44
	nop                                              ; $77ba: $00
	ld   hl, $8800                                   ; $77bb: $21 $00 $88
	add  c                                           ; $77be: $81
	nop                                              ; $77bf: $00
	nop                                              ; $77c0: $00
	ld   e, a                                        ; $77c1: $5f
	add  c                                           ; $77c2: $81
	nop                                              ; $77c3: $00

jr_094_77c4:
	nop                                              ; $77c4: $00
	and  b                                           ; $77c5: $a0
	add  c                                           ; $77c6: $81
	nop                                              ; $77c7: $00
	nop                                              ; $77c8: $00
	ld   b, b                                        ; $77c9: $40
	add  c                                           ; $77ca: $81
	nop                                              ; $77cb: $00
	nop                                              ; $77cc: $00
	add  b                                           ; $77cd: $80
	add  b                                           ; $77ce: $80
	nop                                              ; $77cf: $00
	inc  bc                                          ; $77d0: $03
	jr   nz, jr_094_77c4                             ; $77d1: $20 $f1

	nop                                              ; $77d3: $00
	inc  b                                           ; $77d4: $04
	add  c                                           ; $77d5: $81
	nop                                              ; $77d6: $00
	ld   [bc], a                                     ; $77d7: $02
	stop                                             ; $77d8: $10 $00
	ld   b, $81                                      ; $77da: $06 $81
	nop                                              ; $77dc: $00
	inc  c                                           ; $77dd: $0c
	dec  hl                                          ; $77de: $2b
	nop                                              ; $77df: $00
	add  b                                           ; $77e0: $80
	inc  b                                           ; $77e1: $04
	sub  l                                           ; $77e2: $95
	nop                                              ; $77e3: $00
	inc  b                                           ; $77e4: $04
	nop                                              ; $77e5: $00
	ld   a, [bc]                                     ; $77e6: $0a
	nop                                              ; $77e7: $00
	ld   bc, $0400                                   ; $77e8: $01 $00 $04
	add  b                                           ; $77eb: $80
	nop                                              ; $77ec: $00
	dec  d                                           ; $77ed: $15
	inc  b                                           ; $77ee: $04
	ld   b, $02                                      ; $77ef: $06 $02
	ld   b, e                                        ; $77f1: $43
	inc  de                                          ; $77f2: $13
	ld   l, e                                        ; $77f3: $6b
	nop                                              ; $77f4: $00
	ld   h, h                                        ; $77f5: $64
	nop                                              ; $77f6: $00
	ld   [hl], b                                     ; $77f7: $70
	nop                                              ; $77f8: $00
	stop                                             ; $77f9: $10 $00
	and  b                                           ; $77fb: $a0
	nop                                              ; $77fc: $00
	ld   d, b                                        ; $77fd: $50
	nop                                              ; $77fe: $00
	jr   z, jr_094_7801                              ; $77ff: $28 $00

jr_094_7801:
	jr   c, jr_094_7803                              ; $7801: $38 $00

jr_094_7803:
	call c, Call_094_5f80                            ; $7803: $dc $80 $5f
	add  b                                           ; $7806: $80
	ld   a, e                                        ; $7807: $7b
	add  d                                           ; $7808: $82
	add  hl, hl                                      ; $7809: $29
	add  b                                           ; $780a: $80
	ld   hl, $2083                                   ; $780b: $21 $83 $20
	ld   bc, $476f                                   ; $780e: $01 $6f $47
	add  d                                           ; $7811: $82
	rlca                                             ; $7812: $07
	ld   a, [bc]                                     ; $7813: $0a
	ld   [bc], a                                     ; $7814: $02
	rlca                                             ; $7815: $07
	ld   [$0003], sp                                 ; $7816: $08 $03 $00
	inc  bc                                          ; $7819: $03
	db   $10                                         ; $781a: $10
	inc  bc                                          ; $781b: $03
	nop                                              ; $781c: $00
	inc  bc                                          ; $781d: $03
	ld   [$ff83], a                                  ; $781e: $ea $83 $ff
	add  hl, sp                                      ; $7821: $39
	cp   $ff                                         ; $7822: $fe $ff
	ld   d, h                                        ; $7824: $54
	rst  $38                                         ; $7825: $ff
	nop                                              ; $7826: $00
	rst  $38                                         ; $7827: $ff
	nop                                              ; $7828: $00
	rst  $38                                         ; $7829: $ff
	nop                                              ; $782a: $00
	rst  $38                                         ; $782b: $ff
	ld   d, [hl]                                     ; $782c: $56
	nop                                              ; $782d: $00
	rlca                                             ; $782e: $07
	nop                                              ; $782f: $00
	rrca                                             ; $7830: $0f
	inc  b                                           ; $7831: $04

jr_094_7832:
	ldh  a, [c]                                      ; $7832: $f2
	ld   b, $e4                                      ; $7833: $06 $e4
	dec  bc                                          ; $7835: $0b
	inc  bc                                          ; $7836: $03
	inc  c                                           ; $7837: $0c
	db   $10                                         ; $7838: $10
	rlca                                             ; $7839: $07
	dec  b                                           ; $783a: $05
	rlca                                             ; $783b: $07
	adc  [hl]                                        ; $783c: $8e
	ld   a, a                                        ; $783d: $7f
	sbc  a                                           ; $783e: $9f
	rra                                              ; $783f: $1f
	xor  a                                           ; $7840: $af
	rrca                                             ; $7841: $0f
	call z, $a30f                                    ; $7842: $cc $0f $a3
	rra                                              ; $7845: $1f
	ld   e, a                                        ; $7846: $5f
	adc  a                                           ; $7847: $8f
	rst  $28                                         ; $7848: $ef
	ldh  a, [$6f]                                    ; $7849: $f0 $6f
	rst  $38                                         ; $784b: $ff
	rst  $20                                         ; $784c: $e7
	rst  $30                                         ; $784d: $f7
	rst  $10                                         ; $784e: $d7
	rst  $30                                         ; $784f: $f7
	or   a                                           ; $7850: $b7
	rst  $30                                         ; $7851: $f7
	ld   [hl], a                                     ; $7852: $77
	rst  $28                                         ; $7853: $ef
	push hl                                          ; $7854: $e5
	rst  $28                                         ; $7855: $ef
	db   $eb                                         ; $7856: $eb
	rst  JumpTable                                         ; $7857: $df
	sub  $03                                         ; $7858: $d6 $03
	rst  $38                                         ; $785a: $ff
	db   $fc                                         ; $785b: $fc
	add  e                                           ; $785c: $83
	cp   $81                                         ; $785d: $fe $81
	rst  $38                                         ; $785f: $ff
	ld   bc, $fffd                                   ; $7860: $01 $fd $ff
	add  b                                           ; $7863: $80
	rst  JumpTable                                         ; $7864: $df
	inc  l                                           ; $7865: $2c
	db   $db                                         ; $7866: $db
	rst  JumpTable                                         ; $7867: $df
	ccf                                              ; $7868: $3f
	cp   a                                           ; $7869: $bf
	dec  l                                           ; $786a: $2d
	rst  $38                                         ; $786b: $ff
	ld   d, b                                        ; $786c: $50

jr_094_786d:
	rst  $38                                         ; $786d: $ff
	ld   d, b                                        ; $786e: $50
	ld   d, a                                        ; $786f: $57
	adc  h                                           ; $7870: $8c
	adc  a                                           ; $7871: $8f
	inc  b                                           ; $7872: $04
	rlca                                             ; $7873: $07
	xor  h                                           ; $7874: $ac
	xor  a                                           ; $7875: $af
	ld   e, h                                        ; $7876: $5c
	ld   e, a                                        ; $7877: $5f
	ld   hl, sp-$01                                  ; $7878: $f8 $ff
	nop                                              ; $787a: $00
	rst  $38                                         ; $787b: $ff
	ld   d, b                                        ; $787c: $50
	rst  $38                                         ; $787d: $ff
	nop                                              ; $787e: $00
	rst  $38                                         ; $787f: $ff
	nop                                              ; $7880: $00
	rst  $38                                         ; $7881: $ff
	nop                                              ; $7882: $00
	rst  $38                                         ; $7883: $ff
	ld   bc, $0bff                                   ; $7884: $01 $ff $0b
	rst  $38                                         ; $7887: $ff
	rra                                              ; $7888: $1f
	rst  $38                                         ; $7889: $ff
	ld   d, $fc                                      ; $788a: $16 $fc
	ld   bc, $00fd                                   ; $788c: $01 $fd $00
	ld   a, [$fa12]                                  ; $788f: $fa $12 $fa
	cp   c                                           ; $7892: $b9
	add  c                                           ; $7893: $81
	db   $f4                                         ; $7894: $f4
	ld   c, $f2                                      ; $7895: $0e $f2
	add  sp, -$12                                    ; $7897: $e8 $ee
	add  sp, $35                                     ; $7899: $e8 $35
	add  b                                           ; $789b: $80
	pop  hl                                          ; $789c: $e1
	ld   [$1088], sp                                 ; $789d: $08 $88 $10
	ld   d, b                                        ; $78a0: $50
	inc  h                                           ; $78a1: $24
	jr   nz, jr_094_790c                             ; $78a2: $20 $68

	add  sp, -$80                                    ; $78a4: $e8 $80
	ld   a, d                                        ; $78a6: $7a
	add  hl, bc                                      ; $78a7: $09
	sub  d                                           ; $78a8: $92
	sbc  [hl]                                        ; $78a9: $9e
	sub  h                                           ; $78aa: $94
	ld   de, $1000                                   ; $78ab: $11 $00 $10
	jr   nz, jr_094_78d1                             ; $78ae: $20 $21

	jr   nz, jr_094_7832                             ; $78b0: $20 $80

	add  b                                           ; $78b2: $80
	ld   b, d                                        ; $78b3: $42
	add  d                                           ; $78b4: $82
	ld   c, d                                        ; $78b5: $4a
	add  b                                           ; $78b6: $80
	ld   c, b                                        ; $78b7: $48
	ld   bc, $d418                                   ; $78b8: $01 $18 $d4
	add  b                                           ; $78bb: $80
	ld   h, b                                        ; $78bc: $60
	ld   bc, $6c64                                   ; $78bd: $01 $64 $6c
	add  b                                           ; $78c0: $80
	ld   h, h                                        ; $78c1: $64
	add  c                                           ; $78c2: $81
	ld   h, d                                        ; $78c3: $62
	nop                                              ; $78c4: $00
	ld   c, a                                        ; $78c5: $4f
	add  c                                           ; $78c6: $81
	jp   hl                                          ; $78c7: $e9


	ld   [hl-], a                                    ; $78c8: $32
	xor  c                                           ; $78c9: $a9
	add  sp, -$1c                                    ; $78ca: $e8 $e4
	ld   [bc], a                                     ; $78cc: $02
	ld   b, $2a                                      ; $78cd: $06 $2a
	ld   l, d                                        ; $78cf: $6a
	xor  c                                           ; $78d0: $a9

jr_094_78d1:
	cp   e                                           ; $78d1: $bb
	sub  l                                           ; $78d2: $95
	or   l                                           ; $78d3: $b5
	call nc, $4add                                   ; $78d4: $d4 $dd $4a
	ld   a, d                                        ; $78d7: $7a
	ld   h, e                                        ; $78d8: $63
	ld   a, a                                        ; $78d9: $7f
	ld   [hl], c                                     ; $78da: $71
	ld   a, [de]                                     ; $78db: $1a
	ld   c, a                                        ; $78dc: $4f
	ld   a, a                                        ; $78dd: $7f
	inc  h                                           ; $78de: $24
	ld   hl, sp+$12                                  ; $78df: $f8 $12
	jr   c, jr_094_78e4                              ; $78e1: $38 $01

	ld   b, h                                        ; $78e3: $44

jr_094_78e4:
	add  b                                           ; $78e4: $80
	sub  d                                           ; $78e5: $92
	nop                                              ; $78e6: $00
	xor  c                                           ; $78e7: $a9
	nop                                              ; $78e8: $00
	ld   b, h                                        ; $78e9: $44
	adc  b                                           ; $78ea: $88
	jr   c, jr_094_786d                              ; $78eb: $38 $80

	ret  c                                           ; $78ed: $d8

	ret  nz                                          ; $78ee: $c0

	add  sp, $20                                     ; $78ef: $e8 $20
	jr   nc, jr_094_7903                             ; $78f1: $30 $10

	sbc  b                                           ; $78f3: $98
	nop                                              ; $78f4: $00
	ld   h, b                                        ; $78f5: $60
	nop                                              ; $78f6: $00
	sbc  b                                           ; $78f7: $98
	nop                                              ; $78f8: $00
	ld   b, b                                        ; $78f9: $40
	nop                                              ; $78fa: $00
	inc  a                                           ; $78fb: $3c
	add  b                                           ; $78fc: $80
	jr   nz, jr_094_7900                             ; $78fd: $20 $01

	nop                                              ; $78ff: $00

jr_094_7900:
	ld   b, b                                        ; $7900: $40
	add  e                                           ; $7901: $83
	nop                                              ; $7902: $00

jr_094_7903:
	nop                                              ; $7903: $00
	ld   [bc], a                                     ; $7904: $02
	add  e                                           ; $7905: $83
	nop                                              ; $7906: $00
	inc  bc                                          ; $7907: $03
	ld   e, a                                        ; $7908: $5f
	inc  bc                                          ; $7909: $03
	ld   [de], a                                     ; $790a: $12

jr_094_790b:
	inc  bc                                          ; $790b: $03

jr_094_790c:
	add  h                                           ; $790c: $84
	ld   bc, $0900                                   ; $790d: $01 $00 $09
	add  c                                           ; $7910: $81
	ld   bc, $0506                                   ; $7911: $01 $06 $05
	ld   bc, $ff57                                   ; $7914: $01 $57 $ff

jr_094_7917:
	add  e                                           ; $7917: $83
	rst  $38                                         ; $7918: $ff
	rst  $10                                         ; $7919: $d7
	adc  c                                           ; $791a: $89
	rst  $38                                         ; $791b: $ff
	ld   a, [de]                                     ; $791c: $1a
	ei                                               ; $791d: $fb
	inc  bc                                          ; $791e: $03
	inc  b                                           ; $791f: $04
	ld   bc, $0003                                   ; $7920: $01 $03 $00
	ld   bc, $0100                                   ; $7923: $01 $00 $01
	nop                                              ; $7926: $00
	rlca                                             ; $7927: $07
	nop                                              ; $7928: $00
	ld   a, $00                                      ; $7929: $3e $00
	ld   hl, sp+$03                                  ; $792b: $f8 $03
	jp   $e0ff                                       ; $792d: $c3 $ff $e0


	ld   hl, sp+$1b                                  ; $7930: $f8 $1b
	ld   h, $2a                                      ; $7932: $26 $2a
	ld   d, b                                        ; $7934: $50
	ld   h, b                                        ; $7935: $60
	nop                                              ; $7936: $00
	ret  nz                                          ; $7937: $c0

	add  b                                           ; $7938: $80
	rlca                                             ; $7939: $07
	add  b                                           ; $793a: $80
	ld   a, a                                        ; $793b: $7f
	nop                                              ; $793c: $00
	rst  $38                                         ; $793d: $ff
	add  b                                           ; $793e: $80
	rra                                              ; $793f: $1f
	nop                                              ; $7940: $00
	rst  $38                                         ; $7941: $ff
	add  b                                           ; $7942: $80
	rlca                                             ; $7943: $07
	add  b                                           ; $7944: $80
	ccf                                              ; $7945: $3f
	add  b                                           ; $7946: $80
	ld   a, a                                        ; $7947: $7f
	add  l                                           ; $7948: $85
	rst  $38                                         ; $7949: $ff
	add  hl, bc                                      ; $794a: $09
	jr   nc, jr_094_798b                             ; $794b: $30 $3e

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $794d: $cf
	reti                                             ; $794e: $d9


	rst  $38                                         ; $794f: $ff
	db   $e4                                         ; $7950: $e4
	db   $f4                                         ; $7951: $f4
	push af                                          ; $7952: $f5
	ld   sp, hl                                      ; $7953: $f9
	ei                                               ; $7954: $fb
	add  b                                           ; $7955: $80
	db   $fd                                         ; $7956: $fd
	add  b                                           ; $7957: $80
	cp   $80                                         ; $7958: $fe $80
	rst  $38                                         ; $795a: $ff
	inc  de                                          ; $795b: $13
	xor  d                                           ; $795c: $aa
	rst  $38                                         ; $795d: $ff
	nop                                              ; $795e: $00
	rst  $38                                         ; $795f: $ff
	nop                                              ; $7960: $00
	rst  $38                                         ; $7961: $ff
	ld   bc, $41ff                                   ; $7962: $01 $ff $41
	rst  $38                                         ; $7965: $ff
	ld   b, c                                        ; $7966: $41
	rst  $38                                         ; $7967: $ff
	ld   b, e                                        ; $7968: $43
	rst  $38                                         ; $7969: $ff

jr_094_796a:
	jp   $abff                                       ; $796a: $c3 $ff $ab


	rst  $38                                         ; $796d: $ff
	ld   a, a                                        ; $796e: $7f
	rst  $38                                         ; $796f: $ff
	add  b                                           ; $7970: $80
	ld   a, [$fd80]                                  ; $7971: $fa $80 $fd
	add  b                                           ; $7974: $80
	ld   a, [$f580]                                  ; $7975: $fa $80 $f5
	add  b                                           ; $7978: $80
	ld   a, [$f580]                                  ; $7979: $fa $80 $f5
	inc  bc                                          ; $797c: $03
	and  a                                           ; $797d: $a7

jr_094_797e:
	sbc  d                                           ; $797e: $9a
	ld   d, b                                        ; $797f: $50
	ld   d, h                                        ; $7980: $54
	add  b                                           ; $7981: $80
	sub  d                                           ; $7982: $92
	inc  bc                                          ; $7983: $03
	ld   [hl], h                                     ; $7984: $74
	inc  [hl]                                        ; $7985: $34
	and  b                                           ; $7986: $a0
	xor  b                                           ; $7987: $a8
	add  b                                           ; $7988: $80
	jr   nz, jr_094_790b                             ; $7989: $20 $80

jr_094_798b:
	and  b                                           ; $798b: $a0
	inc  b                                           ; $798c: $04
	ld   hl, $7b20                                   ; $798d: $21 $20 $7b
	inc  h                                           ; $7990: $24
	inc  [hl]                                        ; $7991: $34
	add  b                                           ; $7992: $80
	inc  h                                           ; $7993: $24
	add  b                                           ; $7994: $80
	jr   nz, jr_094_7917                             ; $7995: $20 $80

	nop                                              ; $7997: $00
	add  b                                           ; $7998: $80
	ld   bc, $0080                                   ; $7999: $01 $80 $00
	inc  bc                                          ; $799c: $03
	ld   bc, $0181                                   ; $799d: $01 $81 $01
	cpl                                              ; $79a0: $2f
	add  c                                           ; $79a1: $81
	jr   @+$0e                                       ; $79a2: $18 $0c

	rra                                              ; $79a4: $1f
	inc  e                                           ; $79a5: $1c
	ld   e, h                                        ; $79a6: $5c
	sbc  h                                           ; $79a7: $9c
	sub  b                                           ; $79a8: $90
	add  b                                           ; $79a9: $80
	adc  c                                           ; $79aa: $89
	ld   e, [hl]                                     ; $79ab: $5e
	sbc  b                                           ; $79ac: $98
	rst  JumpTable                                         ; $79ad: $df
	jp   nc, Jump_094_67d1                           ; $79ae: $d2 $d1 $67

	add  c                                           ; $79b1: $81
	db   $f4                                         ; $79b2: $f4
	ld   bc, $76b7                                   ; $79b3: $01 $b7 $76
	add  b                                           ; $79b6: $80
	ld   a, d                                        ; $79b7: $7a
	jr   nz, jr_094_7a35                             ; $79b8: $20 $7b

	dec  sp                                          ; $79ba: $3b
	dec  a                                           ; $79bb: $3d
	ld   a, l                                        ; $79bc: $7d
	ld   e, l                                        ; $79bd: $5d
	ld   a, l                                        ; $79be: $7d
	cp   $be                                         ; $79bf: $fe $be
	jr   jr_094_7a3c                                 ; $79c1: $18 $79

	ld   e, l                                        ; $79c3: $5d
	ld   a, h                                        ; $79c4: $7c
	ldh  a, [$30]                                    ; $79c5: $f0 $30
	ld   h, $27                                      ; $79c7: $26 $27
	cp   [hl]                                        ; $79c9: $be
	rra                                              ; $79ca: $1f
	ld   b, $3f                                      ; $79cb: $06 $3f
	or   l                                           ; $79cd: $b5
	cp   [hl]                                        ; $79ce: $be
	xor  d                                           ; $79cf: $aa
	call c, $c484                                    ; $79d0: $dc $84 $c4
	inc  b                                           ; $79d3: $04
	nop                                              ; $79d4: $00
	ldh  a, [c]                                      ; $79d5: $f2
	di                                               ; $79d6: $f3
	ld   a, b                                        ; $79d7: $78
	ld   a, c                                        ; $79d8: $79
	nop                                              ; $79d9: $00
	add  b                                           ; $79da: $80
	pop  bc                                          ; $79db: $c1
	dec  bc                                          ; $79dc: $0b
	nop                                              ; $79dd: $00
	ld   b, $08                                      ; $79de: $06 $08
	adc  l                                           ; $79e0: $8d
	ld   b, h                                        ; $79e1: $44
	inc  [hl]                                        ; $79e2: $34
	nop                                              ; $79e3: $00
	adc  b                                           ; $79e4: $88
	nop                                              ; $79e5: $00
	ld   h, b                                        ; $79e6: $60
	nop                                              ; $79e7: $00
	jr   jr_094_796a                                 ; $79e8: $18 $80

	ret  nz                                          ; $79ea: $c0

	add  b                                           ; $79eb: $80
	ldh  a, [$80]                                    ; $79ec: $f0 $80
	ld   a, b                                        ; $79ee: $78
	add  b                                           ; $79ef: $80
	jr   jr_094_79f3                                 ; $79f0: $18 $01

	nop                                              ; $79f2: $00

jr_094_79f3:
	cp   [hl]                                        ; $79f3: $be
	add  l                                           ; $79f4: $85
	nop                                              ; $79f5: $00
	nop                                              ; $79f6: $00
	jr   nz, jr_094_797e                             ; $79f7: $20 $85

	nop                                              ; $79f9: $00
	nop                                              ; $79fa: $00
	ld   l, c                                        ; $79fb: $69
	add  c                                           ; $79fc: $81
	nop                                              ; $79fd: $00
	nop                                              ; $79fe: $00
	ld   c, $82                                      ; $79ff: $0e $82
	nop                                              ; $7a01: $00
	ld   bc, $0f08                                   ; $7a02: $01 $08 $0f
	add  b                                           ; $7a05: $80
	ld   [$0481], sp                                 ; $7a06: $08 $81 $04
	nop                                              ; $7a09: $00
	ld   b, $81                                      ; $7a0a: $06 $81
	rst  $38                                         ; $7a0c: $ff
	inc  c                                           ; $7a0d: $0c
	cp   a                                           ; $7a0e: $bf
	rst  $38                                         ; $7a0f: $ff
	rra                                              ; $7a10: $1f
	rst  $38                                         ; $7a11: $ff
	dec  bc                                          ; $7a12: $0b
	rst  $38                                         ; $7a13: $ff
	ld   bc, $007f                                   ; $7a14: $01 $7f $00
	ld   a, a                                        ; $7a17: $7f
	nop                                              ; $7a18: $00
	ld   a, a                                        ; $7a19: $7f
	push de                                          ; $7a1a: $d5
	add  b                                           ; $7a1b: $80
	ld   a, a                                        ; $7a1c: $7f
	inc  bc                                          ; $7a1d: $03
	rst  $38                                         ; $7a1e: $ff
	add  e                                           ; $7a1f: $83
	rst  $38                                         ; $7a20: $ff
	ld   a, h                                        ; $7a21: $7c
	add  b                                           ; $7a22: $80
	rst  $38                                         ; $7a23: $ff
	rlca                                             ; $7a24: $07
	add  e                                           ; $7a25: $83
	db   $e3                                         ; $7a26: $e3
	rlca                                             ; $7a27: $07
	and  h                                           ; $7a28: $a4
	rrca                                             ; $7a29: $0f
	jp   $cc3c                                       ; $7a2a: $c3 $3c $cc


	add  l                                           ; $7a2d: $85
	rst  $38                                         ; $7a2e: $ff
	ld   [bc], a                                     ; $7a2f: $02
	ccf                                              ; $7a30: $3f
	rst  $38                                         ; $7a31: $ff
	ccf                                              ; $7a32: $3f
	add  b                                           ; $7a33: $80
	pop  hl                                          ; $7a34: $e1

jr_094_7a35:
	add  b                                           ; $7a35: $80
	rlca                                             ; $7a36: $07
	add  b                                           ; $7a37: $80
	rra                                              ; $7a38: $1f
	sub  e                                           ; $7a39: $93
	rst  $38                                         ; $7a3a: $ff
	add  b                                           ; $7a3b: $80

jr_094_7a3c:
	ldh  [$80], a                                    ; $7a3c: $e0 $80
	rra                                              ; $7a3e: $1f
	rla                                              ; $7a3f: $17
	pop  bc                                          ; $7a40: $c1
	rst  $38                                         ; $7a41: $ff
	ld   hl, $9fff                                   ; $7a42: $21 $ff $9f
	rst  $38                                         ; $7a45: $ff
	ld   l, d                                        ; $7a46: $6a
	rst  $38                                         ; $7a47: $ff
	pop  bc                                          ; $7a48: $c1
	rst  $38                                         ; $7a49: $ff
	pop  bc                                          ; $7a4a: $c1
	rst  $38                                         ; $7a4b: $ff
	pop  bc                                          ; $7a4c: $c1
	rst  $38                                         ; $7a4d: $ff
	pop  bc                                          ; $7a4e: $c1
	rst  $38                                         ; $7a4f: $ff
	ret  nz                                          ; $7a50: $c0

	rst  $38                                         ; $7a51: $ff
	ret  nz                                          ; $7a52: $c0

	rst  $38                                         ; $7a53: $ff
	ldh  [rIE], a                                    ; $7a54: $e0 $ff
	rra                                              ; $7a56: $1f
	ld   [$f580], a                                  ; $7a57: $ea $80 $f5
	add  b                                           ; $7a5a: $80
	ld   a, [$f580]                                  ; $7a5b: $fa $80 $f5
	add  b                                           ; $7a5e: $80
	cp   $80                                         ; $7a5f: $fe $80
	db   $fd                                         ; $7a61: $fd
	rlca                                             ; $7a62: $07
	ld   a, [hl]                                     ; $7a63: $7e
	cp   $3f                                         ; $7a64: $fe $3f
	rst  $38                                         ; $7a66: $ff
	sub  b                                           ; $7a67: $90
	and  b                                           ; $7a68: $a0
	ld   b, b                                        ; $7a69: $40
	nop                                              ; $7a6a: $00

jr_094_7a6b:
	add  b                                           ; $7a6b: $80
	add  b                                           ; $7a6c: $80
	inc  l                                           ; $7a6d: $2c
	ld   h, b                                        ; $7a6e: $60
	ld   b, b                                        ; $7a6f: $40
	cp   b                                           ; $7a70: $b8
	and  b                                           ; $7a71: $a0
	ld   d, c                                        ; $7a72: $51
	ld   d, b                                        ; $7a73: $50
	and  [hl]                                        ; $7a74: $a6

jr_094_7a75:
	xor  d                                           ; $7a75: $aa
	ld   d, b                                        ; $7a76: $50
	ld   d, h                                        ; $7a77: $54
	adc  d                                           ; $7a78: $8a
	ld   bc, $0041                                   ; $7a79: $01 $41 $00
	ld   h, [hl]                                     ; $7a7c: $66
	nop                                              ; $7a7d: $00
	jr   jr_094_7a80                                 ; $7a7e: $18 $00

jr_094_7a80:
	ld   a, [bc]                                     ; $7a80: $0a
	nop                                              ; $7a81: $00
	add  b                                           ; $7a82: $80
	nop                                              ; $7a83: $00
	ld   [bc], a                                     ; $7a84: $02
	nop                                              ; $7a85: $00
	ld   b, a                                        ; $7a86: $47
	nop                                              ; $7a87: $00
	dec  b                                           ; $7a88: $05
	add  b                                           ; $7a89: $80
	ld   [$0614], sp                                 ; $7a8a: $08 $14 $06
	inc  h                                           ; $7a8d: $24
	ld   b, $c0                                      ; $7a8e: $06 $c0
	jr   nz, jr_094_7a75                             ; $7a90: $20 $e3

	ld   a, e                                        ; $7a92: $7b
	ldh  [$c1], a                                    ; $7a93: $e0 $c1
	ld   a, a                                        ; $7a95: $7f
	ld   [hl+], a                                    ; $7a96: $22
	ld   a, a                                        ; $7a97: $7f
	inc  a                                           ; $7a98: $3c
	rst  $38                                         ; $7a99: $ff
	cp   a                                           ; $7a9a: $bf
	add  b                                           ; $7a9b: $80
	ld   a, a                                        ; $7a9c: $7f
	add  b                                           ; $7a9d: $80
	ccf                                              ; $7a9e: $3f
	ld   bc, $3f7f                                   ; $7a9f: $01 $7f $3f
	add  b                                           ; $7aa2: $80
	ld   a, a                                        ; $7aa3: $7f
	ld   bc, $7fff                                   ; $7aa4: $01 $ff $7f
	add  c                                           ; $7aa7: $81
	rst  $38                                         ; $7aa8: $ff
	inc  b                                           ; $7aa9: $04
	ret  z                                           ; $7aaa: $c8

	jp   hl                                          ; $7aab: $e9


	db   $d3                                         ; $7aac: $d3
	ld   a, [$80f6]                                  ; $7aad: $fa $f6 $80
	cp   $01                                         ; $7ab0: $fe $01
	rst  $38                                         ; $7ab2: $ff
	cp   $80                                         ; $7ab3: $fe $80
	pop  af                                          ; $7ab5: $f1
	add  b                                           ; $7ab6: $80
	ldh  [$80], a                                    ; $7ab7: $e0 $80
	ldh  a, [rAUD3LEN]                               ; $7ab9: $f0 $1b
	pop  af                                          ; $7abb: $f1
	adc  l                                           ; $7abc: $8d
	ld   [$1888], sp                                 ; $7abd: $08 $88 $18
	dec  de                                          ; $7ac0: $1b
	ld   bc, $ff02                                   ; $7ac1: $01 $02 $ff
	inc  bc                                          ; $7ac4: $03
	rst  $38                                         ; $7ac5: $ff
	di                                               ; $7ac6: $f3
	ld   a, a                                        ; $7ac7: $7f
	ld   c, h                                        ; $7ac8: $4c
	rst  $38                                         ; $7ac9: $ff
	cp   a                                           ; $7aca: $bf
	rst  $38                                         ; $7acb: $ff
	db   $fc                                         ; $7acc: $fc
	jr   jr_094_7a6b                                 ; $7acd: $18 $9c

	or   b                                           ; $7acf: $b0
	jr   nc, @-$0e                                   ; $7ad0: $30 $f0

	or   b                                           ; $7ad2: $b0
	ldh  a, [rAUD1SWEEP]                             ; $7ad3: $f0 $10
	ld   [hl], b                                     ; $7ad5: $70
	or   b                                           ; $7ad6: $b0
	add  b                                           ; $7ad7: $80
	ldh  a, [$81]                                    ; $7ad8: $f0 $81
	db   $e4                                         ; $7ada: $e4
	nop                                              ; $7adb: $00
	sbc  a                                           ; $7adc: $9f
	add  [hl]                                        ; $7add: $86
	nop                                              ; $7ade: $00
	add  l                                           ; $7adf: $85
	add  b                                           ; $7ae0: $80
	nop                                              ; $7ae1: $00
	ldh  [c], a                                      ; $7ae2: $e2
	add  b                                           ; $7ae3: $80
	add  h                                           ; $7ae4: $84
	add  b                                           ; $7ae5: $80
	and  d                                           ; $7ae6: $a2
	add  b                                           ; $7ae7: $80
	xor  d                                           ; $7ae8: $aa
	ld   bc, $bfbe                                   ; $7ae9: $01 $be $bf
	add  b                                           ; $7aec: $80
	or   $80                                         ; $7aed: $f6 $80
	jp   nc, $d180                                   ; $7aef: $d2 $80 $d1

	inc  de                                          ; $7af2: $13
	add  c                                           ; $7af3: $81
	ld   [hl], h                                     ; $7af4: $74
	ld   a, a                                        ; $7af5: $7f
	ldh  [$3f], a                                    ; $7af6: $e0 $3f
	jr   z, jr_094_7b39                              ; $7af8: $28 $3f

	inc  a                                           ; $7afa: $3c
	ccf                                              ; $7afb: $3f
	db   $fc                                         ; $7afc: $fc
	rra                                              ; $7afd: $1f
	inc  e                                           ; $7afe: $1c
	rra                                              ; $7aff: $1f
	ld   a, [hl]                                     ; $7b00: $7e
	rrca                                             ; $7b01: $0f
	ld   c, $0f                                      ; $7b02: $0e $0f
	ld   d, c                                        ; $7b04: $51
	ld   [hl], c                                     ; $7b05: $71
	pop  af                                          ; $7b06: $f1
	add  c                                           ; $7b07: $81
	db   $e3                                         ; $7b08: $e3
	ld   a, [bc]                                     ; $7b09: $0a
	ld   h, e                                        ; $7b0a: $63
	rst  $30                                         ; $7b0b: $f7
	or   $fe                                         ; $7b0c: $f6 $fe
	or   b                                           ; $7b0e: $b0
	pop  af                                          ; $7b0f: $f1
	pop  bc                                          ; $7b10: $c1
	rrca                                             ; $7b11: $0f
	ld   c, $ff                                      ; $7b12: $0e $ff
	ld   bc, $ff81                                   ; $7b14: $01 $81 $ff
	ld   bc, $ffe3                                   ; $7b17: $01 $e3 $ff
	add  b                                           ; $7b1a: $80
	sbc  a                                           ; $7b1b: $9f
	ld   [$7c03], sp                                 ; $7b1c: $08 $03 $7c
	ld   e, h                                        ; $7b1f: $5c
	ld   sp, hl                                      ; $7b20: $f9
	add  hl, sp                                      ; $7b21: $39
	rst  $38                                         ; $7b22: $ff
	cp   $ff                                         ; $7b23: $fe $ff
	cp   $84                                         ; $7b25: $fe $84
	rst  $38                                         ; $7b27: $ff
	add  b                                           ; $7b28: $80
	ld   a, a                                        ; $7b29: $7f
	add  e                                           ; $7b2a: $83
	rst  $38                                         ; $7b2b: $ff
	ld   [bc], a                                     ; $7b2c: $02
	ccf                                              ; $7b2d: $3f
	rst  $38                                         ; $7b2e: $ff
	ccf                                              ; $7b2f: $3f
	add  e                                           ; $7b30: $83
	rst  $38                                         ; $7b31: $ff
	nop                                              ; $7b32: $00
	cp   $81                                         ; $7b33: $fe $81
	rst  $38                                         ; $7b35: $ff
	nop                                              ; $7b36: $00
	db   $fd                                         ; $7b37: $fd
	add  b                                           ; $7b38: $80

jr_094_7b39:
	cp   $00                                         ; $7b39: $fe $00
	db   $fd                                         ; $7b3b: $fd
	add  b                                           ; $7b3c: $80
	ld   sp, hl                                      ; $7b3d: $f9
	ld   e, h                                        ; $7b3e: $5c
	ld   bc, $008a                                   ; $7b3f: $01 $8a $00
	inc  b                                           ; $7b42: $04
	inc  b                                           ; $7b43: $04
	nop                                              ; $7b44: $00
	ld   [bc], a                                     ; $7b45: $02
	nop                                              ; $7b46: $00
	inc  b                                           ; $7b47: $04
	add  b                                           ; $7b48: $80
	dec  b                                           ; $7b49: $05
	dec  c                                           ; $7b4a: $0d
	ld   bc, $6202                                   ; $7b4b: $01 $02 $62
	ld   b, d                                        ; $7b4e: $42
	jr   jr_094_7b5b                                 ; $7b4f: $18 $0a

	inc  c                                           ; $7b51: $0c
	ld   h, $06                                      ; $7b52: $26 $06
	rla                                              ; $7b54: $17
	ld   b, a                                        ; $7b55: $47
	inc  bc                                          ; $7b56: $03
	inc  hl                                          ; $7b57: $23
	ld   l, a                                        ; $7b58: $6f
	add  d                                           ; $7b59: $82
	nop                                              ; $7b5a: $00

jr_094_7b5b:
	nop                                              ; $7b5b: $00
	ld   [bc], a                                     ; $7b5c: $02
	add  c                                           ; $7b5d: $81
	nop                                              ; $7b5e: $00
	inc  bc                                          ; $7b5f: $03
	dec  b                                           ; $7b60: $05
	ld   b, c                                        ; $7b61: $41
	ld   bc, $8060                                   ; $7b62: $01 $60 $80
	ld   b, b                                        ; $7b65: $40
	ld   b, $10                                      ; $7b66: $06 $10
	nop                                              ; $7b68: $00
	ld   [$8202], sp                                 ; $7b69: $08 $02 $82
	and  d                                           ; $7b6c: $a2
	ldh  [c], a                                      ; $7b6d: $e2
	add  b                                           ; $7b6e: $80
	or   $80                                         ; $7b6f: $f6 $80
	ld   [hl], a                                     ; $7b71: $77
	add  d                                           ; $7b72: $82
	ld   a, a                                        ; $7b73: $7f

jr_094_7b74:
	add  c                                           ; $7b74: $81
	rst  $38                                         ; $7b75: $ff
	add  [hl]                                        ; $7b76: $86
	nop                                              ; $7b77: $00
	ld   b, $44                                      ; $7b78: $06 $44
	ld   b, b                                        ; $7b7a: $40
	ld   c, b                                        ; $7b7b: $48
	nop                                              ; $7b7c: $00
	sub  c                                           ; $7b7d: $91
	add  l                                           ; $7b7e: $85

Call_094_7b7f:
	and  a                                           ; $7b7f: $a7
	add  d                                           ; $7b80: $82
	ld   [bc], a                                     ; $7b81: $02
	add  b                                           ; $7b82: $80
	add  h                                           ; $7b83: $84
	add  b                                           ; $7b84: $80
	ret  z                                           ; $7b85: $c8

	add  b                                           ; $7b86: $80
	reti                                             ; $7b87: $d9


	add  b                                           ; $7b88: $80
	db   $d3                                         ; $7b89: $d3
	add  c                                           ; $7b8a: $81
	rst  $38                                         ; $7b8b: $ff
	add  b                                           ; $7b8c: $80
	halt                                             ; $7b8d: $76
	adc  b                                           ; $7b8e: $88
	nop                                              ; $7b8f: $00
	ld   b, $82                                      ; $7b90: $06 $82
	sub  b                                           ; $7b92: $90
	add  h                                           ; $7b93: $84
	ld   [hl+], a                                    ; $7b94: $22
	ld   a, [bc]                                     ; $7b95: $0a
	ld   d, b                                        ; $7b96: $50
	ld   de, $0084                                   ; $7b97: $11 $84 $00
	add  b                                           ; $7b9a: $80
	db   $10                                         ; $7b9b: $10
	add  b                                           ; $7b9c: $80
	ld   [hl], c                                     ; $7b9d: $71
	add  b                                           ; $7b9e: $80
	ei                                               ; $7b9f: $fb
	add  b                                           ; $7ba0: $80
	sbc  $00                                         ; $7ba1: $de $00
	rst  $38                                         ; $7ba3: $ff
	adc  e                                           ; $7ba4: $8b
	nop                                              ; $7ba5: $00
	nop                                              ; $7ba6: $00
	add  b                                           ; $7ba7: $80
	add  b                                           ; $7ba8: $80
	nop                                              ; $7ba9: $00
	ld   a, [bc]                                     ; $7baa: $0a
	ld   [bc], a                                     ; $7bab: $02
	db   $10                                         ; $7bac: $10
	inc  h                                           ; $7bad: $24
	ld   b, d                                        ; $7bae: $42
	ld   a, [bc]                                     ; $7baf: $0a
	ld   [de], a                                     ; $7bb0: $12
	db   $10                                         ; $7bb1: $10
	add  c                                           ; $7bb2: $81
	add  b                                           ; $7bb3: $80
	ld   b, $04                                      ; $7bb4: $06 $04
	add  b                                           ; $7bb6: $80
	ld   [$0980], sp                                 ; $7bb7: $08 $80 $09
	ld   [bc], a                                     ; $7bba: $02
	sub  c                                           ; $7bbb: $91
	ld   de, $8201                                   ; $7bbc: $11 $01 $82
	nop                                              ; $7bbf: $00
	add  c                                           ; $7bc0: $81
	ld   bc, $0305                                   ; $7bc1: $01 $05 $03
	ld   [bc], a                                     ; $7bc4: $02
	inc  b                                           ; $7bc5: $04
	dec  b                                           ; $7bc6: $05
	add  hl, bc                                      ; $7bc7: $09
	ld   [$1280], sp                                 ; $7bc8: $08 $80 $12
	add  d                                           ; $7bcb: $82
	inc  b                                           ; $7bcc: $04
	add  b                                           ; $7bcd: $80
	ld   [$0081], sp                                 ; $7bce: $08 $81 $00
	nop                                              ; $7bd1: $00
	ld   b, b                                        ; $7bd2: $40
	add  h                                           ; $7bd3: $84
	ld   b, d                                        ; $7bd4: $42
	add  b                                           ; $7bd5: $80
	ld   b, b                                        ; $7bd6: $40
	ld   b, $43                                      ; $7bd7: $06 $43
	ld   c, [hl]                                     ; $7bd9: $4e
	ld   c, h                                        ; $7bda: $4c
	ld   b, [hl]                                     ; $7bdb: $46
	ld   c, [hl]                                     ; $7bdc: $4e
	ld   e, d                                        ; $7bdd: $5a
	ld   d, d                                        ; $7bde: $52
	add  c                                           ; $7bdf: $81
	ld   l, d                                        ; $7be0: $6a
	ld   a, [bc]                                     ; $7be1: $0a
	ld   l, e                                        ; $7be2: $6b
	ld   [hl], h                                     ; $7be3: $74
	halt                                             ; $7be4: $76
	ld   c, b                                        ; $7be5: $48
	ld   b, b                                        ; $7be6: $40
	ld   a, b                                        ; $7be7: $78
	ld   [hl], h                                     ; $7be8: $74
	ld   h, b                                        ; $7be9: $60
	ld   l, b                                        ; $7bea: $68
	nop                                              ; $7beb: $00
	jr   nc, jr_094_7b74                             ; $7bec: $30 $86

	nop                                              ; $7bee: $00
	add  c                                           ; $7bef: $81
	add  b                                           ; $7bf0: $80
	inc  bc                                          ; $7bf1: $03
	and  b                                           ; $7bf2: $a0
	add  b                                           ; $7bf3: $80
	sub  b                                           ; $7bf4: $90
	add  b                                           ; $7bf5: $80
	add  b                                           ; $7bf6: $80
	and  b                                           ; $7bf7: $a0
	add  b                                           ; $7bf8: $80
	ld   h, b                                        ; $7bf9: $60
	nop                                              ; $7bfa: $00
	ld   hl, sp-$7f                                  ; $7bfb: $f8 $81
	ldh  a, [rTIMA]                                  ; $7bfd: $f0 $05
	db   $fc                                         ; $7bff: $fc
	ld   hl, sp-$06                                  ; $7c00: $f8 $fa
	ld   hl, sp-$0d                                  ; $7c02: $f8 $f3
	ldh  a, [c]                                      ; $7c04: $f2
	add  b                                           ; $7c05: $80
	rst  $20                                         ; $7c06: $e7
	ld   [$c787], sp                                 ; $7c07: $08 $87 $c7
	ld   d, b                                        ; $7c0a: $50
	sub  a                                           ; $7c0b: $97
	xor  a                                           ; $7c0c: $af
	cpl                                              ; $7c0d: $2f
	rla                                              ; $7c0e: $17
	ld   e, a                                        ; $7c0f: $5f
	or   b                                           ; $7c10: $b0
	add  e                                           ; $7c11: $83
	nop                                              ; $7c12: $00
	inc  d                                           ; $7c13: $14

jr_094_7c14:
	add  b                                           ; $7c14: $80
	nop                                              ; $7c15: $00
	ldh  a, [$80]                                    ; $7c16: $f0 $80
	adc  h                                           ; $7c18: $8c
	and  b                                           ; $7c19: $a0
	ld   [hl+], a                                    ; $7c1a: $22
	inc  [hl]                                        ; $7c1b: $34
	dec  a                                           ; $7c1c: $3d
	ld   l, [hl]                                     ; $7c1d: $6e
	ld   e, b                                        ; $7c1e: $58
	ld   a, a                                        ; $7c1f: $7f
	ld   a, $ff                                      ; $7c20: $3e $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c22: $cf
	rst  $38                                         ; $7c23: $ff
	add  hl, sp                                      ; $7c24: $39
	rst  $38                                         ; $7c25: $ff
	ld   [hl], a                                     ; $7c26: $77
	rst  $38                                         ; $7c27: $ff
	cp   $83                                         ; $7c28: $fe $83
	rst  $38                                         ; $7c2a: $ff
	adc  h                                           ; $7c2b: $8c
	nop                                              ; $7c2c: $00
	dec  bc                                          ; $7c2d: $0b
	add  b                                           ; $7c2e: $80
	nop                                              ; $7c2f: $00
	ld   h, b                                        ; $7c30: $60
	add  b                                           ; $7c31: $80
	jr   jr_094_7c14                                 ; $7c32: $18 $e0

	add  [hl]                                        ; $7c34: $86
	ld   hl, sp-$1f                                  ; $7c35: $f8 $e1
	cp   $fa                                         ; $7c37: $fe $fa
	db   $fc                                         ; $7c39: $fc
	add  b                                           ; $7c3a: $80
	db   $fd                                         ; $7c3b: $fd
	inc  b                                           ; $7c3c: $04
	dec  hl                                          ; $7c3d: $2b
	ei                                               ; $7c3e: $fb
	db   $d3                                         ; $7c3f: $d3
	ei                                               ; $7c40: $fb
	rlca                                             ; $7c41: $07
	add  e                                           ; $7c42: $83
	nop                                              ; $7c43: $00
	ld   [$0080], sp                                 ; $7c44: $08 $80 $00
	ld   h, b                                        ; $7c47: $60
	nop                                              ; $7c48: $00
	inc  e                                           ; $7c49: $1c
	ldh  [$e6], a                                    ; $7c4a: $e0 $e6
	db   $fc                                         ; $7c4c: $fc
	ei                                               ; $7c4d: $fb
	add  e                                           ; $7c4e: $83
	cp   $82                                         ; $7c4f: $fe $82
	rst  $38                                         ; $7c51: $ff
	nop                                              ; $7c52: $00
	ei                                               ; $7c53: $fb
	add  l                                           ; $7c54: $85
	rst  $38                                         ; $7c55: $ff
	nop                                              ; $7c56: $00
	rlca                                             ; $7c57: $07
	sub  c                                           ; $7c58: $91
	nop                                              ; $7c59: $00
	nop                                              ; $7c5a: $00
	add  b                                           ; $7c5b: $80
	add  e                                           ; $7c5c: $83
	nop                                              ; $7c5d: $00
	nop                                              ; $7c5e: $00
	ret  nz                                          ; $7c5f: $c0

	add  e                                           ; $7c60: $83
	add  b                                           ; $7c61: $80
	inc  bc                                          ; $7c62: $03
	call nz, $0503                                   ; $7c63: $c4 $03 $05
	ld   bc, $0082                                   ; $7c66: $01 $82 $00
	nop                                              ; $7c69: $00
	inc  b                                           ; $7c6a: $04
	add  c                                           ; $7c6b: $81
	ld   bc, $0d01                                   ; $7c6c: $01 $01 $0d
	inc  b                                           ; $7c6f: $04
	add  b                                           ; $7c70: $80
	ld   b, $05                                      ; $7c71: $06 $05
	ld   e, $0e                                      ; $7c73: $1e $0e
	cpl                                              ; $7c75: $2f
	rrca                                             ; $7c76: $0f
	rst  JumpTable                                         ; $7c77: $df
	rra                                              ; $7c78: $1f
	add  b                                           ; $7c79: $80
	ld   e, a                                        ; $7c7a: $5f
	add  h                                           ; $7c7b: $84
	rst  JumpTable                                         ; $7c7c: $df
	add  b                                           ; $7c7d: $80
	sbc  $00                                         ; $7c7e: $de $00
	rst  $38                                         ; $7c80: $ff
	adc  e                                           ; $7c81: $8b
	nop                                              ; $7c82: $00
	ld   b, $fe                                      ; $7c83: $06 $fe
	nop                                              ; $7c85: $00
	ld   hl, sp-$04                                  ; $7c86: $f8 $fc
	ld   hl, sp-$04                                  ; $7c88: $f8 $fc
	db   $fd                                         ; $7c8a: $fd
	add  h                                           ; $7c8b: $84
	db   $fc                                         ; $7c8c: $fc
	add  e                                           ; $7c8d: $83
	cp   $00                                         ; $7c8e: $fe $00
	db   $fd                                         ; $7c90: $fd
	adc  e                                           ; $7c91: $8b
	nop                                              ; $7c92: $00
	ld   bc, $00ff                                   ; $7c93: $01 $ff $00
	adc  d                                           ; $7c96: $8a
	rst  $38                                         ; $7c97: $ff
	inc  b                                           ; $7c98: $04
	rra                                              ; $7c99: $1f
	rst  $38                                         ; $7c9a: $ff
	db   $e3                                         ; $7c9b: $e3
	rst  $38                                         ; $7c9c: $ff
	inc  bc                                          ; $7c9d: $03
	adc  e                                           ; $7c9e: $8b
	nop                                              ; $7c9f: $00
	ld   bc, $0007                                   ; $7ca0: $01 $07 $00
	add  d                                           ; $7ca3: $82
	inc  bc                                          ; $7ca4: $03
	nop                                              ; $7ca5: $00
	ld   bc, $0381                                   ; $7ca6: $01 $81 $03
	nop                                              ; $7ca9: $00
	ld   b, $85                                      ; $7caa: $06 $85
	ld   bc, $0200                                   ; $7cac: $01 $00 $02
	sub  c                                           ; $7caf: $91
	nop                                              ; $7cb0: $00
	add  b                                           ; $7cb1: $80
	add  b                                           ; $7cb2: $80
	add  hl, bc                                      ; $7cb3: $09
	ret  nz                                          ; $7cb4: $c0

	ld   b, b                                        ; $7cb5: $40
	ld   h, b                                        ; $7cb6: $60
	and  b                                           ; $7cb7: $a0
	ld   a, c                                        ; $7cb8: $79
	add  hl, bc                                      ; $7cb9: $09
	cpl                                              ; $7cba: $2f
	stop                                             ; $7cbb: $10 $00
	rrca                                             ; $7cbd: $0f
	adc  d                                           ; $7cbe: $8a
	inc  bc                                          ; $7cbf: $03
	add  c                                           ; $7cc0: $81
	rlca                                             ; $7cc1: $07
	ld   bc, $0e06                                   ; $7cc2: $01 $06 $0e
	add  b                                           ; $7cc5: $80
	inc  c                                           ; $7cc6: $0c
	dec  c                                           ; $7cc7: $0d
	add  hl, bc                                      ; $7cc8: $09
	add  hl, de                                      ; $7cc9: $19
	inc  de                                          ; $7cca: $13
	inc  sp                                          ; $7ccb: $33
	daa                                              ; $7ccc: $27
	ld   h, e                                        ; $7ccd: $63
	ld   c, e                                        ; $7cce: $4b
	jp   $8792                                       ; $7ccf: $c3 $92 $87


	ld   h, h                                        ; $7cd2: $64
	ld   c, [hl]                                     ; $7cd3: $4e
	ret  nz                                          ; $7cd4: $c0

	rrca                                             ; $7cd5: $0f
	add  e                                           ; $7cd6: $83
	nop                                              ; $7cd7: $00
	nop                                              ; $7cd8: $00
	inc  b                                           ; $7cd9: $04
	add  c                                           ; $7cda: $81
	ld   [bc], a                                     ; $7cdb: $02
	nop                                              ; $7cdc: $00
	ld   a, [bc]                                     ; $7cdd: $0a
	add  e                                           ; $7cde: $83
	ld   b, $00                                      ; $7cdf: $06 $00
	ld   d, $80                                      ; $7ce1: $16 $80
	ld   c, $01                                      ; $7ce3: $0e $01
	dec  c                                           ; $7ce5: $0d
	dec  l                                           ; $7ce6: $2d
	add  e                                           ; $7ce7: $83
	dec  e                                           ; $7ce8: $1d
	nop                                              ; $7ce9: $00
	ld   a, l                                        ; $7cea: $7d
	add  b                                           ; $7ceb: $80
	dec  sp                                          ; $7cec: $3b
	add  c                                           ; $7ced: $81
	dec  hl                                          ; $7cee: $2b
	nop                                              ; $7cef: $00
	adc  e                                           ; $7cf0: $8b
	add  b                                           ; $7cf1: $80
	xor  d                                           ; $7cf2: $aa
	adc  b                                           ; $7cf3: $88
	rst  $38                                         ; $7cf4: $ff
	inc  b                                           ; $7cf5: $04
	ret  nz                                          ; $7cf6: $c0

	rst  JumpTable                                         ; $7cf7: $df
	jr   nz, jr_094_7d3a                             ; $7cf8: $20 $40

	add  b                                           ; $7cfa: $80
	add  d                                           ; $7cfb: $82
	nop                                              ; $7cfc: $00
	ld   [bc], a                                     ; $7cfd: $02
	ccf                                              ; $7cfe: $3f
	jr   c, @-$06                                    ; $7cff: $38 $f8

	add  b                                           ; $7d01: $80
	ret  nz                                          ; $7d02: $c0

	ld   bc, $609f                                   ; $7d03: $01 $9f $60
	add  c                                           ; $7d06: $81
	nop                                              ; $7d07: $00
	inc  bc                                          ; $7d08: $03
	rst  $38                                         ; $7d09: $ff
	xor  d                                           ; $7d0a: $aa
	ld   d, h                                        ; $7d0b: $54
	nop                                              ; $7d0c: $00
	add  b                                           ; $7d0d: $80
	add  b                                           ; $7d0e: $80
	ld   bc, $c1c0                                   ; $7d0f: $01 $c0 $c1
	add  b                                           ; $7d12: $80
	pop  hl                                          ; $7d13: $e1
	add  b                                           ; $7d14: $80
	pop  af                                          ; $7d15: $f1
	ld   [bc], a                                     ; $7d16: $02
	ld   sp, hl                                      ; $7d17: $f9
	add  hl, sp                                      ; $7d18: $39
	cp   a                                           ; $7d19: $bf
	add  b                                           ; $7d1a: $80
	ld   c, a                                        ; $7d1b: $4f
	ld   bc, $e763                                   ; $7d1c: $01 $63 $e7
	add  c                                           ; $7d1f: $81
	jp   hl                                          ; $7d20: $e9


	nop                                              ; $7d21: $00
	db   $ed                                         ; $7d22: $ed
	add  b                                           ; $7d23: $80
	inc  bc                                          ; $7d24: $03
	add  b                                           ; $7d25: $80
	rlca                                             ; $7d26: $07
	ld   [bc], a                                     ; $7d27: $02
	rst  $30                                         ; $7d28: $f7
	ld   [hl], a                                     ; $7d29: $77
	ld   a, e                                        ; $7d2a: $7b
	add  b                                           ; $7d2b: $80
	dec  sp                                          ; $7d2c: $3b
	inc  bc                                          ; $7d2d: $03
	ld   e, h                                        ; $7d2e: $5c
	and  a                                           ; $7d2f: $a7
	or   a                                           ; $7d30: $b7
	scf                                              ; $7d31: $37
	add  b                                           ; $7d32: $80
	dec  e                                           ; $7d33: $1d
	add  b                                           ; $7d34: $80
	ld   e, l                                        ; $7d35: $5d
	rlca                                             ; $7d36: $07
	adc  $4f                                         ; $7d37: $ce $4f
	adc  b                                           ; $7d39: $88

jr_094_7d3a:
	adc  d                                           ; $7d3a: $8a
	jp   z, Jump_094_424a                            ; $7d3b: $ca $4a $42

	ld   [bc], a                                     ; $7d3e: $02
	add  b                                           ; $7d3f: $80
	ld   [hl+], a                                    ; $7d40: $22
	ld   bc, $0a2a                                   ; $7d41: $01 $2a $0a
	add  b                                           ; $7d44: $80
	ld   [bc], a                                     ; $7d45: $02
	ld   bc, $0212                                   ; $7d46: $01 $12 $02
	add  c                                           ; $7d49: $81
	ld   a, [bc]                                     ; $7d4a: $0a
	add  c                                           ; $7d4b: $81
	ld   [bc], a                                     ; $7d4c: $02

Call_094_7d4d:
	add  b                                           ; $7d4d: $80
	inc  bc                                          ; $7d4e: $03
	dec  b                                           ; $7d4f: $05
	inc  b                                           ; $7d50: $04
	add  sp, $78                                     ; $7d51: $e8 $78
	ld   h, [hl]                                     ; $7d53: $66
	ld   [hl+], a                                    ; $7d54: $22
	dec  hl                                          ; $7d55: $2b
	add  b                                           ; $7d56: $80
	ld   [bc], a                                     ; $7d57: $02
	ld   b, $42                                      ; $7d58: $06 $42
	jp   nz, $2949                                   ; $7d5a: $c2 $49 $29

	ld   e, $03                                      ; $7d5d: $1e $03
	ld   [bc], a                                     ; $7d5f: $02
	adc  l                                           ; $7d60: $8d
	nop                                              ; $7d61: $00
	add  b                                           ; $7d62: $80

jr_094_7d63:
	ldh  [rTAC], a                                   ; $7d63: $e0 $07
	nop                                              ; $7d65: $00
	and  e                                           ; $7d66: $a3
	and  d                                           ; $7d67: $a2
	ld   c, d                                        ; $7d68: $4a
	jp   z, Jump_094_545e                            ; $7d69: $ca $5e $54

	ld   [hl], h                                     ; $7d6c: $74
	add  b                                           ; $7d6d: $80
	ld   a, [hl+]                                    ; $7d6e: $2a
	ld   b, $06                                      ; $7d6f: $06 $06
	dec  b                                           ; $7d71: $05
	inc  c                                           ; $7d72: $0c
	db   $10                                         ; $7d73: $10
	add  b                                           ; $7d74: $80
	jr   nz, jr_094_7db7                             ; $7d75: $20 $40

	adc  e                                           ; $7d77: $8b
	nop                                              ; $7d78: $00
	add  b                                           ; $7d79: $80
	ld   bc, $9701                                   ; $7d7a: $01 $01 $97
	ld   l, b                                        ; $7d7d: $68
	add  b                                           ; $7d7e: $80
	ld   c, b                                        ; $7d7f: $48
	add  b                                           ; $7d80: $80
	ld   [bc], a                                     ; $7d81: $02
	ld   [$6f69], sp                                 ; $7d82: $08 $69 $6f
	add  [hl]                                        ; $7d85: $86
	cp   $9e                                         ; $7d86: $fe $9e
	rra                                              ; $7d88: $1f
	rrca                                             ; $7d89: $0f
	ld   c, $06                                      ; $7d8a: $0e $06
	add  b                                           ; $7d8c: $80
	rlca                                             ; $7d8d: $07
	add  h                                           ; $7d8e: $84
	ld   b, $81                                      ; $7d8f: $06 $81
	rlca                                             ; $7d91: $07
	add  b                                           ; $7d92: $80
	rrca                                             ; $7d93: $0f
	add  b                                           ; $7d94: $80
	ccf                                              ; $7d95: $3f
	ld   [bc], a                                     ; $7d96: $02
	ld   a, a                                        ; $7d97: $7f
	add  b                                           ; $7d98: $80
	ld   hl, sp-$80                                  ; $7d99: $f8 $80
	nop                                              ; $7d9b: $00
	rlca                                             ; $7d9c: $07
	inc  bc                                          ; $7d9d: $03
	ld   [bc], a                                     ; $7d9e: $02
	inc  bc                                          ; $7d9f: $03
	dec  bc                                          ; $7da0: $0b
	dec  b                                           ; $7da1: $05
	dec  d                                           ; $7da2: $15
	add  hl, bc                                      ; $7da3: $09
	ld   [$0980], sp                                 ; $7da4: $08 $80 $09
	add  hl, bc                                      ; $7da7: $09
	ld   a, [bc]                                     ; $7da8: $0a
	ld   a, [de]                                     ; $7da9: $1a
	inc  b                                           ; $7daa: $04
	inc  c                                           ; $7dab: $0c
	ld   [bc], a                                     ; $7dac: $02
	ld   b, $01                                      ; $7dad: $06 $01
	inc  bc                                          ; $7daf: $03
	nop                                              ; $7db0: $00
	ld   bc, $0087                                   ; $7db1: $01 $87 $00
	ld   a, [bc]                                     ; $7db4: $0a
	cp   $02                                         ; $7db5: $fe $02

jr_094_7db7:
	inc  bc                                          ; $7db7: $03
	ret  nz                                          ; $7db8: $c0

	ret  z                                           ; $7db9: $c8

	jr   nz, @-$36                                   ; $7dba: $20 $c8

	inc  de                                          ; $7dbc: $13
	jr   nc, @+$22                                   ; $7dbd: $30 $20

	inc  e                                           ; $7dbf: $1c
	add  e                                           ; $7dc0: $83
	nop                                              ; $7dc1: $00
	nop                                              ; $7dc2: $00
	add  b                                           ; $7dc3: $80
	add  b                                           ; $7dc4: $80
	rst  $38                                         ; $7dc5: $ff
	add  c                                           ; $7dc6: $81
	ld   a, a                                        ; $7dc7: $7f
	ld   de, $7f3f                                   ; $7dc8: $11 $3f $7f
	rst  $38                                         ; $7dcb: $ff
	ccf                                              ; $7dcc: $3f
	rra                                              ; $7dcd: $1f
	ccf                                              ; $7dce: $3f
	ld   a, a                                        ; $7dcf: $7f
	rra                                              ; $7dd0: $1f
	cpl                                              ; $7dd1: $2f
	rrca                                             ; $7dd2: $0f
	ld   a, [de]                                     ; $7dd3: $1a
	ld   b, $04                                      ; $7dd4: $06 $04
	rlca                                             ; $7dd6: $07
	adc  a                                           ; $7dd7: $8f
	adc  [hl]                                        ; $7dd8: $8e
	adc  c                                           ; $7dd9: $89
	adc  b                                           ; $7dda: $88
	add  h                                           ; $7ddb: $84
	nop                                              ; $7ddc: $00
	add  b                                           ; $7ddd: $80
	ld   [$1001], sp                                 ; $7dde: $08 $01 $10
	jr   jr_094_7d63                                 ; $7de1: $18 $80

	stop                                             ; $7de3: $10 $00
	nop                                              ; $7de5: $00
	add  c                                           ; $7de6: $81
	inc  d                                           ; $7de7: $14
	nop                                              ; $7de8: $00
	inc  e                                           ; $7de9: $1c
	add  b                                           ; $7dea: $80
	jr   @-$7b                                       ; $7deb: $18 $83

	nop                                              ; $7ded: $00
	add  hl, bc                                      ; $7dee: $09
	ei                                               ; $7def: $fb
	rlca                                             ; $7df0: $07
	ld   l, a                                        ; $7df1: $6f
	inc  l                                           ; $7df2: $2c
	ld   e, h                                        ; $7df3: $5c
	sub  e                                           ; $7df4: $93
	ccf                                              ; $7df5: $3f
	ld   [hl], a                                     ; $7df6: $77
	dec  sp                                          ; $7df7: $3b
	inc  bc                                          ; $7df8: $03
	add  b                                           ; $7df9: $80
	ld   bc, $0382                                   ; $7dfa: $01 $82 $03
	adc  c                                           ; $7dfd: $89
	rlca                                             ; $7dfe: $07
	nop                                              ; $7dff: $00
	ld   b, $81                                      ; $7e00: $06 $81
	ld   c, $04                                      ; $7e02: $0e $04
	inc  c                                           ; $7e04: $0c
	ld   e, e                                        ; $7e05: $5b
	and  a                                           ; $7e06: $a7
	or   a                                           ; $7e07: $b7
	scf                                              ; $7e08: $37
	add  b                                           ; $7e09: $80
	dec  e                                           ; $7e0a: $1d
	add  b                                           ; $7e0b: $80
	ld   e, l                                        ; $7e0c: $5d
	rlca                                             ; $7e0d: $07
	adc  $4f                                         ; $7e0e: $ce $4f
	adc  b                                           ; $7e10: $88
	adc  d                                           ; $7e11: $8a
	jp   z, Jump_094_424a                            ; $7e12: $ca $4a $42

	ld   [bc], a                                     ; $7e15: $02
	add  b                                           ; $7e16: $80
	ld   [hl+], a                                    ; $7e17: $22
	ld   bc, $0a2a                                   ; $7e18: $01 $2a $0a
	add  b                                           ; $7e1b: $80
	ld   [bc], a                                     ; $7e1c: $02
	ld   bc, $0212                                   ; $7e1d: $01 $12 $02
	add  c                                           ; $7e20: $81
	ld   a, [bc]                                     ; $7e21: $0a
	add  c                                           ; $7e22: $81
	ld   [bc], a                                     ; $7e23: $02
	add  b                                           ; $7e24: $80
	inc  bc                                          ; $7e25: $03
	dec  b                                           ; $7e26: $05
	inc  b                                           ; $7e27: $04
	add  sp, $78                                     ; $7e28: $e8 $78
	ld   h, [hl]                                     ; $7e2a: $66
	ld   [hl+], a                                    ; $7e2b: $22
	dec  hl                                          ; $7e2c: $2b
	add  b                                           ; $7e2d: $80
	ld   [bc], a                                     ; $7e2e: $02
	ld   b, $42                                      ; $7e2f: $06 $42
	jp   nz, $2949                                   ; $7e31: $c2 $49 $29

	ld   e, $03                                      ; $7e34: $1e $03
	ld   [bc], a                                     ; $7e36: $02
	adc  l                                           ; $7e37: $8d
	nop                                              ; $7e38: $00
	add  b                                           ; $7e39: $80
	ldh  [rTAC], a                                   ; $7e3a: $e0 $07

jr_094_7e3c:
	nop                                              ; $7e3c: $00
	and  e                                           ; $7e3d: $a3
	and  d                                           ; $7e3e: $a2
	ld   c, d                                        ; $7e3f: $4a
	jp   z, Jump_094_545e                            ; $7e40: $ca $5e $54

	ld   [hl], h                                     ; $7e43: $74
	add  b                                           ; $7e44: $80
	ld   a, [hl+]                                    ; $7e45: $2a
	ld   b, $06                                      ; $7e46: $06 $06
	dec  b                                           ; $7e48: $05

jr_094_7e49:
	inc  c                                           ; $7e49: $0c
	db   $10                                         ; $7e4a: $10
	add  b                                           ; $7e4b: $80
	jr   nz, jr_094_7e8e                             ; $7e4c: $20 $40

	adc  e                                           ; $7e4e: $8b
	nop                                              ; $7e4f: $00
	add  b                                           ; $7e50: $80
	ld   bc, $9701                                   ; $7e51: $01 $01 $97
	ld   l, b                                        ; $7e54: $68
	add  b                                           ; $7e55: $80
	ld   c, b                                        ; $7e56: $48
	add  b                                           ; $7e57: $80
	ld   [bc], a                                     ; $7e58: $02
	ld   [$6f69], sp                                 ; $7e59: $08 $69 $6f
	add  [hl]                                        ; $7e5c: $86
	cp   $9e                                         ; $7e5d: $fe $9e
	rra                                              ; $7e5f: $1f
	rrca                                             ; $7e60: $0f
	ld   c, $06                                      ; $7e61: $0e $06
	add  b                                           ; $7e63: $80
	rlca                                             ; $7e64: $07
	add  h                                           ; $7e65: $84
	ld   b, $81                                      ; $7e66: $06 $81
	rlca                                             ; $7e68: $07
	add  b                                           ; $7e69: $80
	rrca                                             ; $7e6a: $0f
	add  b                                           ; $7e6b: $80
	ccf                                              ; $7e6c: $3f
	ld   [bc], a                                     ; $7e6d: $02
	ld   a, a                                        ; $7e6e: $7f
	add  b                                           ; $7e6f: $80
	ld   hl, sp-$80                                  ; $7e70: $f8 $80
	nop                                              ; $7e72: $00
	rlca                                             ; $7e73: $07
	inc  bc                                          ; $7e74: $03
	ld   [bc], a                                     ; $7e75: $02
	inc  bc                                          ; $7e76: $03
	dec  bc                                          ; $7e77: $0b
	dec  b                                           ; $7e78: $05
	dec  d                                           ; $7e79: $15
	add  hl, bc                                      ; $7e7a: $09
	ld   [$0980], sp                                 ; $7e7b: $08 $80 $09
	add  hl, bc                                      ; $7e7e: $09
	ld   a, [bc]                                     ; $7e7f: $0a
	ld   a, [de]                                     ; $7e80: $1a
	inc  b                                           ; $7e81: $04
	inc  c                                           ; $7e82: $0c
	ld   [bc], a                                     ; $7e83: $02
	ld   b, $01                                      ; $7e84: $06 $01
	inc  bc                                          ; $7e86: $03
	nop                                              ; $7e87: $00
	ld   bc, $0087                                   ; $7e88: $01 $87 $00
	ld   a, [bc]                                     ; $7e8b: $0a
	cp   $02                                         ; $7e8c: $fe $02

jr_094_7e8e:
	inc  bc                                          ; $7e8e: $03
	db   $fc                                         ; $7e8f: $fc
	ld   a, h                                        ; $7e90: $7c
	ld   b, b                                        ; $7e91: $40
	ldh  [rAUD1LEN], a                               ; $7e92: $e0 $11
	ldh  a, [c]                                      ; $7e94: $f2
	jr   nz, jr_094_7eb3                             ; $7e95: $20 $1c

	add  e                                           ; $7e97: $83
	nop                                              ; $7e98: $00
	nop                                              ; $7e99: $00
	add  b                                           ; $7e9a: $80
	add  b                                           ; $7e9b: $80
	rst  $38                                         ; $7e9c: $ff
	add  c                                           ; $7e9d: $81
	ld   a, a                                        ; $7e9e: $7f
	dec  c                                           ; $7e9f: $0d
	ccf                                              ; $7ea0: $3f
	ld   a, a                                        ; $7ea1: $7f
	rst  $38                                         ; $7ea2: $ff
	ccf                                              ; $7ea3: $3f
	rra                                              ; $7ea4: $1f
	ccf                                              ; $7ea5: $3f
	ld   a, a                                        ; $7ea6: $7f
	rra                                              ; $7ea7: $1f
	cpl                                              ; $7ea8: $2f
	rrca                                             ; $7ea9: $0f
	ld   a, [de]                                     ; $7eaa: $1a
	ld   b, $04                                      ; $7eab: $06 $04
	rlca                                             ; $7ead: $07
	add  b                                           ; $7eae: $80
	adc  a                                           ; $7eaf: $8f
	ld   [bc], a                                     ; $7eb0: $02
	adc  c                                           ; $7eb1: $89
	adc  b                                           ; $7eb2: $88

jr_094_7eb3:
	ld   bc, $0083                                   ; $7eb3: $01 $83 $00
	add  b                                           ; $7eb6: $80
	ld   [$1001], sp                                 ; $7eb7: $08 $01 $10
	jr   jr_094_7e3c                                 ; $7eba: $18 $80

	stop                                             ; $7ebc: $10 $00
	nop                                              ; $7ebe: $00
	add  c                                           ; $7ebf: $81
	inc  d                                           ; $7ec0: $14
	nop                                              ; $7ec1: $00
	inc  e                                           ; $7ec2: $1c
	add  b                                           ; $7ec3: $80
	jr   jr_094_7e49                                 ; $7ec4: $18 $83

	nop                                              ; $7ec6: $00
	ld   [bc], a                                     ; $7ec7: $02
	cp   a                                           ; $7ec8: $bf
	ld   a, a                                        ; $7ec9: $7f
	ccf                                              ; $7eca: $3f
	add  b                                           ; $7ecb: $80
	add  e                                           ; $7ecc: $83
	inc  b                                           ; $7ecd: $04
	inc  b                                           ; $7ece: $04
	and  h                                           ; $7ecf: $a4
	ld   h, a                                        ; $7ed0: $67
	dec  sp                                          ; $7ed1: $3b
	inc  bc                                          ; $7ed2: $03
	add  b                                           ; $7ed3: $80
	ld   bc, $0382                                   ; $7ed4: $01 $82 $03
	adc  c                                           ; $7ed7: $89
	rlca                                             ; $7ed8: $07
	nop                                              ; $7ed9: $00
	ld   b, $81                                      ; $7eda: $06 $81
	ld   c, $04                                      ; $7edc: $0e $04
	inc  c                                           ; $7ede: $0c
	ld   e, e                                        ; $7edf: $5b
	and  a                                           ; $7ee0: $a7
	or   a                                           ; $7ee1: $b7
	scf                                              ; $7ee2: $37
	add  b                                           ; $7ee3: $80
	dec  e                                           ; $7ee4: $1d
	add  b                                           ; $7ee5: $80
	ld   e, l                                        ; $7ee6: $5d
	rlca                                             ; $7ee7: $07
	adc  $4f                                         ; $7ee8: $ce $4f
	adc  b                                           ; $7eea: $88
	adc  d                                           ; $7eeb: $8a
	jp   z, Jump_094_424a                            ; $7eec: $ca $4a $42

	ld   [bc], a                                     ; $7eef: $02
	add  b                                           ; $7ef0: $80
	ld   [hl+], a                                    ; $7ef1: $22
	ld   bc, $0a2a                                   ; $7ef2: $01 $2a $0a
	add  b                                           ; $7ef5: $80
	ld   [bc], a                                     ; $7ef6: $02
	ld   bc, $0212                                   ; $7ef7: $01 $12 $02
	add  c                                           ; $7efa: $81
	ld   a, [bc]                                     ; $7efb: $0a
	add  c                                           ; $7efc: $81
	ld   [bc], a                                     ; $7efd: $02
	add  b                                           ; $7efe: $80
	inc  bc                                          ; $7eff: $03
	dec  b                                           ; $7f00: $05
	inc  b                                           ; $7f01: $04
	add  sp, $78                                     ; $7f02: $e8 $78
	ld   h, [hl]                                     ; $7f04: $66
	ld   [hl+], a                                    ; $7f05: $22
	dec  hl                                          ; $7f06: $2b
	add  b                                           ; $7f07: $80
	ld   [bc], a                                     ; $7f08: $02
	ld   b, $42                                      ; $7f09: $06 $42
	jp   nz, $2949                                   ; $7f0b: $c2 $49 $29

	ld   e, $03                                      ; $7f0e: $1e $03
	ld   [bc], a                                     ; $7f10: $02
	adc  l                                           ; $7f11: $8d
	nop                                              ; $7f12: $00
	add  b                                           ; $7f13: $80

jr_094_7f14:
	ldh  [rTAC], a                                   ; $7f14: $e0 $07
	nop                                              ; $7f16: $00
	and  e                                           ; $7f17: $a3
	and  d                                           ; $7f18: $a2
	ld   c, d                                        ; $7f19: $4a
	jp   z, Jump_094_545e                            ; $7f1a: $ca $5e $54

	ld   [hl], h                                     ; $7f1d: $74
	add  b                                           ; $7f1e: $80
	ld   a, [hl+]                                    ; $7f1f: $2a
	ld   b, $06                                      ; $7f20: $06 $06
	dec  b                                           ; $7f22: $05
	inc  c                                           ; $7f23: $0c
	db   $10                                         ; $7f24: $10
	add  b                                           ; $7f25: $80
	jr   nz, jr_094_7f68                             ; $7f26: $20 $40

	adc  e                                           ; $7f28: $8b
	nop                                              ; $7f29: $00
	add  b                                           ; $7f2a: $80
	ld   bc, $9701                                   ; $7f2b: $01 $01 $97
	ld   l, b                                        ; $7f2e: $68
	add  b                                           ; $7f2f: $80
	ld   c, b                                        ; $7f30: $48
	add  b                                           ; $7f31: $80
	ld   [bc], a                                     ; $7f32: $02
	ld   [$6f69], sp                                 ; $7f33: $08 $69 $6f
	add  [hl]                                        ; $7f36: $86
	cp   $9e                                         ; $7f37: $fe $9e
	rra                                              ; $7f39: $1f
	rrca                                             ; $7f3a: $0f
	ld   c, $06                                      ; $7f3b: $0e $06
	add  b                                           ; $7f3d: $80
	rlca                                             ; $7f3e: $07
	add  h                                           ; $7f3f: $84
	ld   b, $81                                      ; $7f40: $06 $81
	rlca                                             ; $7f42: $07
	add  b                                           ; $7f43: $80
	rrca                                             ; $7f44: $0f
	add  b                                           ; $7f45: $80
	ccf                                              ; $7f46: $3f
	ld   [bc], a                                     ; $7f47: $02
	ld   a, a                                        ; $7f48: $7f
	add  b                                           ; $7f49: $80
	ld   hl, sp-$80                                  ; $7f4a: $f8 $80
	nop                                              ; $7f4c: $00
	rlca                                             ; $7f4d: $07
	inc  bc                                          ; $7f4e: $03
	ld   [bc], a                                     ; $7f4f: $02
	inc  bc                                          ; $7f50: $03
	dec  bc                                          ; $7f51: $0b
	dec  b                                           ; $7f52: $05
	dec  d                                           ; $7f53: $15
	add  hl, bc                                      ; $7f54: $09
	ld   [$0980], sp                                 ; $7f55: $08 $80 $09
	add  hl, bc                                      ; $7f58: $09
	ld   a, [bc]                                     ; $7f59: $0a
	ld   a, [de]                                     ; $7f5a: $1a
	inc  b                                           ; $7f5b: $04
	inc  c                                           ; $7f5c: $0c
	ld   [bc], a                                     ; $7f5d: $02
	ld   b, $01                                      ; $7f5e: $06 $01
	inc  bc                                          ; $7f60: $03
	nop                                              ; $7f61: $00
	ld   bc, $0087                                   ; $7f62: $01 $87 $00
	ld   a, [bc]                                     ; $7f65: $0a
	cp   $02                                         ; $7f66: $fe $02

jr_094_7f68:
	inc  bc                                          ; $7f68: $03
	db   $fc                                         ; $7f69: $fc
	inc  a                                           ; $7f6a: $3c
	ccf                                              ; $7f6b: $3f
	cp   $80                                         ; $7f6c: $fe $80
	ld   [bc], a                                     ; $7f6e: $02
	ld   b, b                                        ; $7f6f: $40
	inc  a                                           ; $7f70: $3c
	add  e                                           ; $7f71: $83
	nop                                              ; $7f72: $00
	nop                                              ; $7f73: $00
	add  b                                           ; $7f74: $80
	add  b                                           ; $7f75: $80
	rst  $38                                         ; $7f76: $ff
	add  c                                           ; $7f77: $81
	ld   a, a                                        ; $7f78: $7f
	ld   de, $7f3f                                   ; $7f79: $11 $3f $7f
	rst  $38                                         ; $7f7c: $ff
	ccf                                              ; $7f7d: $3f
	rra                                              ; $7f7e: $1f
	ccf                                              ; $7f7f: $3f
	ld   a, a                                        ; $7f80: $7f
	rra                                              ; $7f81: $1f
	cpl                                              ; $7f82: $2f
	rrca                                             ; $7f83: $0f
	ld   a, [de]                                     ; $7f84: $1a
	ld   b, $04                                      ; $7f85: $06 $04
	rlca                                             ; $7f87: $07
	adc  a                                           ; $7f88: $8f
	adc  [hl]                                        ; $7f89: $8e
	add  hl, bc                                      ; $7f8a: $09
	ld   [$0084], sp                                 ; $7f8b: $08 $84 $00
	add  b                                           ; $7f8e: $80
	ld   [$1001], sp                                 ; $7f8f: $08 $01 $10
	jr   jr_094_7f14                                 ; $7f92: $18 $80

	stop                                             ; $7f94: $10 $00
	nop                                              ; $7f96: $00
	add  c                                           ; $7f97: $81
	inc  d                                           ; $7f98: $14
	nop                                              ; $7f99: $00
	inc  e                                           ; $7f9a: $1c
	add  b                                           ; $7f9b: $80
	jr   @-$7b                                       ; $7f9c: $18 $83

	nop                                              ; $7f9e: $00
	ld   [$7fbf], sp                                 ; $7f9f: $08 $bf $7f
	scf                                              ; $7fa2: $37
	ld   hl, sp-$10                                  ; $7fa3: $f8 $f0
	inc  bc                                          ; $7fa5: $03
	add  a                                           ; $7fa6: $87
	ld   b, a                                        ; $7fa7: $47
	dec  a                                           ; $7fa8: $3d
	add  c                                           ; $7fa9: $81
	ld   bc, $0382                                   ; $7faa: $01 $82 $03
	adc  c                                           ; $7fad: $89
	rlca                                             ; $7fae: $07
	nop                                              ; $7faf: $00
	ld   b, $81                                      ; $7fb0: $06 $81
	ld   c, $02                                      ; $7fb2: $0e $02
	inc  c                                           ; $7fb4: $0c
	dec  bc                                          ; $7fb5: $0b
	inc  c                                           ; $7fb6: $0c
	add  b                                           ; $7fb7: $80
	ld   [rRAMG], sp                                 ; $7fb8: $08 $00 $00
	add  c                                           ; $7fbb: $81
	ld   a, [bc]                                     ; $7fbc: $0a
	dec  bc                                          ; $7fbd: $0b
	ld   c, $0c                                      ; $7fbe: $0e $0c
	ld   c, h                                        ; $7fc0: $4c
	ld   b, b                                        ; $7fc1: $40
	ld   d, l                                        ; $7fc2: $55
	ld   [hl], $63                                   ; $7fc3: $36 $63
	nop                                              ; $7fc5: $00
	rrca                                             ; $7fc6: $0f
	dec  bc                                          ; $7fc7: $0b
	ld   [bc], a                                     ; $7fc8: $02
	ld   b, $95                                      ; $7fc9: $06 $95
	nop                                              ; $7fcb: $00
	inc  bc                                          ; $7fcc: $03
	ld   b, b                                        ; $7fcd: $40
	add  b                                           ; $7fce: $80
	ld   b, b                                        ; $7fcf: $40
	add  b                                           ; $7fd0: $80
	adc  a                                           ; $7fd1: $8f
	nop                                              ; $7fd2: $00
	ld   bc, $0c08                                   ; $7fd3: $01 $08 $0c
	add  b                                           ; $7fd6: $80
	ld   [rRAMG], sp                                 ; $7fd7: $08 $00 $00
	add  c                                           ; $7fda: $81
	ld   a, [bc]                                     ; $7fdb: $0a
	nop                                              ; $7fdc: $00
	ld   c, $80                                      ; $7fdd: $0e $80
	inc  c                                           ; $7fdf: $0c
	ld   [$3400], sp                                 ; $7fe0: $08 $00 $34
	ld   d, a                                        ; $7fe3: $57
	ld   [hl], e                                     ; $7fe4: $73
	jr   nz, @+$41                                   ; $7fe5: $20 $3f

	db   $10                                         ; $7fe7: $10
	rra                                              ; $7fe8: $1f
	nop                                              ; $7fe9: $00
	add  b                                           ; $7fea: $80
	ld   b, $94                                      ; $7feb: $06 $94
	nop                                              ; $7fed: $00
	inc  b                                           ; $7fee: $04
	add  b                                           ; $7fef: $80
	ld   b, b                                        ; $7ff0: $40
	nop                                              ; $7ff1: $00
	ld   b, b                                        ; $7ff2: $40
	add  b                                           ; $7ff3: $80
	rst  $38                                         ; $7ff4: $ff
	nop                                              ; $7ff5: $00
	rst  $38                                         ; $7ff6: $ff
	nop                                              ; $7ff7: $00
	rst  $38                                         ; $7ff8: $ff
	nop                                              ; $7ff9: $00
	ld   [rRAMG], a                                  ; $7ffa: $ea $00 $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
