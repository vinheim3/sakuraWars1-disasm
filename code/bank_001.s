; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

	dec  b                                           ; $4000: $05
	ld   [bc], a                                     ; $4001: $02
	nop                                              ; $4002: $00


AnimSpriteSpecType0Load::
	push af                                          ; $4003: $f5
	ld   a, d                                        ; $4004: $7a
	and  $80                                         ; $4005: $e6 $80
	ld   [hl+], a                                    ; $4007: $22
	xor  a                                           ; $4008: $af
	ld   [hl+], a                                    ; $4009: $22
	ld   [hl+], a                                    ; $400a: $22
	ld   [hl+], a                                    ; $400b: $22
	pop  af                                          ; $400c: $f1
	ret                                              ; $400d: $c9


AnimSpriteSpecType0Update::
	ld   a, [hl+]                                    ; $400e: $2a
	bit  7, a                                        ; $400f: $cb $7f
	jr   z, .br_402d                              ; $4011: $28 $1a

	res  7, a                                        ; $4013: $cb $bf
	ld   [wSpriteGroup], a                                  ; $4015: $ea $1a $c2
	ld   a, [hl+]                                    ; $4018: $2a
	ld   e, a                                        ; $4019: $5f
	ld   a, [$c600]                                  ; $401a: $fa $00 $c6
	ld   b, a                                        ; $401d: $47
	ld   a, [hl+]                                    ; $401e: $2a
	sub  b                                           ; $401f: $90
	ld   b, a                                        ; $4020: $47
	ld   a, [$c601]                                  ; $4021: $fa $01 $c6
	ld   c, a                                        ; $4024: $4f
	ld   a, [hl+]                                    ; $4025: $2a
	sub  c                                           ; $4026: $91
	ld   c, a                                        ; $4027: $4f
	ld   a, e                                        ; $4028: $7b
	call LoadSpriteFromMainTable                                       ; $4029: $cd $16 $0e
	ret                                              ; $402c: $c9

.br_402d:
	ld   [wSpriteGroup], a                                  ; $402d: $ea $1a $c2

; 1st byte is spec idx
	ld   a, [hl+]                                    ; $4030: $2a
	ld   e, a                                        ; $4031: $5f

; Next 2 bytes are X, then Y offset
	ld   a, [hl+]                                    ; $4032: $2a
	ld   b, a                                        ; $4033: $47
	ld   a, [hl]                                     ; $4034: $7e
	ld   c, a                                        ; $4035: $4f

; Load sprite
	ld   a, e                                        ; $4036: $7b
	call LoadSpriteFromMainTable                                       ; $4037: $cd $16 $0e
	ret                                              ; $403a: $c9


AnimSpriteSpecType0Delete::
	ret                                              ; $403b: $c9


Func_01_403c::
	push af                                          ; $403c: $f5
	push hl                                          ; $403d: $e5
	ld   a, [hl]                                     ; $403e: $7e
	and  $80                                         ; $403f: $e6 $80
	or   d                                           ; $4041: $b2
	ld   [hl+], a                                    ; $4042: $22
	ld   [hl], e                                     ; $4043: $73
	inc  hl                                          ; $4044: $23
	ld   [hl], b                                     ; $4045: $70
	inc  hl                                          ; $4046: $23
	ld   [hl], c                                     ; $4047: $71
	pop  hl                                          ; $4048: $e1
	pop  af                                          ; $4049: $f1
	ret                                              ; $404a: $c9


	push af                                          ; $404b: $f5
	ld   a, [hl]                                     ; $404c: $7e
	and  $80                                         ; $404d: $e6 $80
	or   b                                           ; $404f: $b0
	ld   [hl+], a                                    ; $4050: $22
	ld   [hl], c                                     ; $4051: $71
	dec  hl                                          ; $4052: $2b
	pop  af                                          ; $4053: $f1
	ret                                              ; $4054: $c9


Func_01_4055::
	push hl                                          ; $4055: $e5
	inc  hl                                          ; $4056: $23
	inc  hl                                          ; $4057: $23
	ld   [hl], b                                     ; $4058: $70
	inc  hl                                          ; $4059: $23
	ld   [hl], c                                     ; $405a: $71
	pop  hl                                          ; $405b: $e1
	ret                                              ; $405c: $c9


	push hl                                          ; $405d: $e5
	ld   a, [hl+]                                    ; $405e: $2a
	and  $7f                                         ; $405f: $e6 $7f
	ld   d, a                                        ; $4061: $57
	ld   a, [hl+]                                    ; $4062: $2a
	ld   e, a                                        ; $4063: $5f
	ld   a, [hl+]                                    ; $4064: $2a
	ld   b, a                                        ; $4065: $47
	ld   a, [hl+]                                    ; $4066: $2a
	ld   c, a                                        ; $4067: $4f
	pop  hl                                          ; $4068: $e1
	ret                                              ; $4069: $c9


	ld   a, [hl+]                                    ; $406a: $2a
	and  $7f                                         ; $406b: $e6 $7f
	ld   b, a                                        ; $406d: $47
	ld   a, [hl-]                                    ; $406e: $3a
	ld   c, a                                        ; $406f: $4f
	ret                                              ; $4070: $c9


	push hl                                          ; $4071: $e5
	inc  hl                                          ; $4072: $23
	inc  hl                                          ; $4073: $23
	ld   a, [hl+]                                    ; $4074: $2a
	ld   b, a                                        ; $4075: $47
	ld   a, [hl+]                                    ; $4076: $2a
	ld   c, a                                        ; $4077: $4f
	pop  hl                                          ; $4078: $e1
	ret                                              ; $4079: $c9


Func_01_407a::
	ld   a, b                                        ; $407a: $78
	ld   [$c600], a                                  ; $407b: $ea $00 $c6
	ld   a, c                                        ; $407e: $79
	ld   [$c601], a                                  ; $407f: $ea $01 $c6
	ret                                              ; $4082: $c9


; A - base anim sprite spec details idx used
; Anim 3 bytes: control code, spec idx, frame counter
AnimSpriteSpecType1Load::
	push af                                                         ; $4083

; Clear addr, coords and cond loop counter
	xor  a                                                          ; $4084
	ldh  [hAnimSpriteSpecAddr], a                                   ; $4085
	ldh  [hAnimSpriteSpecAddr+1], a                                 ; $4087
	ldh  [hAnimSpriteSpecCondLoopCounter], a                        ; $4089
	ldh  [hAnimSpriteSpecX], a                                      ; $408b
	ldh  [hAnimSpriteSpecY], a                                      ; $408d

; Set frame ctr to 1 to begin immediately
	inc  a                                                          ; $408f
	ldh  [hAnimSpriteSpecCurrFrameCounter], a                       ; $4090
	pop  af                                                         ; $4092

; Copy above hram details into the sprite spec instance ram area
	call CopyAnimSpriteSpecDetailsFromHramBasedOnAnimType           ; $4093
	ret                                                             ; $4096


AnimSpriteSpecType1Update::
; DE = anim sprite spec addr, returning if 0 (addr not yet set)
	ldh  a, [hAnimSpriteSpecAddr]                                   ; $4097
	ld   e, a                                                       ; $4099
	ldh  a, [hAnimSpriteSpecAddr+1]                                 ; $409a
	ld   d, a                                                       ; $409c
	or   e                                                          ; $409d
	ret  z                                                          ; $409e

; Continue processing if dec'd counter is now 0
	ldh  a, [hAnimSpriteSpecCurrFrameCounter]                       ; $409f
	or   a                                                          ; $40a1
	jr   z, .loadSprite                                             ; $40a2

	dec  a                                                          ; $40a4
	ldh  [hAnimSpriteSpecCurrFrameCounter], a                       ; $40a5
	jr   nz, .loadSprite                                            ; $40a7

.toNewSpecAddr:
; Each animation holds 3 bytes, skip and store the next
	inc  de                                                         ; $40a9
	inc  de                                                         ; $40aa
	inc  de                                                         ; $40ab
	ld   a, e                                                       ; $40ac
	ldh  [hAnimSpriteSpecAddr], a                                   ; $40ad
	ld   a, d                                                       ; $40af
	ldh  [hAnimSpriteSpecAddr+1], a                                 ; $40b0

.processGivenNewSpecAddr:
; HL points to the new anim spec's spec idx
	ld   h, d                                                       ; $40b2
	ld   l, e                                                       ; $40b3
	inc  hl                                                         ; $40b4

; Jump if spec group's bit 7 is set
	ld   a, [de]                                                    ; $40b5
	bit  7, a                                                       ; $40b6
	jr   nz, .specGroupBit7set                                      ; $40b8

.setFrameCounter:
; HL points to counter for curr animation frame, set it and load sprite
	inc  hl                                                         ; $40ba
	ld   a, [hl]                                                    ; $40bb
	ldh  [hAnimSpriteSpecCurrFrameCounter], a                       ; $40bc
	jr   .loadSprite                                                ; $40be

.specGroupBit7set:
; Jump if spec groups != $80
	res  7, a                                                       ; $40c0
	or   a                                                          ; $40c2
	jr   nz, .specGroupNe80h                                        ; $40c3

; Spec group $80 (hide), the spec idx is also the frame counter
	ld   a, [hl]                                                    ; $40c5
	ldh  [hAnimSpriteSpecCurrFrameCounter], a                       ; $40c6
	jr   .loadSprite                                                ; $40c8

.specGroupNe80h:
; Jump if spec group != $81
	dec  a                                                          ; $40ca
	jr   nz, .specGroupNe81h                                        ; $40cb

; Spec group $81, set conditional loop value, then process next 3 anim bytes
	ld   a, [hl]                                                    ; $40cd
	ldh  [hAnimSpriteSpecCondLoopCounter], a                        ; $40ce
	jr   .toNewSpecAddr                                             ; $40d0

.specGroupNe81h:
; Jump if spec group != $82
	dec  a                                                          ; $40d2
	jr   nz, .specGroupNe82h                                        ; $40d3

	jr   .specGroup82h_jump                                         ; $40d5

.specGroupNe82h:
; If spec group not between $80-$83 and bit 7 set, ignore (treat as spec group)
	dec  a                                                          ; $40d7
	jr   nz, .setFrameCounter                                       ; $40d8

; Spec group == $83, dec conditional loop value
; Jumping (likely up) if counter not just hit 0, else breaking loop
	ldh  a, [hAnimSpriteSpecCondLoopCounter]                        ; $40da
	or   a                                                          ; $40dc
	jr   z, .specGroup82h_jump                                      ; $40dd

	dec  a                                                          ; $40df
	ldh  [hAnimSpriteSpecCondLoopCounter], a                        ; $40e0
	jr   z, .toNewSpecAddr                                          ; $40e2

.specGroup82h_jump:
; Last 2 bytes of animation contain addr of next anim details
	ld   a, [hl+]                                                   ; $40e4
	ld   e, a                                                       ; $40e5
	ldh  [hAnimSpriteSpecAddr], a                                   ; $40e6

	ld   a, [hl+]                                                   ; $40e8
	ld   d, a                                                       ; $40e9
	ldh  [hAnimSpriteSpecAddr+1], a                                 ; $40ea
	jr   .processGivenNewSpecAddr                                   ; $40ec

.loadSprite:
; Get spec group from anim data, not loading sprite, if bit 7 set
	ld   a, [de]                                                    ; $40ee
	bit  7, a                                                       ; $40ef
	jr   nz, .done                                                  ; $40f1

	inc  de                                                         ; $40f3
	ld   [wSpriteGroup], a                                          ; $40f4

; Get coords, then spec idx from anim data, then load sprite
	ldh  a, [hAnimSpriteSpecX]                                      ; $40f7
	ld   b, a                                                       ; $40f9
	ldh  a, [hAnimSpriteSpecY]                                      ; $40fa
	ld   c, a                                                       ; $40fc

	ld   a, [de]                                                    ; $40fd
	call LoadSpriteFromMainTable                                    ; $40fe

.done:
	ret                                                             ; $4101


AnimSpriteSpecType1Delete::
	ret                                                             ; $4102


; A - anim sprite idx
; B - x offset
; C - y offset
; DE - src addr
; HL - dest addr
LoadNewAnimatedSpriteSpecDetails::
	push hl                                                         ; $4103

; DE = double A idx into src
	push hl                                                         ; $4104
	ld   h, $00                                                     ; $4105
	ld   l, a                                                       ; $4107
	add  hl, hl                                                     ; $4108
	add  hl, de                                                     ; $4109
	ld   d, h                                                       ; $410a
	ld   e, l                                                       ; $410b
	pop  hl                                                         ; $410c

; Store anim spec addr in dest
	ld   a, [de]                                                    ; $410d
	inc  de                                                         ; $410e
	ld   [hl+], a                                                   ; $410f

	ld   a, [de]                                                    ; $4110
	ld   [hl+], a                                                   ; $4111

; Set frame counter to 1, so we immediately jump 3 bytes ahead for next animation
	ld   a, $01                                                     ; $4112
	ld   [hl+], a                                                   ; $4114

; Clear cond loop counter
	xor  a                                                          ; $4115
	ld   [hl+], a                                                   ; $4116

; Set x and y offsets
	ld   [hl], b                                                    ; $4117
	inc  hl                                                         ; $4118
	ld   [hl], c                                                    ; $4119

	pop  hl                                                         ; $411a
	ret                                                             ; $411b


Func_01_411c::
	push hl                                          ; $411c: $e5
	ld   h, $00                                      ; $411d: $26 $00
	ld   l, a                                        ; $411f: $6f
	add  hl, hl                                      ; $4120: $29
	add  hl, de                                      ; $4121: $19
	ld   d, h                                        ; $4122: $54
	ld   e, l                                        ; $4123: $5d
	pop  hl                                          ; $4124: $e1
	ld   a, [de]                                     ; $4125: $1a
	inc  de                                          ; $4126: $13
	ld   [hl+], a                                    ; $4127: $22
	ld   a, [de]                                     ; $4128: $1a
	ld   [hl+], a                                    ; $4129: $22
	ld   a, $01                                      ; $412a: $3e $01
	ld   [hl-], a                                    ; $412c: $32
	dec  hl                                          ; $412d: $2b
	ret                                              ; $412e: $c9


; B - ASSI_X
; C - ASSI_Y
; HL - addr of anim sprite spec instance
SetAnimSpriteSpecInstanceCoords::
	push hl                                                         ; $412f
	ld   de, ASSI_X                                                 ; $4130
	add  hl, de                                                     ; $4133
	ld   [hl], b                                                    ; $4134
	inc  hl                                                         ; $4135
	ld   [hl], c                                                    ; $4136
	pop  hl                                                         ; $4137
	ret                                                             ; $4138


; HL - addr of anim sprite spec instance
; Returns ASSI_X in B and ASSI_Y in C
BCequAnimSpriteSpecInstancesCoords::
	push hl                                                         ; $4139
	ld   de, ASSI_X                                                 ; $413a
	add  hl, de                                                     ; $413d
	ld   a, [hl+]                                                   ; $413e
	ld   b, a                                                       ; $413f
	ld   c, [hl]                                                    ; $4140
	pop  hl                                                         ; $4141
	ret                                                             ; $4142


Func_01_4143::
	ld   a, [hl+]                                    ; $4143: $2a
	ld   e, a                                        ; $4144: $5f
	ld   a, [hl-]                                    ; $4145: $3a
	ld   d, a                                        ; $4146: $57
	ld   a, [de]                                     ; $4147: $1a
	ld   b, a                                        ; $4148: $47
	bit  7, a                                        ; $4149: $cb $7f
	ret  nz                                          ; $414b: $c0

	inc  de                                          ; $414c: $13
	ld   a, [de]                                     ; $414d: $1a
	ld   c, a                                        ; $414e: $4f
	ret                                              ; $414f: $c9


AnimSpriteSpecType2Load::
	push af                                          ; $4150: $f5
	xor  a                                           ; $4151: $af
	ldh  [$86], a                                    ; $4152: $e0 $86
	ldh  [$87], a                                    ; $4154: $e0 $87
	ldh  [$8c], a                                    ; $4156: $e0 $8c
	ldh  [$8d], a                                    ; $4158: $e0 $8d
	ldh  [$8e], a                                    ; $415a: $e0 $8e
	ldh  [$8f], a                                    ; $415c: $e0 $8f
	ld   a, [$c602]                                  ; $415e: $fa $02 $c6
	ldh  [$84], a                                    ; $4161: $e0 $84
	ld   a, [$c603]                                  ; $4163: $fa $03 $c6
	ldh  [$85], a                                    ; $4166: $e0 $85
	ld   a, [de]                                     ; $4168: $1a
	inc  de                                          ; $4169: $13
	ldh  [$88], a                                    ; $416a: $e0 $88
	ld   a, [de]                                     ; $416c: $1a
	inc  de                                          ; $416d: $13
	ldh  [$89], a                                    ; $416e: $e0 $89
	ld   a, [de]                                     ; $4170: $1a
	inc  de                                          ; $4171: $13
	ldh  [$8a], a                                    ; $4172: $e0 $8a
	ld   a, [de]                                     ; $4174: $1a
	inc  de                                          ; $4175: $13
	ldh  [$8b], a                                    ; $4176: $e0 $8b
	ld   a, [de]                                     ; $4178: $1a
	inc  de                                          ; $4179: $13
	or   a                                           ; $417a: $b7
	jr   nz, .br_419f                             ; $417b: $20 $22

	ld   hl, $ff80                                   ; $417d: $21 $80 $ff
	ld   b, d                                        ; $4180: $42
	ld   c, e                                        ; $4181: $4b
	ld   a, [bc]                                     ; $4182: $0a
	inc  bc                                          ; $4183: $03
	ld   e, a                                        ; $4184: $5f
	ld   a, [bc]                                     ; $4185: $0a
	inc  bc                                          ; $4186: $03
	ld   d, a                                        ; $4187: $57
	ld   a, [bc]                                     ; $4188: $0a

	M_FarCall Func_01_411c
	
	jr   .copyFromHram                                 ; $419d: $18 $0c

.br_419f:
	xor  a                                           ; $419f: $af
	ldh  [$80], a                                    ; $41a0: $e0 $80
	ldh  [$81], a                                    ; $41a2: $e0 $81
	ld   a, [de]                                     ; $41a4: $1a
	inc  de                                          ; $41a5: $13
	ldh  [$82], a                                    ; $41a6: $e0 $82
	ld   a, [de]                                     ; $41a8: $1a
	ldh  [$83], a                                    ; $41a9: $e0 $83

.copyFromHram:
	pop  af                                          ; $41ab: $f1
	call CopyAnimSpriteSpecDetailsFromHramBasedOnAnimType                                       ; $41ac: $cd $4c $30
	ret                                              ; $41af: $c9


AnimSpriteSpecType2Update::
;
	xor  a                                           ; $41b0: $af
	ldh  [$8d], a                                    ; $41b1: $e0 $8d

;
	ldh  a, [$86]                                    ; $41b3: $f0 $86
	or   a                                           ; $41b5: $b7
	jp   nz, .cont_42fa                           ; $41b6: $c2 $fa $42

	ldh  a, [$88]                                    ; $41b9: $f0 $88
	bit  3, a                                        ; $41bb: $cb $5f
	jp   z, .common_41e2                            ; $41bd: $ca $e2 $41

;
	ld   a, [wInGameButtonsPressed]                                  ; $41c0: $fa $10 $c2
	bit  PADB_A, a                                        ; $41c3: $cb $47
	jr   z, .aNotPressed                              ; $41c5: $28 $0d

; A pressed
	ld   a, [$c651]                                  ; $41c7: $fa $51 $c6
	call Call_001_4484                               ; $41ca: $cd $84 $44
	ldh  a, [$8c]                                    ; $41cd: $f0 $8c
	inc  a                                           ; $41cf: $3c
	ldh  [$8d], a                                    ; $41d0: $e0 $8d
	jr   .common_41e2                                 ; $41d2: $18 $0e

.aNotPressed:
	bit  PADB_B, a                                        ; $41d4: $cb $4f
	jr   z, .aOrBnotPressed                              ; $41d6: $28 $38

; B pressed
	ld   a, [$c652]                                  ; $41d8: $fa $52 $c6
	call Call_001_4484                               ; $41db: $cd $84 $44
	ld   a, $ff                                      ; $41de: $3e $ff
	ldh  [$8d], a                                    ; $41e0: $e0 $8d

.common_41e2:
	ldh  a, [$81]                                    ; $41e2: $f0 $81
	or   a                                           ; $41e4: $b7
	push af                                          ; $41e5: $f5
	ld   a, $97                                      ; $41e6: $3e $97
	ld   [$c295], a                                  ; $41e8: $ea $95 $c2
	ld   a, $40                                      ; $41eb: $3e $40
	ld   [$c296], a                                  ; $41ed: $ea $96 $c2
	ld   a, $01                                      ; $41f0: $3e $01
	ld   [$c297], a                                  ; $41f2: $ea $97 $c2
	pop  af                                          ; $41f5: $f1
	jp   nz, Func_0949                                   ; $41f6: $c2 $49 $09

	ld   hl, $ff82                                   ; $41f9: $21 $82 $ff
	push af                                          ; $41fc: $f5
	ld   a, $0e                                      ; $41fd: $3e $0e
	ld   [$c295], a                                  ; $41ff: $ea $95 $c2
	ld   a, $40                                      ; $4202: $3e $40
	ld   [$c296], a                                  ; $4204: $ea $96 $c2
	ld   a, $01                                      ; $4207: $3e $01
	ld   [$c297], a                                  ; $4209: $ea $97 $c2
	pop  af                                          ; $420c: $f1
	jp   Func_0949                                       ; $420d: $c3 $49 $09

.aOrBnotPressed:
	ldh  a, [$8c]                                    ; $4210: $f0 $8c
	ld   [$c64a], a                                  ; $4212: $ea $4a $c6
	ld   h, a                                        ; $4215: $67
	ldh  a, [$8a]                                    ; $4216: $f0 $8a
	ld   l, a                                        ; $4218: $6f
	call HLequHdivModL                                       ; $4219: $cd $fb $0b
	ld   a, l                                        ; $421c: $7d
	ld   [$c64d], a                                  ; $421d: $ea $4d $c6
	ld   [$c64b], a                                  ; $4220: $ea $4b $c6
	ld   a, h                                        ; $4223: $7c
	ld   [$c64e], a                                  ; $4224: $ea $4e $c6
	ld   [$c64c], a                                  ; $4227: $ea $4c $c6

;
	ld   a, [wInGameButtonsHeld]                                  ; $422a: $fa $0f $c2
	and  PADF_DOWN|PADF_UP|PADF_LEFT|PADF_RIGHT                                         ; $422d: $e6 $f0
	ld   c, a                                        ; $422f: $4f
	ldh  a, [$88]                                    ; $4230: $f0 $88
	bit  6, a                                        ; $4232: $cb $77
	jr   z, :+                              ; $4234: $28 $06

	ld   a, [wInGameButtonsPressed]                                  ; $4236: $fa $10 $c2
	and  PADF_DOWN|PADF_UP|PADF_LEFT|PADF_RIGHT                                         ; $4239: $e6 $f0
	ld   c, a                                        ; $423b: $4f

:	swap c                                           ; $423c: $cb $31
	ldh  a, [$88]                                    ; $423e: $f0 $88
	and  $30                                         ; $4240: $e6 $30
	or   c                                           ; $4242: $b1
	ld   c, a                                        ; $4243: $4f
	ld   b, $00                                      ; $4244: $06 $00
	ld   hl, Data_01_441c                                   ; $4246: $21 $1c $44
	add  hl, bc                                      ; $4249: $09

;
	ld   a, [hl]                                     ; $424a: $7e
	dec  a                                           ; $424b: $3d
	bit  7, a                                        ; $424c: $cb $7f
	jr   nz, .common_41e2                             ; $424e: $20 $92

	ld   [$c64f], a                                  ; $4250: $ea $4f $c6

.fromBelow:
;
	ld   a, [$c64f]                                  ; $4253: $fa $4f $c6
	sla  a                                           ; $4256: $cb $27
	ld   c, a                                        ; $4258: $4f
	ld   b, $00                                      ; $4259: $06 $00
	ld   hl, $445c                                   ; $425b: $21 $5c $44
	add  hl, bc                                      ; $425e: $09

;
	ld   a, [$c64b]                                  ; $425f: $fa $4b $c6
	add  [hl]                                        ; $4262: $86
	ld   [$c64b], a                                  ; $4263: $ea $4b $c6
	inc  hl                                          ; $4266: $23
	ld   a, [$c64c]                                  ; $4267: $fa $4c $c6
	add  [hl]                                        ; $426a: $86
	ld   [$c64c], a                                  ; $426b: $ea $4c $c6
	ldh  a, [$88]                                    ; $426e: $f0 $88
	and  $03                                         ; $4270: $e6 $03
	sla  a                                           ; $4272: $cb $27
	sla  a                                           ; $4274: $cb $27
	ld   c, a                                        ; $4276: $4f
	ld   a, [$c64f]                                  ; $4277: $fa $4f $c6
	or   c                                           ; $427a: $b1
	sla  a                                           ; $427b: $cb $27
	ld   c, a                                        ; $427d: $4f
	ld   b, $00                                      ; $427e: $06 $00
	ld   hl, Table_01_4474                                   ; $4280: $21 $74 $44
	add  hl, bc                                      ; $4283: $09
	ld   bc, .return                                   ; $4284: $01 $8d $42
	push bc                                          ; $4287: $c5
	ld   c, [hl]                                     ; $4288: $4e
	inc  hl                                          ; $4289: $23
	ld   b, [hl]                                     ; $428a: $46
	push bc                                          ; $428b: $c5
	ret                                              ; $428c: $c9

.return:
	ld   a, [$c64c]                                  ; $428d: $fa $4c $c6
	ld   h, a                                        ; $4290: $67
	ldh  a, [$8a]                                    ; $4291: $f0 $8a
	ld   l, a                                        ; $4293: $6f
	call AequHtimesL                                       ; $4294: $cd $ac $0b

;
	ld   a, [$c64b]                                  ; $4297: $fa $4b $c6
	add  l                                           ; $429a: $85
	ld   c, a                                        ; $429b: $4f

;
	ld   a, [$c64a]                                  ; $429c: $fa $4a $c6
	cp   c                                           ; $429f: $b9
	jr   nz, :+                             ; $42a0: $20 $00

:	ld   e, c                                        ; $42a2: $59
	sla  e                                           ; $42a3: $cb $23
	ld   d, $00                                      ; $42a5: $16 $00
	ld   hl, $c602                                   ; $42a7: $21 $02 $c6
	add  hl, de                                      ; $42aa: $19
	ld   a, [hl]                                     ; $42ab: $7e
	inc  a                                           ; $42ac: $3c
	jp   z, .fromBelow                            ; $42ad: $ca $53 $42

	ld   a, c                                        ; $42b0: $79
	ldh  [$8c], a                                    ; $42b1: $e0 $8c
	ldh  a, [$84]                                    ; $42b3: $f0 $84
	ld   d, a                                        ; $42b5: $57
	ldh  a, [$85]                                    ; $42b6: $f0 $85
	ld   e, a                                        ; $42b8: $5f
	ld   a, [hl+]                                    ; $42b9: $2a
	sub  d                                           ; $42ba: $92
	ld   d, a                                        ; $42bb: $57
	ld   a, [hl]                                     ; $42bc: $7e
	sub  e                                           ; $42bd: $93
	ld   e, a                                        ; $42be: $5f
	ld   c, $01                                      ; $42bf: $0e $01
	ldh  a, [$89]                                    ; $42c1: $f0 $89
	or   a                                           ; $42c3: $b7
	jr   z, .cont_42e7                              ; $42c4: $28 $21

	sla  c                                           ; $42c6: $cb $21
	sra  d                                           ; $42c8: $cb $2a
	sra  e                                           ; $42ca: $cb $2b
	dec  a                                           ; $42cc: $3d
	jr   z, .cont_42e7                              ; $42cd: $28 $18

	sla  c                                           ; $42cf: $cb $21
	sra  d                                           ; $42d1: $cb $2a
	sra  e                                           ; $42d3: $cb $2b
	dec  a                                           ; $42d5: $3d
	jr   z, .cont_42e7                              ; $42d6: $28 $0f

	sla  c                                           ; $42d8: $cb $21
	sra  d                                           ; $42da: $cb $2a
	sra  e                                           ; $42dc: $cb $2b
	dec  a                                           ; $42de: $3d
	jr   z, .cont_42e7                              ; $42df: $28 $06

	sla  c                                           ; $42e1: $cb $21
	sra  d                                           ; $42e3: $cb $2a
	sra  e                                           ; $42e5: $cb $2b

.cont_42e7:
	ld   a, [$c650]                                  ; $42e7: $fa $50 $c6
	call Call_001_4484                               ; $42ea: $cd $84 $44
	ld   a, $01                                      ; $42ed: $3e $01
	ldh  [$86], a                                    ; $42ef: $e0 $86
	ld   a, c                                        ; $42f1: $79
	ldh  [$87], a                                    ; $42f2: $e0 $87
	ld   a, d                                        ; $42f4: $7a
	ldh  [$8e], a                                    ; $42f5: $e0 $8e
	ld   a, e                                        ; $42f7: $7b
	ldh  [$8f], a                                    ; $42f8: $e0 $8f

.cont_42fa:
	ldh  a, [$87]                                    ; $42fa: $f0 $87
	dec  a                                           ; $42fc: $3d
	ldh  [$87], a                                    ; $42fd: $e0 $87
	jr   nz, .br_4318                             ; $42ff: $20 $17

	ldh  a, [$8c]                                    ; $4301: $f0 $8c
	sla  a                                           ; $4303: $cb $27
	ld   e, a                                        ; $4305: $5f
	ld   d, $00                                      ; $4306: $16 $00
	ld   hl, $c602                                   ; $4308: $21 $02 $c6
	add  hl, de                                      ; $430b: $19
	ld   a, [hl+]                                    ; $430c: $2a
	ldh  [$84], a                                    ; $430d: $e0 $84
	ld   a, [hl]                                     ; $430f: $7e
	ldh  [$85], a                                    ; $4310: $e0 $85
	xor  a                                           ; $4312: $af
	ldh  [$86], a                                    ; $4313: $e0 $86
	jp   .common_41e2                               ; $4315: $c3 $e2 $41

.br_4318:
	ldh  a, [$8e]                                    ; $4318: $f0 $8e
	ld   e, a                                        ; $431a: $5f
	ldh  a, [$84]                                    ; $431b: $f0 $84
	add  e                                           ; $431d: $83
	ldh  [$84], a                                    ; $431e: $e0 $84
	ldh  a, [$8f]                                    ; $4320: $f0 $8f
	ld   e, a                                        ; $4322: $5f
	ldh  a, [$85]                                    ; $4323: $f0 $85
	add  e                                           ; $4325: $83
	ldh  [$85], a                                    ; $4326: $e0 $85
	jp   .common_41e2                               ; $4328: $c3 $e2 $41


Func_01_432b:
	ld   a, [$c64c]                                  ; $432b: $fa $4c $c6
	bit  7, a                                        ; $432e: $cb $7f
	ret  z                                           ; $4330: $c8

	ld   a, [$c64e]                                  ; $4331: $fa $4e $c6
	ld   [$c64c], a                                  ; $4334: $ea $4c $c6
	ret                                              ; $4337: $c9


Func_01_4338:
	ld   hl, $c64c                                   ; $4338: $21 $4c $c6
	ldh  a, [$8b]                                    ; $433b: $f0 $8b
	dec  a                                           ; $433d: $3d
	cp   [hl]                                        ; $433e: $be
	ret  nc                                          ; $433f: $d0

	ld   a, [$c64e]                                  ; $4340: $fa $4e $c6
	ld   [$c64c], a                                  ; $4343: $ea $4c $c6
	ret                                              ; $4346: $c9


Func_01_4347:
	ld   a, [$c64b]                                  ; $4347: $fa $4b $c6
	bit  7, a                                        ; $434a: $cb $7f
	ret  z                                           ; $434c: $c8

	ld   a, [$c64d]                                  ; $434d: $fa $4d $c6
	ld   [$c64b], a                                  ; $4350: $ea $4b $c6
	ret                                              ; $4353: $c9


Func_01_4354:
	ld   hl, $c64b                                   ; $4354: $21 $4b $c6
	ldh  a, [$8a]                                    ; $4357: $f0 $8a
	dec  a                                           ; $4359: $3d
	cp   [hl]                                        ; $435a: $be
	ret  nc                                          ; $435b: $d0

	ld   a, [$c64d]                                  ; $435c: $fa $4d $c6
	ld   [$c64b], a                                  ; $435f: $ea $4b $c6
	ret                                              ; $4362: $c9


Func_01_4363:
	ld   a, [$c64c]                                  ; $4363: $fa $4c $c6
	bit  7, a                                        ; $4366: $cb $7f
	ret  z                                           ; $4368: $c8

	ldh  a, [$88]                                    ; $4369: $f0 $88
	bit  7, a                                        ; $436b: $cb $7f
	jr   z, .br_4389                              ; $436d: $28 $1a

	and  $30                                         ; $436f: $e6 $30
	srl  a                                           ; $4371: $cb $3f
	srl  a                                           ; $4373: $cb $3f
	ld   c, a                                        ; $4375: $4f
	ld   b, $00                                      ; $4376: $06 $00
	ld   hl, Data_01_4464                                   ; $4378: $21 $64 $44
	add  hl, bc                                      ; $437b: $09
	ld   a, [wInGameButtonsPressed]                                  ; $437c: $fa $10 $c2
	and  [hl]                                        ; $437f: $a6
	jr   nz, .br_4389                             ; $4380: $20 $07

	ld   a, [$c64e]                                  ; $4382: $fa $4e $c6
	ld   [$c64c], a                                  ; $4385: $ea $4c $c6
	ret                                              ; $4388: $c9

.br_4389:
	ldh  a, [$8b]                                    ; $4389: $f0 $8b
	dec  a                                           ; $438b: $3d
	ld   [$c64c], a                                  ; $438c: $ea $4c $c6
	ret                                              ; $438f: $c9


Func_01_4390:
	ld   hl, $c64c                                   ; $4390: $21 $4c $c6
	ldh  a, [$8b]                                    ; $4393: $f0 $8b
	dec  a                                           ; $4395: $3d
	cp   [hl]                                        ; $4396: $be
	ret  nc                                          ; $4397: $d0

	ldh  a, [$88]                                    ; $4398: $f0 $88
	bit  7, a                                        ; $439a: $cb $7f
	jr   z, .br_43b9                              ; $439c: $28 $1b

	and  $30                                         ; $439e: $e6 $30
	srl  a                                           ; $43a0: $cb $3f
	srl  a                                           ; $43a2: $cb $3f
	inc  a                                           ; $43a4: $3c
	ld   c, a                                        ; $43a5: $4f
	ld   b, $00                                      ; $43a6: $06 $00
	ld   hl, Data_01_4464                                   ; $43a8: $21 $64 $44
	add  hl, bc                                      ; $43ab: $09
	ld   a, [wInGameButtonsPressed]                                  ; $43ac: $fa $10 $c2
	and  [hl]                                        ; $43af: $a6
	jr   nz, .br_43b9                             ; $43b0: $20 $07

	ld   a, [$c64e]                                  ; $43b2: $fa $4e $c6
	ld   [$c64c], a                                  ; $43b5: $ea $4c $c6
	ret                                              ; $43b8: $c9

.br_43b9:
	xor  a                                           ; $43b9: $af
	ld   [$c64c], a                                  ; $43ba: $ea $4c $c6
	ret                                              ; $43bd: $c9


Func_01_43be:
	ld   a, [$c64b]                                  ; $43be: $fa $4b $c6
	bit  7, a                                        ; $43c1: $cb $7f
	ret  z                                           ; $43c3: $c8

	ldh  a, [$88]                                    ; $43c4: $f0 $88
	bit  7, a                                        ; $43c6: $cb $7f
	jr   z, .br_43e6                              ; $43c8: $28 $1c

	and  $30                                         ; $43ca: $e6 $30
	srl  a                                           ; $43cc: $cb $3f
	srl  a                                           ; $43ce: $cb $3f
	inc  a                                           ; $43d0: $3c
	inc  a                                           ; $43d1: $3c
	ld   c, a                                        ; $43d2: $4f
	ld   b, $00                                      ; $43d3: $06 $00
	ld   hl, Data_01_4464                                   ; $43d5: $21 $64 $44
	add  hl, bc                                      ; $43d8: $09
	ld   a, [wInGameButtonsPressed]                                  ; $43d9: $fa $10 $c2
	and  [hl]                                        ; $43dc: $a6
	jr   nz, .br_43e6                             ; $43dd: $20 $07

	ld   a, [$c64d]                                  ; $43df: $fa $4d $c6
	ld   [$c64b], a                                  ; $43e2: $ea $4b $c6
	ret                                              ; $43e5: $c9

.br_43e6:
	ldh  a, [$8a]                                    ; $43e6: $f0 $8a
	dec  a                                           ; $43e8: $3d
	ld   [$c64b], a                                  ; $43e9: $ea $4b $c6
	ret                                              ; $43ec: $c9


Func_01_43ed:
	ld   hl, $c64b                                   ; $43ed: $21 $4b $c6
	ldh  a, [$8a]                                    ; $43f0: $f0 $8a
	dec  a                                           ; $43f2: $3d
	cp   [hl]                                        ; $43f3: $be
	ret  nc                                          ; $43f4: $d0

	ldh  a, [$88]                                    ; $43f5: $f0 $88
	bit  7, a                                        ; $43f7: $cb $7f
	jr   z, .br_4417                              ; $43f9: $28 $1c

	and  $30                                         ; $43fb: $e6 $30
	srl  a                                           ; $43fd: $cb $3f
	srl  a                                           ; $43ff: $cb $3f
	or   $03                                         ; $4401: $f6 $03
	ld   c, a                                        ; $4403: $4f
	ld   b, $00                                      ; $4404: $06 $00
	ld   hl, Data_01_4464                                   ; $4406: $21 $64 $44
	add  hl, bc                                      ; $4409: $09
	ld   a, [wInGameButtonsPressed]                                  ; $440a: $fa $10 $c2
	and  [hl]                                        ; $440d: $a6
	jr   nz, .br_4417                             ; $440e: $20 $07

	ld   a, [$c64d]                                  ; $4410: $fa $4d $c6
	ld   [$c64b], a                                  ; $4413: $ea $4b $c6
	ret                                              ; $4416: $c9

.br_4417:
	xor  a                                           ; $4417: $af
	ld   [$c64b], a                                  ; $4418: $ea $4b $c6
	ret                                              ; $441b: $c9


Data_01_441c:
	nop                                              ; $441c: $00
	inc  b                                           ; $441d: $04
	inc  bc                                          ; $441e: $03
	nop                                              ; $441f: $00
	ld   bc, $0304                                   ; $4420: $01 $04 $03
	ld   bc, $0402                                   ; $4423: $01 $02 $04
	inc  bc                                          ; $4426: $03
	ld   [bc], a                                     ; $4427: $02
	nop                                              ; $4428: $00
	inc  b                                           ; $4429: $04
	inc  bc                                          ; $442a: $03
	nop                                              ; $442b: $00
	nop                                              ; $442c: $00
	nop                                              ; $442d: $00
	nop                                              ; $442e: $00
	nop                                              ; $442f: $00
	ld   bc, $0101                                   ; $4430: $01 $01 $01
	ld   bc, $0202                                   ; $4433: $01 $02 $02
	ld   [bc], a                                     ; $4436: $02
	ld   [bc], a                                     ; $4437: $02
	nop                                              ; $4438: $00
	nop                                              ; $4439: $00
	nop                                              ; $443a: $00
	nop                                              ; $443b: $00
	nop                                              ; $443c: $00
	inc  b                                           ; $443d: $04
	inc  bc                                          ; $443e: $03
	nop                                              ; $443f: $00
	nop                                              ; $4440: $00
	inc  b                                           ; $4441: $04
	inc  bc                                          ; $4442: $03
	nop                                              ; $4443: $00
	nop                                              ; $4444: $00
	inc  b                                           ; $4445: $04
	inc  bc                                          ; $4446: $03
	nop                                              ; $4447: $00
	nop                                              ; $4448: $00
	inc  b                                           ; $4449: $04
	inc  bc                                          ; $444a: $03
	nop                                              ; $444b: $00
	nop                                              ; $444c: $00
	inc  b                                           ; $444d: $04
	inc  bc                                          ; $444e: $03
	nop                                              ; $444f: $00
	inc  bc                                          ; $4450: $03
	nop                                              ; $4451: $00
	inc  bc                                          ; $4452: $03
	inc  bc                                          ; $4453: $03
	inc  b                                           ; $4454: $04
	inc  b                                           ; $4455: $04
	nop                                              ; $4456: $00
	inc  b                                           ; $4457: $04
	nop                                              ; $4458: $00
	inc  b                                           ; $4459: $04
	inc  bc                                          ; $445a: $03
	nop                                              ; $445b: $00
	nop                                              ; $445c: $00
	rst  $38                                         ; $445d: $ff
	nop                                              ; $445e: $00
	ld   bc, $00ff                                   ; $445f: $01 $ff $00
	db $01, $00 
	
	
Data_01_4464:
	db $40
	add  b                                           ; $4465: $80
	db $20, $10

	ld   b, b                                        ; $4468: $40
	add  b                                           ; $4469: $80
	nop                                              ; $446a: $00
	nop                                              ; $446b: $00
	nop                                              ; $446c: $00
	nop                                              ; $446d: $00
	db $20, $10

	ld   h, b                                        ; $4470: $60
	sub  b                                           ; $4471: $90
	ld   h, b                                        ; $4472: $60
	sub  b                                           ; $4473: $90


Table_01_4474:
	dw Func_01_432b
	dw Func_01_4338
	dw Func_01_4347
	dw Func_01_4354
	dw Func_01_4363
	dw Func_01_4390
	dw Func_01_43be
	dw Func_01_43ed


Call_001_4484:
	push af                                          ; $4484: $f5
	ldh  a, [$88]                                    ; $4485: $f0 $88
	and  $04                                         ; $4487: $e6 $04
	jr   nz, .br_4484                             ; $4489: $20 $02

	pop  af                                          ; $448b: $f1
	ret                                              ; $448c: $c9

.br_4484:
	pop  af                                          ; $448d: $f1
	or   a                                           ; $448e: $b7
	ret  z                                           ; $448f: $c8

	call PlaySoundEffect                                       ; $4490: $cd $df $1a
	ret                                              ; $4493: $c9


AnimSpriteSpecType2Delete::
	ret                                              ; $4494: $c9


Func_01_4495::
	push de                                          ; $4495: $d5
	push hl                                          ; $4496: $e5
	ld   de, $0008                                   ; $4497: $11 $08 $00
	add  hl, de                                      ; $449a: $19
	set  3, [hl]                                     ; $449b: $cb $de
	pop  hl                                          ; $449d: $e1
	pop  de                                          ; $449e: $d1
	ret                                              ; $449f: $c9


Func_01_44a0::
	push de                                          ; $44a0: $d5
	push hl                                          ; $44a1: $e5
	ld   de, $0008                                   ; $44a2: $11 $08 $00
	add  hl, de                                      ; $44a5: $19
	res  3, [hl]                                     ; $44a6: $cb $9e
	pop  hl                                          ; $44a8: $e1
	pop  de                                          ; $44a9: $d1
	ret                                              ; $44aa: $c9


Func_01_44ab::
	ld   [$c650], a                                  ; $44ab: $ea $50 $c6
	ld   a, b                                        ; $44ae: $78
	ld   [$c651], a                                  ; $44af: $ea $51 $c6
	ld   a, c                                        ; $44b2: $79
	ld   [$c652], a                                  ; $44b3: $ea $52 $c6
	ret                                              ; $44b6: $c9


	push de                                          ; $44b7: $d5
	push hl                                          ; $44b8: $e5
	ld   de, $0008                                   ; $44b9: $11 $08 $00
	add  hl, de                                      ; $44bc: $19
	set  2, [hl]                                     ; $44bd: $cb $d6
	pop  hl                                          ; $44bf: $e1
	pop  de                                          ; $44c0: $d1
	ret                                              ; $44c1: $c9


	push de                                          ; $44c2: $d5
	push hl                                          ; $44c3: $e5
	ld   de, $0008                                   ; $44c4: $11 $08 $00
	add  hl, de                                      ; $44c7: $19
	res  2, [hl]                                     ; $44c8: $cb $96
	pop  hl                                          ; $44ca: $e1
	pop  de                                          ; $44cb: $d1
	ret                                              ; $44cc: $c9


	ld   de, $c602                                   ; $44cd: $11 $02 $c6
	ld   bc, $0040                                   ; $44d0: $01 $40 $00
	call FarMemCopy                                       ; $44d3: $cd $b2 $09
	ret                                              ; $44d6: $c9


Func_01_44d7::
	push de                                          ; $44d7: $d5
	push hl                                          ; $44d8: $e5
	push hl                                          ; $44d9: $e5
	ld   de, $000a                                   ; $44da: $11 $0a $00
	add  hl, de                                      ; $44dd: $19
	ld   a, [hl+]                                    ; $44de: $2a
	inc  hl                                          ; $44df: $23
	push hl                                          ; $44e0: $e5
	ld   h, c                                        ; $44e1: $61
	ld   l, a                                        ; $44e2: $6f
	call AequHtimesL                                       ; $44e3: $cd $ac $0b
	add  b                                           ; $44e6: $80
	pop  hl                                          ; $44e7: $e1
	ld   [hl], a                                     ; $44e8: $77
	sla  a                                           ; $44e9: $cb $27
	ld   e, a                                        ; $44eb: $5f
	ld   d, $00                                      ; $44ec: $16 $00
	ld   hl, $c602                                   ; $44ee: $21 $02 $c6
	add  hl, de                                      ; $44f1: $19
	ld   a, [hl+]                                    ; $44f2: $2a
	ld   b, a                                        ; $44f3: $47
	ld   c, [hl]                                     ; $44f4: $4e
	pop  hl                                          ; $44f5: $e1
	ld   de, $0004                                   ; $44f6: $11 $04 $00
	add  hl, de                                      ; $44f9: $19
	ld   a, b                                        ; $44fa: $78
	ld   [hl+], a                                    ; $44fb: $22
	ld   [hl], c                                     ; $44fc: $71
	pop  hl                                          ; $44fd: $e1
	pop  de                                          ; $44fe: $d1
	ret                                              ; $44ff: $c9


Func_01_4500::
	push de                                          ; $4500: $d5
	push hl                                          ; $4501: $e5
	ld   de, $000c                                   ; $4502: $11 $0c $00
	add  hl, de                                      ; $4505: $19
	ld   a, [hl]                                     ; $4506: $7e
	pop  hl                                          ; $4507: $e1
	pop  de                                          ; $4508: $d1
	ret                                              ; $4509: $c9


Func_01_450a::
	push de                                          ; $450a: $d5
	push hl                                          ; $450b: $e5
	ld   de, $000d                                   ; $450c: $11 $0d $00
	add  hl, de                                      ; $450f: $19
	ld   a, [hl]                                     ; $4510: $7e
	pop  hl                                          ; $4511: $e1
	pop  de                                          ; $4512: $d1
	ret                                              ; $4513: $c9


SECTION "Bank $01, $7000", ROMX[$7000], BANK[$1]

Palettes_AllWhite::
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f


SECTION "Bank $01, $7180", ROMX[$7180], BANK[$1]

AnimatedSpriteSpecs::
	dw $7261
	dw $7264
	dw $7276
	dw $726d
	dw $7282
	dw $7279
	dw $7285
	dw $7291
	dw $7294
	dw $729d
	dw $729a
	dw $72a3
	dw $72a0
	dw $72a6
	dw $72cd
	dw $72d6
	dw $72e8
	dw $72dc
	dw $72e5
	dw $72ee
	dw $72f7
	dw $72fd
	dw $7303
	dw $7309
	dw $730f
	dw $7315
	dw $731b
	dw $7321
	dw $7327
	dw $7342
	dw $7348
	dw $7351
	dw $73f0
	dw $736f
	dw $738d
	dw $73ab
	dw $73c9
	dw $7360
	dw $73e7
	dw $73f9
	dw $7402
	dw $73ff
	dw $740b
	dw $7405
	dw $740e
	dw AnimatedSpriteSpec_2d
	dw AnimatedSpriteSpec_2e
	dw AnimatedSpriteSpec_2f
	dw AnimatedSpriteSpec_30
	dw $743b
	dw $7447
	dw $7450
	dw $745c
	dw $7471
	dw $7474
	dw $7477
	dw $7468
	dw $747d
	dw $747a
	dw $7483
	dw $7486
	dw $7489
	dw $748c
	dw $748f
	dw $7492
	dw $74b9
	dw $74bc
	dw $74e3
	dw $74e6
	dw $74e9
	dw $74ec
	dw $74ef
	dw $74f2
	dw $7504
	dw $7507
	dw $7519
	dw $7534
	dw $754c
	dw $755e
	dw $756d
	dw $761b
	dw $75f4
	dw $75a6
	dw $75be
	dw $7579
	dw $758b
	dw $75e8
	dw $75c1
	dw $75d3
	dw $7699
	dw $769c
	dw $769f
	dw $76a2
	dw $76a5
	dw $76a8
	dw $76ab
	dw $764b
	dw $7672
	dw $76ae
	dw $76b7
	dw $76c0
	dw $76c9
	dw $76d2
	dw $76db
	dw $7705
	dw $7714
	dw $7723
	dw $7732
	dw $7741
	dw $7750
	dw $76e4
	dw $76ed
	dw $76ff
	dw $76f9


	add  b                                           ; $7264: $80
	nop                                              ; $7265: $00
	nop                                              ; $7266: $00
	ld   [bc], a                                     ; $7267: $02
	reti                                             ; $7268: $d9


	inc  bc                                          ; $7269: $03
	ld   [bc], a                                     ; $726a: $02
	jp   c, $8203                                    ; $726b: $da $03 $82

	ld   h, a                                        ; $726e: $67
	ld   [hl], d                                     ; $726f: $72
	ld   [bc], a                                     ; $7270: $02
	pop  de                                          ; $7271: $d1
	inc  b                                           ; $7272: $04
	ld   [bc], a                                     ; $7273: $02
	jp   nc, $0205                                   ; $7274: $d2 $05 $02

	db   $d3                                         ; $7277: $d3
	jr   jr_001_727c                                 ; $7278: $18 $02

	ret  nc                                          ; $727a: $d0

	nop                                              ; $727b: $00

jr_001_727c:
	ld   [bc], a                                     ; $727c: $02
	push de                                          ; $727d: $d5
	ld   [bc], a                                     ; $727e: $02
	ld   [bc], a                                     ; $727f: $02
	sub  $03                                         ; $7280: $d6 $03
	ld   [bc], a                                     ; $7282: $02
	rst  $10                                         ; $7283: $d7

jr_001_7284:
	db   $10                                         ; $7284: $10
	ld   [bc], a                                     ; $7285: $02
	call nc, $0200                                   ; $7286: $d4 $00 $02
	db   $dd                                         ; $7289: $dd
	inc  bc                                          ; $728a: $03
	ld   [bc], a                                     ; $728b: $02
	ret  c                                           ; $728c: $d8

	ld   a, [bc]                                     ; $728d: $0a
	ld   [bc], a                                     ; $728e: $02
	call c, $821e                                    ; $728f: $dc $1e $82
	add  l                                           ; $7292: $85
	ld   [hl], d                                     ; $7293: $72
	add  b                                           ; $7294: $80
	ld   bc, $0200                                   ; $7295: $01 $00 $02
	db   $db                                         ; $7298: $db
	inc  b                                           ; $7299: $04
	add  b                                           ; $729a: $80
	nop                                              ; $729b: $00

jr_001_729c:
	nop                                              ; $729c: $00
	add  b                                           ; $729d: $80
	ld   [$0200], sp                                 ; $729e: $08 $00 $02
	nop                                              ; $72a1: $00
	nop                                              ; $72a2: $00
	add  b                                           ; $72a3: $80
	ld   [$0200], sp                                 ; $72a4: $08 $00 $02
	ld   bc, $0200                                   ; $72a7: $01 $00 $02
	dec  d                                           ; $72aa: $15
	dec  b                                           ; $72ab: $05
	ld   [bc], a                                     ; $72ac: $02
	ld   d, $05                                      ; $72ad: $16 $05
	ld   [bc], a                                     ; $72af: $02
	rla                                              ; $72b0: $17
	dec  b                                           ; $72b1: $05
	ld   [bc], a                                     ; $72b2: $02
	jr   jr_001_72ba                                 ; $72b3: $18 $05

	ld   [bc], a                                     ; $72b5: $02
	add  hl, de                                      ; $72b6: $19
	dec  b                                           ; $72b7: $05
	ld   [bc], a                                     ; $72b8: $02
	ld   a, [de]                                     ; $72b9: $1a

jr_001_72ba:
	dec  b                                           ; $72ba: $05
	ld   [bc], a                                     ; $72bb: $02
	dec  de                                          ; $72bc: $1b
	dec  b                                           ; $72bd: $05
	ld   [bc], a                                     ; $72be: $02
	inc  e                                           ; $72bf: $1c
	dec  b                                           ; $72c0: $05
	ld   [bc], a                                     ; $72c1: $02
	dec  e                                           ; $72c2: $1d
	dec  b                                           ; $72c3: $05
	ld   [bc], a                                     ; $72c4: $02
	ld   e, $05                                      ; $72c5: $1e $05
	ld   [bc], a                                     ; $72c7: $02
	rra                                              ; $72c8: $1f
	dec  b                                           ; $72c9: $05
	ld   [bc], a                                     ; $72ca: $02
	jr   nz, jr_001_72d2                             ; $72cb: $20 $05

	add  d                                           ; $72cd: $82
	xor  c                                           ; $72ce: $a9
	ld   [hl], d                                     ; $72cf: $72
	ld   [bc], a                                     ; $72d0: $02
	ld   [hl+], a                                    ; $72d1: $22

jr_001_72d2:
	ld   [bc], a                                     ; $72d2: $02
	ld   [bc], a                                     ; $72d3: $02
	ld   hl, $8002                                   ; $72d4: $21 $02 $80
	nop                                              ; $72d7: $00
	nop                                              ; $72d8: $00
	ld   [bc], a                                     ; $72d9: $02
	ld   hl, $0202                                   ; $72da: $21 $02 $02
	ld   [hl+], a                                    ; $72dd: $22
	ld   [bc], a                                     ; $72de: $02
	ld   [bc], a                                     ; $72df: $02
	daa                                              ; $72e0: $27
	db   $10                                         ; $72e1: $10
	ld   [bc], a                                     ; $72e2: $02
	add  hl, hl                                      ; $72e3: $29
	db   $10                                         ; $72e4: $10
	add  d                                           ; $72e5: $82
	rst  JumpTable                                         ; $72e6: $df
	ld   [hl], d                                     ; $72e7: $72
	ld   [bc], a                                     ; $72e8: $02
	daa                                              ; $72e9: $27
	nop                                              ; $72ea: $00
	ld   [bc], a                                     ; $72eb: $02
	ld   hl, $0202                                   ; $72ec: $21 $02 $02
	ld   [hl+], a                                    ; $72ef: $22
	ld   [bc], a                                     ; $72f0: $02
	ld   [bc], a                                     ; $72f1: $02
	jr   z, jr_001_7304                              ; $72f2: $28 $10

	ld   [bc], a                                     ; $72f4: $02
	add  hl, hl                                      ; $72f5: $29
	db   $10                                         ; $72f6: $10
	add  d                                           ; $72f7: $82
	pop  af                                          ; $72f8: $f1
	ld   [hl], d                                     ; $72f9: $72
	add  b                                           ; $72fa: $80
	inc  b                                           ; $72fb: $04
	nop                                              ; $72fc: $00
	ld   [bc], a                                     ; $72fd: $02
	inc  hl                                          ; $72fe: $23
	nop                                              ; $72ff: $00
	ld   [bc], a                                     ; $7300: $02
	inc  hl                                          ; $7301: $23
	jr   z, jr_001_7284                              ; $7302: $28 $80

jr_001_7304:
	nop                                              ; $7304: $00
	nop                                              ; $7305: $00
	add  b                                           ; $7306: $80
	inc  b                                           ; $7307: $04
	nop                                              ; $7308: $00
	ld   [bc], a                                     ; $7309: $02
	inc  h                                           ; $730a: $24
	nop                                              ; $730b: $00
	ld   [bc], a                                     ; $730c: $02
	inc  h                                           ; $730d: $24
	jr   z, @-$7e                                    ; $730e: $28 $80

	nop                                              ; $7310: $00
	nop                                              ; $7311: $00
	add  b                                           ; $7312: $80
	inc  b                                           ; $7313: $04
	nop                                              ; $7314: $00
	ld   [bc], a                                     ; $7315: $02
	dec  h                                           ; $7316: $25
	nop                                              ; $7317: $00
	ld   [bc], a                                     ; $7318: $02
	dec  h                                           ; $7319: $25
	jr   z, jr_001_729c                              ; $731a: $28 $80

	nop                                              ; $731c: $00
	nop                                              ; $731d: $00
	add  b                                           ; $731e: $80
	inc  b                                           ; $731f: $04
	nop                                              ; $7320: $00
	ld   [bc], a                                     ; $7321: $02
	ld   h, $00                                      ; $7322: $26 $00
	ld   [bc], a                                     ; $7324: $02
	ld   h, $28                                      ; $7325: $26 $28
	add  b                                           ; $7327: $80
	nop                                              ; $7328: $00
	nop                                              ; $7329: $00
	ld   [bc], a                                     ; $732a: $02
	add  hl, hl                                      ; $732b: $29
	inc  b                                           ; $732c: $04
	ld   [bc], a                                     ; $732d: $02
	daa                                              ; $732e: $27
	inc  b                                           ; $732f: $04
	ld   [bc], a                                     ; $7330: $02
	add  hl, hl                                      ; $7331: $29
	inc  b                                           ; $7332: $04
	ld   [bc], a                                     ; $7333: $02
	daa                                              ; $7334: $27
	inc  b                                           ; $7335: $04
	ld   [bc], a                                     ; $7336: $02
	add  hl, hl                                      ; $7337: $29
	inc  b                                           ; $7338: $04
	ld   [bc], a                                     ; $7339: $02
	daa                                              ; $733a: $27
	inc  d                                           ; $733b: $14
	ld   [bc], a                                     ; $733c: $02
	ld   [hl+], a                                    ; $733d: $22
	ld   [bc], a                                     ; $733e: $02
	ld   [bc], a                                     ; $733f: $02
	ld   hl, $0202                                   ; $7340: $21 $02 $02
	ld   a, [hl+]                                    ; $7343: $2a
	nop                                              ; $7344: $00
	ld   [bc], a                                     ; $7345: $02
	ld   hl, $8002                                   ; $7346: $21 $02 $80
	nop                                              ; $7349: $00
	nop                                              ; $734a: $00
	ld   [bc], a                                     ; $734b: $02
	ld   hl, $0202                                   ; $734c: $21 $02 $02
	ld   [hl+], a                                    ; $734f: $22
	ld   [bc], a                                     ; $7350: $02
	ld   [bc], a                                     ; $7351: $02
	dec  hl                                          ; $7352: $2b
	nop                                              ; $7353: $00


	ld   [bc], a                                     ; $7354: $02
	inc  l                                           ; $7355: $2c
	rlca                                             ; $7356: $07

	ld   [bc], a                                     ; $7357: $02
	dec  l                                           ; $7358: $2d
	rlca                                             ; $7359: $07

	ld   [bc], a                                     ; $735a: $02
	ld   l, $07                                      ; $735b: $2e $07

	ld   [bc], a                                     ; $735d: $02
	dec  l                                           ; $735e: $2d
	rlca                                             ; $735f: $07

	add  d                                           ; $7360: $82
	ld   d, h                                        ; $7361: $54
	ld   [hl], e                                     ; $7362: $73

	ld   a, [bc]                                     ; $7363: $0a
	ld   e, l                                        ; $7364: $5d
	rlca                                             ; $7365: $07
	ld   a, [bc]                                     ; $7366: $0a
	ld   e, [hl]                                     ; $7367: $5e
	rlca                                             ; $7368: $07
	ld   a, [bc]                                     ; $7369: $0a
	ld   e, a                                        ; $736a: $5f
	rlca                                             ; $736b: $07
	ld   a, [bc]                                     ; $736c: $0a
	ld   e, [hl]                                     ; $736d: $5e
	rlca                                             ; $736e: $07
	add  d                                           ; $736f: $82
	ld   h, e                                        ; $7370: $63
	ld   [hl], e                                     ; $7371: $73
	ld   a, [bc]                                     ; $7372: $0a
	ld   h, a                                        ; $7373: $67
	ld   b, $0a                                      ; $7374: $06 $0a
	ld   l, b                                        ; $7376: $68
	dec  b                                           ; $7377: $05
	ld   a, [bc]                                     ; $7378: $0a
	ld   l, c                                        ; $7379: $69
	inc  bc                                          ; $737a: $03
	ld   a, [bc]                                     ; $737b: $0a
	ld   l, d                                        ; $737c: $6a
	ld   h, b                                        ; $737d: $60
	ld   a, [bc]                                     ; $737e: $0a
	ld   l, e                                        ; $737f: $6b
	inc  bc                                          ; $7380: $03
	ld   a, [bc]                                     ; $7381: $0a
	ld   l, d                                        ; $7382: $6a
	jr   nc, jr_001_738f                             ; $7383: $30 $0a

	ld   l, h                                        ; $7385: $6c
	inc  bc                                          ; $7386: $03
	ld   a, [bc]                                     ; $7387: $0a
	ld   l, e                                        ; $7388: $6b
	inc  bc                                          ; $7389: $03
	ld   a, [bc]                                     ; $738a: $0a
	ld   l, h                                        ; $738b: $6c
	inc  bc                                          ; $738c: $03
	add  d                                           ; $738d: $82
	ld   a, e                                        ; $738e: $7b

jr_001_738f:
	ld   [hl], e                                     ; $738f: $73
	ld   a, [bc]                                     ; $7390: $0a
	ld   h, a                                        ; $7391: $67
	ld   b, $0a                                      ; $7392: $06 $0a
	ld   l, b                                        ; $7394: $68
	dec  b                                           ; $7395: $05
	ld   a, [bc]                                     ; $7396: $0a
	ld   l, c                                        ; $7397: $69
	inc  bc                                          ; $7398: $03
	ld   a, [bc]                                     ; $7399: $0a
	ld   l, l                                        ; $739a: $6d
	ld   h, b                                        ; $739b: $60
	ld   a, [bc]                                     ; $739c: $0a
	ld   l, [hl]                                     ; $739d: $6e
	inc  bc                                          ; $739e: $03
	ld   a, [bc]                                     ; $739f: $0a
	ld   l, l                                        ; $73a0: $6d
	jr   nc, jr_001_73ad                             ; $73a1: $30 $0a

	ld   l, a                                        ; $73a3: $6f
	inc  bc                                          ; $73a4: $03
	ld   a, [bc]                                     ; $73a5: $0a
	ld   l, [hl]                                     ; $73a6: $6e
	inc  bc                                          ; $73a7: $03
	ld   a, [bc]                                     ; $73a8: $0a
	ld   l, a                                        ; $73a9: $6f
	inc  bc                                          ; $73aa: $03
	add  d                                           ; $73ab: $82
	sbc  c                                           ; $73ac: $99

jr_001_73ad:
	ld   [hl], e                                     ; $73ad: $73
	ld   a, [bc]                                     ; $73ae: $0a
	ld   h, a                                        ; $73af: $67
	ld   b, $0a                                      ; $73b0: $06 $0a
	ld   l, b                                        ; $73b2: $68
	dec  b                                           ; $73b3: $05
	ld   a, [bc]                                     ; $73b4: $0a
	ld   l, c                                        ; $73b5: $69
	inc  bc                                          ; $73b6: $03
	ld   a, [bc]                                     ; $73b7: $0a
	ld   [hl], b                                     ; $73b8: $70
	ld   h, b                                        ; $73b9: $60
	ld   a, [bc]                                     ; $73ba: $0a
	ld   [hl], c                                     ; $73bb: $71
	inc  bc                                          ; $73bc: $03
	ld   a, [bc]                                     ; $73bd: $0a
	ld   [hl], b                                     ; $73be: $70
	jr   nc, jr_001_73cb                             ; $73bf: $30 $0a

	ld   [hl], d                                     ; $73c1: $72
	inc  bc                                          ; $73c2: $03
	ld   a, [bc]                                     ; $73c3: $0a
	ld   [hl], c                                     ; $73c4: $71
	inc  bc                                          ; $73c5: $03
	ld   a, [bc]                                     ; $73c6: $0a
	ld   [hl], d                                     ; $73c7: $72
	inc  bc                                          ; $73c8: $03
	add  d                                           ; $73c9: $82
	or   a                                           ; $73ca: $b7

jr_001_73cb:
	ld   [hl], e                                     ; $73cb: $73
	ld   a, [bc]                                     ; $73cc: $0a
	ld   h, a                                        ; $73cd: $67
	ld   b, $0a                                      ; $73ce: $06 $0a
	ld   l, b                                        ; $73d0: $68
	dec  b                                           ; $73d1: $05
	ld   a, [bc]                                     ; $73d2: $0a
	ld   l, c                                        ; $73d3: $69
	inc  bc                                          ; $73d4: $03
	ld   a, [bc]                                     ; $73d5: $0a
	ld   [hl], e                                     ; $73d6: $73
	ld   h, b                                        ; $73d7: $60
	ld   a, [bc]                                     ; $73d8: $0a
	ld   [hl], h                                     ; $73d9: $74
	inc  bc                                          ; $73da: $03
	ld   a, [bc]                                     ; $73db: $0a
	ld   [hl], e                                     ; $73dc: $73
	jr   nc, jr_001_73e9                             ; $73dd: $30 $0a

	ld   [hl], l                                     ; $73df: $75
	inc  bc                                          ; $73e0: $03
	ld   a, [bc]                                     ; $73e1: $0a
	ld   [hl], h                                     ; $73e2: $74
	inc  bc                                          ; $73e3: $03
	ld   a, [bc]                                     ; $73e4: $0a
	ld   [hl], l                                     ; $73e5: $75
	inc  bc                                          ; $73e6: $03
	add  d                                           ; $73e7: $82
	push de                                          ; $73e8: $d5

jr_001_73e9:
	ld   [hl], e                                     ; $73e9: $73
	ld   a, [bc]                                     ; $73ea: $0a
	ld   l, c                                        ; $73eb: $69
	inc  bc                                          ; $73ec: $03
	ld   a, [bc]                                     ; $73ed: $0a
	ld   l, b                                        ; $73ee: $68
	dec  b                                           ; $73ef: $05
	ld   a, [bc]                                     ; $73f0: $0a
	ld   h, a                                        ; $73f1: $67
	ld   b, $0a                                      ; $73f2: $06 $0a
	ld   h, l                                        ; $73f4: $65
	inc  b                                           ; $73f5: $04
	ld   a, [bc]                                     ; $73f6: $0a
	ld   h, [hl]                                     ; $73f7: $66
	inc  b                                           ; $73f8: $04
	add  d                                           ; $73f9: $82
	di                                               ; $73fa: $f3
	ld   [hl], e                                     ; $73fb: $73
	ld   a, [bc]                                     ; $73fc: $0a
	ld   h, d                                        ; $73fd: $62
	db   $10                                         ; $73fe: $10
	add  d                                           ; $73ff: $82
	db   $fc                                         ; $7400: $fc
	ld   [hl], e                                     ; $7401: $73
	ld   a, [bc]                                     ; $7402: $0a
	ld   h, c                                        ; $7403: $61
	ld   [$600a], sp                                 ; $7404: $08 $0a $60
	nop                                              ; $7407: $00
	ld   [bc], a                                     ; $7408: $02
	dec  [hl]                                        ; $7409: $35
	jr   nz, jr_001_740e                             ; $740a: $20 $02

	ld   [hl], $10                                   ; $740c: $36 $10

jr_001_740e:
	ld   [bc], a                                     ; $740e: $02
	dec  [hl]                                        ; $740f: $35
	nop                                              ; $7410: $00
	ld   [bc], a                                     ; $7411: $02
	scf                                              ; $7412: $37
	dec  b                                           ; $7413: $05


AnimatedSpriteSpec_2d:
	db $02, $38, $00
:	db $02, $3a, $0c
	db $80, $0c, $00

AnimatedSpriteSpec_2e:
	db $82
	dw :-


:	db $02, $3b, $0c
	db $80, $0c, $00

AnimatedSpriteSpec_2f:
	db $82
	dw :-


:	db $02, $3c, $0c
	db $80, $0c, $00

AnimatedSpriteSpec_30:
	db $82
	dw :-
	

	ld   [bc], a                                     ; $7432: $02
	dec  a                                           ; $7433: $3d
	add  hl, bc                                      ; $7434: $09
	ld   [bc], a                                     ; $7435: $02
	ccf                                              ; $7436: $3f
	ld   b, $02                                      ; $7437: $06 $02
	ld   b, c                                        ; $7439: $41
	ld   b, $82                                      ; $743a: $06 $82
	ld   [hl-], a                                    ; $743c: $32
	ld   [hl], h                                     ; $743d: $74
	ld   [bc], a                                     ; $743e: $02
	ld   a, $09                                      ; $743f: $3e $09
	ld   [bc], a                                     ; $7441: $02
	ld   b, b                                        ; $7442: $40
	ld   b, $02                                      ; $7443: $06 $02
	ld   b, d                                        ; $7445: $42
	ld   b, $82                                      ; $7446: $06 $82
	ld   a, $74                                      ; $7448: $3e $74
	ld   [bc], a                                     ; $744a: $02
	ld   b, e                                        ; $744b: $43
	add  hl, bc                                      ; $744c: $09
	ld   [bc], a                                     ; $744d: $02
	ld   b, h                                        ; $744e: $44
	add  hl, bc                                      ; $744f: $09
	add  d                                           ; $7450: $82
	ld   c, d                                        ; $7451: $4a
	ld   [hl], h                                     ; $7452: $74
	ld   [bc], a                                     ; $7453: $02
	ld   b, l                                        ; $7454: $45
	inc  bc                                          ; $7455: $03
	ld   [bc], a                                     ; $7456: $02
	ld   b, [hl]                                     ; $7457: $46
	inc  b                                           ; $7458: $04
	ld   [bc], a                                     ; $7459: $02
	ld   b, a                                        ; $745a: $47
	ld   b, $82                                      ; $745b: $06 $82
	ld   d, e                                        ; $745d: $53
	ld   [hl], h                                     ; $745e: $74
	ld   [bc], a                                     ; $745f: $02
	ld   c, h                                        ; $7460: $4c
	jr   nc, jr_001_7465                             ; $7461: $30 $02

	ld   c, l                                        ; $7463: $4d
	ld   b, b                                        ; $7464: $40

jr_001_7465:
	ld   [bc], a                                     ; $7465: $02
	ld   c, [hl]                                     ; $7466: $4e
	ld   b, b                                        ; $7467: $40
	ld   [bc], a                                     ; $7468: $02
	ld   c, a                                        ; $7469: $4f
	ld   b, b                                        ; $746a: $40
	ld   [bc], a                                     ; $746b: $02
	ld   d, b                                        ; $746c: $50
	dec  b                                           ; $746d: $05
	ld   [bc], a                                     ; $746e: $02
	ld   d, c                                        ; $746f: $51
	dec  b                                           ; $7470: $05
	add  d                                           ; $7471: $82
	ld   l, e                                        ; $7472: $6b
	ld   [hl], h                                     ; $7473: $74
	ld   [bc], a                                     ; $7474: $02
	ld   d, l                                        ; $7475: $55
	nop                                              ; $7476: $00
	ld   [bc], a                                     ; $7477: $02
	ld   d, h                                        ; $7478: $54
	nop                                              ; $7479: $00
	ld   [bc], a                                     ; $747a: $02
	ld   c, e                                        ; $747b: $4b
	nop                                              ; $747c: $00
	ld   [bc], a                                     ; $747d: $02
	ld   d, l                                        ; $747e: $55
	nop                                              ; $747f: $00
	ld   [bc], a                                     ; $7480: $02
	ld   d, d                                        ; $7481: $52
	nop                                              ; $7482: $00
	ld   a, [bc]                                     ; $7483: $0a
	ld   e, c                                        ; $7484: $59
	nop                                              ; $7485: $00
	ld   [bc], a                                     ; $7486: $02
	ld   d, [hl]                                     ; $7487: $56
	nop                                              ; $7488: $00
	ld   [bc], a                                     ; $7489: $02
	ld   d, a                                        ; $748a: $57
	nop                                              ; $748b: $00
	ld   [bc], a                                     ; $748c: $02
	ld   e, b                                        ; $748d: $58
	nop                                              ; $748e: $00
	ld   [bc], a                                     ; $748f: $02
	ld   e, c                                        ; $7490: $59
	nop                                              ; $7491: $00
	ld   [bc], a                                     ; $7492: $02
	ld   e, d                                        ; $7493: $5a
	nop                                              ; $7494: $00
	ld   [bc], a                                     ; $7495: $02
	ld   e, e                                        ; $7496: $5b
	inc  bc                                          ; $7497: $03
	ld   [bc], a                                     ; $7498: $02
	ld   e, [hl]                                     ; $7499: $5e
	inc  bc                                          ; $749a: $03
	ld   [bc], a                                     ; $749b: $02
	ld   e, e                                        ; $749c: $5b

jr_001_749d:
	inc  bc                                          ; $749d: $03
	ld   [bc], a                                     ; $749e: $02
	ld   e, [hl]                                     ; $749f: $5e
	add  hl, hl                                      ; $74a0: $29
	ld   [bc], a                                     ; $74a1: $02
	ld   e, e                                        ; $74a2: $5b
	inc  bc                                          ; $74a3: $03
	ld   [bc], a                                     ; $74a4: $02
	ld   e, h                                        ; $74a5: $5c
	inc  bc                                          ; $74a6: $03
	ld   [bc], a                                     ; $74a7: $02
	ld   e, e                                        ; $74a8: $5b
	inc  bc                                          ; $74a9: $03
	ld   [bc], a                                     ; $74aa: $02
	ld   e, h                                        ; $74ab: $5c
	inc  bc                                          ; $74ac: $03
	ld   [bc], a                                     ; $74ad: $02
	ld   e, e                                        ; $74ae: $5b
	ld   [bc], a                                     ; $74af: $02
	ld   [bc], a                                     ; $74b0: $02
	ld   e, h                                        ; $74b1: $5c
	ld   [bc], a                                     ; $74b2: $02
	ld   [bc], a                                     ; $74b3: $02
	ld   e, l                                        ; $74b4: $5d
	inc  bc                                          ; $74b5: $03
	ld   [bc], a                                     ; $74b6: $02
	ld   e, [hl]                                     ; $74b7: $5e
	dec  [hl]                                        ; $74b8: $35
	add  d                                           ; $74b9: $82
	sub  l                                           ; $74ba: $95
	ld   [hl], h                                     ; $74bb: $74
	ld   [bc], a                                     ; $74bc: $02
	ld   e, a                                        ; $74bd: $5f
	nop                                              ; $74be: $00
	ld   [bc], a                                     ; $74bf: $02
	ld   h, b                                        ; $74c0: $60
	inc  bc                                          ; $74c1: $03
	ld   [bc], a                                     ; $74c2: $02
	ld   h, e                                        ; $74c3: $63
	inc  bc                                          ; $74c4: $03
	ld   [bc], a                                     ; $74c5: $02
	ld   h, b                                        ; $74c6: $60
	inc  bc                                          ; $74c7: $03
	ld   [bc], a                                     ; $74c8: $02
	ld   h, e                                        ; $74c9: $63
	add  hl, hl                                      ; $74ca: $29
	ld   [bc], a                                     ; $74cb: $02
	ld   h, b                                        ; $74cc: $60
	inc  bc                                          ; $74cd: $03
	ld   [bc], a                                     ; $74ce: $02
	ld   h, c                                        ; $74cf: $61
	inc  bc                                          ; $74d0: $03
	ld   [bc], a                                     ; $74d1: $02
	ld   h, b                                        ; $74d2: $60
	inc  bc                                          ; $74d3: $03
	ld   [bc], a                                     ; $74d4: $02
	ld   h, c                                        ; $74d5: $61
	inc  bc                                          ; $74d6: $03
	ld   [bc], a                                     ; $74d7: $02
	ld   h, b                                        ; $74d8: $60
	ld   [bc], a                                     ; $74d9: $02
	ld   [bc], a                                     ; $74da: $02
	ld   h, c                                        ; $74db: $61
	ld   [bc], a                                     ; $74dc: $02
	ld   [bc], a                                     ; $74dd: $02
	ld   h, d                                        ; $74de: $62
	inc  bc                                          ; $74df: $03
	ld   [bc], a                                     ; $74e0: $02
	ld   h, e                                        ; $74e1: $63
	dec  [hl]                                        ; $74e2: $35
	add  d                                           ; $74e3: $82
	cp   a                                           ; $74e4: $bf
	ld   [hl], h                                     ; $74e5: $74
	ld   [bc], a                                     ; $74e6: $02
	ld   h, h                                        ; $74e7: $64
	nop                                              ; $74e8: $00
	ld   [bc], a                                     ; $74e9: $02
	ld   h, l                                        ; $74ea: $65
	nop                                              ; $74eb: $00
	ld   [bc], a                                     ; $74ec: $02
	ld   h, [hl]                                     ; $74ed: $66
	nop                                              ; $74ee: $00
	ld   [bc], a                                     ; $74ef: $02
	ld   h, a                                        ; $74f0: $67
	nop                                              ; $74f1: $00
	ld   [bc], a                                     ; $74f2: $02
	ld   l, b                                        ; $74f3: $68
	nop                                              ; $74f4: $00
	ld   [bc], a                                     ; $74f5: $02
	ld   l, c                                        ; $74f6: $69
	inc  b                                           ; $74f7: $04
	ld   [bc], a                                     ; $74f8: $02
	ld   l, d                                        ; $74f9: $6a
	ld   [$6b02], sp                                 ; $74fa: $08 $02 $6b
	ld   a, [bc]                                     ; $74fd: $0a
	ld   [bc], a                                     ; $74fe: $02
	ld   l, h                                        ; $74ff: $6c
	dec  bc                                          ; $7500: $0b
	ld   [bc], a                                     ; $7501: $02
	ld   l, l                                        ; $7502: $6d
	inc  hl                                          ; $7503: $23
	add  d                                           ; $7504: $82
	push af                                          ; $7505: $f5
	ld   [hl], h                                     ; $7506: $74
	ld   [bc], a                                     ; $7507: $02
	ld   l, [hl]                                     ; $7508: $6e
	nop                                              ; $7509: $00
	ld   [bc], a                                     ; $750a: $02
	ld   l, a                                        ; $750b: $6f
	inc  b                                           ; $750c: $04
	ld   [bc], a                                     ; $750d: $02
	ld   [hl], b                                     ; $750e: $70
	ld   [$7102], sp                                 ; $750f: $08 $02 $71
	ld   a, [bc]                                     ; $7512: $0a
	ld   [bc], a                                     ; $7513: $02
	ld   [hl], d                                     ; $7514: $72
	dec  bc                                          ; $7515: $0b
	ld   [bc], a                                     ; $7516: $02
	ld   [hl], e                                     ; $7517: $73
	inc  hl                                          ; $7518: $23
	add  d                                           ; $7519: $82
	ld   a, [bc]                                     ; $751a: $0a
	ld   [hl], l                                     ; $751b: $75
	ld   [bc], a                                     ; $751c: $02
	ld   a, e                                        ; $751d: $7b
	ld   [bc], a                                     ; $751e: $02
	ld   [bc], a                                     ; $751f: $02
	ld   a, h                                        ; $7520: $7c
	ld   [bc], a                                     ; $7521: $02
	ld   [bc], a                                     ; $7522: $02
	ld   a, l                                        ; $7523: $7d
	ld   [bc], a                                     ; $7524: $02
	ld   [bc], a                                     ; $7525: $02
	ld   a, [hl]                                     ; $7526: $7e
	ld   [bc], a                                     ; $7527: $02
	ld   [bc], a                                     ; $7528: $02
	ld   a, a                                        ; $7529: $7f
	ld   [bc], a                                     ; $752a: $02
	ld   [bc], a                                     ; $752b: $02
	add  b                                           ; $752c: $80
	ld   [bc], a                                     ; $752d: $02
	ld   [bc], a                                     ; $752e: $02
	add  c                                           ; $752f: $81
	ld   [bc], a                                     ; $7530: $02
	ld   [bc], a                                     ; $7531: $02
	add  d                                           ; $7532: $82
	ld   [bc], a                                     ; $7533: $02
	add  b                                           ; $7534: $80
	nop                                              ; $7535: $00
	nop                                              ; $7536: $00
	ld   [bc], a                                     ; $7537: $02
	add  e                                           ; $7538: $83
	inc  b                                           ; $7539: $04
	ld   [bc], a                                     ; $753a: $02
	add  h                                           ; $753b: $84
	ld   [bc], a                                     ; $753c: $02
	ld   [bc], a                                     ; $753d: $02
	add  l                                           ; $753e: $85
	ld   bc, $9202                                   ; $753f: $01 $02 $92
	ld   [$8602], sp                                 ; $7542: $08 $02 $86
	inc  b                                           ; $7545: $04
	ld   [bc], a                                     ; $7546: $02
	add  a                                           ; $7547: $87
	ld   [bc], a                                     ; $7548: $02
	ld   [bc], a                                     ; $7549: $02
	adc  b                                           ; $754a: $88
	ld   bc, $0080                                   ; $754b: $01 $80 $00
	nop                                              ; $754e: $00
	ld   [bc], a                                     ; $754f: $02
	adc  c                                           ; $7550: $89
	ld   [bc], a                                     ; $7551: $02
	ld   [bc], a                                     ; $7552: $02
	adc  d                                           ; $7553: $8a
	ld   [bc], a                                     ; $7554: $02
	ld   [bc], a                                     ; $7555: $02
	adc  e                                           ; $7556: $8b
	ld   [bc], a                                     ; $7557: $02
	ld   [bc], a                                     ; $7558: $02
	adc  h                                           ; $7559: $8c
	ld   bc, $8d02                                   ; $755a: $01 $02 $8d
	ld   bc, $0080                                   ; $755d: $01 $80 $00
	nop                                              ; $7560: $00
	ld   [bc], a                                     ; $7561: $02
	adc  [hl]                                        ; $7562: $8e
	ld   [bc], a                                     ; $7563: $02
	ld   [bc], a                                     ; $7564: $02
	adc  a                                           ; $7565: $8f
	ld   [bc], a                                     ; $7566: $02
	ld   [bc], a                                     ; $7567: $02
	sub  b                                           ; $7568: $90
	ld   [bc], a                                     ; $7569: $02
	ld   [bc], a                                     ; $756a: $02
	sub  c                                           ; $756b: $91
	ld   [bc], a                                     ; $756c: $02
	add  b                                           ; $756d: $80
	nop                                              ; $756e: $00
	nop                                              ; $756f: $00
	ld   [bc], a                                     ; $7570: $02
	add  e                                           ; $7571: $83
	ld   [bc], a                                     ; $7572: $02
	ld   [bc], a                                     ; $7573: $02
	add  h                                           ; $7574: $84
	ld   bc, $8502                                   ; $7575: $01 $02 $85
	ld   bc, $0080                                   ; $7578: $01 $80 $00
	nop                                              ; $757b: $00
	add  c                                           ; $757c: $81
	rlca                                             ; $757d: $07
	nop                                              ; $757e: $00
	ld   [bc], a                                     ; $757f: $02
	sbc  c                                           ; $7580: $99
	ld   [bc], a                                     ; $7581: $02
	ld   [bc], a                                     ; $7582: $02
	sbc  d                                           ; $7583: $9a
	ld   [bc], a                                     ; $7584: $02
	ld   [bc], a                                     ; $7585: $02
	sbc  e                                           ; $7586: $9b
	ld   bc, $7f83                                   ; $7587: $01 $83 $7f
	ld   [hl], l                                     ; $758a: $75
	add  b                                           ; $758b: $80
	nop                                              ; $758c: $00
	nop                                              ; $758d: $00
	add  c                                           ; $758e: $81
	ld   b, $00                                      ; $758f: $06 $00
	ld   [bc], a                                     ; $7591: $02
	sbc  c                                           ; $7592: $99
	ld   [bc], a                                     ; $7593: $02
	ld   [bc], a                                     ; $7594: $02
	sbc  d                                           ; $7595: $9a
	ld   [bc], a                                     ; $7596: $02
	ld   [bc], a                                     ; $7597: $02
	sbc  e                                           ; $7598: $9b
	ld   bc, $9183                                   ; $7599: $01 $83 $91
	ld   [hl], l                                     ; $759c: $75
	ld   [bc], a                                     ; $759d: $02
	sbc  c                                           ; $759e: $99
	ld   [bc], a                                     ; $759f: $02
	ld   [bc], a                                     ; $75a0: $02
	sbc  d                                           ; $75a1: $9a
	ld   [bc], a                                     ; $75a2: $02
	add  b                                           ; $75a3: $80
	ld   [bc], a                                     ; $75a4: $02
	nop                                              ; $75a5: $00
	ld   [bc], a                                     ; $75a6: $02
	sbc  c                                           ; $75a7: $99
	nop                                              ; $75a8: $00
	ld   [bc], a                                     ; $75a9: $02
	sbc  h                                           ; $75aa: $9c
	inc  bc                                          ; $75ab: $03
	ld   [bc], a                                     ; $75ac: $02
	sbc  l                                           ; $75ad: $9d
	ld   [bc], a                                     ; $75ae: $02
	ld   [bc], a                                     ; $75af: $02
	sbc  [hl]                                        ; $75b0: $9e
	ld   bc, $9f02                                   ; $75b1: $01 $02 $9f
	ld   bc, $a002                                   ; $75b4: $01 $02 $a0
	ld   bc, $a102                                   ; $75b7: $01 $02 $a1
	ld   bc, $a202                                   ; $75ba: $01 $02 $a2
	ld   [bc], a                                     ; $75bd: $02
	add  b                                           ; $75be: $80
	nop                                              ; $75bf: $00
	nop                                              ; $75c0: $00
	add  b                                           ; $75c1: $80
	nop                                              ; $75c2: $00
	nop                                              ; $75c3: $00
	add  c                                           ; $75c4: $81
	rlca                                             ; $75c5: $07
	nop                                              ; $75c6: $00
	ld   [bc], a                                     ; $75c7: $02
	and  e                                           ; $75c8: $a3
	ld   [bc], a                                     ; $75c9: $02
	ld   [bc], a                                     ; $75ca: $02
	and  h                                           ; $75cb: $a4
	ld   [bc], a                                     ; $75cc: $02
	ld   [bc], a                                     ; $75cd: $02
	and  l                                           ; $75ce: $a5
	ld   bc, $c783                                   ; $75cf: $01 $83 $c7
	ld   [hl], l                                     ; $75d2: $75
	add  b                                           ; $75d3: $80
	nop                                              ; $75d4: $00
	nop                                              ; $75d5: $00
	add  c                                           ; $75d6: $81
	ld   b, $00                                      ; $75d7: $06 $00
	ld   [bc], a                                     ; $75d9: $02
	and  e                                           ; $75da: $a3
	ld   [bc], a                                     ; $75db: $02
	ld   [bc], a                                     ; $75dc: $02
	and  h                                           ; $75dd: $a4
	ld   [bc], a                                     ; $75de: $02
	ld   [bc], a                                     ; $75df: $02
	and  l                                           ; $75e0: $a5
	ld   bc, $d983                                   ; $75e1: $01 $83 $d9
	ld   [hl], l                                     ; $75e4: $75
	add  b                                           ; $75e5: $80
	ld   [bc], a                                     ; $75e6: $02
	nop                                              ; $75e7: $00
	ld   [bc], a                                     ; $75e8: $02
	and  e                                           ; $75e9: $a3
	nop                                              ; $75ea: $00
	ld   [bc], a                                     ; $75eb: $02
	and  [hl]                                        ; $75ec: $a6
	inc  bc                                          ; $75ed: $03
	ld   [bc], a                                     ; $75ee: $02
	and  a                                           ; $75ef: $a7
	ld   [bc], a                                     ; $75f0: $02
	ld   [bc], a                                     ; $75f1: $02
	xor  b                                           ; $75f2: $a8
	ld   bc, $0080                                   ; $75f3: $01 $80 $00
	nop                                              ; $75f6: $00
	ld   [bc], a                                     ; $75f7: $02
	xor  c                                           ; $75f8: $a9
	ld   [bc], a                                     ; $75f9: $02
	ld   [bc], a                                     ; $75fa: $02
	xor  d                                           ; $75fb: $aa
	inc  b                                           ; $75fc: $04
	ld   [bc], a                                     ; $75fd: $02
	xor  e                                           ; $75fe: $ab
	inc  bc                                          ; $75ff: $03
	ld   [bc], a                                     ; $7600: $02
	xor  h                                           ; $7601: $ac
	ld   [bc], a                                     ; $7602: $02
	ld   [bc], a                                     ; $7603: $02
	xor  l                                           ; $7604: $ad
	inc  bc                                          ; $7605: $03
	ld   [bc], a                                     ; $7606: $02
	xor  [hl]                                        ; $7607: $ae
	inc  b                                           ; $7608: $04
	ld   [bc], a                                     ; $7609: $02
	xor  a                                           ; $760a: $af
	ld   [bc], a                                     ; $760b: $02
	ld   [bc], a                                     ; $760c: $02
	or   b                                           ; $760d: $b0
	inc  b                                           ; $760e: $04
	ld   [bc], a                                     ; $760f: $02
	or   c                                           ; $7610: $b1
	inc  bc                                          ; $7611: $03
	ld   [bc], a                                     ; $7612: $02
	or   d                                           ; $7613: $b2
	ld   [bc], a                                     ; $7614: $02
	ld   [bc], a                                     ; $7615: $02
	or   e                                           ; $7616: $b3
	inc  bc                                          ; $7617: $03
	ld   [bc], a                                     ; $7618: $02
	or   h                                           ; $7619: $b4
	inc  b                                           ; $761a: $04
	add  b                                           ; $761b: $80
	nop                                              ; $761c: $00
	nop                                              ; $761d: $00
	ld   [bc], a                                     ; $761e: $02
	or   l                                           ; $761f: $b5
	ld   b, $02                                      ; $7620: $06 $02
	or   [hl]                                        ; $7622: $b6
	ld   b, $02                                      ; $7623: $06 $02
	or   a                                           ; $7625: $b7
	ld   b, $02                                      ; $7626: $06 $02
	cp   b                                           ; $7628: $b8
	ld   b, $02                                      ; $7629: $06 $02
	cp   c                                           ; $762b: $b9
	ld   b, $02                                      ; $762c: $06 $02
	cp   d                                           ; $762e: $ba
	ld   b, $02                                      ; $762f: $06 $02
	cp   e                                           ; $7631: $bb
	ld   b, $02                                      ; $7632: $06 $02
	cp   h                                           ; $7634: $bc
	inc  b                                           ; $7635: $04
	ld   [bc], a                                     ; $7636: $02
	cp   l                                           ; $7637: $bd
	inc  b                                           ; $7638: $04
	ld   [bc], a                                     ; $7639: $02
	cp   [hl]                                        ; $763a: $be
	inc  b                                           ; $763b: $04
	ld   [bc], a                                     ; $763c: $02
	cp   a                                           ; $763d: $bf
	inc  b                                           ; $763e: $04
	ld   [bc], a                                     ; $763f: $02
	ret  nz                                          ; $7640: $c0

	inc  d                                           ; $7641: $14
	ld   [bc], a                                     ; $7642: $02
	pop  bc                                          ; $7643: $c1
	db   $10                                         ; $7644: $10
	ld   [bc], a                                     ; $7645: $02
	jp   nz, $0204                                   ; $7646: $c2 $04 $02

	jp   $8006                                       ; $7649: $c3 $06 $80


	nop                                              ; $764c: $00
	nop                                              ; $764d: $00
	ld   [bc], a                                     ; $764e: $02
	call nz, $0202                                   ; $764f: $c4 $02 $02
	push bc                                          ; $7652: $c5
	ld   [bc], a                                     ; $7653: $02
	ld   [bc], a                                     ; $7654: $02
	add  $02                                         ; $7655: $c6 $02
	ld   [bc], a                                     ; $7657: $02
	rst  ToBoot                                         ; $7658: $c7
	ld   [bc], a                                     ; $7659: $02
	ld   [bc], a                                     ; $765a: $02
	ret  z                                           ; $765b: $c8

	ld   [bc], a                                     ; $765c: $02
	ld   [bc], a                                     ; $765d: $02
	ret                                              ; $765e: $c9


	ld   [bc], a                                     ; $765f: $02
	ld   [bc], a                                     ; $7660: $02
	jp   z, $0202                                    ; $7661: $ca $02 $02

	rlc  d                                           ; $7664: $cb $02
	ld   [bc], a                                     ; $7666: $02
	call z, $0202                                    ; $7667: $cc $02 $02
	call $0202                                       ; $766a: $cd $02 $02
	adc  $02                                         ; $766d: $ce $02
	ld   [bc], a                                     ; $766f: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7670: $cf
	ld   [bc], a                                     ; $7671: $02
	add  b                                           ; $7672: $80
	nop                                              ; $7673: $00
	nop                                              ; $7674: $00
	ld   [bc], a                                     ; $7675: $02
	call nz, $0202                                   ; $7676: $c4 $02 $02
	push bc                                          ; $7679: $c5
	ld   [bc], a                                     ; $767a: $02
	ld   [bc], a                                     ; $767b: $02
	add  $02                                         ; $767c: $c6 $02
	ld   [bc], a                                     ; $767e: $02
	rst  ToBoot                                         ; $767f: $c7
	ld   [bc], a                                     ; $7680: $02
	ld   [bc], a                                     ; $7681: $02
	ret  z                                           ; $7682: $c8

	ld   [bc], a                                     ; $7683: $02
	ld   [bc], a                                     ; $7684: $02
	ret                                              ; $7685: $c9


	ld   [bc], a                                     ; $7686: $02
	ld   [bc], a                                     ; $7687: $02
	jp   z, $0202                                    ; $7688: $ca $02 $02

	rlc  d                                           ; $768b: $cb $02
	ld   [bc], a                                     ; $768d: $02
	call z, $0202                                    ; $768e: $cc $02 $02
	call $0202                                       ; $7691: $cd $02 $02
	adc  $02                                         ; $7694: $ce $02
	ld   [bc], a                                     ; $7696: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7697: $cf
	ld   [bc], a                                     ; $7698: $02
	add  d                                           ; $7699: $82
	ld   [hl], l                                     ; $769a: $75
	halt                                             ; $769b: $76
	ld   [bc], a                                     ; $769c: $02
	ld   [hl], h                                     ; $769d: $74
	nop                                              ; $769e: $00
	ld   [bc], a                                     ; $769f: $02
	ld   [hl], l                                     ; $76a0: $75
	nop                                              ; $76a1: $00
	ld   [bc], a                                     ; $76a2: $02
	halt                                             ; $76a3: $76
	nop                                              ; $76a4: $00
	ld   [bc], a                                     ; $76a5: $02
	ld   [hl], a                                     ; $76a6: $77
	nop                                              ; $76a7: $00
	ld   [bc], a                                     ; $76a8: $02
	ld   a, b                                        ; $76a9: $78
	nop                                              ; $76aa: $00
	ld   [bc], a                                     ; $76ab: $02
	ld   a, c                                        ; $76ac: $79
	nop                                              ; $76ad: $00
	ld   [bc], a                                     ; $76ae: $02
	ld   a, d                                        ; $76af: $7a
	nop                                              ; $76b0: $00
	ld   a, [bc]                                     ; $76b1: $0a
	inc  sp                                          ; $76b2: $33
	ld   c, $80                                      ; $76b3: $0e $80
	ld   c, $00                                      ; $76b5: $0e $00
	add  d                                           ; $76b7: $82
	or   c                                           ; $76b8: $b1
	halt                                             ; $76b9: $76
	ld   a, [bc]                                     ; $76ba: $0a
	inc  [hl]                                        ; $76bb: $34
	ld   c, $80                                      ; $76bc: $0e $80
	ld   c, $00                                      ; $76be: $0e $00
	add  d                                           ; $76c0: $82
	cp   d                                           ; $76c1: $ba
	halt                                             ; $76c2: $76
	ld   a, [bc]                                     ; $76c3: $0a
	dec  [hl]                                        ; $76c4: $35
	ld   c, $80                                      ; $76c5: $0e $80
	ld   c, $00                                      ; $76c7: $0e $00
	add  d                                           ; $76c9: $82
	jp   $0a76                                       ; $76ca: $c3 $76 $0a


	ld   [hl], $0e                                   ; $76cd: $36 $0e
	add  b                                           ; $76cf: $80
	ld   c, $00                                      ; $76d0: $0e $00
	add  d                                           ; $76d2: $82
	call z, $0a76                                    ; $76d3: $cc $76 $0a
	scf                                              ; $76d6: $37
	ld   c, $80                                      ; $76d7: $0e $80
	ld   c, $00                                      ; $76d9: $0e $00
	add  d                                           ; $76db: $82
	push de                                          ; $76dc: $d5
	halt                                             ; $76dd: $76
	ld   a, [bc]                                     ; $76de: $0a
	jr   c, jr_001_76ef                              ; $76df: $38 $0e

	add  b                                           ; $76e1: $80
	ld   c, $00                                      ; $76e2: $0e $00
	add  d                                           ; $76e4: $82
	sbc  $76                                         ; $76e5: $de $76
	ld   a, [bc]                                     ; $76e7: $0a
	add  hl, sp                                      ; $76e8: $39
	dec  b                                           ; $76e9: $05
	ld   a, [bc]                                     ; $76ea: $0a
	ld   a, [hl-]                                    ; $76eb: $3a
	dec  b                                           ; $76ec: $05
	add  d                                           ; $76ed: $82
	rst  $20                                         ; $76ee: $e7

jr_001_76ef:
	halt                                             ; $76ef: $76
	ld   a, [bc]                                     ; $76f0: $0a
	dec  sp                                          ; $76f1: $3b
	jr   nc, jr_001_76fe                             ; $76f2: $30 $0a

	inc  a                                           ; $76f4: $3c
	jr   nz, @+$0c                                   ; $76f5: $20 $0a

	dec  sp                                          ; $76f7: $3b
	add  hl, de                                      ; $76f8: $19
	add  d                                           ; $76f9: $82
	ldh  a, [rPCM12]                                 ; $76fa: $f0 $76
	ld   a, [bc]                                     ; $76fc: $0a
	inc  a                                           ; $76fd: $3c

jr_001_76fe:
	jr   nc, jr_001_770a                             ; $76fe: $30 $0a

	ld   a, $00                                      ; $7700: $3e $00
	ld   a, [bc]                                     ; $7702: $0a
	dec  sp                                          ; $7703: $3b
	jr   nz, jr_001_7710                             ; $7704: $20 $0a

	dec  a                                           ; $7706: $3d
	nop                                              ; $7707: $00
	ld   a, [bc]                                     ; $7708: $0a
	ld   c, l                                        ; $7709: $4d

jr_001_770a:
	ld   [$4e0a], sp                                 ; $770a: $08 $0a $4e
	ld   [$4f0a], sp                                 ; $770d: $08 $0a $4f

jr_001_7710:
	ld   [$4e0a], sp                                 ; $7710: $08 $0a $4e
	ld   [$0882], sp                                 ; $7713: $08 $82 $08
	ld   [hl], a                                     ; $7716: $77
	ld   a, [bc]                                     ; $7717: $0a
	ld   d, [hl]                                     ; $7718: $56
	rlca                                             ; $7719: $07
	ld   a, [bc]                                     ; $771a: $0a
	ld   d, a                                        ; $771b: $57
	rlca                                             ; $771c: $07
	ld   a, [bc]                                     ; $771d: $0a
	ld   e, b                                        ; $771e: $58
	rlca                                             ; $771f: $07
	ld   a, [bc]                                     ; $7720: $0a
	ld   d, a                                        ; $7721: $57
	rlca                                             ; $7722: $07
	add  d                                           ; $7723: $82
	rla                                              ; $7724: $17
	ld   [hl], a                                     ; $7725: $77
	ld   a, [bc]                                     ; $7726: $0a
	ld   c, c                                        ; $7727: $49
	rlca                                             ; $7728: $07
	ld   a, [bc]                                     ; $7729: $0a
	ld   c, d                                        ; $772a: $4a
	rlca                                             ; $772b: $07
	ld   a, [bc]                                     ; $772c: $0a
	ld   c, e                                        ; $772d: $4b
	rlca                                             ; $772e: $07
	ld   a, [bc]                                     ; $772f: $0a
	ld   c, d                                        ; $7730: $4a
	rlca                                             ; $7731: $07
	add  d                                           ; $7732: $82
	ld   h, $77                                      ; $7733: $26 $77
	ld   a, [bc]                                     ; $7735: $0a
	ld   b, h                                        ; $7736: $44
	rlca                                             ; $7737: $07
	ld   a, [bc]                                     ; $7738: $0a
	ld   b, l                                        ; $7739: $45
	rlca                                             ; $773a: $07
	ld   a, [bc]                                     ; $773b: $0a
	ld   b, [hl]                                     ; $773c: $46
	rlca                                             ; $773d: $07
	ld   a, [bc]                                     ; $773e: $0a
	ld   b, l                                        ; $773f: $45
	rlca                                             ; $7740: $07
	add  d                                           ; $7741: $82
	dec  [hl]                                        ; $7742: $35
	ld   [hl], a                                     ; $7743: $77
	ld   a, [bc]                                     ; $7744: $0a
	ld   e, d                                        ; $7745: $5a
	rlca                                             ; $7746: $07
	ld   a, [bc]                                     ; $7747: $0a
	ld   e, e                                        ; $7748: $5b
	rlca                                             ; $7749: $07
	ld   a, [bc]                                     ; $774a: $0a
	ld   e, h                                        ; $774b: $5c
	rlca                                             ; $774c: $07
	ld   a, [bc]                                     ; $774d: $0a
	ld   e, e                                        ; $774e: $5b
	rlca                                             ; $774f: $07
	add  d                                           ; $7750: $82
	ld   b, h                                        ; $7751: $44
	ld   [hl], a                                     ; $7752: $77
	ld   a, [bc]                                     ; $7753: $0a
	ld   b, b                                        ; $7754: $40
	rlca                                             ; $7755: $07
	ld   a, [bc]                                     ; $7756: $0a
	ld   b, c                                        ; $7757: $41
	rlca                                             ; $7758: $07
	ld   a, [bc]                                     ; $7759: $0a
	ld   b, d                                        ; $775a: $42
	rlca                                             ; $775b: $07
	ld   a, [bc]                                     ; $775c: $0a
	ld   b, c                                        ; $775d: $41
	rlca                                             ; $775e: $07
	add  d                                           ; $775f: $82
	ld   d, e                                        ; $7760: $53
	ld   [hl], a                                     ; $7761: $77
	cp   a                                           ; $7762: $bf
	ld   [hl], a                                     ; $7763: $77
	adc  $77                                         ; $7764: $ce $77
	rst  $28                                         ; $7766: $ef
	ld   [hl], a                                     ; $7767: $77
	inc  de                                          ; $7768: $13
	ld   a, b                                        ; $7769: $78
	ld   d, $78                                      ; $776a: $16 $78
	ld   [hl+], a                                    ; $776c: $22
	ld   a, b                                        ; $776d: $78
	inc  [hl]                                        ; $776e: $34
	ld   a, b                                        ; $776f: $78
	ld   b, [hl]                                     ; $7770: $46
	ld   a, b                                        ; $7771: $78
	ld   e, b                                        ; $7772: $58
	ld   a, b                                        ; $7773: $78
	ld   e, b                                        ; $7774: $58
	ld   a, b                                        ; $7775: $78
	ld   e, b                                        ; $7776: $58
	ld   a, b                                        ; $7777: $78
	ld   a, a                                        ; $7778: $7f
	ld   a, b                                        ; $7779: $78
	sbc  d                                           ; $777a: $9a
	ld   a, b                                        ; $777b: $78
	sbc  l                                           ; $777c: $9d
	ld   a, b                                        ; $777d: $78
	xor  c                                           ; $777e: $a9
	ld   a, b                                        ; $777f: $78
	xor  h                                           ; $7780: $ac
	ld   a, b                                        ; $7781: $78
	pop  bc                                          ; $7782: $c1
	ld   a, b                                        ; $7783: $78
	push hl                                          ; $7784: $e5
	ld   a, b                                        ; $7785: $78
	sub  $78                                         ; $7786: $d6 $78
	db   $f4                                         ; $7788: $f4
	ld   a, b                                        ; $7789: $78
	db   $fd                                         ; $778a: $fd
	ld   a, b                                        ; $778b: $78
	ld   b, $79                                      ; $778c: $06 $79
	add  hl, bc                                      ; $778e: $09
	ld   a, c                                        ; $778f: $79
	inc  c                                           ; $7790: $0c
	ld   a, c                                        ; $7791: $79
	dec  d                                           ; $7792: $15
	ld   a, c                                        ; $7793: $79
	ld   e, $79                                      ; $7794: $1e $79
	daa                                              ; $7796: $27
	ld   a, c                                        ; $7797: $79
	inc  sp                                          ; $7798: $33
	ld   a, c                                        ; $7799: $79
	ccf                                              ; $779a: $3f
	ld   a, c                                        ; $779b: $79
	ld   e, l                                        ; $779c: $5d
	ld   a, c                                        ; $779d: $79
	ld   h, [hl]                                     ; $779e: $66
	ld   a, c                                        ; $779f: $79
	ld   a, [hl]                                     ; $77a0: $7e
	ld   a, c                                        ; $77a1: $79
	sub  b                                           ; $77a2: $90
	ld   a, c                                        ; $77a3: $79
	sbc  h                                           ; $77a4: $9c
	ld   a, c                                        ; $77a5: $79
	xor  [hl]                                        ; $77a6: $ae
	ld   a, c                                        ; $77a7: $79
	ret  nz                                          ; $77a8: $c0

	ld   a, c                                        ; $77a9: $79
	ret  c                                           ; $77aa: $d8

	ld   a, c                                        ; $77ab: $79
	ld   [$fc79], a                                  ; $77ac: $ea $79 $fc
	ld   a, c                                        ; $77af: $79
	ld   c, $7a                                      ; $77b0: $0e $7a
	rla                                              ; $77b2: $17
	ld   a, d                                        ; $77b3: $7a
	ld   [hl-], a                                    ; $77b4: $32
	ld   a, d                                        ; $77b5: $7a
	ld   c, d                                        ; $77b6: $4a
	ld   a, d                                        ; $77b7: $7a
	ld   h, d                                        ; $77b8: $62
	ld   a, d                                        ; $77b9: $7a
	ld   [hl], a                                     ; $77ba: $77
	ld   a, d                                        ; $77bb: $7a
	sbc  b                                           ; $77bc: $98
	ld   a, d                                        ; $77bd: $7a
	db   $dd                                         ; $77be: $dd
	ld   a, d                                        ; $77bf: $7a
	cp   a                                           ; $77c0: $bf
	ld   a, d                                        ; $77c1: $7a
	ld   bc, $0435                                   ; $77c2: $01 $35 $04
	ld   bc, $0436                                   ; $77c5: $01 $36 $04
	ld   bc, $0437                                   ; $77c8: $01 $37 $04
	ld   bc, $0338                                   ; $77cb: $01 $38 $03
	add  d                                           ; $77ce: $82
	jp   nz, $0177                                   ; $77cf: $c2 $77 $01

	add  hl, sp                                      ; $77d2: $39
	ld   [bc], a                                     ; $77d3: $02
	ld   bc, $023a                                   ; $77d4: $01 $3a $02
	ld   bc, $023b                                   ; $77d7: $01 $3b $02
	ld   bc, $023c                                   ; $77da: $01 $3c $02
	ld   bc, $043d                                   ; $77dd: $01 $3d $04
	ld   bc, $023e                                   ; $77e0: $01 $3e $02
	ld   bc, $023f                                   ; $77e3: $01 $3f $02
	ld   bc, $0240                                   ; $77e6: $01 $40 $02
	ld   bc, $0341                                   ; $77e9: $01 $41 $03
	add  b                                           ; $77ec: $80
	stop                                             ; $77ed: $10 $00
	add  b                                           ; $77ef: $80
	nop                                              ; $77f0: $00
	nop                                              ; $77f1: $00
	ld   bc, $0242                                   ; $77f2: $01 $42 $02
	ld   bc, $0243                                   ; $77f5: $01 $43 $02
	ld   bc, $0244                                   ; $77f8: $01 $44 $02
	ld   bc, $0245                                   ; $77fb: $01 $45 $02
	ld   bc, $0246                                   ; $77fe: $01 $46 $02
	ld   bc, $0447                                   ; $7801: $01 $47 $04
	ld   bc, $0248                                   ; $7804: $01 $48 $02
	ld   bc, $0249                                   ; $7807: $01 $49 $02
	ld   bc, $024a                                   ; $780a: $01 $4a $02
	ld   bc, $034b                                   ; $780d: $01 $4b $03
	add  b                                           ; $7810: $80
	stop                                             ; $7811: $10 $00
	add  b                                           ; $7813: $80
	nop                                              ; $7814: $00
	nop                                              ; $7815: $00
	ld   bc, $004d                                   ; $7816: $01 $4d $00
	ld   bc, $0d31                                   ; $7819: $01 $31 $0d
	ld   bc, $0432                                   ; $781c: $01 $32 $04
	ld   bc, $1033                                   ; $781f: $01 $33 $10
	add  d                                           ; $7822: $82
	add  hl, de                                      ; $7823: $19
	ld   a, b                                        ; $7824: $78
	ld   bc, $0b25                                   ; $7825: $01 $25 $0b
	ld   bc, $0d26                                   ; $7828: $01 $26 $0d
	ld   bc, $0925                                   ; $782b: $01 $25 $09
	ld   bc, $0527                                   ; $782e: $01 $27 $05
	ld   bc, $0928                                   ; $7831: $01 $28 $09
	add  d                                           ; $7834: $82
	dec  h                                           ; $7835: $25
	ld   a, b                                        ; $7836: $78
	ld   bc, $0b29                                   ; $7837: $01 $29 $0b
	ld   bc, $0d2a                                   ; $783a: $01 $2a $0d
	ld   bc, $0929                                   ; $783d: $01 $29 $09
	ld   bc, $052b                                   ; $7840: $01 $2b $05
	ld   bc, $092c                                   ; $7843: $01 $2c $09
	add  d                                           ; $7846: $82
	scf                                              ; $7847: $37
	ld   a, b                                        ; $7848: $78
	ld   bc, $0b2d                                   ; $7849: $01 $2d $0b
	ld   bc, $0d2e                                   ; $784c: $01 $2e $0d
	ld   bc, $092d                                   ; $784f: $01 $2d $09
	ld   bc, $052f                                   ; $7852: $01 $2f $05
	ld   bc, $0930                                   ; $7855: $01 $30 $09
	add  d                                           ; $7858: $82
	ld   c, c                                        ; $7859: $49
	ld   a, b                                        ; $785a: $78
	ld   bc, $0500                                   ; $785b: $01 $00 $05
	ld   bc, $0501                                   ; $785e: $01 $01 $05
	ld   bc, $0502                                   ; $7861: $01 $02 $05
	ld   bc, $0503                                   ; $7864: $01 $03 $05
	ld   bc, $0504                                   ; $7867: $01 $04 $05
	ld   bc, $0505                                   ; $786a: $01 $05 $05
	ld   bc, $0506                                   ; $786d: $01 $06 $05
	ld   bc, $0507                                   ; $7870: $01 $07 $05
	ld   bc, $0508                                   ; $7873: $01 $08 $05
	ld   bc, $0509                                   ; $7876: $01 $09 $05
	ld   bc, $050a                                   ; $7879: $01 $0a $05
	ld   bc, $050b                                   ; $787c: $01 $0b $05
	add  d                                           ; $787f: $82
	ld   e, e                                        ; $7880: $5b
	ld   a, b                                        ; $7881: $78
	ld   bc, $080c                                   ; $7882: $01 $0c $08
	ld   bc, $080d                                   ; $7885: $01 $0d $08
	ld   bc, $080e                                   ; $7888: $01 $0e $08
	ld   bc, $080f                                   ; $788b: $01 $0f $08
	ld   bc, $0810                                   ; $788e: $01 $10 $08
	ld   bc, $0811                                   ; $7891: $01 $11 $08
	ld   bc, $0812                                   ; $7894: $01 $12 $08
	ld   bc, $0813                                   ; $7897: $01 $13 $08
	add  d                                           ; $789a: $82
	add  d                                           ; $789b: $82
	ld   a, b                                        ; $789c: $78
	ld   bc, $0014                                   ; $789d: $01 $14 $00
	ld   bc, $025c                                   ; $78a0: $01 $5c $02
	ld   bc, $035d                                   ; $78a3: $01 $5d $03
	ld   bc, $045e                                   ; $78a6: $01 $5e $04
	add  b                                           ; $78a9: $80
	nop                                              ; $78aa: $00
	nop                                              ; $78ab: $00
	add  b                                           ; $78ac: $80
	nop                                              ; $78ad: $00
	nop                                              ; $78ae: $00


; title menu screen arrow-right
	ld   bc, $086f                                   ; $78af: $01 $6f $08
	ld   bc, $0870                                   ; $78b2: $01 $70 $08
	ld   bc, $0871                                   ; $78b5: $01 $71 $08
	ld   bc, $0872                                   ; $78b8: $01 $72 $08
	ld   bc, $0871                                   ; $78bb: $01 $71 $08
	ld   bc, $0870                                   ; $78be: $01 $70 $08
	add  d                                           ; $78c1: $82
	xor  a                                           ; $78c2: $af
	ld   a, b                                        ; $78c3: $78


; title menu screen arrow-left
	ld   bc, $0873                                   ; $78c4: $01 $73 $08
	ld   bc, $0874                                   ; $78c7: $01 $74 $08
	ld   bc, $0875                                   ; $78ca: $01 $75 $08
	ld   bc, $0876                                   ; $78cd: $01 $76 $08
	ld   bc, $0875                                   ; $78d0: $01 $75 $08
	ld   bc, $0874                                   ; $78d3: $01 $74 $08
	add  d                                           ; $78d6: $82
	call nz, $0178                                   ; $78d7: $c4 $78 $01
	adc  h                                           ; $78da: $8c
	add  hl, bc                                      ; $78db: $09
	ld   bc, $098d                                   ; $78dc: $01 $8d $09
	ld   bc, $098e                                   ; $78df: $01 $8e $09
	ld   bc, $098d                                   ; $78e2: $01 $8d $09
	add  d                                           ; $78e5: $82
	reti                                             ; $78e6: $d9


	ld   a, b                                        ; $78e7: $78
	ld   bc, $0999                                   ; $78e8: $01 $99 $09
	ld   bc, $099a                                   ; $78eb: $01 $9a $09
	ld   bc, $099b                                   ; $78ee: $01 $9b $09
	ld   bc, $099a                                   ; $78f1: $01 $9a $09
	add  d                                           ; $78f4: $82
	add  sp, $78                                     ; $78f5: $e8 $78
	add  b                                           ; $78f7: $80
	rrca                                             ; $78f8: $0f
	nop                                              ; $78f9: $00
	ld   bc, $168f                                   ; $78fa: $01 $8f $16
	add  d                                           ; $78fd: $82
	rst  $30                                         ; $78fe: $f7
	ld   a, b                                        ; $78ff: $78
	ld   bc, $1092                                   ; $7900: $01 $92 $10
	add  b                                           ; $7903: $80
	stop                                             ; $7904: $10 $00
	add  d                                           ; $7906: $82
	nop                                              ; $7907: $00
	ld   a, c                                        ; $7908: $79
	ld   bc, $0096                                   ; $7909: $01 $96 $00
	ld   bc, $0097                                   ; $790c: $01 $97 $00
	ld   bc, $0293                                   ; $790f: $01 $93 $02
	ld   bc, $0294                                   ; $7912: $01 $94 $02
	ld   bc, $0298                                   ; $7915: $01 $98 $02
	ld   bc, $0294                                   ; $7918: $01 $94 $02
	ld   bc, $0293                                   ; $791b: $01 $93 $02
	add  b                                           ; $791e: $80

jr_001_791f:
	nop                                              ; $791f: $00
	nop                                              ; $7920: $00
	ld   bc, $0294                                   ; $7921: $01 $94 $02
	ld   bc, $0293                                   ; $7924: $01 $93 $02
	add  b                                           ; $7927: $80
	nop                                              ; $7928: $00
	nop                                              ; $7929: $00
	add  hl, bc                                      ; $792a: $09
	nop                                              ; $792b: $00
	ld   [bc], a                                     ; $792c: $02
	add  hl, bc                                      ; $792d: $09
	ld   bc, $0902                                   ; $792e: $01 $02 $09

jr_001_7931:
	ld   [bc], a                                     ; $7931: $02
	ld   [bc], a                                     ; $7932: $02
	add  hl, bc                                      ; $7933: $09
	inc  bc                                          ; $7934: $03
	nop                                              ; $7935: $00
	add  hl, bc                                      ; $7936: $09
	ld   [bc], a                                     ; $7937: $02
	ld   [bc], a                                     ; $7938: $02
	add  hl, bc                                      ; $7939: $09
	ld   bc, $0902                                   ; $793a: $01 $02 $09
	nop                                              ; $793d: $00
	ld   [bc], a                                     ; $793e: $02
	add  b                                           ; $793f: $80
	nop                                              ; $7940: $00
	nop                                              ; $7941: $00
	inc  c                                           ; $7942: $0c

jr_001_7943:
	inc  sp                                          ; $7943: $33
	ld   a, [bc]                                     ; $7944: $0a
	inc  c                                           ; $7945: $0c
	inc  [hl]                                        ; $7946: $34
	rlca                                             ; $7947: $07
	inc  c                                           ; $7948: $0c
	dec  [hl]                                        ; $7949: $35
	rlca                                             ; $794a: $07
	inc  c                                           ; $794b: $0c
	ld   [hl], $07                                   ; $794c: $36 $07
	inc  c                                           ; $794e: $0c
	scf                                              ; $794f: $37
	db   $10                                         ; $7950: $10
	inc  c                                           ; $7951: $0c
	jr   c, jr_001_7969                              ; $7952: $38 $15

	inc  c                                           ; $7954: $0c
	add  hl, sp                                      ; $7955: $39
	ld   a, [de]                                     ; $7956: $1a
	inc  c                                           ; $7957: $0c
	ld   a, [hl-]                                    ; $7958: $3a
	ld   a, [de]                                     ; $7959: $1a
	inc  c                                           ; $795a: $0c

jr_001_795b:
	dec  sp                                          ; $795b: $3b
	ld   a, [de]                                     ; $795c: $1a
	inc  c                                           ; $795d: $0c
	inc  a                                           ; $795e: $3c
	nop                                              ; $795f: $00
	inc  c                                           ; $7960: $0c
	ld   b, b                                        ; $7961: $40
	jr   nz, jr_001_7970                             ; $7962: $20 $0c

	ld   b, c                                        ; $7964: $41
	jr   nz, @-$7c                                   ; $7965: $20 $82

	ld   h, b                                        ; $7967: $60
	ld   a, c                                        ; $7968: $79

jr_001_7969:
	rrca                                             ; $7969: $0f
	nop                                              ; $796a: $00
	db   $10                                         ; $796b: $10
	rrca                                             ; $796c: $0f

jr_001_796d:
	ld   bc, $0f06                                   ; $796d: $01 $06 $0f

jr_001_7970:
	ld   [bc], a                                     ; $7970: $02
	inc  bc                                          ; $7971: $03
	rrca                                             ; $7972: $0f
	inc  bc                                          ; $7973: $03
	jr   nz, jr_001_7985                             ; $7974: $20 $0f

	ld   [bc], a                                     ; $7976: $02
	ld   [$010f], sp                                 ; $7977: $08 $0f $01
	db   $10                                         ; $797a: $10
	rrca                                             ; $797b: $0f
	nop                                              ; $797c: $00
	jr   nz, @-$7c                                   ; $797d: $20 $82

jr_001_797f:
	ld   l, c                                        ; $797f: $69
	ld   a, c                                        ; $7980: $79
	rrca                                             ; $7981: $0f
	inc  b                                           ; $7982: $04
	db   $10                                         ; $7983: $10
	rrca                                             ; $7984: $0f

jr_001_7985:
	dec  b                                           ; $7985: $05
	inc  b                                           ; $7986: $04
	rrca                                             ; $7987: $0f
	ld   b, $10                                      ; $7988: $06 $10
	rrca                                             ; $798a: $0f
	dec  b                                           ; $798b: $05
	ld   [$040f], sp                                 ; $798c: $08 $0f $04
	jr   nz, @-$7c                                   ; $798f: $20 $82

	add  c                                           ; $7991: $81
	ld   a, c                                        ; $7992: $79
	rrca                                             ; $7993: $0f
	rlca                                             ; $7994: $07
	db   $10                                         ; $7995: $10
	rrca                                             ; $7996: $0f
	ld   [$0f03], sp                                 ; $7997: $08 $03 $0f
	rlca                                             ; $799a: $07
	jr   nz, jr_001_791f                             ; $799b: $20 $82

	sub  e                                           ; $799d: $93
	ld   a, c                                        ; $799e: $79
	rrca                                             ; $799f: $0f
	add  hl, bc                                      ; $79a0: $09
	db   $10                                         ; $79a1: $10
	rrca                                             ; $79a2: $0f
	ld   a, [bc]                                     ; $79a3: $0a
	dec  d                                           ; $79a4: $15
	rrca                                             ; $79a5: $0f
	dec  bc                                          ; $79a6: $0b
	jr   nc, jr_001_79b8                             ; $79a7: $30 $0f

	ld   a, [bc]                                     ; $79a9: $0a
	dec  d                                           ; $79aa: $15
	rrca                                             ; $79ab: $0f
	add  hl, bc                                      ; $79ac: $09
	jr   nz, jr_001_7931                             ; $79ad: $20 $82

	sbc  a                                           ; $79af: $9f
	ld   a, c                                        ; $79b0: $79
	rrca                                             ; $79b1: $0f
	inc  c                                           ; $79b2: $0c
	db   $10                                         ; $79b3: $10
	rrca                                             ; $79b4: $0f
	dec  c                                           ; $79b5: $0d
	ld   a, [de]                                     ; $79b6: $1a
	rrca                                             ; $79b7: $0f

jr_001_79b8:
	ld   c, $1a                                      ; $79b8: $0e $1a
	rrca                                             ; $79ba: $0f
	rrca                                             ; $79bb: $0f
	dec  hl                                          ; $79bc: $2b
	rrca                                             ; $79bd: $0f
	inc  c                                           ; $79be: $0c
	jr   nz, jr_001_7943                             ; $79bf: $20 $82

	or   c                                           ; $79c1: $b1
	ld   a, c                                        ; $79c2: $79
	rrca                                             ; $79c3: $0f
	db   $10                                         ; $79c4: $10
	db   $10                                         ; $79c5: $10
	rrca                                             ; $79c6: $0f
	ld   de, $0f20                                   ; $79c7: $11 $20 $0f
	ld   [de], a                                     ; $79ca: $12
	rlca                                             ; $79cb: $07
	rrca                                             ; $79cc: $0f
	inc  de                                          ; $79cd: $13
	ld   [$140f], sp                                 ; $79ce: $08 $0f $14
	inc  bc                                          ; $79d1: $03
	rrca                                             ; $79d2: $0f
	ld   de, $0f20                                   ; $79d3: $11 $20 $0f
	db   $10                                         ; $79d6: $10
	jr   nz, jr_001_795b                             ; $79d7: $20 $82

	jp   $0f79                                       ; $79d9: $c3 $79 $0f


	dec  d                                           ; $79dc: $15
	db   $10                                         ; $79dd: $10
	rrca                                             ; $79de: $0f
	ld   d, $15                                      ; $79df: $16 $15
	rrca                                             ; $79e1: $0f
	rla                                              ; $79e2: $17
	dec  d                                           ; $79e3: $15
	rrca                                             ; $79e4: $0f

jr_001_79e5:
	ld   d, $15                                      ; $79e5: $16 $15
	rrca                                             ; $79e7: $0f
	dec  d                                           ; $79e8: $15
	jr   nz, jr_001_796d                             ; $79e9: $20 $82

	db   $db                                         ; $79eb: $db
	ld   a, c                                        ; $79ec: $79
	rrca                                             ; $79ed: $0f
	add  hl, de                                      ; $79ee: $19
	db   $10                                         ; $79ef: $10
	rrca                                             ; $79f0: $0f
	ld   a, [de]                                     ; $79f1: $1a
	ld   a, [bc]                                     ; $79f2: $0a
	rrca                                             ; $79f3: $0f
	dec  de                                          ; $79f4: $1b
	jr   nc, jr_001_7a06                             ; $79f5: $30 $0f

	ld   a, [de]                                     ; $79f7: $1a
	ld   a, [bc]                                     ; $79f8: $0a
	rrca                                             ; $79f9: $0f

jr_001_79fa:
	add  hl, de                                      ; $79fa: $19
	jr   nz, jr_001_797f                             ; $79fb: $20 $82

	db   $ed                                         ; $79fd: $ed
	ld   a, c                                        ; $79fe: $79
	inc  c                                           ; $79ff: $0c
	dec  a                                           ; $7a00: $3d
	inc  b                                           ; $7a01: $04
	inc  c                                           ; $7a02: $0c
	ld   a, $10                                      ; $7a03: $3e $10
	inc  c                                           ; $7a05: $0c

jr_001_7a06:
	dec  a                                           ; $7a06: $3d
	db   $10                                         ; $7a07: $10
	inc  c                                           ; $7a08: $0c
	ccf                                              ; $7a09: $3f
	db   $10                                         ; $7a0a: $10
	inc  c                                           ; $7a0b: $0c
	dec  a                                           ; $7a0c: $3d
	inc  c                                           ; $7a0d: $0c
	add  d                                           ; $7a0e: $82
	rst  $38                                         ; $7a0f: $ff
	ld   a, c                                        ; $7a10: $79
	rrca                                             ; $7a11: $0f
	inc  e                                           ; $7a12: $1c
	db   $10                                         ; $7a13: $10
	rrca                                             ; $7a14: $0f
	dec  e                                           ; $7a15: $1d
	ld   de, $1182                                   ; $7a16: $11 $82 $11
	ld   a, d                                        ; $7a19: $7a
	rrca                                             ; $7a1a: $0f

jr_001_7a1b:
	ld   e, $10                                      ; $7a1b: $1e $10
	rrca                                             ; $7a1d: $0f
	rra                                              ; $7a1e: $1f
	ld   de, $200f                                   ; $7a1f: $11 $0f $20
	rrca                                             ; $7a22: $0f
	rrca                                             ; $7a23: $0f
	rra                                              ; $7a24: $1f
	ld   de, $200f                                   ; $7a25: $11 $0f $20
	rrca                                             ; $7a28: $0f
	rrca                                             ; $7a29: $0f
	rra                                              ; $7a2a: $1f
	ld   de, $200f                                   ; $7a2b: $11 $0f $20
	rrca                                             ; $7a2e: $0f
	rrca                                             ; $7a2f: $0f
	ld   e, $20                                      ; $7a30: $1e $20
	add  d                                           ; $7a32: $82
	ld   a, [de]                                     ; $7a33: $1a
	ld   a, d                                        ; $7a34: $7a
	rrca                                             ; $7a35: $0f
	ld   hl, $0f10                                   ; $7a36: $21 $10 $0f
	ld   [hl+], a                                    ; $7a39: $22
	add  hl, hl                                      ; $7a3a: $29
	rrca                                             ; $7a3b: $0f
	ld   hl, $0f29                                   ; $7a3c: $21 $29 $0f
	inc  hl                                          ; $7a3f: $23
	inc  d                                           ; $7a40: $14
	rrca                                             ; $7a41: $0f

jr_001_7a42:
	inc  h                                           ; $7a42: $24
	ld   c, $0f                                      ; $7a43: $0e $0f
	ld   [hl+], a                                    ; $7a45: $22
	jr   nc, jr_001_7a57                             ; $7a46: $30 $0f

	ld   hl, $8220                                   ; $7a48: $21 $20 $82
	dec  [hl]                                        ; $7a4b: $35
	ld   a, d                                        ; $7a4c: $7a
	rrca                                             ; $7a4d: $0f
	dec  h                                           ; $7a4e: $25
	db   $10                                         ; $7a4f: $10
	rrca                                             ; $7a50: $0f
	ld   h, $10                                      ; $7a51: $26 $10
	rrca                                             ; $7a53: $0f
	daa                                              ; $7a54: $27
	ld   a, [hl+]                                    ; $7a55: $2a
	rrca                                             ; $7a56: $0f

jr_001_7a57:
	ld   h, $10                                      ; $7a57: $26 $10
	rrca                                             ; $7a59: $0f
	jr   z, jr_001_7a86                              ; $7a5a: $28 $2a

	rrca                                             ; $7a5c: $0f
	ld   h, $10                                      ; $7a5d: $26 $10
	rrca                                             ; $7a5f: $0f
	dec  h                                           ; $7a60: $25
	jr   nz, jr_001_79e5                             ; $7a61: $20 $82

	ld   c, l                                        ; $7a63: $4d
	ld   a, d                                        ; $7a64: $7a
	rrca                                             ; $7a65: $0f
	add  hl, hl                                      ; $7a66: $29
	db   $10                                         ; $7a67: $10
	rrca                                             ; $7a68: $0f
	ld   a, [hl+]                                    ; $7a69: $2a
	jr   nz, jr_001_7a7b                             ; $7a6a: $20 $0f

	dec  hl                                          ; $7a6c: $2b
	jr   nz, jr_001_7a7e                             ; $7a6d: $20 $0f

	inc  l                                           ; $7a6f: $2c
	ld   [$290f], sp                                 ; $7a70: $08 $0f $29
	jr   nc, @+$11                                   ; $7a73: $30 $0f

	add  hl, hl                                      ; $7a75: $29
	jr   nz, jr_001_79fa                             ; $7a76: $20 $82

	ld   h, l                                        ; $7a78: $65
	ld   a, d                                        ; $7a79: $7a
	rrca                                             ; $7a7a: $0f

jr_001_7a7b:
	dec  l                                           ; $7a7b: $2d
	db   $10                                         ; $7a7c: $10
	rrca                                             ; $7a7d: $0f

jr_001_7a7e:
	ld   l, $0a                                      ; $7a7e: $2e $0a
	rrca                                             ; $7a80: $0f
	cpl                                              ; $7a81: $2f
	ld   [$300f], sp                                 ; $7a82: $08 $0f $30
	ld   a, [de]                                     ; $7a85: $1a

jr_001_7a86:
	rrca                                             ; $7a86: $0f
	ld   l, $0a                                      ; $7a87: $2e $0a
	rrca                                             ; $7a89: $0f
	cpl                                              ; $7a8a: $2f
	ld   a, [bc]                                     ; $7a8b: $0a
	rrca                                             ; $7a8c: $0f
	jr   nc, jr_001_7aaf                             ; $7a8d: $30 $20

	rrca                                             ; $7a8f: $0f
	ld   l, $43                                      ; $7a90: $2e $43
	rrca                                             ; $7a92: $0f
	ld   sp, $0f45                                   ; $7a93: $31 $45 $0f
	dec  l                                           ; $7a96: $2d
	jr   nz, jr_001_7a1b                             ; $7a97: $20 $82

	ld   a, d                                        ; $7a99: $7a
	ld   a, d                                        ; $7a9a: $7a
	rrca                                             ; $7a9b: $0f
	ld   [hl-], a                                    ; $7a9c: $32
	db   $10                                         ; $7a9d: $10
	rrca                                             ; $7a9e: $0f
	inc  sp                                          ; $7a9f: $33
	dec  b                                           ; $7aa0: $05
	rrca                                             ; $7aa1: $0f
	inc  [hl]                                        ; $7aa2: $34
	inc  e                                           ; $7aa3: $1c
	rrca                                             ; $7aa4: $0f
	ld   [hl-], a                                    ; $7aa5: $32
	jr   nc, jr_001_7ab7                             ; $7aa6: $30 $0f

	inc  sp                                          ; $7aa8: $33
	inc  bc                                          ; $7aa9: $03
	rrca                                             ; $7aaa: $0f
	inc  [hl]                                        ; $7aab: $34
	inc  e                                           ; $7aac: $1c
	rrca                                             ; $7aad: $0f
	ld   [hl-], a                                    ; $7aae: $32

jr_001_7aaf:
	add  hl, de                                      ; $7aaf: $19
	rrca                                             ; $7ab0: $0f
	dec  [hl]                                        ; $7ab1: $35
	dec  b                                           ; $7ab2: $05
	rrca                                             ; $7ab3: $0f
	ld   [hl], $05                                   ; $7ab4: $36 $05
	rrca                                             ; $7ab6: $0f

jr_001_7ab7:
	scf                                              ; $7ab7: $37
	dec  bc                                          ; $7ab8: $0b
	rrca                                             ; $7ab9: $0f
	jr   c, jr_001_7acb                              ; $7aba: $38 $0f

	rrca                                             ; $7abc: $0f
	ld   [hl-], a                                    ; $7abd: $32
	jr   nz, jr_001_7a42                             ; $7abe: $20 $82

	sbc  e                                           ; $7ac0: $9b
	ld   a, d                                        ; $7ac1: $7a
	inc  c                                           ; $7ac2: $0c
	ld   b, [hl]                                     ; $7ac3: $46
	add  hl, bc                                      ; $7ac4: $09
	inc  c                                           ; $7ac5: $0c
	ld   b, d                                        ; $7ac6: $42
	inc  c                                           ; $7ac7: $0c
	inc  c                                           ; $7ac8: $0c
	ld   b, e                                        ; $7ac9: $43
	inc  c                                           ; $7aca: $0c

jr_001_7acb:
	inc  c                                           ; $7acb: $0c
	ld   b, d                                        ; $7acc: $42
	inc  c                                           ; $7acd: $0c
	inc  c                                           ; $7ace: $0c
	ld   b, e                                        ; $7acf: $43
	inc  c                                           ; $7ad0: $0c
	inc  c                                           ; $7ad1: $0c
	ld   b, d                                        ; $7ad2: $42
	inc  c                                           ; $7ad3: $0c
	inc  c                                           ; $7ad4: $0c
	ld   b, e                                        ; $7ad5: $43
	inc  c                                           ; $7ad6: $0c
	inc  c                                           ; $7ad7: $0c
	ld   b, l                                        ; $7ad8: $45
	ld   c, $0c                                      ; $7ad9: $0e $0c
	ld   b, h                                        ; $7adb: $44
	ld   d, b                                        ; $7adc: $50
	add  d                                           ; $7add: $82
	jp   nz, $807a                                   ; $7ade: $c2 $7a $80

	nop                                              ; $7ae1: $00
	nop                                              ; $7ae2: $00
	db   $e4                                         ; $7ae3: $e4
	ld   a, d                                        ; $7ae4: $7a
	di                                               ; $7ae5: $f3
	ld   a, d                                        ; $7ae6: $7a
	rlca                                             ; $7ae7: $07
	ld   [bc], a                                     ; $7ae8: $02
	ld   [$0307], sp                                 ; $7ae9: $08 $07 $03
	ld   [$0407], sp                                 ; $7aec: $08 $07 $04
	ld   [$0307], sp                                 ; $7aef: $08 $07 $03
	ld   [$e782], sp                                 ; $7af2: $08 $82 $e7
	ld   a, d                                        ; $7af5: $7a
	rlca                                             ; $7af6: $07
	dec  b                                           ; $7af7: $05
	ld   [$0607], sp                                 ; $7af8: $08 $07 $06
	ld   [$0707], sp                                 ; $7afb: $08 $07 $07
	ld   [$0607], sp                                 ; $7afe: $08 $07 $06
	ld   [$f682], sp                                 ; $7b01: $08 $82 $f6
	ld   a, d                                        ; $7b04: $7a
