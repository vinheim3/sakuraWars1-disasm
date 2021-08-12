; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

Func_08_4000::
	xor  a                                           ; $4000: $af
	ld   [wScriptEngineIsRunning], a                                  ; $4001: $ea $51 $cb
	ld   [wIdxInScriptOpcodeStructForCurrOpcode], a                                  ; $4004: $ea $53 $cb
	ld   [$cbc7], a                                  ; $4007: $ea $c7 $cb
	ld   [$cba6], a                                  ; $400a: $ea $a6 $cb
	ld   [$cba8], a                                  ; $400d: $ea $a8 $cb
	ld   [$cba9], a                                  ; $4010: $ea $a9 $cb
	ld   [$cbaa], a                                  ; $4013: $ea $aa $cb
	ld   [$cbab], a                                  ; $4016: $ea $ab $cb
	ld   [$cbac], a                                  ; $4019: $ea $ac $cb
	ld   [$cbae], a                                  ; $401c: $ea $ae $cb
	ld   [$b0af], a                                  ; $401f: $ea $af $b0
	ld   a, [sTextSpeedBaseCounter]                                  ; $4022: $fa $b3 $b1
	ld   [wTextSpeedBaseCounter], a                                  ; $4025: $ea $90 $cb
	ld   [$cbc8], a                                  ; $4028: $ea $c8 $cb
	ld   a, $03                                      ; $402b: $3e $03
	ld   [$cba7], a                                  ; $402d: $ea $a7 $cb
	ld   a, $01                                      ; $4030: $3e $01
	ld   [$cbc3], a                                  ; $4032: $ea $c3 $cb
	ld   a, $ff                                      ; $4035: $3e $ff
	ld   [$cbb1], a                                  ; $4037: $ea $b1 $cb
	xor  a                                           ; $403a: $af
	ld   [$cbc4], a                                  ; $403b: $ea $c4 $cb
	ld   [$cbc5], a                                  ; $403e: $ea $c5 $cb
	ld   [$cbc6], a                                  ; $4041: $ea $c6 $cb
	ret                                              ; $4044: $c9


Func_08_4045::
	ld   a, $ff                                      ; $4045: $3e $ff
	ld   [$cbb1], a                                  ; $4047: $ea $b1 $cb
	xor  a                                           ; $404a: $af
	ld   [$cbc4], a                                  ; $404b: $ea $c4 $cb
	ld   [$cbc5], a                                  ; $404e: $ea $c5 $cb
	ld   [$cbc6], a                                  ; $4051: $ea $c6 $cb
	call InitWideTextBoxDimensions                                       ; $4054: $cd $ec $0f
	ld   bc, $0e03                                   ; $4057: $01 $03 $0e
	call SetKanjiTextBoxDimensions                                       ; $405a: $cd $24 $14
	ld   bc, $0000                                   ; $405d: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $4060: $cd $34 $14
	ret                                              ; $4063: $c9


; A - script bank
; HL - script addr
StartRunningScript::
; Set script src details
	ld   [wBaseScriptBank], a                                       ; $4064
	ld   [wCurrScriptBank], a                                       ; $4067
	ld   a, h                                                       ; $406a
	ld   [wBaseScriptAddr+1], a                                     ; $406b
	ld   [wCurrScriptAddr+1], a                                     ; $406e
	ld   a, l                                                       ; $4071
	ld   [wBaseScriptAddr], a                                       ; $4072
	ld   [wCurrScriptAddr], a                                       ; $4075
	
; Set that engine is now running to keep opcodes processing
	ld   a, $01                                                     ; $4078
	ld   [wScriptEngineIsRunning], a                                ; $407a

; Clear some script vars, including interrupts
	xor  a                                                          ; $407d
	ld   [wIdxInScriptOpcodeStructForCurrOpcode], a                 ; $407e
	ld   [wNextIdxIntoInterruptScriptBytes], a                      ; $4081
	ld   [wNumProcessedInterruptScriptBytes], a                     ; $4084

; Init some text box vars, but override width due to having a person's image
	call InitWideTextBoxDimensions                                  ; $4087
	ldbc $0e, $03                                                   ; $408a
	call SetKanjiTextBoxDimensions                                  ; $408d

; Start drawing at the top-left of the text box
	ldbc $00, $00                                                   ; $4090
	call SetCurrKanjiColAndRowToDrawOn                              ; $4093
	ret                                                             ; $4096


; A - opcode to enqueue for main loop processing
; Returns HL pointing to the highest-idxed param, if any
EnqueueAScriptOpcode:
	push af                                                         ; $4097
	push bc                                                         ; $4098
	
; HL = 5 * idx into script engine table
	ld   hl, ScriptEngineTable+4                                    ; $4099
	ld   b, $00                                                     ; $409c
	ld   c, a                                                       ; $409e
	add  hl, bc                                                     ; $409f
	sla  c                                                          ; $40a0
	rl   b                                                          ; $40a2
	sla  c                                                          ; $40a4
	rl   b                                                          ; $40a6
	add  hl, bc                                                     ; $40a8

; New idx = current idx + num params + 1 for opcode
	ld   a, [wIdxInScriptOpcodeStructForCurrOpcode]                 ; $40a9
	add  [hl]                                                       ; $40ac
	inc  a                                                          ; $40ad
	ld   h, $00                                                     ; $40ae
	ld   l, a                                                       ; $40b0
	ld   [wIdxInScriptOpcodeStructForCurrOpcode], a                 ; $40b1
	
; Store script opcode in wScriptOpcodeStruct, after params
	ld   bc, wIdxInScriptOpcodeStructForCurrOpcode                  ; $40b4
	add  hl, bc                                                     ; $40b7
	pop  bc                                                         ; $40b8
	pop  af                                                         ; $40b9

; Return HL pointing to address in struct before the opcode (highest-idxed param)
	ld   [hl-], a                                                   ; $40ba
	ret                                                             ; $40bb


DequeueAScriptOpcode:
; HL points to current opcode
	ld   hl, wScriptOpcodeStruct                                    ; $40bc
	ld   b, $00                                                     ; $40bf
	ld   a, [wIdxInScriptOpcodeStructForCurrOpcode]                 ; $40c1
	dec  a                                                          ; $40c4
	ld   c, a                                                       ; $40c5
	add  hl, bc                                                     ; $40c6
	
; Get opcode, and hl points to its 5th byte in the engine table
	ld   a, [hl]                                                    ; $40c7
	ld   hl, ScriptEngineTable+4                                    ; $40c8
	ld   b, $00                                                     ; $40cb
	ld   c, a                                                       ; $40cd
	add  hl, bc                                                     ; $40ce
	sla  c                                                          ; $40cf
	rl   b                                                          ; $40d1
	sla  c                                                          ; $40d3
	rl   b                                                          ; $40d5
	add  hl, bc                                                     ; $40d7

; Num struct bytes -= num params -1 (for opcode)
	ld   a, [wIdxInScriptOpcodeStructForCurrOpcode]                 ; $40d8
	dec  a                                                          ; $40db
	sub  [hl]                                                       ; $40dc
	ld   [wIdxInScriptOpcodeStructForCurrOpcode], a                 ; $40dd
	ret                                                             ; $40e0


Call_008_40e1:
	cp   $01                                         ; $40e1: $fe $01
	jr   z, jr_008_4101                              ; $40e3: $28 $1c

	cp   $02                                         ; $40e5: $fe $02
	jr   z, jr_008_411d                              ; $40e7: $28 $34

	ld   [$cbb1], a                                  ; $40e9: $ea $b1 $cb

	M_FarCall Func_0b_6446
	
	ret                                              ; $4100: $c9


jr_008_4101:
	ld   a, [$cbac]                                  ; $4101: $fa $ac $cb

	M_FarCall Func_0b_66cd
	
	inc  a                                           ; $4118: $3c
	ld   [$cbb1], a                                  ; $4119: $ea $b1 $cb
	ret                                              ; $411c: $c9


jr_008_411d:
	ld   a, [$cbae]                                  ; $411d: $fa $ae $cb

	M_FarCall Func_0b_619c
	
	add  $03                                         ; $4134: $c6 $03
	ld   [$cbb1], a                                  ; $4136: $ea $b1 $cb
	ret                                              ; $4139: $c9


Call_008_413a:
	ld   a, [$cbb1]                                  ; $413a: $fa $b1 $cb
	bit  7, a                                        ; $413d: $cb $7f
	push af                                          ; $413f: $f5
	ld   a, $02                                      ; $4140: $3e $02
	ld   [wFarCallAddr], a                                  ; $4142: $ea $98 $c2
	ld   a, $64                                      ; $4145: $3e $64
	ld   [wFarCallAddr+1], a                                  ; $4147: $ea $99 $c2
	ld   a, $0b                                      ; $414a: $3e $0b
	ld   [wFarCallBank], a                                  ; $414c: $ea $9a $c2
	pop  af                                          ; $414f: $f1
	call z, FarCall                                    ; $4150: $cc $62 $09
	ld   a, $ff                                      ; $4153: $3e $ff
	ld   [$cbb1], a                                  ; $4155: $ea $b1 $cb
	ret                                              ; $4158: $c9


Call_008_4159:
	ld   hl, $cbb1                                   ; $4159: $21 $b1 $cb
	bit  7, [hl]                                     ; $415c: $cb $7e
	push af                                          ; $415e: $f5
	ld   a, $1a                                      ; $415f: $3e $1a
	ld   [wFarCallAddr], a                                  ; $4161: $ea $98 $c2
	ld   a, $64                                      ; $4164: $3e $64
	ld   [wFarCallAddr+1], a                                  ; $4166: $ea $99 $c2
	ld   a, $0b                                      ; $4169: $3e $0b
	ld   [wFarCallBank], a                                  ; $416b: $ea $9a $c2
	pop  af                                          ; $416e: $f1
	call z, FarCall                                    ; $416f: $cc $62 $09
	ret                                              ; $4172: $c9


	ld   hl, $cbb1                                   ; $4173: $21 $b1 $cb
	bit  7, [hl]                                     ; $4176: $cb $7e
	push af                                          ; $4178: $f5
	ld   a, $30                                      ; $4179: $3e $30
	ld   [wFarCallAddr], a                                  ; $417b: $ea $98 $c2
	ld   a, $64                                      ; $417e: $3e $64
	ld   [wFarCallAddr+1], a                                  ; $4180: $ea $99 $c2
	ld   a, $0b                                      ; $4183: $3e $0b
	ld   [wFarCallBank], a                                  ; $4185: $ea $9a $c2
	pop  af                                          ; $4188: $f1
	call z, FarCall                                    ; $4189: $cc $62 $09
	ret                                              ; $418c: $c9


Call_008_418d:
	ld   a, [$cbb1]                                  ; $418d: $fa $b1 $cb
	bit  7, a                                        ; $4190: $cb $7f
	ret  nz                                          ; $4192: $c0

	ld   h, $00                                      ; $4193: $26 $00
	ld   l, a                                        ; $4195: $6f
	add  hl, hl                                      ; $4196: $29
	ld   bc, .table                                   ; $4197: $01 $a0 $41
	add  hl, bc                                      ; $419a: $09
	ld   a, [hl+]                                    ; $419b: $2a
	ld   h, [hl]                                     ; $419c: $66
	ld   l, a                                        ; $419d: $6f
	jp   hl                                          ; $419e: $e9

.entryStub:
	ret                                              ; $419f: $c9

.table:
	dw .entry0
	dw .entryStub
	dw .entry2
	dw .entryStub
	dw .entry4

.entry0:
	ld   d, $01                                      ; $41aa: $16 $01
	ld   a, [$cba8]                                  ; $41ac: $fa $a8 $cb
	ld   e, a                                        ; $41af: $5f
	ld   a, [$cbaa]                                  ; $41b0: $fa $aa $cb
	cp   e                                           ; $41b3: $bb
	jr   nz, .entry0cont                             ; $41b4: $20 $17

	ld   a, [wIdxInScriptOpcodeStructForCurrOpcode]                                  ; $41b6: $fa $53 $cb
	ld   b, $00                                      ; $41b9: $06 $00
	ld   c, a                                        ; $41bb: $4f
	ld   hl, wIdxInScriptOpcodeStructForCurrOpcode                                   ; $41bc: $21 $53 $cb
	add  hl, bc                                      ; $41bf: $09
	ld   a, [hl]                                     ; $41c0: $7e
	cp   $01                                         ; $41c1: $fe $01
	jr   nz, .entry0cont                             ; $41c3: $20 $08

	call CheckIfNextTextCharIsPunctuation                                       ; $41c5: $cd $7b $14
	or   a                                           ; $41c8: $b7
	jr   z, .entry0cont                              ; $41c9: $28 $02

	set  1, d                                        ; $41cb: $cb $ca

.entry0cont:
	ld   a, [$cba8]                                  ; $41cd: $fa $a8 $cb
	ld   h, a                                        ; $41d0: $67
	ld   a, [$cba9]                                  ; $41d1: $fa $a9 $cb
	ld   l, a                                        ; $41d4: $6f
	ld   a, [$cba7]                                  ; $41d5: $fa $a7 $cb
	and  d                                           ; $41d8: $a2

	M_FarCall Func_0b_653b
	
	ret                                              ; $41ed: $c9

.entry2:
	ld   d, $01                                      ; $41ee: $16 $01
	ld   a, [$cbad]                                  ; $41f0: $fa $ad $cb
	ld   e, a                                        ; $41f3: $5f
	ld   a, [$cbaa]                                  ; $41f4: $fa $aa $cb
	cp   e                                           ; $41f7: $bb
	jr   nz, .entry2cont                             ; $41f8: $20 $17

	ld   a, [wIdxInScriptOpcodeStructForCurrOpcode]                                  ; $41fa: $fa $53 $cb
	ld   b, $00                                      ; $41fd: $06 $00
	ld   c, a                                        ; $41ff: $4f
	ld   hl, wIdxInScriptOpcodeStructForCurrOpcode                                   ; $4200: $21 $53 $cb
	add  hl, bc                                      ; $4203: $09
	ld   a, [hl]                                     ; $4204: $7e
	cp   $01                                         ; $4205: $fe $01
	jr   nz, .entry2cont                             ; $4207: $20 $08

	call CheckIfNextTextCharIsPunctuation                                       ; $4209: $cd $7b $14
	or   a                                           ; $420c: $b7
	jr   z, .entry2cont                              ; $420d: $28 $02

	set  1, d                                        ; $420f: $cb $ca

.entry2cont:
	ld   a, [$cbac]                                  ; $4211: $fa $ac $cb
	ld   h, a                                        ; $4214: $67
	ld   a, [$cba7]                                  ; $4215: $fa $a7 $cb
	and  d                                           ; $4218: $a2
	ld   l, a                                        ; $4219: $6f

	M_FarCall Func_0b_6833
	
	ret                                              ; $422e: $c9

.entry4:
	ld   d, $01                                      ; $422f: $16 $01
	ld   a, [$cbaf]                                  ; $4231: $fa $af $cb
	ld   e, a                                        ; $4234: $5f
	ld   a, [$cbaa]                                  ; $4235: $fa $aa $cb
	cp   e                                           ; $4238: $bb
	jr   nz, .entry4cont                             ; $4239: $20 $17

	ld   a, [wIdxInScriptOpcodeStructForCurrOpcode]                                  ; $423b: $fa $53 $cb
	ld   b, $00                                      ; $423e: $06 $00
	ld   c, a                                        ; $4240: $4f
	ld   hl, wIdxInScriptOpcodeStructForCurrOpcode                                   ; $4241: $21 $53 $cb
	add  hl, bc                                      ; $4244: $09
	ld   a, [hl]                                     ; $4245: $7e
	cp   $01                                         ; $4246: $fe $01
	jr   nz, .entry4cont                             ; $4248: $20 $08

	call CheckIfNextTextCharIsPunctuation                                       ; $424a: $cd $7b $14
	or   a                                           ; $424d: $b7
	jr   z, .entry4cont                              ; $424e: $28 $02

	set  1, d                                        ; $4250: $cb $ca

.entry4cont:
	ld   a, [$cbae]                                  ; $4252: $fa $ae $cb
	ld   h, a                                        ; $4255: $67
	ld   a, [$cba7]                                  ; $4256: $fa $a7 $cb
	and  d                                           ; $4259: $a2
	ld   l, a                                        ; $425a: $6f

	M_FarCall Func_0b_6315
	
	ret                                              ; $426f: $c9


; Returns script byte in A
GetNextScriptOpcodeToProcess:
	push hl                                                         ; $4270

; Jump and process an interrupt script byte if needed
	ld   a, [wNumProcessedInterruptScriptBytes]                     ; $4271
	ld   hl, wNextIdxIntoInterruptScriptBytes                       ; $4274
	cp   [hl]                                                       ; $4277
	jr   nz, .processInterrupts                                     ; $4278

; Push far byte read
	ld   a, [wCurrScriptAddr]                                       ; $427a
	ld   l, a                                                       ; $427d
	ld   a, [wCurrScriptAddr+1]                                     ; $427e
	ld   h, a                                                       ; $4281
	ld   a, [wCurrScriptBank]                                       ; $4282
	call FarGetByte                                                 ; $4285
	push af                                                         ; $4288

; Jump if still within bank
	bit  7, h                                                       ; $4289
	jr   z, .saveNewControlCodeSrc                                  ; $428b

; Else inc bank, and convert $8000->$4000
	ld   a, [wCurrScriptBank]                                       ; $428d
	inc  a                                                          ; $4290
	ld   [wCurrScriptBank], a                                       ; $4291
	res  7, h                                                       ; $4294
	set  6, h                                                       ; $4296

.saveNewControlCodeSrc:
	ld   a, h                                                       ; $4298
	ld   [wCurrScriptAddr+1], a                                     ; $4299
	ld   a, l                                                       ; $429c
	ld   [wCurrScriptAddr], a                                       ; $429d

	pop  af                                                         ; $42a0
	pop  hl                                                         ; $42a1
	ret                                                             ; $42a2

.processInterrupts:
	push bc                                                         ; $42a3

; Inc num processed, looping $10->0
	ld   a, [wNumProcessedInterruptScriptBytes]                     ; $42a4
	and  $0f                                                        ; $42a7
	ld   hl, wInterruptScriptBytes                                  ; $42a9
	ld   b, $00                                                     ; $42ac
	ld   c, a                                                       ; $42ae
	add  hl, bc                                                     ; $42af
	inc  a                                                          ; $42b0
	and  $0f                                                        ; $42b1
	ld   [wNumProcessedInterruptScriptBytes], a                     ; $42b3
	
; Get val in un-inc'd offset
	ld   a, [hl]                                                    ; $42b6

	pop  bc                                                         ; $42b7
	pop  hl                                                         ; $42b8
	ret                                                             ; $42b9


; A - script opcode
AddInterruptScriptOpcode:
	push hl                                                         ; $42ba
	push af                                                         ; $42bb

; Inc idx into the script bytes stack, keeping the un-inc'd val in A
	ld   hl, wNextIdxIntoInterruptScriptBytes                       ; $42bc
	ld   a, [hl]                                                    ; $42bf
	and  $0f                                                        ; $42c0
	ld   [hl], a                                                    ; $42c2
	inc  [hl]                                                       ; $42c3
	res  4, [hl]                                                    ; $42c4

; Use the un-inc'd A to get offset into script bytes
	ld   hl, wInterruptScriptBytes                                  ; $42c6
	add  l                                                          ; $42c9
	ld   l, a                                                       ; $42ca
	ld   a, $00                                                     ; $42cb
	adc  h                                                          ; $42cd
	ld   h, a                                                       ; $42ce

; Store interrupt opcode in it
	pop  af                                                         ; $42cf
	ld   [hl], a                                                    ; $42d0
	pop  hl                                                         ; $42d1
	ret                                                             ; $42d2


; HL - relative offset
ScriptJumpRelativeToBase::
; B = upper 2 bits of H
	ld   a, h                                                       ; $42d3
	sla  a                                                          ; $42d4
	rla                                                             ; $42d6
	rla                                                             ; $42d7
	and  $03                                                        ; $42d8
	ld   b, a                                                       ; $42da

; H = the lower 6 bits, ie HL goes to $3fff
	ld   a, h                                                       ; $42db
	and  $3f                                                        ; $42dc
	ld   h, a                                                       ; $42de

; Add offset to base addr
	ld   a, [wBaseScriptAddr]                                       ; $42df
	ld   e, a                                                       ; $42e2
	ld   a, [wBaseScriptAddr+1]                                     ; $42e3
	ld   d, a                                                       ; $42e6
	add  hl, de                                                     ; $42e7

; Jump if we're still within the bank
	bit  7, h                                                       ; $42e8
	jr   z, :+                                                      ; $42ea

; Else inc bank offset, and convert, eg, $8000->$4000
	inc  b                                                          ; $42ec
	res  7, h                                                       ; $42ed
	set  6, h                                                       ; $42ef

; Save script addr
:	ld   a, l                                                       ; $42f1
	ld   [wCurrScriptAddr], a                                       ; $42f2
	ld   a, h                                                       ; $42f5
	ld   [wCurrScriptAddr+1], a                                     ; $42f6

; Add bank offset
	ld   a, [wBaseScriptBank]                                       ; $42f9
	add  b                                                          ; $42fc
	ld   [wCurrScriptBank], a                                       ; $42fd
	ret                                                             ; $4300


Call_008_4301:
	ld   a, [$cbc4]                                  ; $4301: $fa $c4 $cb
	or   a                                           ; $4304: $b7
	ret  z                                           ; $4305: $c8

	ld   a, [$c654]                                  ; $4306: $fa $54 $c6
	call Func_1d3d                                       ; $4309: $cd $3d $1d
	or   a                                           ; $430c: $b7
	jr   nz, jr_008_4323                             ; $430d: $20 $14

	ld   a, [$cbc5]                                  ; $430f: $fa $c5 $cb
	or   a                                           ; $4312: $b7
	jr   nz, jr_008_431d                             ; $4313: $20 $08

	ld   hl, $cbc6                                   ; $4315: $21 $c6 $cb
	dec  [hl]                                        ; $4318: $35
	bit  7, [hl]                                     ; $4319: $cb $7e
	jr   nz, jr_008_4329                             ; $431b: $20 $0c

jr_008_431d:
	ld   a, [$cbc4]                                  ; $431d: $fa $c4 $cb
	call Func_1adf                                       ; $4320: $cd $df $1a

jr_008_4323:
	ld   a, [wInGameButtonsPressed]                                  ; $4323: $fa $10 $c2
	and  $03                                         ; $4326: $e6 $03
	ret  z                                           ; $4328: $c8

jr_008_4329:
	xor  a                                           ; $4329: $af
	ld   [$cbc4], a                                  ; $432a: $ea $c4 $cb
	ld   [$cbc5], a                                  ; $432d: $ea $c5 $cb
	ld   [$cbc6], a                                  ; $4330: $ea $c6 $cb
	ret                                              ; $4333: $c9


Call_008_4334:
	ld   [$cbc4], a                                  ; $4334: $ea $c4 $cb
	xor  a                                           ; $4337: $af
	ld   [$cbc5], a                                  ; $4338: $ea $c5 $cb
	inc  a                                           ; $433b: $3c
	ld   [$cbc6], a                                  ; $433c: $ea $c6 $cb
	ret                                              ; $433f: $c9


HandleScriptEngine::
;
	call Call_008_418d                               ; $4340: $cd $8d $41
	call Call_008_4301                               ; $4343: $cd $01 $43

;
	ld   a, [$b1b4]                                  ; $4346: $fa $b4 $b1
	ld   [$cb91], a                                  ; $4349: $ea $91 $cb

;
	ld   a, [wInGameButtonsHeld]                                  ; $434c: $fa $0f $c2
	bit  PADB_B, a                                        ; $434f: $cb $4f
	jr   z, jr_008_4358                              ; $4351: $28 $05

	ld   a, $ff                                      ; $4353: $3e $ff
	ld   [$cb91], a                                  ; $4355: $ea $91 $cb

jr_008_4358:
; By default, continuously run the script engine
	ld   a, $01                                                     ; $4358
	ld   [wScriptEngineContsRunningThisMainLoop], a                 ; $435a

LoopRunScriptEngine:
; Don't continue if engine is no longer running
	ld   a, [wScriptEngineIsRunning]                                ; $435d
	or   a                                                          ; $4360
	ret  z                                                          ; $4361

; Return if we need to resume next main loop
	ld   a, [wScriptEngineContsRunningThisMainLoop]                 ; $4362
	or   a                                                          ; $4365
	ret  z                                                          ; $4366

; HL = pointer to curr opcode to execute
	ld   a, [wIdxInScriptOpcodeStructForCurrOpcode]                 ; $4367
	ld   b, $00                                                     ; $436a
	ld   c, a                                                       ; $436c
	ld   hl, wIdxInScriptOpcodeStructForCurrOpcode                  ; $436d
	add  hl, bc                                                     ; $4370

; If that opcode has been cleared, process a new script byte
	ld   a, [hl-]                                                   ; $4371
	or   a                                                          ; $4372
	jp   z, .processNextScriptByte                                  ; $4373

; Else save the current opcode in BC, save HL in DE
	ld   b, $00                                                     ; $4376
	ld   c, a                                                       ; $4378
	ld   d, h                                                       ; $4379
	ld   e, l                                                       ; $437a

; Process more opcodes after this
	ld   hl, LoopRunScriptEngine                                    ; $437b
	push hl                                                         ; $437e

; HL = opcode * 5 to get idx in engine table's 2nd word
	ld   h, b                                                       ; $437f
	ld   l, c                                                       ; $4380
	add  hl, hl                                                     ; $4381
	add  hl, hl                                                     ; $4382
	add  hl, bc                                                     ; $4383
	ld   bc, ScriptEngineTable+2                                    ; $4384
	add  hl, bc                                                     ; $4387

; Push word address to return to that script func
	ld   a, [hl+]                                                   ; $4388
	ld   b, [hl]                                                    ; $4389
	ld   c, a                                                       ; $438a
	push bc                                                         ; $438b

; Restore pointer to 1st opcode's param
	ld   h, d                                                       ; $438c
	ld   l, e                                                       ; $438d
	ret                                                             ; $438e

.processNextScriptByte:
; Get new opcode in A
	call GetNextScriptOpcodeToProcess                               ; $438f
	
; HL = opcode * 5 to get idx in engine table's 1st word
	ld   hl, ScriptEngineTable                                      ; $4392
	ld   b, $00                                                     ; $4395
	ld   c, a                                                       ; $4397
	add  hl, bc                                                     ; $4398
	sla  c                                                          ; $4399
	rl   b                                                          ; $439b
	sla  c                                                          ; $439d
	rl   b                                                          ; $439f
	add  hl, bc                                                     ; $43a1
	
; Process more opcodes after this
	ld   bc, LoopRunScriptEngine                                    ; $43a2
	push bc                                                         ; $43a5

; Jump to opcode handler
	ld   a, [hl+]                                                   ; $43a6
	ld   h, [hl]                                                    ; $43a7
	ld   l, a                                                       ; $43a8
	jp   hl                                                         ; $43a9


macro ScriptOpData
	dw \1_Init, \1_Main
	db \2
endm
ScriptEngineTable:
	ScriptOpData ScriptOpcode00_End, $00
	; Base text speed counter, actual text speed counter
	ScriptOpData ScriptOpcode01_DisplayText, $02
	;
	ScriptOpData ScriptOpcode02, $01
	;
	ScriptOpData ScriptOpcode03, $02
	ScriptOpData ScriptOpcode04_Deque, $00
	ScriptOpData ScriptOpcode05, $00
	ScriptOpData ScriptOpcode06_Jump, $00
	ScriptOpData ScriptOpcode07_JumpIfCalcValIsNon0, $00
	ScriptOpData ScriptOpcode08_ClearTextBox, $00
	; Num frames left
	ScriptOpData ScriptOpcode09_SetDelay, $01
	; Counter for deciding arrow y coord
	ScriptOpData ScriptOpcode0a_ContinuePrompt, $01
	ScriptOpData ScriptOpcode0b_SetTextSpeed, $00
	;
	ScriptOpData ScriptOpcode0c, $01
	;
	ScriptOpData ScriptOpcode0d_SetCharacterOnScene, $04
	; Scenery idx, ???, ???, ???, ???
	ScriptOpData ScriptOpcode0e_LoadScenery, $05
	;
	ScriptOpData ScriptOpcode0f_SetPortrait, $04
	;
	ScriptOpData ScriptOpcode10, $07
	ScriptOpData ScriptOpcode11, $00
	ScriptOpData ScriptOpcode12, $00
	;
	ScriptOpData ScriptOpcode13, $02
	;
	ScriptOpData ScriptOpcode14, $01
	;
	ScriptOpData ScriptOpcode15, $02
	;
	ScriptOpData ScriptOpcode16, $03
	ds 5, 0
	;
	ScriptOpData ScriptOpcode18, $03
	ScriptOpData ScriptOpcode19_TimedQuestion, $00
	;
	ScriptOpData ScriptOpcode1a, $01
	;
	ScriptOpData ScriptOpcode1b, $03
	ScriptOpData ScriptOpcode1c_SetPortraitAndCharacter, $00
	;
	ScriptOpData ScriptOpcode1d, $04
	;
	ScriptOpData ScriptOpcode1e, $04
	;
	ScriptOpData ScriptOpcode1f, $01
	ScriptOpData ScriptOpcode20, $00
	;
	ScriptOpData ScriptOpcode21, $01
	ScriptOpData ScriptOpcode22_Stub, $00
	;
	ScriptOpData ScriptOpcode23, $03
	;
	ScriptOpData ScriptOpcode24, $03
	ScriptOpData ScriptOpcode25, $00
	ScriptOpData ScriptOpcode26, $00
	;
	ScriptOpData ScriptOpcode27_Battle, $01
	;
	ScriptOpData ScriptOpcode28, $06
	ScriptOpData ScriptOpcode29, $00
	ScriptOpData ScriptOpcode2a, $00
	;
	ScriptOpData ScriptOpcode2b, $02
	ScriptOpData ScriptOpcode2c, $00
	;
	ScriptOpData ScriptOpcode2d, $03
	ScriptOpData ScriptOpcode2e, $00
	;
	ScriptOpData ScriptOpcode2f, $01
	ScriptOpData ScriptOpcode30, $00
	ScriptOpData ScriptOpcode31, $00
	ScriptOpData ScriptOpcode32, $00
	;
	ScriptOpData ScriptOpcode33, $01
	;
	ScriptOpData ScriptOpcode34_PreSpecifiedDelay, $01


Func_08_44b3::
	ld   [wBaseScriptBank], a                                  ; $44b3: $ea $8c $cb
	ld   [wCurrScriptBank], a                                  ; $44b6: $ea $8f $cb
	ld   a, h                                        ; $44b9: $7c
	ld   [wBaseScriptAddr+1], a                                  ; $44ba: $ea $8b $cb
	ld   [wCurrScriptAddr+1], a                                  ; $44bd: $ea $8e $cb
	ld   a, l                                        ; $44c0: $7d
	ld   [wBaseScriptAddr], a                                  ; $44c1: $ea $8a $cb
	ld   [wCurrScriptAddr], a                                  ; $44c4: $ea $8d $cb
	xor  a                                           ; $44c7: $af
	ld   [wIdxInScriptOpcodeStructForCurrOpcode], a                                  ; $44c8: $ea $53 $cb
	ld   [wNextIdxIntoInterruptScriptBytes], a                                  ; $44cb: $ea $86 $cb
	ld   [wNumProcessedInterruptScriptBytes], a                                  ; $44ce: $ea $87 $cb

HandleProcessingScriptCalcStack:
; Clear stack to be populated from script bytes
	xor  a                                                          ; $44d1
	ld   [wNumBytesInScriptCalcStack], a                            ; $44d2

; Loop back here after jumping below
:	ld   hl, :-                                                     ; $44d5
	push hl                                                         ; $44d8

; Get bin ops code, jumping if performing an RPN func
	call GetNextScriptOpcodeToProcess                               ; $44d9
	cp   $10                                                        ; $44dc
	jp   nc, ScriptCalcFuncs                                        ; $44de

; Branch if bin ops code == 1 to 6
	dec  a                                                          ; $44e1
	jr   z, .CalcCode1_pushScriptByte                               ; $44e2

	dec  a                                                          ; $44e4
	jr   z, .CalcCode2_pushSpecialRamByte                           ; $44e5

	dec  a                                           ; $44e7: $3d
	jp   z, ScriptCalcCode3                            ; $44e8: $ca $6b $45

	dec  a                                           ; $44eb: $3d
	jp   z, ScriptCalcCode4                            ; $44ec: $ca $87 $45

	dec  a                                           ; $44ef: $3d
	jp   z, ScriptCalcCode5                            ; $44f0: $ca $a5 $45

	dec  a                                           ; $44f3: $3d
	jp   z, ScriptCalcCode6                            ; $44f4: $ca $c1 $45

; Else return the last value in the stack
	call PopAFromScriptStack                               ; $44f7: $cd $5b $45
	pop  hl                                          ; $44fa: $e1
	ret                                              ; $44fb: $c9

.CalcCode1_pushScriptByte:
	call GetNextScriptOpcodeToProcess                               ; $44fc
	jr   PushAOntoScriptCalcStack                                   ; $44ff

.CalcCode2_pushSpecialRamByte:
	call GetNextScriptOpcodeToProcess                               ; $4501: $cd $70 $42
	sla  a                                           ; $4504: $cb $27
	ld   b, $00                                      ; $4506: $06 $00
	ld   c, a                                        ; $4508: $4f
	ld   hl, .table                                   ; $4509: $21 $11 $45
	add  hl, bc                                      ; $450c: $09
	ld   a, [hl+]                                    ; $450d: $2a
	ld   h, [hl]                                     ; $450e: $66
	ld   l, a                                        ; $450f: $6f
	jp   hl                                          ; $4510: $e9

.table:
	dw $4521
	dw $4526
	dw $452b
	dw $4530
	dw $4535
	dw $453a
	dw $453f
	dw $4544

	ld   a, [$afb0]                                  ; $4521: $fa $b0 $af
	jr   PushAOntoScriptCalcStack                                 ; $4524: $18 $23

	ld   a, [$cb20]                                  ; $4526: $fa $20 $cb
	jr   PushAOntoScriptCalcStack                                 ; $4529: $18 $1e

	ld   a, [wUntimedQuestionAnswer]                                  ; $452b: $fa $92 $cb
	jr   PushAOntoScriptCalcStack                                 ; $452e: $18 $19

	ld   a, [wTimedQuestionAnswer]                                  ; $4530: $fa $93 $cb
	jr   PushAOntoScriptCalcStack                                 ; $4533: $18 $14

	ld   a, [wBattleWon]                                  ; $4535: $fa $21 $cb
	jr   PushAOntoScriptCalcStack                                 ; $4538: $18 $0f

	ld   a, [$cb94]                                  ; $453a: $fa $94 $cb
	jr   PushAOntoScriptCalcStack                                 ; $453d: $18 $0a

	ld   a, [$cb1e]                                  ; $453f: $fa $1e $cb
	jr   PushAOntoScriptCalcStack                                 ; $4542: $18 $05

	ld   a, [$cbc2]                                  ; $4544: $fa $c2 $cb
	jr   PushAOntoScriptCalcStack                                 ; $4547: $18 $00


PushAOntoScriptCalcStack:
	push af                                                         ; $4549
	ld   b, $00                                                     ; $454a

; A = idx into stack to set byte, also inc num bytes for next idx
	ld   a, [wNumBytesInScriptCalcStack]                            ; $454c
	ld   c, a                                                       ; $454f
	inc  a                                                          ; $4550
	ld   [wNumBytesInScriptCalcStack], a                            ; $4551
	
	ld   hl, wScriptCalcStack                                       ; $4554
	add  hl, bc                                                     ; $4557

; Set value in stack
	pop  af                                                         ; $4558
	ld   [hl], a                                                    ; $4559
	ret                                                             ; $455a


PopAFromScriptStack:
	ld   b, $00                                                     ; $455b

; Dec num bytes in stack, and place in C
	ld   a, [wNumBytesInScriptCalcStack]                            ; $455d
	dec  a                                                          ; $4560
	ld   [wNumBytesInScriptCalcStack], a                            ; $4561
	ld   c, a                                                       ; $4564

; Return value in A
	ld   hl, wScriptCalcStack                                       ; $4565
	add  hl, bc                                                     ; $4568
	ld   a, [hl]                                                    ; $4569
	ret                                                             ; $456a


ScriptCalcCode3:
	ld   h, $00                                      ; $456b: $26 $00
	call GetNextScriptOpcodeToProcess                               ; $456d: $cd $70 $42
	ld   l, a                                        ; $4570: $6f

	M_FarCall Func_09_44d7

	jr   PushAOntoScriptCalcStack                                 ; $4585: $18 $c2


ScriptCalcCode4:
	call GetNextScriptOpcodeToProcess                               ; $4587: $cd $70 $42
	ld   h, a                                        ; $458a: $67
	call GetNextScriptOpcodeToProcess                               ; $458b: $cd $70 $42
	ld   l, a                                        ; $458e: $6f

	M_FarCall Call_009_44de
	
	jr   PushAOntoScriptCalcStack                                 ; $45a3: $18 $a4


ScriptCalcCode5:
	ld   h, $00                                      ; $45a5: $26 $00
	call GetNextScriptOpcodeToProcess                               ; $45a7: $cd $70 $42
	ld   l, a                                        ; $45aa: $6f

	M_FarCall GetSramByte

	jr   PushAOntoScriptCalcStack                                 ; $45bf: $18 $88


ScriptCalcCode6:
	call GetNextScriptOpcodeToProcess                               ; $45c1: $cd $70 $42
	ld   h, a                                        ; $45c4: $67
	call GetNextScriptOpcodeToProcess                               ; $45c5: $cd $70 $42
	ld   l, a                                        ; $45c8: $6f

	M_FarCall CheckIfFlagSet
	
	jp   PushAOntoScriptCalcStack                               ; $45dd: $c3 $49 $45


; A - script byte used for RPN func
ScriptCalcFuncs:
; RPC funcs start from $10, as double idx into below table
	sub  $10                                                        ; $45e0
	sla  a                                                          ; $45e2
	ld   b, $00                                                     ; $45e4
	ld   c, a                                                       ; $45e6
	ld   hl, .table                                                 ; $45e7
	add  hl, bc                                                     ; $45ea

; Get addr then jump to it
	ld   a, [hl+]                                                   ; $45eb
	ld   h, [hl]                                                    ; $45ec
	ld   l, a                                                       ; $45ed
	jp   hl                                                         ; $45ee

.table:
	dw $0000 ; $10
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000 ; $1a
	dw .calcFunc1b_boolOr
	dw .calcFunc1c_boolAnd
	dw .calcFunc1d_binOr
	dw .calcFunc1e_binXor
	dw .calcFunc1f_binAnd
	dw .calcFunc20_eq
	dw .calcFunc21_neq
	dw .calcFunc22_lt
	dw .calcFunc23_lte
	dw .calcFunc24_gt
	dw .calcFunc25_gte
	dw .calcFunc26_stub
	dw .calcFunc27_stub
	dw .calcFunc28_add
	dw .calcFunc29_sub
	dw .calcFunc2a_mult
	dw .calcFunc2b_div
	dw .calcFunc2c_mod

.calcFunc1b_boolOr:
; Push $ff if 1 | 2 != 0
	call PopAFromScriptStack                                        ; $4629
	ld   e, a                                                       ; $462c
	call PopAFromScriptStack                                        ; $462d
	or   e                                                          ; $4630
	jr   z, .pushResult0                                            ; $4631

	jr   .pushResultFFh                                             ; $4633

.calcFunc1c_boolAnd:
; Push $ff if 1 & 2 != 0
	call PopAFromScriptStack                                        ; $4635
	ld   e, a                                                       ; $4638
	call PopAFromScriptStack                                        ; $4639
	and  e                                                          ; $463c
	jr   z, .pushResult0                                            ; $463d

	jr   .pushResultFFh                                             ; $463f

.calcFunc1d_binOr:
; Push 1 | 2
	call PopAFromScriptStack                                        ; $4641
	ld   e, a                                                       ; $4644
	call PopAFromScriptStack                                        ; $4645
	or   e                                                          ; $4648
	call PushAOntoScriptCalcStack                                   ; $4649
	ret                                                             ; $464c

.calcFunc1e_binXor:
; Push 1 ^ 2
	call PopAFromScriptStack                                        ; $464d
	ld   e, a                                                       ; $4650
	call PopAFromScriptStack                                        ; $4651
	xor  e                                                          ; $4654
	call PushAOntoScriptCalcStack                                   ; $4655
	ret                                                             ; $4658

.calcFunc1f_binAnd:
; Push 1 & 2
	call PopAFromScriptStack                                        ; $4659
	ld   e, a                                                       ; $465c
	call PopAFromScriptStack                                        ; $465d
	and  e                                                          ; $4660
	call PushAOntoScriptCalcStack                                   ; $4661
	ret                                                             ; $4664

.calcFunc20_eq:
; Push $ff if 1 == 2
	call PopAFromScriptStack                                        ; $4665
	ld   e, a                                                       ; $4668
	call PopAFromScriptStack                                        ; $4669
	cp   e                                                          ; $466c
	jr   nz, .pushResult0                                           ; $466d

	jr   .pushResultFFh                                             ; $466f

.calcFunc21_neq:
; Push $ff if 1 != 2
	call PopAFromScriptStack                                        ; $4671
	ld   e, a                                                       ; $4674
	call PopAFromScriptStack                                        ; $4675
	cp   e                                                          ; $4678
	jr   z, .pushResult0                                            ; $4679

	jr   .pushResultFFh                                             ; $467b

.calcFunc22_lt:
; Push $ff if 1 < 2
	call PopAFromScriptStack                                        ; $467d
	ld   e, a                                                       ; $4680
	call PopAFromScriptStack                                        ; $4681
	cp   e                                                          ; $4684
	jr   nc, .pushResult0                                           ; $4685

	jr   .pushResultFFh                                             ; $4687

.calcFunc23_lte:
; Push $ff if 1 <= 2
	call PopAFromScriptStack                                        ; $4689
	ld   e, a                                                       ; $468c
	call PopAFromScriptStack                                        ; $468d
	cp   e                                                          ; $4690
	jr   c, .pushResultFFh                                          ; $4691

	jr   z, .pushResultFFh                                          ; $4693

.pushResult0:
	xor  a                                                          ; $4695
	call PushAOntoScriptCalcStack                                   ; $4696
	ret                                                             ; $4699

.pushResultFFh:
	ld   a, $ff                                                     ; $469a
	call PushAOntoScriptCalcStack                                   ; $469c
	ret                                                             ; $469f

.calcFunc24_gt:
; Push $ff if 1 > 2
	call PopAFromScriptStack                                        ; $46a0
	ld   e, a                                                       ; $46a3
	call PopAFromScriptStack                                        ; $46a4
	cp   e                                                          ; $46a7
	jr   c, .pushResult0                                            ; $46a8

	jr   z, .pushResult0                                            ; $46aa

	jr   .pushResultFFh                                             ; $46ac

.calcFunc25_gte:
; Push $ff if 1 >= 2
	call PopAFromScriptStack                                        ; $46ae
	ld   e, a                                                       ; $46b1
	call PopAFromScriptStack                                        ; $46b2
	cp   e                                                          ; $46b5
	jr   c, .pushResult0                                            ; $46b6

	jr   .pushResultFFh                                             ; $46b8

.calcFunc26_stub:
	ret                                                             ; $46ba

.calcFunc27_stub:
	ret                                                             ; $46bb

.calcFunc28_add:
; Push min(1 + 2, $ff)
	call PopAFromScriptStack                                        ; $46bc
	ld   e, a                                                       ; $46bf
	call PopAFromScriptStack                                        ; $46c0
	add  e                                                          ; $46c3
	jr   nc, :+                                                     ; $46c4
	ld   a, $ff                                                     ; $46c6
:	call PushAOntoScriptCalcStack                                   ; $46c8
	ret                                                             ; $46cb

.calcFunc29_sub:
; Push max(1 - 2, $00)
	call PopAFromScriptStack                                        ; $46cc
	ld   e, a                                                       ; $46cf
	call PopAFromScriptStack                                        ; $46d0
	sub  e                                                          ; $46d3
	jr   nc, :+                                                     ; $46d4
	xor  a                                                          ; $46d6
:	call PushAOntoScriptCalcStack                                   ; $46d7
	ret                                                             ; $46da

.calcFunc2a_mult:
; H = 2, L = 1, mult and push
	call PopAFromScriptStack                                        ; $46db
	ld   e, a                                                       ; $46de
	call PopAFromScriptStack                                        ; $46df
	ld   l, e                                                       ; $46e2
	ld   h, a                                                       ; $46e3
	call AequHtimesL                                                ; $46e4
	call PushAOntoScriptCalcStack                                   ; $46e7
	ret                                                             ; $46ea

.calcFunc2b_div:
; H = 2, L = 1, push 2 / 1
	call PopAFromScriptStack                                        ; $46eb
	ld   e, a                                                       ; $46ee
	call PopAFromScriptStack                                        ; $46ef
	ld   l, e                                                       ; $46f2
	ld   h, a                                                       ; $46f3
	call HLequHdivModL                                              ; $46f4
	ld   a, h                                                       ; $46f7
	call PushAOntoScriptCalcStack                                   ; $46f8
	ret                                                             ; $46fb

.calcFunc2c_mod:
; H = 2, L = 1, push 2 % 1
	call PopAFromScriptStack                                        ; $46fc
	ld   e, a                                                       ; $46ff
	call PopAFromScriptStack                                        ; $4700
	ld   l, e                                                       ; $4703
	ld   h, a                                                       ; $4704
	call HLequHdivModL                                              ; $4705
	ld   a, l                                                       ; $4708
	call PushAOntoScriptCalcStack                                   ; $4709
	ret                                                             ; $470c


ScriptOpcode00_End_Init:
	xor  a                                                          ; $470d
	ld   [wScriptEngineIsRunning], a                                ; $470e

ScriptOpcode00_End_Main:
	ret                                                             ; $4711


ScriptOpcode01_DisplayText_Init:
; Display text with a black color
	ld   a, KTS_BLACK_ON_WHITE                                      ; $4712
	call SetDefaultAndCurrKanjiTileTextStyle                        ; $4714
	
; Enqueue this opcode
	ld   a, $01                                                     ; $4717
	call EnqueueAScriptOpcode                                       ; $4719
	
; 2 params are base counter, and actual counter
	ld   a, [wTextSpeedBaseCounter]                                 ; $471c
	ld   [hl-], a                                                   ; $471f
	xor  a                                                          ; $4720
	ld   [hl-], a                                                   ; $4721

.toNextDataByte:
; We're done once we read 0
	ld   h, $00                                                     ; $4722
	call GetNextScriptOpcodeToProcess                               ; $4724
	or   a                                                          ; $4727
	ret  z                                                          ; $4728

; Branch based on script byte range
	cp   $ff                                                        ; $4729
	jr   z, .scriptByteFFh                                          ; $472b

	cp   $10                                                        ; $472d
	jr   nc, .scriptByteGTE10h                                      ; $472f

	cp   $08                                                        ; $4731
	jr   c, .scriptByteLt8                                          ; $4733

; For $08 to $0f, convert to $00 to $07 as a double idx into the table
	push af                                                         ; $4735
	ld   b, $00                                                     ; $4736
	ld   c, a                                                       ; $4738
	res  3, c                                                       ; $4739
	ld   hl, .tableForCode8toF                                      ; $473b
	add  hl, bc                                                     ; $473e
	add  hl, bc                                                     ; $473f

; Call handler with the original byte in A
	ld   a, [hl+]                                                   ; $4740
	ld   h, [hl]                                                    ; $4741
	ld   l, a                                                       ; $4742
	pop  af                                                         ; $4743
	jp   hl                                                         ; $4744

.scriptByte8:
; Load player name from save data
	ld   de, wPlayerName                                            ; $4745
	ld   hl, sPlayerName                                            ; $4748
	ld   bc, $0006                                                  ; $474b
	call MemCopy                                                    ; $474e

;
	call GetNextScriptOpcodeToProcess                               ; $4751: $cd $70 $42
	or   a                                           ; $4754: $b7

;
	push af                                          ; $4755: $f5
	ld   a, LOW(Func_05_4000)                                      ; $4756: $3e $00
	ld   [wFarCallAddr], a                                  ; $4758: $ea $98 $c2
	ld   a, HIGH(Func_05_4000)                                      ; $475b: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $475d: $ea $99 $c2
	ld   a, BANK(Func_05_4000)                                      ; $4760: $3e $05
	ld   [wFarCallBank], a                                  ; $4762: $ea $9a $c2
	pop  af                                          ; $4765: $f1
	call nz, FarCall                                   ; $4766: $c4 $62 $09

; Until the null terminator is found, add a kanji to display
	ld   de, wPlayerName                                            ; $4769
:	ld   a, [de]                                                    ; $476c
	inc  de                                                         ; $476d
	or   a                                                          ; $476e
	jr   z, .toNextDataByte                                         ; $476f

	call AddKanjiToConvoStructForCurrTextBox                        ; $4771
	jr   :-                                                         ; $4774

.scriptByteFFh:
; Add 2 characters to display:
; Special character 9 displays a single dot, but does not inc column
; $ff is double dots, giving the effect of 1 dot displaying at a time
	ld   h, $09                                                     ; $4776
	ld   l, $ff                                                     ; $4778
	call AddQuarterBankOffsetAndKanjiToConvoStructForCurrTextBox    ; $477a
	jr   .toNextDataByte                                            ; $477d

.scriptByteBtoF:
; Special character $0d indicates a line break
	ld   h, $00                                                     ; $477f
	ld   a, $0d                                                     ; $4781
	jr   .scriptByteGTE10h                                          ; $4783

.scriptByteLt8:
; Byte read was quarter bank offset, next is the kanji in that quarter bank
	ld   h, a                                                       ; $4785
	call GetNextScriptOpcodeToProcess                               ; $4786

.scriptByteGTE10h:
; Display the kanji
	ld   l, a                                                       ; $4789
	call AddQuarterBankOffsetAndKanjiToConvoStructForCurrTextBox    ; $478a
	jr   .toNextDataByte                                            ; $478d

.tableForCode8toF:
	dw .scriptByte8
	dw .scriptByteFFh
	dw .scriptByteLt8
	dw .scriptByteBtoF
	dw .scriptByteBtoF
	dw .scriptByteBtoF
	dw .scriptByteBtoF
	dw .scriptByteBtoF


ScriptOpcode01_DisplayText_Main:
; Save pointer to the last of the 2 params
	ld   a, l                                                       ; $479f
	ld   [wScriptOpcodeParamPointer], a                             ; $47a0
	ld   a, h                                                       ; $47a3
	ld   [wScriptOpcodeParamPointer+1], a                           ; $47a4
	
; Cache the 2 params into hram
	ld   a, [hl-]                                                   ; $47a7
	ldh  [hScriptOpcodeParams], a                                   ; $47a8
	ld   a, [hl-]                                                   ; $47aa
	ldh  [hScriptOpcodeParams+1], a                                 ; $47ab

; Stop processing text display if we have finished all Kanji for the textbox
	call CheckIfReachedLastKanjiIdxInCurrTextBox                    ; $47ad
	or   a                                                          ; $47b0
	jp   z, DequeueAScriptOpcode                                    ; $47b1

; Else keep displaying, don't run another script opcode after this
	xor  a                                                          ; $47b4
	ld   [wScriptEngineContsRunningThisMainLoop], a                 ; $47b5

; Display quickly while one of these buttons pressed
	ld   a, [wInGameButtonsHeld]                                    ; $47b8
	and  PADF_DOWN|PADF_B                                           ; $47bb
	jr   nz, .displayNextChar                                       ; $47bd

; Else dec counter, jumping if we aren't negative yet
	ld   hl, hScriptOpcodeParams+1                                  ; $47bf
	dec  [hl]                                                       ; $47c2
	bit  7, [hl]                                                    ; $47c3
	jr   z, .done                                                   ; $47c5

; Once ready to display the next char, reset the actual counter
	ldh  a, [hScriptOpcodeParams]                                   ; $47c7
	ld   [hl], a                                                    ; $47c9

.displayNextChar:
; Push a value that is added onto the counter (some chars take longer to display)
	call HLequNextKanjiQuarterBankOffsetAndKanjiIdx                 ; $47ca
	call GetCharAdditionalSpeedCounter                              ; $47cd
	push af                                                         ; $47d0
	
; Display the kanji in vblank
	call HDMAEnqueueNextTextBoxKanji                                ; $47d1

; HL = pointer to 1st param
	ld   hl, wScriptOpcodeParamPointer                              ; $47d4
	ld   a, [hl+]                                                   ; $47d7
	ld   h, [hl]                                                    ; $47d8
	ld   l, a                                                       ; $47d9

; Save base counter (even though it's unchanged)
	ldh  a, [hScriptOpcodeParams]                                   ; $47da
	ld   [hl-], a                                                   ; $47dc
	
; Save the base counter + additional counter
	pop  bc                                                         ; $47dd
	add  b                                                          ; $47de
	ld   [hl-], a                                                   ; $47df
	ret                                                             ; $47e0

.done:
; Get pointer to params in ram, and save our current cached params in there
	ld   hl, wScriptOpcodeParamPointer                              ; $47e1
	ld   a, [hl+]                                                   ; $47e4
	ld   h, [hl]                                                    ; $47e5
	ld   l, a                                                       ; $47e6
	ldh  a, [hScriptOpcodeParams]                                   ; $47e7
	ld   [hl-], a                                                   ; $47e9
	ldh  a, [hScriptOpcodeParams+1]                                 ; $47ea
	ld   [hl-], a                                                   ; $47ec
	ret                                                             ; $47ed


ScriptOpcode32_Init:
	ld   a, $32                                      ; $47ee: $3e $32
	call EnqueueAScriptOpcode                               ; $47f0: $cd $97 $40
	call ClearKanjiIdxInConvoAndTextBox                                       ; $47f3: $cd $1c $14
	ld   a, $03                                      ; $47f6: $3e $03
	call SetDefaultAndCurrKanjiTileTextStyle                                       ; $47f8: $cd $3f $15

jr_008_47fb:
	ld   h, $00                                      ; $47fb: $26 $00
	call GetNextScriptOpcodeToProcess                               ; $47fd: $cd $70 $42
	or   a                                           ; $4800: $b7
	jp   z, AddKanjiToConvoStructForCurrTextBox                                    ; $4801: $ca $5f $14

	cp   $10                                         ; $4804: $fe $10
	jr   nc, jr_008_4859                             ; $4806: $30 $51

	cp   $08                                         ; $4808: $fe $08
	jr   c, jr_008_4855                              ; $480a: $38 $49

	push af                                          ; $480c: $f5
	ld   b, $00                                      ; $480d: $06 $00
	ld   c, a                                        ; $480f: $4f
	res  3, c                                        ; $4810: $cb $99
	ld   hl, $485f                                   ; $4812: $21 $5f $48
	add  hl, bc                                      ; $4815: $09
	add  hl, bc                                      ; $4816: $09
	ld   a, [hl+]                                    ; $4817: $2a
	ld   h, [hl]                                     ; $4818: $66
	ld   l, a                                        ; $4819: $6f
	pop  af                                          ; $481a: $f1
	jp   hl                                          ; $481b: $e9


	ld   de, wPlayerName                                   ; $481c: $11 $0e $cb
	ld   hl, sPlayerName                                   ; $481f: $21 $aa $af
	ld   bc, $0006                                   ; $4822: $01 $06 $00
	call MemCopy                                       ; $4825: $cd $a9 $09
	call GetNextScriptOpcodeToProcess                               ; $4828: $cd $70 $42
	or   a                                           ; $482b: $b7
	push af                                          ; $482c: $f5
	ld   a, $00                                      ; $482d: $3e $00
	ld   [wFarCallAddr], a                                  ; $482f: $ea $98 $c2
	ld   a, $40                                      ; $4832: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $4834: $ea $99 $c2
	ld   a, $05                                      ; $4837: $3e $05
	ld   [wFarCallBank], a                                  ; $4839: $ea $9a $c2
	pop  af                                          ; $483c: $f1
	call nz, FarCall                                   ; $483d: $c4 $62 $09
	ld   de, wPlayerName                                   ; $4840: $11 $0e $cb

jr_008_4843:
	ld   a, [de]                                     ; $4843: $1a
	inc  de                                          ; $4844: $13
	or   a                                           ; $4845: $b7
	jr   z, jr_008_47fb                              ; $4846: $28 $b3

	call AddKanjiToConvoStructForCurrTextBox                                       ; $4848: $cd $5f $14
	jr   jr_008_4843                                 ; $484b: $18 $f6

	jr   jr_008_47fb                                 ; $484d: $18 $ac

	ld   h, $00                                      ; $484f: $26 $00
	ld   a, $0d                                      ; $4851: $3e $0d
	jr   jr_008_4859                                 ; $4853: $18 $04

jr_008_4855:
	ld   h, a                                        ; $4855: $67
	call GetNextScriptOpcodeToProcess                               ; $4856: $cd $70 $42

jr_008_4859:
	ld   l, a                                        ; $4859: $6f
	call AddQuarterBankOffsetAndKanjiToConvoStructForCurrTextBox                                       ; $485a: $cd $57 $14
	jr   jr_008_47fb                                 ; $485d: $18 $9c

	inc  e                                           ; $485f: $1c
	ld   c, b                                        ; $4860: $48
	ld   c, l                                        ; $4861: $4d
	ld   c, b                                        ; $4862: $48
	ld   d, l                                        ; $4863: $55
	ld   c, b                                        ; $4864: $48
	ld   c, a                                        ; $4865: $4f
	ld   c, b                                        ; $4866: $48
	ld   c, a                                        ; $4867: $4f
	ld   c, b                                        ; $4868: $48
	ld   c, a                                        ; $4869: $4f
	ld   c, b                                        ; $486a: $48
	ld   c, a                                        ; $486b: $4f
	ld   c, b                                        ; $486c: $48
	ld   c, a                                        ; $486d: $4f
	ld   c, b                                        ; $486e: $48


ScriptOpcode32_Main:
	xor  a                                           ; $486f: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $4870: $ea $52 $cb
	ld   a, [wWramBank]                                  ; $4873: $fa $93 $c2
	push af                                          ; $4876: $f5
	ld   a, $02                                      ; $4877: $3e $02
	ld   [wWramBank], a                                  ; $4879: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $487c: $e0 $70
	ld   hl, $d340                                   ; $487e: $21 $40 $d3
	xor  a                                           ; $4881: $af
	ld   de, wCurrConversationsKanjis                                   ; $4882: $11 $e6 $c4
	call LoadInstantText                                       ; $4885: $cd $06 $13
	pop  af                                          ; $4888: $f1
	ld   [wWramBank], a                                  ; $4889: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $488c: $e0 $70
	ld   c, $81                                      ; $488e: $0e $81
	ld   de, $8800                                   ; $4890: $11 $00 $88
	ld   a, $02                                      ; $4893: $3e $02
	ld   hl, $d340                                   ; $4895: $21 $40 $d3
	ld   b, $54                                      ; $4898: $06 $54
	call EnqueueHDMATransfer                                       ; $489a: $cd $7c $02
	call ClearKanjiIdxInConvoAndTextBox                                       ; $489d: $cd $1c $14
	jp   DequeueAScriptOpcode                               ; $48a0: $c3 $bc $40


ScriptOpcode02_Init:
	ld   a, [$cbc8]                                  ; $48a3: $fa $c8 $cb
	call PlaySound                                       ; $48a6: $cd $92 $1a
	ld   a, $07                                      ; $48a9: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $48ab: $cd $e0 $1c
	ld   a, $02                                      ; $48ae: $3e $02
	call EnqueueAScriptOpcode                               ; $48b0: $cd $97 $40
	xor  a                                           ; $48b3: $af
	ld   [hl], a                                     ; $48b4: $77
	ld   a, SO_SET_PORTRAIT                                      ; $48b5: $3e $0f
	call EnqueueAScriptOpcode                               ; $48b7: $cd $97 $40
	ld   a, [$cbaa]                                  ; $48ba: $fa $aa $cb
	ld   [hl-], a                                    ; $48bd: $32
	ld   a, [$cbab]                                  ; $48be: $fa $ab $cb
	ld   [hl-], a                                    ; $48c1: $32
	xor  a                                           ; $48c2: $af
	ld   [hl-], a                                    ; $48c3: $32
	ld   [hl-], a                                    ; $48c4: $32
	ld   a, [$cba8]                                  ; $48c5: $fa $a8 $cb
	ld   d, a                                        ; $48c8: $57
	ld   a, [$cba9]                                  ; $48c9: $fa $a9 $cb
	ld   e, a                                        ; $48cc: $5f
	or   d                                           ; $48cd: $b2
	jr   nz, jr_008_48e5                             ; $48ce: $20 $15

	ld   a, [$cbae]                                  ; $48d0: $fa $ae $cb
	or   a                                           ; $48d3: $b7
	jr   z, jr_008_48f1                              ; $48d4: $28 $1b

	ld   d, a                                        ; $48d6: $57
	ld   a, SO_1b                                      ; $48d7: $3e $1b
	call EnqueueAScriptOpcode                               ; $48d9: $cd $97 $40
	ld   a, d                                        ; $48dc: $7a
	ld   [hl-], a                                    ; $48dd: $32
	ld   a, $03                                      ; $48de: $3e $03
	ld   [hl-], a                                    ; $48e0: $32
	xor  a                                           ; $48e1: $af
	ld   [hl-], a                                    ; $48e2: $32
	jr   jr_008_4918                                 ; $48e3: $18 $33

jr_008_48e5:
	ld   a, SO_SET_CHAR_ON_SCREEN                                      ; $48e5: $3e $0d
	call EnqueueAScriptOpcode                               ; $48e7: $cd $97 $40
	ld   a, d                                        ; $48ea: $7a
	ld   [hl-], a                                    ; $48eb: $32
	ld   a, e                                        ; $48ec: $7b
	ld   [hl-], a                                    ; $48ed: $32
	xor  a                                           ; $48ee: $af
	ld   [hl-], a                                    ; $48ef: $32
	ld   [hl-], a                                    ; $48f0: $32

jr_008_48f1:
	ld   a, [$cba6]                                  ; $48f1: $fa $a6 $cb
	ld   d, a                                        ; $48f4: $57
	or   a                                           ; $48f5: $b7
	jr   nz, jr_008_490c                             ; $48f6: $20 $14

	ld   a, [$cbac]                                  ; $48f8: $fa $ac $cb
	or   a                                           ; $48fb: $b7
	jr   z, jr_008_490c                              ; $48fc: $28 $0e

	ld   a, SO_16                                      ; $48fe: $3e $16
	call EnqueueAScriptOpcode                               ; $4900: $cd $97 $40
	ld   a, [$cbac]                                  ; $4903: $fa $ac $cb
	ld   [hl-], a                                    ; $4906: $32
	xor  a                                           ; $4907: $af
	ld   [hl-], a                                    ; $4908: $32
	ld   [hl-], a                                    ; $4909: $32
	jr   jr_008_4918                                 ; $490a: $18 $0c

jr_008_490c:
	ld   a, SO_LOAD_SCENERY                                      ; $490c: $3e $0e
	call EnqueueAScriptOpcode                               ; $490e: $cd $97 $40
	ld   a, d                                        ; $4911: $7a
	ld   [hl-], a                                    ; $4912: $32
	xor  a                                           ; $4913: $af
	ld   [hl-], a                                    ; $4914: $32
	ld   [hl-], a                                    ; $4915: $32
	ld   [hl-], a                                    ; $4916: $32
	ld   [hl-], a                                    ; $4917: $32

jr_008_4918:
	ld   a, SO_CLEAR_TEXT_BOX                                      ; $4918: $3e $08
	call EnqueueAScriptOpcode                               ; $491a: $cd $97 $40
	ret                                              ; $491d: $c9


ScriptOpcode02_Main:
	ld   a, [wWramBank]                                  ; $491e: $fa $93 $c2
	push af                                          ; $4921: $f5
	ld   a, $02                                      ; $4922: $3e $02
	ld   [wWramBank], a                                  ; $4924: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4927: $e0 $70
	xor  a                                           ; $4929: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $492a: $ea $52 $cb
	ld   a, [hl]                                     ; $492d: $7e
	or   a                                           ; $492e: $b7
	jp   nz, Jump_008_495a                           ; $492f: $c2 $5a $49

	push hl                                          ; $4932: $e5
	ld   a, $0a                                      ; $4933: $3e $0a
	ld   de, $da00                                   ; $4935: $11 $00 $da
	ld   hl, $4928                                   ; $4938: $21 $28 $49
	ld   bc, $0008                                   ; $493b: $01 $08 $00
	call FarMemCopy                                       ; $493e: $cd $b2 $09
	xor  a                                           ; $4941: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4942: $ea $62 $c3
	ld   a, $40                                      ; $4945: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4947: $ea $63 $c3
	ld   a, $03                                      ; $494a: $3e $03
	ld   b, $00                                      ; $494c: $06 $00
	ld   hl, wBGPalettes                                   ; $494e: $21 $de $c2
	ld   c, $00                                      ; $4951: $0e $00
	ld   de, $da00                                   ; $4953: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4956: $cd $48 $07
	pop  hl                                          ; $4959: $e1

Jump_008_495a:
	ld   a, [hl]                                     ; $495a: $7e
	inc  [hl]                                        ; $495b: $34
	cp   $1f                                         ; $495c: $fe $1f
	jr   nc, jr_008_496f                             ; $495e: $30 $0f

	and  $03                                         ; $4960: $e6 $03
	ld   bc, $0040                                   ; $4962: $01 $40 $00
	call z, FadePalettesAndSetRangeToUpdate                                    ; $4965: $cc $32 $08
	pop  af                                          ; $4968: $f1
	ld   [wWramBank], a                                  ; $4969: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $496c: $e0 $70
	ret                                              ; $496e: $c9


jr_008_496f:
	ld   a, $00                                      ; $496f: $3e $00
	ld   hl, $da00                                   ; $4971: $21 $00 $da
	ld   de, wBGPalettes                                   ; $4974: $11 $de $c2
	ld   bc, $0080                                   ; $4977: $01 $80 $00
	call FarMemCopy                                       ; $497a: $cd $b2 $09
	ld   bc, $003f                                   ; $497d: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4980: $cd $aa $04
	ld   a, $ff                                      ; $4983: $3e $ff
	ld   [$cbc7], a                                  ; $4985: $ea $c7 $cb
	call DequeueAScriptOpcode                               ; $4988: $cd $bc $40
	ld   a, SO_PRE_SPECIFIED_DELAY                                      ; $498b: $3e $34
	call EnqueueAScriptOpcode                               ; $498d: $cd $97 $40
	ld   a, $0f                                      ; $4990: $3e $0f
	ld   [hl], a                                     ; $4992: $77
	pop  af                                          ; $4993: $f1
	ld   [wWramBank], a                                  ; $4994: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4997: $e0 $70
	ret                                              ; $4999: $c9


ScriptOpcode03_Init:
	ld   a, $03                                      ; $499a: $3e $03
	call EnqueueAScriptOpcode                               ; $499c: $cd $97 $40
	xor  a                                           ; $499f: $af
	ld   [hl-], a                                    ; $49a0: $32
	ld   [hl], a                                     ; $49a1: $77
	ld   a, SO_PRE_SPECIFIED_DELAY                                      ; $49a2: $3e $34
	call EnqueueAScriptOpcode                               ; $49a4: $cd $97 $40
	ld   a, $0f                                      ; $49a7: $3e $0f
	ld   [hl], a                                     ; $49a9: $77
	ret                                              ; $49aa: $c9


ScriptOpcode03_Main:
	xor  a                                           ; $49ab: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $49ac: $ea $52 $cb
	ld   a, [hl-]                                    ; $49af: $3a
	or   a                                           ; $49b0: $b7
	jr   nz, jr_008_49d3                             ; $49b1: $20 $20

	ld   a, [hl]                                     ; $49b3: $7e
	inc  [hl]                                        ; $49b4: $34
	cp   $b4                                         ; $49b5: $fe $b4
	jr   nc, jr_008_49c9                             ; $49b7: $30 $10

	ld   a, [$cbb1]                                  ; $49b9: $fa $b1 $cb
	bit  7, a                                        ; $49bc: $cb $7f
	jr   nz, jr_008_49c9                             ; $49be: $20 $09

	ld   a, [$cbc9]                                  ; $49c0: $fa $c9 $cb
	ld   b, a                                        ; $49c3: $47
	ld   a, [$cbcd]                                  ; $49c4: $fa $cd $cb
	or   b                                           ; $49c7: $b0
	ret  nz                                          ; $49c8: $c0

jr_008_49c9:
	xor  a                                           ; $49c9: $af
	ld   [$cbc9], a                                  ; $49ca: $ea $c9 $cb
	ld   [$cbcd], a                                  ; $49cd: $ea $cd $cb
	ld   [hl+], a                                    ; $49d0: $22
	inc  [hl]                                        ; $49d1: $34
	ret                                              ; $49d2: $c9


jr_008_49d3:
	ld   a, [hl]                                     ; $49d3: $7e
	or   a                                           ; $49d4: $b7
	jp   nz, Jump_008_4a0f                           ; $49d5: $c2 $0f $4a

	push hl                                          ; $49d8: $e5
	ld   a, [wWramBank]                                  ; $49d9: $fa $93 $c2
	push af                                          ; $49dc: $f5
	ld   a, $02                                      ; $49dd: $3e $02
	ld   [wWramBank], a                                  ; $49df: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $49e2: $e0 $70
	ld   de, $da00                                   ; $49e4: $11 $00 $da
	ld   hl, wBGPalettes                                   ; $49e7: $21 $de $c2
	ld   bc, $0080                                   ; $49ea: $01 $80 $00
	call MemCopy                                       ; $49ed: $cd $a9 $09
	xor  a                                           ; $49f0: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $49f1: $ea $62 $c3
	ld   a, $40                                      ; $49f4: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $49f6: $ea $63 $c3
	ld   a, $03                                      ; $49f9: $3e $03
	ld   b, $00                                      ; $49fb: $06 $00
	ld   hl, wBGPalettes                                   ; $49fd: $21 $de $c2
	ld   c, $01                                      ; $4a00: $0e $01
	ld   de, $7000                                   ; $4a02: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4a05: $cd $48 $07
	pop  af                                          ; $4a08: $f1
	ld   [wWramBank], a                                  ; $4a09: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4a0c: $e0 $70
	pop  hl                                          ; $4a0e: $e1

Jump_008_4a0f:
	ld   a, [hl]                                     ; $4a0f: $7e
	inc  [hl]                                        ; $4a10: $34
	cp   $1f                                         ; $4a11: $fe $1f
	jr   nc, jr_008_4a1e                             ; $4a13: $30 $09

	and  $03                                         ; $4a15: $e6 $03
	ld   bc, $0040                                   ; $4a17: $01 $40 $00
	call z, FadePalettesAndSetRangeToUpdate                                    ; $4a1a: $cc $32 $08
	ret                                              ; $4a1d: $c9


jr_008_4a1e:
	ld   a, $01                                      ; $4a1e: $3e $01
	ld   hl, $7000                                   ; $4a20: $21 $00 $70
	ld   de, wBGPalettes                                   ; $4a23: $11 $de $c2
	ld   bc, $0080                                   ; $4a26: $01 $80 $00
	call FarMemCopy                                       ; $4a29: $cd $b2 $09
	ld   bc, $003f                                   ; $4a2c: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4a2f: $cd $aa $04
	call Call_008_413a                               ; $4a32: $cd $3a $41
	xor  a                                           ; $4a35: $af
	ld   [$cbc7], a                                  ; $4a36: $ea $c7 $cb
	jp   DequeueAScriptOpcode                               ; $4a39: $c3 $bc $40


ScriptOpcode04_Deque_Init:
ScriptOpcode04_Deque_Main:
	jp   DequeueAScriptOpcode                               ; $4a3c: $c3 $bc $40


ScriptOpcode05_Init:
ScriptOpcode05_Main:
;
	call GetNextScriptOpcodeToProcess                               ; $4a3f: $cd $70 $42
	ld   h, a                                        ; $4a42: $67
	call GetNextScriptOpcodeToProcess                               ; $4a43: $cd $70 $42
	ld   l, a                                        ; $4a46: $6f

;
	push hl                                          ; $4a47: $e5
	call HandleProcessingScriptCalcStack                               ; $4a48: $cd $d1 $44
	pop  hl                                          ; $4a4b: $e1

;
	bit  5, h                                        ; $4a4c: $cb $6c
	jr   nz, jr_008_4a6d                             ; $4a4e: $20 $1d

	bit  6, h                                        ; $4a50: $cb $74
	jr   nz, jr_008_4a82                             ; $4a52: $20 $2e

	bit  7, h                                        ; $4a54: $cb $7c
	jr   nz, jr_008_4a97                             ; $4a56: $20 $3f

	M_FarCall SetSramByte
	ret                                              ; $4a6c: $c9

jr_008_4a6d:
	M_FarCall SetOrUnsetFlag
	ret                                              ; $4a81: $c9

jr_008_4a82:
	M_FarCall Func_09_4530
	ret                                              ; $4a96: $c9

jr_008_4a97:
	M_FarCall Call_009_4537
	ret                                              ; $4aab: $c9


ScriptOpcode06_Jump_Init:
; Next word is used for the jump address
	call GetNextScriptOpcodeToProcess                               ; $4aac
	ld   l, a                                                       ; $4aaf
	call GetNextScriptOpcodeToProcess                               ; $4ab0
	ld   h, a                                                       ; $4ab3
	
	M_FarCall ScriptJumpRelativeToBase

ScriptOpcode06_Jump_Main:
	ret                                                             ; $4ac8


ScriptOpcode07_JumpIfCalcValIsNon0_Init:
; BC is used for the jump address assuming the bin ops returns non-0
	call GetNextScriptOpcodeToProcess                               ; $4ac9
	ld   c, a                                                       ; $4acc
	call GetNextScriptOpcodeToProcess                               ; $4acd
	ld   b, a                                                       ; $4ad0
	
; Process calc stack
	push bc                                                         ; $4ad1
	call HandleProcessingScriptCalcStack                            ; $4ad2
	pop  hl                                                         ; $4ad5
	
; Don't jump if 0
	or   a                                                          ; $4ad6
	ret  z                                                          ; $4ad7

	M_FarCall ScriptJumpRelativeToBase

ScriptOpcode07_JumpIfCalcValIsNon0_Main:
	ret                                                             ; $4aec


ScriptOpcode08_ClearTextBox_Init:
	ld   a, SO_CLEAR_TEXT_BOX                                      ; $4aed: $3e $08
	call EnqueueAScriptOpcode                               ; $4aef: $cd $97 $40

ScriptOpcode08_ClearTextBox_Main:
; Don't run an opcode after this
	xor  a                                           ; $4af2: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $4af3: $ea $52 $cb

;
	ld   a, [wWramBank]                                  ; $4af6: $fa $93 $c2
	push af                                          ; $4af9: $f5
	ld   a, $02                                      ; $4afa: $3e $02
	ld   [wWramBank], a                                  ; $4afc: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4aff: $e0 $70
	
;
	ld   hl, $d340                                   ; $4b01: $21 $40 $d3
	ld   bc, $0540                                   ; $4b04: $01 $40 $05
	ld   a, $00                                      ; $4b07: $3e $00
	call MemSet                                       ; $4b09: $cd $96 $09

;
	pop  af                                          ; $4b0c: $f1
	ld   [wWramBank], a                                  ; $4b0d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4b10: $e0 $70

;
	ld   c, $81                                      ; $4b12: $0e $81
	ld   de, _VRAM+$800                                   ; $4b14: $11 $00 $88
	ld   a, $02                                      ; $4b17: $3e $02
	ld   hl, $d340                                   ; $4b19: $21 $40 $d3
	ld   b, $54                                      ; $4b1c: $06 $54
	call EnqueueHDMATransfer                                       ; $4b1e: $cd $7c $02

;
	ld   bc, $0000                                   ; $4b21: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $4b24: $cd $34 $14
	jp   DequeueAScriptOpcode                               ; $4b27: $c3 $bc $40


ScriptOpcode09_SetDelay_Init:
	ld   a, $09                                                     ; $4b2a
	call EnqueueAScriptOpcode                                       ; $4b2c

; Next byte is num frames until delay finished
	call GetNextScriptOpcodeToProcess                               ; $4b2f
	ld   [hl], a                                                    ; $4b32

ScriptOpcode09_SetDelay_Main:
; Every frame, don't do anything..
	xor  a                                                          ; $4b33
	ld   [wScriptEngineContsRunningThisMainLoop], a                 ; $4b34

; Until the counter reaches 0
	ld   a, [hl]                                                    ; $4b37
	dec  [hl]                                                       ; $4b38
	ret  nz                                                         ; $4b39

	jp   DequeueAScriptOpcode                                       ; $4b3a


ScriptOpcode0a_ContinuePrompt_Init:
; Load continue prompt arrow
	ld   c, $01                                      ; $4b3d: $0e $01
	ld   de, $8000                                   ; $4b3f: $11 $00 $80
	ld   a, $8d                                      ; $4b42: $3e $8d
	ld   hl, $7fe0                                   ; $4b44: $21 $e0 $7f
	ld   b, $02                                      ; $4b47: $06 $02
	call EnqueueHDMATransfer                                       ; $4b49: $cd $7c $02

;
	ld   a, $08                                      ; $4b4c: $3e $08
	ld   hl, $4bbc                                   ; $4b4e: $21 $bc $4b
	ld   de, $c356                                   ; $4b51: $11 $56 $c3
	ld   bc, $0008                                   ; $4b54: $01 $08 $00
	call FarMemCopy                                       ; $4b57: $cd $b2 $09

;
	ldbc $3c, $3f                                   ; $4b5a: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4b5d: $cd $aa $04

	ld   a, $0a                                      ; $4b60: $3e $0a
	call EnqueueAScriptOpcode                               ; $4b62: $cd $97 $40

;
	ld   a, [sTextSpeedBaseCounter]                                  ; $4b65: $fa $b3 $b1
	ld   [wTextSpeedBaseCounter], a                                  ; $4b68: $ea $90 $cb
	ld   [hl], a                                     ; $4b6b: $77

ScriptOpcode0a_ContinuePrompt_Main:
	xor  a                                           ; $4b6c: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $4b6d: $ea $52 $cb
	ld   a, [wInGameButtonsHeld]                                  ; $4b70: $fa $0f $c2
	bit  1, a                                        ; $4b73: $cb $4f
	jr   nz, .end                             ; $4b75: $20 $2f

	ld   a, [wInGameButtonsPressed]                                  ; $4b77: $fa $10 $c2
	bit  0, a                                        ; $4b7a: $cb $47
	jr   nz, .end                             ; $4b7c: $20 $28

	ld   b, $4c                                      ; $4b7e: $06 $4c
	ld   a, [hl]                                     ; $4b80: $7e
	inc  [hl]                                        ; $4b81: $34
	srl  a                                           ; $4b82: $cb $3f
	srl  a                                           ; $4b84: $cb $3f
	and  $07                                         ; $4b86: $e6 $07
	ld   h, $00                                      ; $4b88: $26 $00
	ld   l, a                                        ; $4b8a: $6f
	ld   de, .yCoords                                   ; $4b8b: $11 $b4 $4b
	add  hl, de                                      ; $4b8e: $19
	ld   a, [hl]                                     ; $4b8f: $7e
	add  $84                                         ; $4b90: $c6 $84
	ld   c, a                                        ; $4b92: $4f
	ld   a, $01                                      ; $4b93: $3e $01
	ld   [wSpriteGroup], a                                  ; $4b95: $ea $1a $c2
	ld   a, $34                                      ; $4b98: $3e $34
	call LoadSpriteFromMainTable                                       ; $4b9a: $cd $16 $0e
	ld   a, $ff                                      ; $4b9d: $3e $ff
	ld   [wRandomNumRange], a                                  ; $4b9f: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $4ba2: $cd $10 $0d
	ret                                              ; $4ba5: $c9

.end:
	ld   a, $01                                      ; $4ba6: $3e $01
	call Call_008_4334                               ; $4ba8: $cd $34 $43
	call DequeueAScriptOpcode                               ; $4bab: $cd $bc $40
	ld   a, SO_CLEAR_TEXT_BOX                                      ; $4bae: $3e $08
	call EnqueueAScriptOpcode                               ; $4bb0: $cd $97 $40
	ret                                              ; $4bb3: $c9

.yCoords:
	nop                                              ; $4bb4: $00
	ld   bc, $0302                                   ; $4bb5: $01 $02 $03
	inc  b                                           ; $4bb8: $04
	inc  bc                                          ; $4bb9: $03
	ld   [bc], a                                     ; $4bba: $02
	ld   bc, $7fff                                   ; $4bbb: $01 $ff $7f
	rst  $38                                         ; $4bbe: $ff
	ld   a, a                                        ; $4bbf: $7f
	rst  $38                                         ; $4bc0: $ff
	ld   a, a                                        ; $4bc1: $7f
	nop                                              ; $4bc2: $00
	nop                                              ; $4bc3: $00


ScriptOpcode0b_SetTextSpeed_Init:
ScriptOpcode0b_SetTextSpeed_Main:
; If next byte == 0, reset text speed counter from sram..
	call GetNextScriptOpcodeToProcess                               ; $4bc4
	or   a                                                          ; $4bc7
	jr   z, :+                                                      ; $4bc8

; Else force it to the script byte * 2
	sla  a                                                          ; $4bca
	ld   [wTextSpeedBaseCounter], a                                 ; $4bcc
	ret                                                             ; $4bcf

:	ld   a, [sTextSpeedBaseCounter]                                 ; $4bd0
	ld   [wTextSpeedBaseCounter], a                                 ; $4bd3
	ret                                                             ; $4bd6


ScriptOpcode0c_Init:
	ld   a, $0c                                      ; $4bd7: $3e $0c
	call EnqueueAScriptOpcode                               ; $4bd9: $cd $97 $40
	call GetNextScriptOpcodeToProcess                               ; $4bdc: $cd $70 $42
	ld   [hl], a                                     ; $4bdf: $77
	xor  a                                           ; $4be0: $af
	ld   [$cc24], a                                  ; $4be1: $ea $24 $cc
	ld   [$cc25], a                                  ; $4be4: $ea $25 $cc

ScriptOpcode0c_Main:
	xor  a                                           ; $4be7: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $4be8: $ea $52 $cb
	ld   bc, .return                                   ; $4beb: $01 $fb $4b
	push bc                                          ; $4bee: $c5
	ld   b, $00                                      ; $4bef: $06 $00
	ld   c, [hl]                                     ; $4bf1: $4e
	ld   hl, .table                                   ; $4bf2: $21 $00 $4c
	add  hl, bc                                      ; $4bf5: $09
	add  hl, bc                                      ; $4bf6: $09
	ld   a, [hl+]                                    ; $4bf7: $2a
	ld   h, [hl]                                     ; $4bf8: $66
	ld   l, a                                        ; $4bf9: $6f
	jp   hl                                          ; $4bfa: $e9

.return:
	or   a                                           ; $4bfb: $b7
	ret  nz                                          ; $4bfc: $c0

	jp   DequeueAScriptOpcode                               ; $4bfd: $c3 $bc $40

.table:
	dw .thing0
	dw .thing1
	dw .thing2
	dw .thing3
	dw .thing4
	dw .thing5
	dw .thing6
	dw .thing7
	dw .thing8
	dw .thing9
	dw .thingA
	dw .thingB
	dw .thingC
	dw .thingD
	dw .thingE

.thing0:
	M_FarCall Func_05_4560
	ret                                              ; $4c32: $c9

.thing1:
	M_FarCall Func_05_4562
	ret                                              ; $4c47: $c9

.thing2:
	ld   a, [$cc25]                                  ; $4c48: $fa $25 $cc
	or   a                                           ; $4c4b: $b7
	jr   nz, .cont_4c67                             ; $4c4c: $20 $19

	ld   a, $0c                                      ; $4c4e: $3e $0c
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4c50: $ea $62 $c3
	ld   a, $28                                      ; $4c53: $3e $28
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4c55: $ea $63 $c3
	ld   a, $03                                      ; $4c58: $3e $03
	ld   b, $00                                      ; $4c5a: $06 $00
	ld   hl, wBGPalettes                                   ; $4c5c: $21 $de $c2
	ld   c, $01                                      ; $4c5f: $0e $01
	ld   de, $7000                                   ; $4c61: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4c64: $cd $48 $07

.cont_4c67:
	ld   hl, $cc25                                   ; $4c67: $21 $25 $cc
	ld   a, [hl]                                     ; $4c6a: $7e
	inc  [hl]                                        ; $4c6b: $34
	and  $07                                         ; $4c6c: $e6 $07
	ret  nz                                          ; $4c6e: $c0

	ld   a, [hl]                                     ; $4c6f: $7e
	cp   $3f                                         ; $4c70: $fe $3f
	jr   nc, .br_4c7d                             ; $4c72: $30 $09

	ld   bc, $0c28                                   ; $4c74: $01 $28 $0c
	call FadePalettesAndSetRangeToUpdate                                       ; $4c77: $cd $32 $08
	ld   a, $ff                                      ; $4c7a: $3e $ff
	ret                                              ; $4c7c: $c9

.br_4c7d:
	ld   a, $01                                      ; $4c7d: $3e $01
	ld   hl, $7000                                   ; $4c7f: $21 $00 $70
	ld   de, wBGPalettes+3*8                                   ; $4c82: $11 $f6 $c2
	ld   bc, $0050                                   ; $4c85: $01 $50 $00
	call FarMemCopy                                       ; $4c88: $cd $b2 $09
	ld   bc, $0c33                                   ; $4c8b: $01 $33 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4c8e: $cd $aa $04
	ld   a, [wWramBank]                                  ; $4c91: $fa $93 $c2
	push af                                          ; $4c94: $f5
	ld   a, $02                                      ; $4c95: $3e $02
	ld   [wWramBank], a                                  ; $4c97: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4c9a: $e0 $70
	ld   hl, $d000                                   ; $4c9c: $21 $00 $d0
	ld   bc, $00a0                                   ; $4c9f: $01 $a0 $00
	ld   de, $0303                                   ; $4ca2: $11 $03 $03
	call CopyEthenDintoHL_BCtimes                                       ; $4ca5: $cd $9f $09
	ld   c, $81                                      ; $4ca8: $0e $81
	ld   de, $9800                                   ; $4caa: $11 $00 $98
	ld   a, $02                                      ; $4cad: $3e $02
	ld   hl, $d000                                   ; $4caf: $21 $00 $d0
	ld   b, $14                                      ; $4cb2: $06 $14
	call EnqueueHDMATransfer                                       ; $4cb4: $cd $7c $02
	pop  af                                          ; $4cb7: $f1
	ld   [wWramBank], a                                  ; $4cb8: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4cbb: $e0 $70
	call Call_008_413a                               ; $4cbd: $cd $3a $41
	xor  a                                           ; $4cc0: $af
	ld   [$cba8], a                                  ; $4cc1: $ea $a8 $cb
	ld   [$cba9], a                                  ; $4cc4: $ea $a9 $cb
	ld   [$cbae], a                                  ; $4cc7: $ea $ae $cb
	ld   [$cbb0], a                                  ; $4cca: $ea $b0 $cb
	ld   [$cbac], a                                  ; $4ccd: $ea $ac $cb
	ld   [$cba6], a                                  ; $4cd0: $ea $a6 $cb
	ret                                              ; $4cd3: $c9

.thing3:
	M_FarCall Func_05_47c0
	ret                                              ; $4ce8: $c9

.thing4:
	M_FarCall Func_05_49cc
	ret                                              ; $4cfd: $c9

.thing5:
	M_FarCall Func_05_4a7a
	ret                                              ; $4d12: $c9

.thing6:
	M_FarCall Func_05_4b38
	ret                                              ; $4d27: $c9

.thing7:
	M_FarCall Func_05_4c2e
	ret                                              ; $4d3c: $c9

.thing8:
	M_FarCall Func_05_4e72
	ret                                              ; $4d51: $c9

.thing9:
	M_FarCall Func_05_50c0
	ret                                              ; $4d66: $c9

.thingA:
	M_FarCall Func_05_50e9
	ret                                              ; $4d7b: $c9

.thingB:
	M_FarCall Func_05_5112
	ret                                              ; $4d90: $c9

.thingC:
	jp   .thing2                               ; $4d91: $c3 $48 $4c

.thingD:
	M_FarCall Func_05_520d
	ret                                              ; $4da8: $c9

.thingE:
	M_FarCall Func_05_52ea
	ret                                              ; $4dbd: $c9


ScriptOpcode0d_SetCharacterOnScene_Init:
	ld   a, $0d                                      ; $4dbe: $3e $0d
	call EnqueueAScriptOpcode                               ; $4dc0: $cd $97 $40
	push hl                                          ; $4dc3: $e5
	call GetNextScriptOpcodeToProcess                               ; $4dc4: $cd $70 $42
	ld   [hl-], a                                    ; $4dc7: $32
	ldh  [hScriptOpcodeParams], a                                    ; $4dc8: $e0 $a0
	call GetNextScriptOpcodeToProcess                               ; $4dca: $cd $70 $42
	ld   [hl-], a                                    ; $4dcd: $32
	ldh  [hScriptOpcodeParams+1], a                                    ; $4dce: $e0 $a1
	ld   a, [$cbac]                                  ; $4dd0: $fa $ac $cb
	or   a                                           ; $4dd3: $b7
	jr   z, jr_008_4df0                              ; $4dd4: $28 $1a

	xor  a                                           ; $4dd6: $af
	ld   [hl-], a                                    ; $4dd7: $32
	ld   [hl], a                                     ; $4dd8: $77
	ld   a, SO_LOAD_SCENERY                                      ; $4dd9: $3e $0e
	call EnqueueAScriptOpcode                               ; $4ddb: $cd $97 $40
	ld   a, [$cba6]                                  ; $4dde: $fa $a6 $cb
	ld   [hl-], a                                    ; $4de1: $32
	xor  a                                           ; $4de2: $af
	ld   [hl-], a                                    ; $4de3: $32
	ld   [hl-], a                                    ; $4de4: $32
	ld   [hl-], a                                    ; $4de5: $32
	ld   [hl-], a                                    ; $4de6: $32
	ld   a, SO_33                                      ; $4de7: $3e $33
	call EnqueueAScriptOpcode                               ; $4de9: $cd $97 $40
	xor  a                                           ; $4dec: $af
	ld   [hl-], a                                    ; $4ded: $32
	pop  hl                                          ; $4dee: $e1
	ret                                              ; $4def: $c9


jr_008_4df0:
	ld   a, [$cbb1]                                  ; $4df0: $fa $b1 $cb
	bit  7, a                                        ; $4df3: $cb $7f
	jr   z, jr_008_4e11                              ; $4df5: $28 $1a

	ldh  a, [hScriptOpcodeParams]                                    ; $4df7: $f0 $a0
	ld   b, a                                        ; $4df9: $47
	ldh  a, [hScriptOpcodeParams+1]                                    ; $4dfa: $f0 $a1
	or   b                                           ; $4dfc: $b0
	jr   nz, jr_008_4e0a                             ; $4dfd: $20 $0b

	xor  a                                           ; $4dff: $af
	ld   [$cba8], a                                  ; $4e00: $ea $a8 $cb
	ld   [$cba9], a                                  ; $4e03: $ea $a9 $cb
	pop  hl                                          ; $4e06: $e1
	jp   DequeueAScriptOpcode                               ; $4e07: $c3 $bc $40


jr_008_4e0a:
	ld   a, $01                                      ; $4e0a: $3e $01
	ld   [hl-], a                                    ; $4e0c: $32
	xor  a                                           ; $4e0d: $af
	ld   [hl], a                                     ; $4e0e: $77
	jr   jr_008_4e34                                 ; $4e0f: $18 $23

jr_008_4e11:
	or   a                                           ; $4e11: $b7
	jr   nz, jr_008_4e31                             ; $4e12: $20 $1d

	ldh  a, [hScriptOpcodeParams]                                    ; $4e14: $f0 $a0
	ld   b, a                                        ; $4e16: $47
	ld   a, [$cba8]                                  ; $4e17: $fa $a8 $cb
	cp   b                                           ; $4e1a: $b8
	jr   nz, jr_008_4e31                             ; $4e1b: $20 $14

	ldh  a, [hScriptOpcodeParams+1]                                    ; $4e1d: $f0 $a1
	and  $f0                                         ; $4e1f: $e6 $f0
	ld   b, a                                        ; $4e21: $47
	ld   a, [$cba9]                                  ; $4e22: $fa $a9 $cb
	and  $f0                                         ; $4e25: $e6 $f0
	cp   b                                           ; $4e27: $b8
	jr   nz, jr_008_4e31                             ; $4e28: $20 $07

	ld   a, $04                                      ; $4e2a: $3e $04
	ld   [hl-], a                                    ; $4e2c: $32
	xor  a                                           ; $4e2d: $af
	ld   [hl], a                                     ; $4e2e: $77
	jr   jr_008_4e34                                 ; $4e2f: $18 $03

jr_008_4e31:
	xor  a                                           ; $4e31: $af
	ld   [hl-], a                                    ; $4e32: $32
	ld   [hl], a                                     ; $4e33: $77

jr_008_4e34:
	pop  hl                                          ; $4e34: $e1

ScriptOpcode0d_SetCharacterOnScene_Main:
	ld   a, [wWramBank]                                  ; $4e35: $fa $93 $c2
	push af                                          ; $4e38: $f5
	ld   a, $02                                      ; $4e39: $3e $02
	ld   [wWramBank], a                                  ; $4e3b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4e3e: $e0 $70
	ld   bc, .return                                   ; $4e40: $01 $6b $4e
	push bc                                          ; $4e43: $c5
	xor  a                                           ; $4e44: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $4e45: $ea $52 $cb
	ld   a, l                                        ; $4e48: $7d
	ld   [wScriptOpcodeParamPointer], a                                  ; $4e49: $ea $74 $cb
	ld   a, h                                        ; $4e4c: $7c
	ld   [wScriptOpcodeParamPointer+1], a                                  ; $4e4d: $ea $75 $cb
	ld   a, [hl-]                                    ; $4e50: $3a
	ldh  [hScriptOpcodeParams], a                                    ; $4e51: $e0 $a0
	ld   a, [hl-]                                    ; $4e53: $3a
	ldh  [hScriptOpcodeParams+1], a                                    ; $4e54: $e0 $a1
	ld   a, [hl-]                                    ; $4e56: $3a
	ldh  [hScriptOpcodeParams+2], a                                    ; $4e57: $e0 $a2
	ld   a, [hl-]                                    ; $4e59: $3a
	ldh  [hScriptOpcodeParams+3], a                                    ; $4e5a: $e0 $a3
	ldh  a, [hScriptOpcodeParams+2]                                    ; $4e5c: $f0 $a2
	sla  a                                           ; $4e5e: $cb $27
	ld   b, $00                                      ; $4e60: $06 $00
	ld   c, a                                        ; $4e62: $4f
	ld   hl, .table                                  ; $4e63: $21 $72 $4e
	add  hl, bc                                      ; $4e66: $09
	ld   a, [hl+]                                    ; $4e67: $2a
	ld   h, [hl]                                     ; $4e68: $66
	ld   l, a                                        ; $4e69: $6f
	jp   hl                                          ; $4e6a: $e9

.return:
	pop  af                                          ; $4e6b: $f1
	ld   [wWramBank], a                                  ; $4e6c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4e6f: $e0 $70
	ret                                              ; $4e71: $c9

.table:
	dw $4e8f
	dw $4f1c
	dw $4f7a
	dw $4fba
	dw $5039

Jump_008_4e7c:
	ld   hl, wScriptOpcodeParamPointer                                   ; $4e7c: $21 $74 $cb
	ld   a, [hl+]                                    ; $4e7f: $2a
	ld   h, [hl]                                     ; $4e80: $66
	ld   l, a                                        ; $4e81: $6f
	ldh  a, [hScriptOpcodeParams]                                    ; $4e82: $f0 $a0
	ld   [hl-], a                                    ; $4e84: $32
	ldh  a, [hScriptOpcodeParams+1]                                    ; $4e85: $f0 $a1
	ld   [hl-], a                                    ; $4e87: $32
	ldh  a, [hScriptOpcodeParams+2]                                    ; $4e88: $f0 $a2
	ld   [hl-], a                                    ; $4e8a: $32
	ldh  a, [hScriptOpcodeParams+3]                                    ; $4e8b: $f0 $a3
	ld   [hl-], a                                    ; $4e8d: $32
	ret                                              ; $4e8e: $c9


	ldh  a, [hScriptOpcodeParams+3]                                    ; $4e8f: $f0 $a3
	or   a                                           ; $4e91: $b7
	jr   nz, jr_008_4ead                             ; $4e92: $20 $19

	ld   a, $18                                      ; $4e94: $3e $18
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4e96: $ea $62 $c3
	ld   a, $1c                                      ; $4e99: $3e $1c
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4e9b: $ea $63 $c3
	ld   a, $03                                      ; $4e9e: $3e $03
	ld   b, $00                                      ; $4ea0: $06 $00
	ld   hl, wBGPalettes                                   ; $4ea2: $21 $de $c2
	ld   c, $01                                      ; $4ea5: $0e $01
	ld   de, $7000                                   ; $4ea7: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4eaa: $cd $48 $07

jr_008_4ead:
	ld   a, [$cbc7]                                  ; $4ead: $fa $c7 $cb
	or   a                                           ; $4eb0: $b7
	jr   z, jr_008_4ed0                              ; $4eb1: $28 $1d

	ld   hl, hScriptOpcodeParams+3                                   ; $4eb3: $21 $a3 $ff
	ld   a, [$cb91]                                  ; $4eb6: $fa $91 $cb
	or   a                                           ; $4eb9: $b7
	jr   z, jr_008_4ebf                              ; $4eba: $28 $03

	inc  [hl]                                        ; $4ebc: $34
	res  0, [hl]                                     ; $4ebd: $cb $86

jr_008_4ebf:
	ld   a, [hl]                                     ; $4ebf: $7e
	inc  [hl]                                        ; $4ec0: $34
	cp   $0f                                         ; $4ec1: $fe $0f
	jr   nc, jr_008_4ed0                             ; $4ec3: $30 $0b

	bit  0, a                                        ; $4ec5: $cb $47
	ld   bc, $181c                                   ; $4ec7: $01 $1c $18
	call z, FadePalettesAndSetRangeToUpdate                                    ; $4eca: $cc $32 $08
	jp   Jump_008_4e7c                               ; $4ecd: $c3 $7c $4e


jr_008_4ed0:
	call Call_008_413a                               ; $4ed0: $cd $3a $41
	xor  a                                           ; $4ed3: $af
	ld   [$cbae], a                                  ; $4ed4: $ea $ae $cb
	ld   [$cbb0], a                                  ; $4ed7: $ea $b0 $cb
	ld   a, [$cba6]                                  ; $4eda: $fa $a6 $cb
	ld   l, a                                        ; $4edd: $6f
	ld   h, $00                                      ; $4ede: $26 $00

	M_FarCall Call_00a_5438
	
	ld   c, $80                                      ; $4ef4: $0e $80
	ld   de, $9800                                   ; $4ef6: $11 $00 $98
	ld   a, $02                                      ; $4ef9: $3e $02
	ld   hl, $d140                                   ; $4efb: $21 $40 $d1
	ld   b, $14                                      ; $4efe: $06 $14
	call EnqueueHDMATransfer                                       ; $4f00: $cd $7c $02
	ld   c, $81                                      ; $4f03: $0e $81
	ld   de, $9800                                   ; $4f05: $11 $00 $98
	ld   a, $02                                      ; $4f08: $3e $02
	ld   hl, $d000                                   ; $4f0a: $21 $00 $d0
	ld   b, $14                                      ; $4f0d: $06 $14
	call EnqueueHDMATransfer                                       ; $4f0f: $cd $7c $02
	ld   hl, hScriptOpcodeParams+2                                   ; $4f12: $21 $a2 $ff
	inc  [hl]                                        ; $4f15: $34
	xor  a                                           ; $4f16: $af
	ldh  [hScriptOpcodeParams+3], a                                    ; $4f17: $e0 $a3
	jp   Jump_008_4e7c                               ; $4f19: $c3 $7c $4e


	ld   hl, hScriptOpcodeParams+3                                   ; $4f1c: $21 $a3 $ff
	ld   a, [hl]                                     ; $4f1f: $7e
	inc  [hl]                                        ; $4f20: $34
	or   a                                           ; $4f21: $b7
	jr   nz, jr_008_4f38                             ; $4f22: $20 $14

	ldh  a, [hScriptOpcodeParams]                                    ; $4f24: $f0 $a0
	ld   [$cba8], a                                  ; $4f26: $ea $a8 $cb
	ld   h, a                                        ; $4f29: $67
	ldh  a, [hScriptOpcodeParams+1]                                    ; $4f2a: $f0 $a1
	ld   [$cba9], a                                  ; $4f2c: $ea $a9 $cb
	ld   l, a                                        ; $4f2f: $6f
	or   h                                           ; $4f30: $b4
	jp   z, DequeueAScriptOpcode                            ; $4f31: $ca $bc $40

	xor  a                                           ; $4f34: $af
	call Call_008_40e1                               ; $4f35: $cd $e1 $40

jr_008_4f38:
	ldh  a, [hScriptOpcodeParams]                                    ; $4f38: $f0 $a0
	ld   h, a                                        ; $4f3a: $67
	ldh  a, [hScriptOpcodeParams+1]                                    ; $4f3b: $f0 $a1
	ld   l, a                                        ; $4f3d: $6f
	ldh  a, [hScriptOpcodeParams+3]                                    ; $4f3e: $f0 $a3
	dec  a                                           ; $4f40: $3d

	M_FarCall Func_0b_4000
	
	or   a                                           ; $4f55: $b7
	jr   nz, jr_008_4f77                             ; $4f56: $20 $1f

	ld   de, $da30                                   ; $4f58: $11 $30 $da
	ld   hl, $c30e                                   ; $4f5b: $21 $0e $c3
	ld   bc, $0038                                   ; $4f5e: $01 $38 $00
	call MemCopy                                       ; $4f61: $cd $a9 $09
	ld   hl, $c30e                                   ; $4f64: $21 $0e $c3
	ld   bc, $001c                                   ; $4f67: $01 $1c $00
	ld   de, $7fff                                   ; $4f6a: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $4f6d: $cd $9f $09
	ld   hl, hScriptOpcodeParams+2                                   ; $4f70: $21 $a2 $ff
	inc  [hl]                                        ; $4f73: $34
	xor  a                                           ; $4f74: $af
	ldh  [hScriptOpcodeParams+3], a                                    ; $4f75: $e0 $a3

jr_008_4f77:
	jp   Jump_008_4e7c                               ; $4f77: $c3 $7c $4e


	ld   a, [$cba6]                                  ; $4f7a: $fa $a6 $cb
	ld   l, a                                        ; $4f7d: $6f
	ld   h, $00                                      ; $4f7e: $26 $00

	M_FarCall Call_00a_5438
	
	ld   a, [$cba8]                                  ; $4f94: $fa $a8 $cb
	ld   h, a                                        ; $4f97: $67
	ld   a, [$cba9]                                  ; $4f98: $fa $a9 $cb
	ld   l, a                                        ; $4f9b: $6f

	M_FarCall Func_0b_5903
	
	ld   hl, hScriptOpcodeParams+2                                   ; $4fb0: $21 $a2 $ff
	inc  [hl]                                        ; $4fb3: $34
	xor  a                                           ; $4fb4: $af
	ldh  [hScriptOpcodeParams+3], a                                    ; $4fb5: $e0 $a3
	jp   Jump_008_4e7c                               ; $4fb7: $c3 $7c $4e


	ldh  a, [hScriptOpcodeParams+3]                                    ; $4fba: $f0 $a3
	or   a                                           ; $4fbc: $b7
	jp   nz, Jump_008_4ffa                           ; $4fbd: $c2 $fa $4f

	call Call_008_4159                               ; $4fc0: $cd $59 $41
	ld   c, $80                                      ; $4fc3: $0e $80
	ld   de, $9800                                   ; $4fc5: $11 $00 $98
	ld   a, $02                                      ; $4fc8: $3e $02
	ld   hl, $d140                                   ; $4fca: $21 $40 $d1
	ld   b, $14                                      ; $4fcd: $06 $14
	call EnqueueHDMATransfer                                       ; $4fcf: $cd $7c $02
	ld   c, $81                                      ; $4fd2: $0e $81
	ld   de, $9800                                   ; $4fd4: $11 $00 $98
	ld   a, $02                                      ; $4fd7: $3e $02
	ld   hl, $d000                                   ; $4fd9: $21 $00 $d0
	ld   b, $14                                      ; $4fdc: $06 $14
	call EnqueueHDMATransfer                                       ; $4fde: $cd $7c $02
	ld   a, $18                                      ; $4fe1: $3e $18
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4fe3: $ea $62 $c3
	ld   a, $1c                                      ; $4fe6: $3e $1c
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4fe8: $ea $63 $c3
	ld   a, $03                                      ; $4feb: $3e $03
	ld   b, $00                                      ; $4fed: $06 $00
	ld   hl, wBGPalettes                                   ; $4fef: $21 $de $c2
	ld   c, $00                                      ; $4ff2: $0e $00
	ld   de, $da00                                   ; $4ff4: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4ff7: $cd $48 $07

Jump_008_4ffa:
	ld   a, [$cbc7]                                  ; $4ffa: $fa $c7 $cb
	or   a                                           ; $4ffd: $b7
	jr   z, jr_008_501d                              ; $4ffe: $28 $1d

	ld   hl, hScriptOpcodeParams+3                                   ; $5000: $21 $a3 $ff
	ld   a, [$cb91]                                  ; $5003: $fa $91 $cb
	or   a                                           ; $5006: $b7
	jr   z, jr_008_500c                              ; $5007: $28 $03

	inc  [hl]                                        ; $5009: $34
	res  0, [hl]                                     ; $500a: $cb $86

jr_008_500c:
	ld   a, [hl]                                     ; $500c: $7e
	inc  [hl]                                        ; $500d: $34
	cp   $0f                                         ; $500e: $fe $0f
	jr   nc, jr_008_501d                             ; $5010: $30 $0b

	bit  0, a                                        ; $5012: $cb $47
	ld   bc, $181c                                   ; $5014: $01 $1c $18
	call z, FadePalettesAndSetRangeToUpdate                                    ; $5017: $cc $32 $08
	jp   Jump_008_4e7c                               ; $501a: $c3 $7c $4e


jr_008_501d:
	ld   a, [$cbc7]                                  ; $501d: $fa $c7 $cb
	or   a                                           ; $5020: $b7
	jr   z, jr_008_5036                              ; $5021: $28 $13

	xor  a                                           ; $5023: $af
	ld   hl, $da30                                   ; $5024: $21 $30 $da
	ld   de, $c30e                                   ; $5027: $11 $0e $c3
	ld   bc, $0038                                   ; $502a: $01 $38 $00
	call FarMemCopy                                       ; $502d: $cd $b2 $09
	ld   bc, $1833                                   ; $5030: $01 $33 $18
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5033: $cd $aa $04

jr_008_5036:
	jp   DequeueAScriptOpcode                               ; $5036: $c3 $bc $40


	ld   hl, hScriptOpcodeParams+3                                   ; $5039: $21 $a3 $ff
	ld   a, [hl]                                     ; $503c: $7e
	inc  [hl]                                        ; $503d: $34
	ldh  a, [hScriptOpcodeParams]                                    ; $503e: $f0 $a0
	ld   [$cba8], a                                  ; $5040: $ea $a8 $cb
	ld   h, a                                        ; $5043: $67
	ldh  a, [hScriptOpcodeParams+1]                                    ; $5044: $f0 $a1
	ld   [$cba9], a                                  ; $5046: $ea $a9 $cb
	ld   l, a                                        ; $5049: $6f
	ldh  a, [hScriptOpcodeParams+3]                                    ; $504a: $f0 $a3
	dec  a                                           ; $504c: $3d

	M_FarCall Func_0b_4000
	
	or   a                                           ; $5061: $b7
	jp   nz, Jump_008_4e7c                           ; $5062: $c2 $7c $4e

	jp   DequeueAScriptOpcode                               ; $5065: $c3 $bc $40


ScriptOpcode0e_LoadScenery_Init:
	ld   a, $0e                                                     ; $5068
	call EnqueueAScriptOpcode                                       ; $506a

; Script byte after is 1st param
	push hl                                                         ; $506d
	call GetNextScriptOpcodeToProcess                               ; $506e
	ld   [hl-], a                                                   ; $5071

; Clear 4 params after
	xor  a                                                          ; $5072
	ld   [hl-], a                                                   ; $5073
	ld   [hl-], a                                                   ; $5074
	ld   [hl-], a                                                   ; $5075
	ld   [hl-], a                                                   ; $5076
	pop  hl                                                         ; $5077

;
	ld   a, [$cbac]                                  ; $5078: $fa $ac $cb
	or   a                                           ; $507b: $b7
	jr   nz, jr_008_508a                             ; $507c: $20 $0c

	ld   a, [$cbae]                                  ; $507e: $fa $ae $cb
	or   a                                           ; $5081: $b7
	jr   z, ScriptOpcode0e_LoadScenery_Main                              ; $5082: $28 $10

	ld   a, [$cbb0]                                  ; $5084: $fa $b0 $cb
	or   a                                           ; $5087: $b7
	jr   z, ScriptOpcode0e_LoadScenery_Main                              ; $5088: $28 $0a

jr_008_508a:
	dec  hl                                          ; $508a: $2b
	inc  [hl]                                        ; $508b: $34
	ld   a, SO_33                                      ; $508c: $3e $33
	call EnqueueAScriptOpcode                               ; $508e: $cd $97 $40
	xor  a                                           ; $5091: $af
	ld   [hl-], a                                    ; $5092: $32
	ret                                              ; $5093: $c9


ScriptOpcode0e_LoadScenery_Main:
; Save pointer to 1st param
	ld   a, l                                                       ; $5094
	ld   [wScriptOpcodeParamPointer], a                             ; $5095
	ld   a, h                                                       ; $5098
	ld   [wScriptOpcodeParamPointer+1], a                           ; $5099

; Save the 5 params
	ld   a, [hl-]                                                   ; $509c
	ldh  [hScriptOpcodeParams], a                                   ; $509d
	ld   a, [hl-]                                                   ; $509f
	ldh  [hScriptOpcodeParams+1], a                                 ; $50a0
	ld   a, [hl-]                                                   ; $50a2
	ldh  [hScriptOpcodeParams+2], a                                 ; $50a3
	ld   a, [hl-]                                                   ; $50a5
	ldh  [hScriptOpcodeParams+3], a                                 ; $50a6
	ld   a, [hl-]                                                   ; $50a8
	ldh  [hScriptOpcodeParams+4], a                                 ; $50a9

; Run script engine next main loop
	xor  a                                                          ; $50ab
	ld   [wScriptEngineContsRunningThisMainLoop], a                 ; $50ac

; param 2 of 5 controls the jump table below
	ldh  a, [hScriptOpcodeParams+1]                                    ; $50af: $f0 $a1
	sla  a                                           ; $50b1: $cb $27
	ld   b, $00                                      ; $50b3: $06 $00
	ld   c, a                                        ; $50b5: $4f
	ld   hl, .table                                   ; $50b6: $21 $be $50
	add  hl, bc                                      ; $50b9: $09
	ld   a, [hl+]                                    ; $50ba: $2a
	ld   h, [hl]                                     ; $50bb: $66
	ld   l, a                                        ; $50bc: $6f
	jp   hl                                          ; $50bd: $e9

.table:
	dw .thing0
	dw .thing1
	dw .thing2

.done:
; HL = pointer to params in struct
	ld   hl, wScriptOpcodeParamPointer                              ; $50c4
	ld   a, [hl+]                                                   ; $50c7
	ld   h, [hl]                                                    ; $50c8
	ld   l, a                                                       ; $50c9

; Store updated hram params into struct
	ldh  a, [hScriptOpcodeParams]                                   ; $50ca
	ld   [hl-], a                                                   ; $50cc
	ldh  a, [hScriptOpcodeParams+1]                                 ; $50cd
	ld   [hl-], a                                                   ; $50cf
	ldh  a, [hScriptOpcodeParams+2]                                 ; $50d0
	ld   [hl-], a                                                   ; $50d2
	ldh  a, [hScriptOpcodeParams+3]                                 ; $50d3
	ld   [hl-], a                                                   ; $50d5
	ldh  a, [hScriptOpcodeParams+4]                                 ; $50d6
	ld   [hl-], a                                                   ; $50d8
	ret                                                             ; $50d9

.thing0:
; jump if param 2 is non-0
	ld   hl, hScriptOpcodeParams+2                                   ; $50da: $21 $a2 $ff
	ld   a, [hl]                                     ; $50dd: $7e
	or   a                                           ; $50de: $b7
	jr   nz, .thing0_cont_5103                             ; $50df: $20 $22

; inc param 2
	inc  [hl]                                        ; $50e1: $34

; Load from 3rd palette to 5th palette (scenery background palettes)
	ld   a, $0c                                                     ; $50e2
	ld   [wStartingColorIdxToLoadCompDataFor], a                    ; $50e4
	ld   a, $0c                                                     ; $50e7
	ld   [wNumPaletteColorsToLoadCompDataFor], a                    ; $50e9

; Fade to white at 1/8th speed
	ld   a, $03                                                     ; $50ec
	ld   b, $00                                                     ; $50ee
	ld   hl, wBGPalettes                                            ; $50f0
	ld   c, BANK(Palettes_AllWhite)                                 ; $50f3
	ld   de, Palettes_AllWhite                                      ; $50f5
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                ; $50f8

; clear 3rd param,...
	xor  a                                           ; $50fb: $af
	ldh  [hScriptOpcodeParams+3], a                                    ; $50fc: $e0 $a3
	ld   a, [$cbc3]                                  ; $50fe: $fa $c3 $cb
	ldh  [hScriptOpcodeParams+4], a                                    ; $5101: $e0 $a4

.thing0_cont_5103:
	ld   a, [$cbc7]                                  ; $5103: $fa $c7 $cb
	or   a                                           ; $5106: $b7
	jr   z, .thing0_br_5132                              ; $5107: $28 $29

	ld   a, [$cb91]                                  ; $5109: $fa $91 $cb
	or   a                                           ; $510c: $b7
	jr   z, .thing0_br_5112                              ; $510d: $28 $03

	xor  a                                           ; $510f: $af
	ldh  [hScriptOpcodeParams+4], a                                    ; $5110: $e0 $a4

.thing0_br_5112:
	ldh  a, [hScriptOpcodeParams+4]                                    ; $5112: $f0 $a4
	sub  $01                                         ; $5114: $d6 $01
	ldh  [hScriptOpcodeParams+4], a                                    ; $5116: $e0 $a4
	jp   nc, .done                           ; $5118: $d2 $c4 $50

	ldh  a, [hScriptOpcodeParams+3]                                    ; $511b: $f0 $a3
	inc  a                                           ; $511d: $3c
	ldh  [hScriptOpcodeParams+3], a                                    ; $511e: $e0 $a3
	bit  3, a                                        ; $5120: $cb $5f
	jr   nz, .thing0_br_5132                             ; $5122: $20 $0e

	ld   a, [$cbc3]                                  ; $5124: $fa $c3 $cb
	ldh  [hScriptOpcodeParams+4], a                                    ; $5127: $e0 $a4
	ld   bc, $0c0c                                   ; $5129: $01 $0c $0c
	call FadePalettesAndSetRangeToUpdate                                       ; $512c: $cd $32 $08
	jp   .done                               ; $512f: $c3 $c4 $50

.thing0_br_5132:
	ld   a, $01                                      ; $5132: $3e $01
	ld   hl, $7000                                   ; $5134: $21 $00 $70
	ld   de, wBGPalettes+3*8                                   ; $5137: $11 $f6 $c2
	ld   bc, $0018                                   ; $513a: $01 $18 $00
	call FarMemCopy                                       ; $513d: $cd $b2 $09
	ld   bc, $0c17                                   ; $5140: $01 $17 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5143: $cd $aa $04
	ld   hl, hScriptOpcodeParams+1                                   ; $5146: $21 $a1 $ff
	inc  [hl]                                        ; $5149: $34
	xor  a                                           ; $514a: $af
	ldh  [hScriptOpcodeParams+2], a                                    ; $514b: $e0 $a2
	jp   .done                               ; $514d: $c3 $c4 $50

.thing1:
	ld   a, [wWramBank]                                  ; $5150: $fa $93 $c2
	push af                                          ; $5153: $f5
	ld   a, $02                                      ; $5154: $3e $02
	ld   [wWramBank], a                                  ; $5156: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5159: $e0 $70
	
	ldh  a, [hScriptOpcodeParams]                                    ; $515b: $f0 $a0
	ld   h, $00                                      ; $515d: $26 $00
	ld   l, a                                        ; $515f: $6f
	ldh  a, [hScriptOpcodeParams+2]                                    ; $5160: $f0 $a2

	M_FarCall LoadSceneryTileDataLayoutAndPalettes
	or   a                                           ; $5176: $b7
	jr   nz, .thing1_br_519f                             ; $5177: $20 $26

; Finished loading
	ld   de, $da18                                   ; $5179: $11 $18 $da
	ld   hl, wBGPalettes+3*8                                   ; $517c: $21 $f6 $c2
	ld   bc, $0018                                   ; $517f: $01 $18 $00
	call MemCopy                                       ; $5182: $cd $a9 $09
	ld   hl, wBGPalettes+3*8                                   ; $5185: $21 $f6 $c2
	ld   bc, $000c                                   ; $5188: $01 $0c $00
	ld   de, $7fff                                   ; $518b: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $518e: $cd $9f $09
	ldh  a, [hScriptOpcodeParams]                                    ; $5191: $f0 $a0
	ld   [$cba6], a                                  ; $5193: $ea $a6 $cb
	ld   hl, hScriptOpcodeParams+1                                   ; $5196: $21 $a1 $ff
	inc  [hl]                                        ; $5199: $34
	xor  a                                           ; $519a: $af
	ldh  [hScriptOpcodeParams+2], a                                    ; $519b: $e0 $a2
	jr   .thing1_cont_51e7                                 ; $519d: $18 $48

.thing1_br_519f:
	ld   hl, hScriptOpcodeParams+2                                   ; $519f: $21 $a2 $ff
	ld   a, [hl]                                     ; $51a2: $7e
	inc  [hl]                                        ; $51a3: $34
	or   a                                           ; $51a4: $b7
	jr   nz, .thing1_cont_51e7                             ; $51a5: $20 $40

	ld   a, [$cbb1]                                  ; $51a7: $fa $b1 $cb
	or   a                                           ; $51aa: $b7
	ld   a, [$cba8]                                  ; $51ab: $fa $a8 $cb
	ld   h, a                                        ; $51ae: $67
	ld   a, [$cba9]                                  ; $51af: $fa $a9 $cb
	ld   l, a                                        ; $51b2: $6f
	push af                                          ; $51b3: $f5
	ld   a, $03                                      ; $51b4: $3e $03
	ld   [wFarCallAddr], a                                  ; $51b6: $ea $98 $c2
	ld   a, $59                                      ; $51b9: $3e $59
	ld   [wFarCallAddr+1], a                                  ; $51bb: $ea $99 $c2
	ld   a, $0b                                      ; $51be: $3e $0b
	ld   [wFarCallBank], a                                  ; $51c0: $ea $9a $c2
	pop  af                                          ; $51c3: $f1
	call z, FarCall                                    ; $51c4: $cc $62 $09
	ld   a, [$cbb1]                                  ; $51c7: $fa $b1 $cb
	inc  a                                           ; $51ca: $3c
	bit  2, a                                        ; $51cb: $cb $57
	ld   a, [$cbae]                                  ; $51cd: $fa $ae $cb
	ld   h, $00                                      ; $51d0: $26 $00
	ld   l, a                                        ; $51d2: $6f
	push af                                          ; $51d3: $f5
	ld   a, $82                                      ; $51d4: $3e $82
	ld   [wFarCallAddr], a                                  ; $51d6: $ea $98 $c2
	ld   a, $61                                      ; $51d9: $3e $61
	ld   [wFarCallAddr+1], a                                  ; $51db: $ea $99 $c2
	ld   a, $0b                                      ; $51de: $3e $0b
	ld   [wFarCallBank], a                                  ; $51e0: $ea $9a $c2
	pop  af                                          ; $51e3: $f1
	call nz, FarCall                                   ; $51e4: $c4 $62 $09

.thing1_cont_51e7:
	pop  af                                          ; $51e7: $f1
	ld   [wWramBank], a                                  ; $51e8: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $51eb: $e0 $70
	ldh  a, [hScriptOpcodeParams]                                    ; $51ed: $f0 $a0
	or   a                                           ; $51ef: $b7
	jp   z, DequeueAScriptOpcode                            ; $51f0: $ca $bc $40

	jp   .done                               ; $51f3: $c3 $c4 $50

.thing2:
	ld   a, [wWramBank]                                  ; $51f6: $fa $93 $c2
	push af                                          ; $51f9: $f5
	ld   a, $02                                      ; $51fa: $3e $02
	ld   [wWramBank], a                                  ; $51fc: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $51ff: $e0 $70
	ld   hl, hScriptOpcodeParams+2                                   ; $5201: $21 $a2 $ff
	ld   a, [hl]                                     ; $5204: $7e
	or   a                                           ; $5205: $b7
	jr   nz, .thing2_cont_522a                             ; $5206: $20 $22

	inc  [hl]                                        ; $5208: $34
	ld   a, $0c                                      ; $5209: $3e $0c
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $520b: $ea $62 $c3
	ld   a, $0c                                      ; $520e: $3e $0c
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5210: $ea $63 $c3
	ld   a, $03                                      ; $5213: $3e $03
	ld   b, $00                                      ; $5215: $06 $00
	ld   hl, wBGPalettes                                   ; $5217: $21 $de $c2
	ld   c, $00                                      ; $521a: $0e $00
	ld   de, $da00                                   ; $521c: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $521f: $cd $48 $07
	xor  a                                           ; $5222: $af
	ldh  [hScriptOpcodeParams+3], a                                    ; $5223: $e0 $a3
	ld   a, [$cbc3]                                  ; $5225: $fa $c3 $cb
	ldh  [hScriptOpcodeParams+4], a                                    ; $5228: $e0 $a4

.thing2_cont_522a:
	ld   a, [$cbc7]                                  ; $522a: $fa $c7 $cb
	or   a                                           ; $522d: $b7
	jr   z, .thing2_br_525f                              ; $522e: $28 $2f

	ld   a, [$cb91]                                  ; $5230: $fa $91 $cb
	or   a                                           ; $5233: $b7
	jr   z, .thing2_br_5239                              ; $5234: $28 $03

	xor  a                                           ; $5236: $af
	ldh  [hScriptOpcodeParams+4], a                                    ; $5237: $e0 $a4

.thing2_br_5239:
	ldh  a, [hScriptOpcodeParams+4]                                    ; $5239: $f0 $a4
	sub  $01                                         ; $523b: $d6 $01
	ldh  [hScriptOpcodeParams+4], a                                    ; $523d: $e0 $a4
	jp   nc, .thing2_br_5256                           ; $523f: $d2 $56 $52

	ldh  a, [hScriptOpcodeParams+3]                                    ; $5242: $f0 $a3
	inc  a                                           ; $5244: $3c
	ldh  [hScriptOpcodeParams+3], a                                    ; $5245: $e0 $a3
	bit  3, a                                        ; $5247: $cb $5f
	jr   nz, .thing2_br_525f                             ; $5249: $20 $14

	ld   a, [$cbc3]                                  ; $524b: $fa $c3 $cb
	ldh  [hScriptOpcodeParams+4], a                                    ; $524e: $e0 $a4
	ld   bc, $0c0c                                   ; $5250: $01 $0c $0c
	call FadePalettesAndSetRangeToUpdate                                       ; $5253: $cd $32 $08

.thing2_br_5256:
	pop  af                                          ; $5256: $f1
	ld   [wWramBank], a                                  ; $5257: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $525a: $e0 $70
	jp   .done                               ; $525c: $c3 $c4 $50

.thing2_br_525f:
	ld   a, [$cbc7]                                  ; $525f: $fa $c7 $cb
	or   a                                           ; $5262: $b7
	jr   z, .thing2_cont_5278                              ; $5263: $28 $13

	xor  a                                           ; $5265: $af
	ld   hl, $da18                                   ; $5266: $21 $18 $da
	ld   de, wBGPalettes+3*8                                   ; $5269: $11 $f6 $c2
	ld   bc, $0018                                   ; $526c: $01 $18 $00
	call FarMemCopy                                       ; $526f: $cd $b2 $09
	ld   bc, $0c17                                   ; $5272: $01 $17 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5275: $cd $aa $04

.thing2_cont_5278:
	pop  af                                          ; $5278: $f1
	ld   [wWramBank], a                                  ; $5279: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $527c: $e0 $70
	jp   DequeueAScriptOpcode                               ; $527e: $c3 $bc $40


ScriptOpcode23_Init:
	ld   a, $23                                      ; $5281: $3e $23
	call EnqueueAScriptOpcode                               ; $5283: $cd $97 $40
	push hl                                          ; $5286: $e5
	call GetNextScriptOpcodeToProcess                               ; $5287: $cd $70 $42
	ld   [hl-], a                                    ; $528a: $32
	xor  a                                           ; $528b: $af
	ld   [hl-], a                                    ; $528c: $32
	ld   [hl-], a                                    ; $528d: $32
	pop  hl                                          ; $528e: $e1
	ld   a, [$cbac]                                  ; $528f: $fa $ac $cb
	or   a                                           ; $5292: $b7
	jr   z, jr_008_529f                              ; $5293: $28 $0a

	dec  hl                                          ; $5295: $2b
	inc  [hl]                                        ; $5296: $34
	ld   a, SO_33                                      ; $5297: $3e $33
	call EnqueueAScriptOpcode                               ; $5299: $cd $97 $40
	xor  a                                           ; $529c: $af
	ld   [hl-], a                                    ; $529d: $32
	ret                                              ; $529e: $c9


jr_008_529f:
ScriptOpcode23_Main:
	ld   a, l                                        ; $529f: $7d
	ld   [wScriptOpcodeParamPointer], a                                  ; $52a0: $ea $74 $cb
	ld   a, h                                        ; $52a3: $7c
	ld   [wScriptOpcodeParamPointer+1], a                                  ; $52a4: $ea $75 $cb
	ld   a, [hl-]                                    ; $52a7: $3a
	ldh  [hScriptOpcodeParams], a                                    ; $52a8: $e0 $a0
	ld   a, [hl-]                                    ; $52aa: $3a
	ldh  [hScriptOpcodeParams+1], a                                    ; $52ab: $e0 $a1
	ld   a, [hl-]                                    ; $52ad: $3a
	ldh  [hScriptOpcodeParams+2], a                                    ; $52ae: $e0 $a2
	xor  a                                           ; $52b0: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $52b1: $ea $52 $cb
	ldh  a, [hScriptOpcodeParams+1]                                    ; $52b4: $f0 $a1
	sla  a                                           ; $52b6: $cb $27
	ld   b, $00                                      ; $52b8: $06 $00
	ld   c, a                                        ; $52ba: $4f
	ld   hl, $52c3                                   ; $52bb: $21 $c3 $52
	add  hl, bc                                      ; $52be: $09
	ld   a, [hl+]                                    ; $52bf: $2a
	ld   h, [hl]                                     ; $52c0: $66
	ld   l, a                                        ; $52c1: $6f
	jp   hl                                          ; $52c2: $e9


	bit  2, d                                        ; $52c3: $cb $52
	and  d                                           ; $52c5: $a2
	ld   d, e                                        ; $52c6: $53
	jr   jr_008_531d                                 ; $52c7: $18 $54

	inc  l                                           ; $52c9: $2c
	ld   d, h                                        ; $52ca: $54

	
	ldh  a, [hScriptOpcodeParams+2]                                    ; $52cb: $f0 $a2
	or   a                                           ; $52cd: $b7
	jp   nz, Jump_008_52fc                           ; $52ce: $c2 $fc $52

	ld   a, [wWramBank]                                  ; $52d1: $fa $93 $c2
	push af                                          ; $52d4: $f5
	ld   a, $07                                      ; $52d5: $3e $07
	ld   [wWramBank], a                                  ; $52d7: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $52da: $e0 $70
	ld   hl, $d000                                   ; $52dc: $21 $00 $d0
	ld   bc, $0010                                   ; $52df: $01 $10 $00
	ld   a, $ff                                      ; $52e2: $3e $ff
	call MemSet                                       ; $52e4: $cd $96 $09
	pop  af                                          ; $52e7: $f1
	ld   [wWramBank], a                                  ; $52e8: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $52eb: $e0 $70
	ld   c, $80                                      ; $52ed: $0e $80
	ld   de, $8ff0                                   ; $52ef: $11 $f0 $8f
	ld   a, $07                                      ; $52f2: $3e $07
	ld   hl, $d000                                   ; $52f4: $21 $00 $d0
	ld   b, $01                                      ; $52f7: $06 $01
	call EnqueueHDMATransfer                                       ; $52f9: $cd $7c $02

Jump_008_52fc:
	ld   hl, hScriptOpcodeParams+2                                   ; $52fc: $21 $a2 $ff
	ld   a, [hl]                                     ; $52ff: $7e
	inc  [hl]                                        ; $5300: $34
	ld   a, [wWramBank]                                  ; $5301: $fa $93 $c2
	push af                                          ; $5304: $f5
	ld   a, $02                                      ; $5305: $3e $02
	ld   [wWramBank], a                                  ; $5307: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $530a: $e0 $70
	ld   a, $14                                      ; $530c: $3e $14
	sub  [hl]                                        ; $530e: $96
	ld   h, $00                                      ; $530f: $26 $00
	ld   l, a                                        ; $5311: $6f
	push hl                                          ; $5312: $e5
	ld   bc, $d000                                   ; $5313: $01 $00 $d0
	add  hl, bc                                      ; $5316: $09
	ld   bc, $0020                                   ; $5317: $01 $20 $00
	ld   a, $80                                      ; $531a: $3e $80
	ld   [hl], a                                     ; $531c: $77

jr_008_531d:
	add  hl, bc                                      ; $531d: $09
	ld   [hl], a                                     ; $531e: $77
	add  hl, bc                                      ; $531f: $09
	ld   [hl], a                                     ; $5320: $77
	add  hl, bc                                      ; $5321: $09
	ld   [hl], a                                     ; $5322: $77
	add  hl, bc                                      ; $5323: $09
	ld   [hl], a                                     ; $5324: $77
	add  hl, bc                                      ; $5325: $09
	ld   [hl], a                                     ; $5326: $77
	add  hl, bc                                      ; $5327: $09
	ld   [hl], a                                     ; $5328: $77
	add  hl, bc                                      ; $5329: $09
	ld   [hl], a                                     ; $532a: $77
	add  hl, bc                                      ; $532b: $09
	ld   [hl], a                                     ; $532c: $77
	add  hl, bc                                      ; $532d: $09
	ld   [hl], a                                     ; $532e: $77
	pop  hl                                          ; $532f: $e1
	ld   bc, $d140                                   ; $5330: $01 $40 $d1
	add  hl, bc                                      ; $5333: $09
	ld   bc, $0020                                   ; $5334: $01 $20 $00
	ld   a, $ff                                      ; $5337: $3e $ff
	ld   [hl], a                                     ; $5339: $77
	add  hl, bc                                      ; $533a: $09
	ld   [hl], a                                     ; $533b: $77
	add  hl, bc                                      ; $533c: $09
	ld   [hl], a                                     ; $533d: $77
	add  hl, bc                                      ; $533e: $09
	ld   [hl], a                                     ; $533f: $77
	add  hl, bc                                      ; $5340: $09
	ld   [hl], a                                     ; $5341: $77
	add  hl, bc                                      ; $5342: $09
	ld   [hl], a                                     ; $5343: $77
	add  hl, bc                                      ; $5344: $09
	ld   [hl], a                                     ; $5345: $77
	add  hl, bc                                      ; $5346: $09
	ld   [hl], a                                     ; $5347: $77
	add  hl, bc                                      ; $5348: $09
	ld   [hl], a                                     ; $5349: $77
	add  hl, bc                                      ; $534a: $09
	ld   [hl], a                                     ; $534b: $77
	pop  af                                          ; $534c: $f1
	ld   [wWramBank], a                                  ; $534d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5350: $e0 $70
	ld   c, $81                                      ; $5352: $0e $81
	ld   de, $9800                                   ; $5354: $11 $00 $98
	ld   a, $02                                      ; $5357: $3e $02
	ld   hl, $d000                                   ; $5359: $21 $00 $d0
	ld   b, $14                                      ; $535c: $06 $14
	call EnqueueHDMATransfer                                       ; $535e: $cd $7c $02
	ld   c, $80                                      ; $5361: $0e $80
	ld   de, $9800                                   ; $5363: $11 $00 $98
	ld   a, $02                                      ; $5366: $3e $02
	ld   hl, $d140                                   ; $5368: $21 $40 $d1
	ld   b, $14                                      ; $536b: $06 $14
	call EnqueueHDMATransfer                                       ; $536d: $cd $7c $02
	ldh  a, [hScriptOpcodeParams+2]                                    ; $5370: $f0 $a2
	cp   $14                                         ; $5372: $fe $14
	jp   c, Jump_008_5513                            ; $5374: $da $13 $55

	ld   hl, hScriptOpcodeParams+1                                   ; $5377: $21 $a1 $ff
	inc  [hl]                                        ; $537a: $34
	xor  a                                           ; $537b: $af
	ldh  [hScriptOpcodeParams+2], a                                    ; $537c: $e0 $a2
	jp   Jump_008_5513                               ; $537e: $c3 $13 $55


LCDCFunc0f::
	ld   hl, $c20b                                   ; $5381: $21 $0b $c2
	ldh  a, [rLY]                                    ; $5384: $f0 $44
	cp   [hl]                                        ; $5386: $be
	jp   nz, LCDCInterruptHandler.return                                   ; $5387: $c2 $4a $04

jr_008_538a:
	ldh  a, [rSTAT]                                  ; $538a: $f0 $41
	and  $03                                         ; $538c: $e6 $03
	jr   z, jr_008_538a                              ; $538e: $28 $fa

jr_008_5390:
	ldh  a, [rSTAT]                                  ; $5390: $f0 $41
	and  $03                                         ; $5392: $e6 $03
	jr   nz, jr_008_5390                             ; $5394: $20 $fa

	ldh  a, [rLCDC]                                  ; $5396: $f0 $40
	and  $97                                         ; $5398: $e6 $97
	ldh  [rLCDC], a                                  ; $539a: $e0 $40
	xor  a                                           ; $539c: $af
	ldh  [rSCX], a                                   ; $539d: $e0 $43
	jp   LCDCInterruptHandler.return                                       ; $539f: $c3 $4a $04


	ld   a, [wWramBank]                                  ; $53a2: $fa $93 $c2
	push af                                          ; $53a5: $f5
	ld   a, $02                                      ; $53a6: $3e $02
	ld   [wWramBank], a                                  ; $53a8: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $53ab: $e0 $70
	ld   hl, hScriptOpcodeParams+2                                   ; $53ad: $21 $a2 $ff
	ld   a, [hl]                                     ; $53b0: $7e
	inc  [hl]                                        ; $53b1: $34
	ld   hl, hScriptOpcodeParams                                   ; $53b2: $21 $a0 $ff
	ld   l, [hl]                                     ; $53b5: $6e
	ld   h, $00                                      ; $53b6: $26 $00

	M_FarCall LoadSceneryTileDataLayoutAndPalettes
	
	or   a                                           ; $53cc: $b7
	jr   nz, jr_008_5409                             ; $53cd: $20 $3a

	ldh  a, [hScriptOpcodeParams]                                    ; $53cf: $f0 $a0
	ld   [$cba6], a                                  ; $53d1: $ea $a6 $cb
	ld   hl, $d000                                   ; $53d4: $21 $00 $d0
	ld   bc, $00a0                                   ; $53d7: $01 $a0 $00
	ld   de, $8080                                   ; $53da: $11 $80 $80
	call CopyEthenDintoHL_BCtimes                                       ; $53dd: $cd $9f $09
	ld   hl, $d140                                   ; $53e0: $21 $40 $d1
	ld   bc, $00a0                                   ; $53e3: $01 $a0 $00
	ld   de, $ffff                                   ; $53e6: $11 $ff $ff
	call CopyEthenDintoHL_BCtimes                                       ; $53e9: $cd $9f $09
	ld   a, [$cbae]                                  ; $53ec: $fa $ae $cb
	or   a                                           ; $53ef: $b7
	jr   z, jr_008_5402                              ; $53f0: $28 $10

	ld   a, [$cbb0]                                  ; $53f2: $fa $b0 $cb
	or   a                                           ; $53f5: $b7
	jr   z, jr_008_5402                              ; $53f6: $28 $0a

	call Call_008_413a                               ; $53f8: $cd $3a $41
	xor  a                                           ; $53fb: $af
	ld   [$cbae], a                                  ; $53fc: $ea $ae $cb
	ld   [$cbb0], a                                  ; $53ff: $ea $b0 $cb

jr_008_5402:
	ld   hl, hScriptOpcodeParams+1                                   ; $5402: $21 $a1 $ff
	inc  [hl]                                        ; $5405: $34
	xor  a                                           ; $5406: $af
	ldh  [hScriptOpcodeParams+2], a                                    ; $5407: $e0 $a2

jr_008_5409:
	pop  af                                          ; $5409: $f1
	ld   [wWramBank], a                                  ; $540a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $540d: $e0 $70
	ldh  a, [hScriptOpcodeParams]                                    ; $540f: $f0 $a0
	or   a                                           ; $5411: $b7
	jp   z, DequeueAScriptOpcode                            ; $5412: $ca $bc $40

	jp   Jump_008_5513                               ; $5415: $c3 $13 $55


	ld   hl, hScriptOpcodeParams+2                                   ; $5418: $21 $a2 $ff
	ld   a, [hl]                                     ; $541b: $7e
	inc  [hl]                                        ; $541c: $34
	cp   $3c                                         ; $541d: $fe $3c
	jp   c, Jump_008_5513                            ; $541f: $da $13 $55

	ld   hl, hScriptOpcodeParams+1                                   ; $5422: $21 $a1 $ff
	inc  [hl]                                        ; $5425: $34
	xor  a                                           ; $5426: $af
	ldh  [hScriptOpcodeParams+2], a                                    ; $5427: $e0 $a2
	jp   Jump_008_5513                               ; $5429: $c3 $13 $55


	ld   c, $81                                      ; $542c: $0e $81
	ld   de, $9800                                   ; $542e: $11 $00 $98
	ld   a, $02                                      ; $5431: $3e $02
	ld   hl, $d000                                   ; $5433: $21 $00 $d0
	ld   b, $14                                      ; $5436: $06 $14
	call EnqueueHDMATransfer                                       ; $5438: $cd $7c $02
	ld   c, $80                                      ; $543b: $0e $80
	ld   de, $9800                                   ; $543d: $11 $00 $98
	ld   a, $02                                      ; $5440: $3e $02
	ld   hl, $d140                                   ; $5442: $21 $40 $d1
	ld   b, $14                                      ; $5445: $06 $14
	call EnqueueHDMATransfer                                       ; $5447: $cd $7c $02
	ld   a, [$cba6]                                  ; $544a: $fa $a6 $cb
	ld   l, a                                        ; $544d: $6f
	ld   h, $00                                      ; $544e: $26 $00

	M_FarCall Call_00a_5438
	
	ld   a, [$cba8]                                  ; $5464: $fa $a8 $cb
	ld   h, a                                        ; $5467: $67
	ld   a, [$cba9]                                  ; $5468: $fa $a9 $cb
	ld   l, a                                        ; $546b: $6f
	ld   a, [$cbb1]                                  ; $546c: $fa $b1 $cb
	or   a                                           ; $546f: $b7
	push af                                          ; $5470: $f5
	ld   a, $03                                      ; $5471: $3e $03
	ld   [wFarCallAddr], a                                  ; $5473: $ea $98 $c2
	ld   a, $59                                      ; $5476: $3e $59
	ld   [wFarCallAddr+1], a                                  ; $5478: $ea $99 $c2
	ld   a, $0b                                      ; $547b: $3e $0b
	ld   [wFarCallBank], a                                  ; $547d: $ea $9a $c2
	pop  af                                          ; $5480: $f1
	call z, FarCall                                    ; $5481: $cc $62 $09
	ld   a, [$cbae]                                  ; $5484: $fa $ae $cb
	ld   h, $00                                      ; $5487: $26 $00
	ld   l, a                                        ; $5489: $6f
	ld   a, [$cbb1]                                  ; $548a: $fa $b1 $cb
	inc  a                                           ; $548d: $3c
	bit  2, a                                        ; $548e: $cb $57
	push af                                          ; $5490: $f5
	ld   a, $82                                      ; $5491: $3e $82
	ld   [wFarCallAddr], a                                  ; $5493: $ea $98 $c2
	ld   a, $61                                      ; $5496: $3e $61
	ld   [wFarCallAddr+1], a                                  ; $5498: $ea $99 $c2
	ld   a, $0b                                      ; $549b: $3e $0b
	ld   [wFarCallBank], a                                  ; $549d: $ea $9a $c2
	pop  af                                          ; $54a0: $f1
	call nz, FarCall                                   ; $54a1: $c4 $62 $09
	ld   hl, hScriptOpcodeParams+2                                   ; $54a4: $21 $a2 $ff
	inc  [hl]                                        ; $54a7: $34
	ld   a, $14                                      ; $54a8: $3e $14
	sub  [hl]                                        ; $54aa: $96
	jp   z, DequeueAScriptOpcode                            ; $54ab: $ca $bc $40

	ld   b, a                                        ; $54ae: $47
	ld   a, [wWramBank]                                  ; $54af: $fa $93 $c2
	push af                                          ; $54b2: $f5
	ld   a, $02                                      ; $54b3: $3e $02
	ld   [wWramBank], a                                  ; $54b5: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $54b8: $e0 $70
	ld   a, b                                        ; $54ba: $78
	ld   hl, hScriptOpcodeParams+2                                   ; $54bb: $21 $a2 $ff
	ld   b, $00                                      ; $54be: $06 $00
	ld   c, [hl]                                     ; $54c0: $4e
	ld   hl, $d000                                   ; $54c1: $21 $00 $d0
	add  hl, bc                                      ; $54c4: $09
	ld   de, $0020                                   ; $54c5: $11 $20 $00
	ld   b, a                                        ; $54c8: $47
	ld   c, $80                                      ; $54c9: $0e $80

jr_008_54cb:
	push hl                                          ; $54cb: $e5
	ld   [hl], c                                     ; $54cc: $71
	add  hl, de                                      ; $54cd: $19
	ld   [hl], c                                     ; $54ce: $71
	add  hl, de                                      ; $54cf: $19
	ld   [hl], c                                     ; $54d0: $71
	add  hl, de                                      ; $54d1: $19
	ld   [hl], c                                     ; $54d2: $71
	add  hl, de                                      ; $54d3: $19
	ld   [hl], c                                     ; $54d4: $71
	add  hl, de                                      ; $54d5: $19
	ld   [hl], c                                     ; $54d6: $71
	add  hl, de                                      ; $54d7: $19
	ld   [hl], c                                     ; $54d8: $71
	add  hl, de                                      ; $54d9: $19
	ld   [hl], c                                     ; $54da: $71
	add  hl, de                                      ; $54db: $19
	ld   [hl], c                                     ; $54dc: $71
	add  hl, de                                      ; $54dd: $19
	ld   [hl], c                                     ; $54de: $71
	pop  hl                                          ; $54df: $e1
	inc  hl                                          ; $54e0: $23
	dec  b                                           ; $54e1: $05
	jr   nz, jr_008_54cb                             ; $54e2: $20 $e7

	ld   hl, hScriptOpcodeParams+2                                   ; $54e4: $21 $a2 $ff
	ld   b, $00                                      ; $54e7: $06 $00
	ld   c, [hl]                                     ; $54e9: $4e
	ld   hl, $d140                                   ; $54ea: $21 $40 $d1
	add  hl, bc                                      ; $54ed: $09
	ld   b, a                                        ; $54ee: $47
	ld   c, $ff                                      ; $54ef: $0e $ff

jr_008_54f1:
	push hl                                          ; $54f1: $e5
	ld   [hl], c                                     ; $54f2: $71
	add  hl, de                                      ; $54f3: $19
	ld   [hl], c                                     ; $54f4: $71
	add  hl, de                                      ; $54f5: $19
	ld   [hl], c                                     ; $54f6: $71
	add  hl, de                                      ; $54f7: $19
	ld   [hl], c                                     ; $54f8: $71
	add  hl, de                                      ; $54f9: $19
	ld   [hl], c                                     ; $54fa: $71
	add  hl, de                                      ; $54fb: $19
	ld   [hl], c                                     ; $54fc: $71
	add  hl, de                                      ; $54fd: $19
	ld   [hl], c                                     ; $54fe: $71
	add  hl, de                                      ; $54ff: $19
	ld   [hl], c                                     ; $5500: $71
	add  hl, de                                      ; $5501: $19
	ld   [hl], c                                     ; $5502: $71
	add  hl, de                                      ; $5503: $19
	ld   [hl], c                                     ; $5504: $71
	pop  hl                                          ; $5505: $e1
	inc  hl                                          ; $5506: $23
	dec  b                                           ; $5507: $05
	jr   nz, jr_008_54f1                             ; $5508: $20 $e7

	pop  af                                          ; $550a: $f1
	ld   [wWramBank], a                                  ; $550b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $550e: $e0 $70
	jp   Jump_008_5513                               ; $5510: $c3 $13 $55


Jump_008_5513:
	ld   hl, wScriptOpcodeParamPointer                                   ; $5513: $21 $74 $cb
	ld   a, [hl+]                                    ; $5516: $2a
	ld   h, [hl]                                     ; $5517: $66
	ld   l, a                                        ; $5518: $6f
	ldh  a, [hScriptOpcodeParams]                                    ; $5519: $f0 $a0
	ld   [hl-], a                                    ; $551b: $32
	ldh  a, [hScriptOpcodeParams+1]                                    ; $551c: $f0 $a1
	ld   [hl-], a                                    ; $551e: $32
	ldh  a, [hScriptOpcodeParams+2]                                    ; $551f: $f0 $a2
	ld   [hl-], a                                    ; $5521: $32
	ret                                              ; $5522: $c9


ScriptOpcode0f_SetPortrait_Init:
; BC are the 2 script bytes after
	call GetNextScriptOpcodeToProcess                               ; $5523: $cd $70 $42
	ld   b, a                                        ; $5526: $47
	call GetNextScriptOpcodeToProcess                               ; $5527: $cd $70 $42
	ld   c, a                                        ; $552a: $4f

; return if bc == cbab/a
	ld   a, [$cbaa]                                  ; $552b: $fa $aa $cb
	cp   b                                           ; $552e: $b8
	jr   nz, jr_008_5536                             ; $552f: $20 $05

	ld   a, [$cbab]                                  ; $5531: $fa $ab $cb
	cp   c                                           ; $5534: $b9
	ret  z                                           ; $5535: $c8

jr_008_5536:
	ld   a, $0f                                      ; $5536: $3e $0f
	call EnqueueAScriptOpcode                               ; $5538: $cd $97 $40

	push hl                                          ; $553b: $e5

; store b in param 1, portrait idx??
	ld   a, b                                        ; $553c: $78
	ld   [hl-], a                                    ; $553d: $32

; store c in param 2
	ld   a, c                                        ; $553e: $79
	ld   [hl-], a                                    ; $553f: $32

; clear 2 params
	xor  a                                           ; $5540: $af
	ld   [hl-], a                                    ; $5541: $32
	ld   [hl-], a                                    ; $5542: $32
	pop  hl                                          ; $5543: $e1

ScriptOpcode0f_SetPortrait_Main:
; save pointer to 1st param
	ld   a, l                                        ; $5544: $7d
	ld   [wScriptOpcodeParamPointer], a                                  ; $5545: $ea $74 $cb
	ld   a, h                                        ; $5548: $7c
	ld   [wScriptOpcodeParamPointer+1], a                                  ; $5549: $ea $75 $cb

; cache params in hram
	ld   a, [hl-]                                    ; $554c: $3a
	ldh  [hScriptOpcodeParams], a                                    ; $554d: $e0 $a0
	ld   a, [hl-]                                    ; $554f: $3a
	ldh  [hScriptOpcodeParams+1], a                                    ; $5550: $e0 $a1
	ld   a, [hl-]                                    ; $5552: $3a
	ldh  [hScriptOpcodeParams+2], a                                    ; $5553: $e0 $a2
	ld   a, [hl-]                                    ; $5555: $3a
	ldh  [hScriptOpcodeParams+3], a                                    ; $5556: $e0 $a3

; dont process opcodes after this
	xor  a                                           ; $5558: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $5559: $ea $52 $cb

; param 3 is an idx into the below table
	ldh  a, [hScriptOpcodeParams+2]                                    ; $555c: $f0 $a2
	sla  a                                           ; $555e: $cb $27
	ld   b, $00                                      ; $5560: $06 $00
	ld   c, a                                        ; $5562: $4f
	ld   hl, .table                                   ; $5563: $21 $6b $55
	add  hl, bc                                      ; $5566: $09
	ld   a, [hl+]                                    ; $5567: $2a
	ld   h, [hl]                                     ; $5568: $66
	ld   l, a                                        ; $5569: $6f
	jp   hl                                          ; $556a: $e9

.table:
	dw .thing0
	dw .thing1
	dw .thing2

.done:
; hl = pointer to the 1st param
	ld   hl, wScriptOpcodeParamPointer                                   ; $5571: $21 $74 $cb
	ld   a, [hl+]                                    ; $5574: $2a
	ld   h, [hl]                                     ; $5575: $66
	ld   l, a                                        ; $5576: $6f

; save updated params
	ldh  a, [hScriptOpcodeParams]                                    ; $5577: $f0 $a0
	ld   [hl-], a                                    ; $5579: $32
	ldh  a, [hScriptOpcodeParams+1]                                    ; $557a: $f0 $a1
	ld   [hl-], a                                    ; $557c: $32
	ldh  a, [hScriptOpcodeParams+2]                                    ; $557d: $f0 $a2
	ld   [hl-], a                                    ; $557f: $32
	ldh  a, [hScriptOpcodeParams+3]                                    ; $5580: $f0 $a3
	ld   [hl-], a                                    ; $5582: $32
	ret                                              ; $5583: $c9

.thing0:
; jump if param 4 is non-0
	ldh  a, [hScriptOpcodeParams+3]                                    ; $5584: $f0 $a3
	or   a                                           ; $5586: $b7
	jr   nz, .cont_55a2                             ; $5587: $20 $19

; load 2 palettes, idxed 1 and 2
	ld   a, $04                                      ; $5589: $3e $04
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $558b: $ea $62 $c3
	ld   a, $08                                      ; $558e: $3e $08
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5590: $ea $63 $c3

; Fade those palettes to white at 1/8th speed 
	ld   a, $03                                      ; $5593: $3e $03
	ld   b, $00                                      ; $5595: $06 $00
	ld   hl, wBGPalettes                                   ; $5597: $21 $de $c2
	ld   c, BANK(Palettes_AllWhite)                                      ; $559a: $0e $01
	ld   de, Palettes_AllWhite                                   ; $559c: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $559f: $cd $48 $07

.cont_55a2:
; jump if cbc7 == 0
	ld   a, [$cbc7]                                  ; $55a2: $fa $c7 $cb
	or   a                                           ; $55a5: $b7
	jr   z, .br_55c5                              ; $55a6: $28 $1d

;
	ld   hl, hScriptOpcodeParams+3                                   ; $55a8: $21 $a3 $ff
	ld   a, [$cb91]                                  ; $55ab: $fa $91 $cb
	or   a                                           ; $55ae: $b7
	jr   z, .cont_55b4                              ; $55af: $28 $03

	inc  [hl]                                        ; $55b1: $34
	res  0, [hl]                                     ; $55b2: $cb $86

.cont_55b4:
	ld   a, [hl]                                     ; $55b4: $7e
	inc  [hl]                                        ; $55b5: $34
	cp   $0f                                         ; $55b6: $fe $0f
	jr   nc, .br_55c5                             ; $55b8: $30 $0b

	bit  0, a                                        ; $55ba: $cb $47
	ldbc $04, $08                                   ; $55bc: $01 $08 $04
	call z, FadePalettesAndSetRangeToUpdate                                    ; $55bf: $cc $32 $08
	jp   .done                               ; $55c2: $c3 $71 $55

.br_55c5:
; Copy white palettes to palettes idxed 1 and 2
	ld   a, BANK(Palettes_AllWhite)                                      ; $55c5: $3e $01
	ld   hl, Palettes_AllWhite                                   ; $55c7: $21 $00 $70
	ld   de, wBGPalettes+1*8                                   ; $55ca: $11 $e6 $c2
	ld   bc, $0010                                   ; $55cd: $01 $10 $00
	call FarMemCopy                                       ; $55d0: $cd $b2 $09

; Have palettes 1 and 2 updated in vblank
	ldbc $04, $0b                                   ; $55d3: $01 $0b $04
	call SetBGandOBJPaletteRangesToUpdate                                       ; $55d6: $cd $aa $04

; inc param 3 (inc thing idx), and clear param 4
	ld   hl, hScriptOpcodeParams+2                                   ; $55d9: $21 $a2 $ff
	inc  [hl]                                        ; $55dc: $34
	xor  a                                           ; $55dd: $af
	ldh  [hScriptOpcodeParams+3], a                                    ; $55de: $e0 $a3
	jp   .done                               ; $55e0: $c3 $71 $55

.thing1:
;
	ld   a, [wWramBank]                                  ; $55e3: $fa $93 $c2
	push af                                          ; $55e6: $f5
	ld   a, $02                                      ; $55e7: $3e $02
	ld   [wWramBank], a                                  ; $55e9: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $55ec: $e0 $70
	
;
	ldh  a, [hScriptOpcodeParams]                                    ; $55ee: $f0 $a0
	ld   [$cbaa], a                                  ; $55f0: $ea $aa $cb
	ld   b, a                                        ; $55f3: $47
	
	ldh  a, [hScriptOpcodeParams+1]                                    ; $55f4: $f0 $a1
	ld   [$cbab], a                                  ; $55f6: $ea $ab $cb
	ld   c, a                                        ; $55f9: $4f

;
	M_FarCall Func_0a_54ba

	ld   de, $da08                                   ; $560e: $11 $08 $da
	ld   hl, wBGPalettes+1*8                                   ; $5611: $21 $e6 $c2
	ld   bc, $0010                                   ; $5614: $01 $10 $00
	call MemCopy                                       ; $5617: $cd $a9 $09

; Set BG palettes to white
	ld   hl, wBGPalettes+1*8                                   ; $561a: $21 $e6 $c2
	ld   bc, $0008                                   ; $561d: $01 $08 $00
	ld   de, $7fff                                   ; $5620: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $5623: $cd $9f $09

;
	pop  af                                          ; $5626: $f1
	ld   [wWramBank], a                                  ; $5627: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $562a: $e0 $70
	
; inc param 3 (inc thing) and clear param 4
	ld   hl, hScriptOpcodeParams+2                                   ; $562c: $21 $a2 $ff
	inc  [hl]                                        ; $562f: $34
	xor  a                                           ; $5630: $af
	ldh  [hScriptOpcodeParams+3], a                                    ; $5631: $e0 $a3
	jp   .done                               ; $5633: $c3 $71 $55

.thing2:
	ld   a, [wWramBank]                                  ; $5636: $fa $93 $c2
	push af                                          ; $5639: $f5
	ld   a, $02                                      ; $563a: $3e $02
	ld   [wWramBank], a                                  ; $563c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $563f: $e0 $70
	
; jump if param 4 is non-0
	ldh  a, [hScriptOpcodeParams+3]                                    ; $5641: $f0 $a3
	or   a                                           ; $5643: $b7
	jr   nz, .cont_565f                             ; $5644: $20 $19

; 
	ld   a, $04                                      ; $5646: $3e $04
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5648: $ea $62 $c3
	ld   a, $08                                      ; $564b: $3e $08
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $564d: $ea $63 $c3
	ld   a, $03                                      ; $5650: $3e $03
	ld   b, $00                                      ; $5652: $06 $00
	ld   hl, wBGPalettes                                   ; $5654: $21 $de $c2
	ld   c, $00                                      ; $5657: $0e $00
	ld   de, $da00                                   ; $5659: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $565c: $cd $48 $07

.cont_565f:
	ld   a, [$cbc7]                                  ; $565f: $fa $c7 $cb
	or   a                                           ; $5662: $b7
	jr   z, .br_5688                              ; $5663: $28 $23

	ld   hl, hScriptOpcodeParams+3                                   ; $5665: $21 $a3 $ff
	ld   a, [$cb91]                                  ; $5668: $fa $91 $cb
	or   a                                           ; $566b: $b7
	jr   z, .cont_5671                              ; $566c: $28 $03

	inc  [hl]                                        ; $566e: $34
	res  0, [hl]                                     ; $566f: $cb $86

.cont_5671:
	ld   a, [hl]                                     ; $5671: $7e
	inc  [hl]                                        ; $5672: $34
	cp   $0f                                         ; $5673: $fe $0f
	jr   nc, .br_5688                             ; $5675: $30 $11

	bit  0, a                                        ; $5677: $cb $47
	ld   bc, $0408                                   ; $5679: $01 $08 $04
	call z, FadePalettesAndSetRangeToUpdate                                    ; $567c: $cc $32 $08
	pop  af                                          ; $567f: $f1
	ld   [wWramBank], a                                  ; $5680: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5683: $e0 $70
	jp   .done                               ; $5685: $c3 $71 $55

.br_5688:
	ld   a, [$cbc7]                                  ; $5688: $fa $c7 $cb
	or   a                                           ; $568b: $b7
	jr   z, .cont_56a1                              ; $568c: $28 $13

	xor  a                                           ; $568e: $af
	ld   hl, $da08                                   ; $568f: $21 $08 $da
	ld   de, wBGPalettes+1*8                                   ; $5692: $11 $e6 $c2
	ld   bc, $0010                                   ; $5695: $01 $10 $00
	call FarMemCopy                                       ; $5698: $cd $b2 $09
	ld   bc, $040b                                   ; $569b: $01 $0b $04
	call SetBGandOBJPaletteRangesToUpdate                                       ; $569e: $cd $aa $04

.cont_56a1:
	pop  af                                          ; $56a1: $f1
	ld   [wWramBank], a                                  ; $56a2: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $56a5: $e0 $70
	jp   DequeueAScriptOpcode                               ; $56a7: $c3 $bc $40


ScriptOpcode10_Init:
	ld   a, $10                                      ; $56aa: $3e $10
	call EnqueueAScriptOpcode                               ; $56ac: $cd $97 $40
	push hl                                          ; $56af: $e5
	xor  a                                           ; $56b0: $af
	ld   [hl-], a                                    ; $56b1: $32
	ld   [hl-], a                                    ; $56b2: $32
	call GetNextScriptOpcodeToProcess                               ; $56b3: $cd $70 $42
	ld   [hl-], a                                    ; $56b6: $32
	push hl                                          ; $56b7: $e5
	ld   h, $00                                      ; $56b8: $26 $00
	ld   l, a                                        ; $56ba: $6f
	ld   bc, $0380                                   ; $56bb: $01 $80 $03
	add  hl, bc                                      ; $56be: $09
	ld   a, $ff                                      ; $56bf: $3e $ff

	M_FarCall SetOrUnsetFlag
	
	pop  hl                                          ; $56d5: $e1
	call GetNextScriptOpcodeToProcess                               ; $56d6: $cd $70 $42
	ld   [hl-], a                                    ; $56d9: $32
	ld   a, [$cbb1]                                  ; $56da: $fa $b1 $cb
	ld   [hl-], a                                    ; $56dd: $32
	push hl                                          ; $56de: $e5
	ld   a, $01                                      ; $56df: $3e $01
	ld   hl, $0000                                   ; $56e1: $21 $00 $00
	ld   d, h                                        ; $56e4: $54
	ld   e, l                                        ; $56e5: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $56e6: $cd $4b $2f
	pop  hl                                          ; $56e9: $e1
	ld   [hl-], a                                    ; $56ea: $32
	push hl                                          ; $56eb: $e5
	ld   a, $00                                      ; $56ec: $3e $00
	ld   hl, $0000                                   ; $56ee: $21 $00 $00
	ld   d, h                                        ; $56f1: $54
	ld   e, l                                        ; $56f2: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $56f3: $cd $4b $2f
	pop  hl                                          ; $56f6: $e1
	ld   [hl-], a                                    ; $56f7: $32
	pop  hl                                          ; $56f8: $e1
	bit  7, a                                        ; $56f9: $cb $7f
	jr   z, jr_008_56fe                              ; $56fb: $28 $01

	inc  [hl]                                        ; $56fd: $34

jr_008_56fe:
ScriptOpcode10_Main:
	ld   a, [wWramBank]                                  ; $56fe: $fa $93 $c2
	push af                                          ; $5701: $f5
	ld   a, $02                                      ; $5702: $3e $02
	ld   [wWramBank], a                                  ; $5704: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5707: $e0 $70
	ld   bc, $573d                                   ; $5709: $01 $3d $57
	push bc                                          ; $570c: $c5
	ld   a, l                                        ; $570d: $7d
	ld   [wScriptOpcodeParamPointer], a                                  ; $570e: $ea $74 $cb
	ld   a, h                                        ; $5711: $7c
	ld   [wScriptOpcodeParamPointer+1], a                                  ; $5712: $ea $75 $cb
	ld   a, [hl-]                                    ; $5715: $3a
	ldh  [hScriptOpcodeParams], a                                    ; $5716: $e0 $a0
	ld   a, [hl-]                                    ; $5718: $3a
	ldh  [hScriptOpcodeParams+1], a                                    ; $5719: $e0 $a1
	ld   a, [hl-]                                    ; $571b: $3a
	ldh  [hScriptOpcodeParams+2], a                                    ; $571c: $e0 $a2
	ld   a, [hl-]                                    ; $571e: $3a
	ldh  [hScriptOpcodeParams+3], a                                    ; $571f: $e0 $a3
	ld   a, [hl-]                                    ; $5721: $3a
	ldh  [hScriptOpcodeParams+4], a                                    ; $5722: $e0 $a4
	ld   a, [hl-]                                    ; $5724: $3a
	ldh  [$a5], a                                    ; $5725: $e0 $a5
	ld   a, [hl-]                                    ; $5727: $3a
	ldh  [$a6], a                                    ; $5728: $e0 $a6
	xor  a                                           ; $572a: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $572b: $ea $52 $cb
	ldh  a, [hScriptOpcodeParams]                                    ; $572e: $f0 $a0
	sla  a                                           ; $5730: $cb $27
	ld   b, $00                                      ; $5732: $06 $00
	ld   c, a                                        ; $5734: $4f
	ld   hl, $5744                                   ; $5735: $21 $44 $57
	add  hl, bc                                      ; $5738: $09
	ld   a, [hl+]                                    ; $5739: $2a
	ld   h, [hl]                                     ; $573a: $66
	ld   l, a                                        ; $573b: $6f
	jp   hl                                          ; $573c: $e9


	pop  af                                          ; $573d: $f1
	ld   [wWramBank], a                                  ; $573e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5741: $e0 $70
	ret                                              ; $5743: $c9


	ld   l, d                                        ; $5744: $6a
	ld   d, a                                        ; $5745: $57
	ld   [$c957], a                                  ; $5746: $ea $57 $c9
	ld   e, b                                        ; $5749: $58
	ldh  a, [$59]                                    ; $574a: $f0 $59
	ld   bc, $215a                                   ; $574c: $01 $5a $21
	ld   [hl], h                                     ; $574f: $74
	sra  d                                           ; $5750: $cb $2a
	ld   h, [hl]                                     ; $5752: $66
	ld   l, a                                        ; $5753: $6f
	ldh  a, [hScriptOpcodeParams]                                    ; $5754: $f0 $a0
	ld   [hl-], a                                    ; $5756: $32
	ldh  a, [hScriptOpcodeParams+1]                                    ; $5757: $f0 $a1
	ld   [hl-], a                                    ; $5759: $32
	ldh  a, [hScriptOpcodeParams+2]                                    ; $575a: $f0 $a2
	ld   [hl-], a                                    ; $575c: $32
	ldh  a, [hScriptOpcodeParams+3]                                    ; $575d: $f0 $a3
	ld   [hl-], a                                    ; $575f: $32
	ldh  a, [hScriptOpcodeParams+4]                                    ; $5760: $f0 $a4
	ld   [hl-], a                                    ; $5762: $32
	ldh  a, [$a5]                                    ; $5763: $f0 $a5
	ld   [hl-], a                                    ; $5765: $32
	ldh  a, [$a6]                                    ; $5766: $f0 $a6
	ld   [hl-], a                                    ; $5768: $32
	ret                                              ; $5769: $c9


	ldh  a, [hScriptOpcodeParams+1]                                    ; $576a: $f0 $a1
	or   a                                           ; $576c: $b7
	jr   nz, jr_008_5788                             ; $576d: $20 $19

	ld   a, $18                                      ; $576f: $3e $18
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5771: $ea $62 $c3
	ld   a, $1c                                      ; $5774: $3e $1c
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5776: $ea $63 $c3
	ld   a, $03                                      ; $5779: $3e $03
	ld   b, $00                                      ; $577b: $06 $00
	ld   hl, wBGPalettes                                   ; $577d: $21 $de $c2
	ld   c, $01                                      ; $5780: $0e $01
	ld   de, $7000                                   ; $5782: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5785: $cd $48 $07

jr_008_5788:
	ld   hl, hScriptOpcodeParams+1                                   ; $5788: $21 $a1 $ff
	ld   a, [$cb91]                                  ; $578b: $fa $91 $cb
	or   a                                           ; $578e: $b7
	jr   z, jr_008_5794                              ; $578f: $28 $03

	inc  [hl]                                        ; $5791: $34
	res  0, [hl]                                     ; $5792: $cb $86

jr_008_5794:
	ld   a, [hl]                                     ; $5794: $7e
	inc  [hl]                                        ; $5795: $34
	cp   $0f                                         ; $5796: $fe $0f
	jr   nc, jr_008_57a5                             ; $5798: $30 $0b

	bit  0, a                                        ; $579a: $cb $47
	ld   bc, $181c                                   ; $579c: $01 $1c $18
	call z, FadePalettesAndSetRangeToUpdate                                    ; $579f: $cc $32 $08
	jp   $574e                                       ; $57a2: $c3 $4e $57


jr_008_57a5:
	call Call_008_413a                               ; $57a5: $cd $3a $41
	ld   a, [$cba6]                                  ; $57a8: $fa $a6 $cb
	ld   l, a                                        ; $57ab: $6f
	ld   h, $00                                      ; $57ac: $26 $00

	M_FarCall Call_00a_5438
	
	ld   c, $80                                      ; $57c2: $0e $80
	ld   de, $9800                                   ; $57c4: $11 $00 $98
	ld   a, $02                                      ; $57c7: $3e $02
	ld   hl, $d140                                   ; $57c9: $21 $40 $d1
	ld   b, $14                                      ; $57cc: $06 $14
	call EnqueueHDMATransfer                                       ; $57ce: $cd $7c $02
	ld   c, $81                                      ; $57d1: $0e $81
	ld   de, $9800                                   ; $57d3: $11 $00 $98
	ld   a, $02                                      ; $57d6: $3e $02
	ld   hl, $d000                                   ; $57d8: $21 $00 $d0
	ld   b, $14                                      ; $57db: $06 $14
	call EnqueueHDMATransfer                                       ; $57dd: $cd $7c $02
	ld   hl, hScriptOpcodeParams                                   ; $57e0: $21 $a0 $ff
	inc  [hl]                                        ; $57e3: $34
	xor  a                                           ; $57e4: $af
	ldh  [hScriptOpcodeParams+1], a                                    ; $57e5: $e0 $a1
	jp   $574e                                       ; $57e7: $c3 $4e $57


	ld   hl, hScriptOpcodeParams+1                                   ; $57ea: $21 $a1 $ff
	ld   a, [hl]                                     ; $57ed: $7e
	inc  [hl]                                        ; $57ee: $34
	dec  a                                           ; $57ef: $3d
	jr   z, jr_008_5835                              ; $57f0: $28 $43

	dec  a                                           ; $57f2: $3d
	jr   z, jr_008_5846                              ; $57f3: $28 $51

	dec  a                                           ; $57f5: $3d
	jp   z, Jump_008_5883                            ; $57f6: $ca $83 $58

	ld   a, [wWramBank]                                  ; $57f9: $fa $93 $c2
	push af                                          ; $57fc: $f5
	ld   a, $07                                      ; $57fd: $3e $07
	ld   [wWramBank], a                                  ; $57ff: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5802: $e0 $70
	ldh  a, [hScriptOpcodeParams+2]                                    ; $5804: $f0 $a2
	ld   l, a                                        ; $5806: $6f
	ld   h, $00                                      ; $5807: $26 $00
	add  hl, hl                                      ; $5809: $29
	add  hl, hl                                      ; $580a: $29
	add  hl, hl                                      ; $580b: $29
	add  hl, hl                                      ; $580c: $29
	ld   de, $5c23                                   ; $580d: $11 $23 $5c
	add  hl, de                                      ; $5810: $19
	ld   a, $0d                                      ; $5811: $3e $0d
	call FarGetAddrBank                                       ; $5813: $cd $09 $0b
	ld   d, h                                        ; $5816: $54
	ld   e, l                                        ; $5817: $5d
	ld   hl, $d800                                   ; $5818: $21 $00 $d8
	call RLEXorCopy                                       ; $581b: $cd $d2 $09
	pop  af                                          ; $581e: $f1
	ld   [wWramBank], a                                  ; $581f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5822: $e0 $70
	ld   c, $80                                      ; $5824: $0e $80
	ld   de, $8900                                   ; $5826: $11 $00 $89
	ld   a, $07                                      ; $5829: $3e $07
	ld   hl, $d800                                   ; $582b: $21 $00 $d8
	ld   b, $30                                      ; $582e: $06 $30
	call EnqueueHDMATransfer                                       ; $5830: $cd $7c $02
	jr   jr_008_5880                                 ; $5833: $18 $4b

jr_008_5835:
	ld   c, $80                                      ; $5835: $0e $80
	ld   de, $8c00                                   ; $5837: $11 $00 $8c
	ld   a, $07                                      ; $583a: $3e $07
	ld   hl, $db00                                   ; $583c: $21 $00 $db
	ld   b, $40                                      ; $583f: $06 $40
	call EnqueueHDMATransfer                                       ; $5841: $cd $7c $02
	jr   jr_008_5880                                 ; $5844: $18 $3a

jr_008_5846:
	ld   a, [wWramBank]                                  ; $5846: $fa $93 $c2
	push af                                          ; $5849: $f5
	ld   a, $07                                      ; $584a: $3e $07
	ld   [wWramBank], a                                  ; $584c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $584f: $e0 $70
	ld   a, $a3                                      ; $5851: $3e $a3
	ld   hl, $d000                                   ; $5853: $21 $00 $d0
	ld   de, $5d46                                   ; $5856: $11 $46 $5d
	call RLEXorCopy                                       ; $5859: $cd $d2 $09
	pop  af                                          ; $585c: $f1
	ld   [wWramBank], a                                  ; $585d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5860: $e0 $70
	ld   c, $80                                      ; $5862: $0e $80
	ld   de, $8800                                   ; $5864: $11 $00 $88
	ld   a, $07                                      ; $5867: $3e $07
	ld   hl, $d000                                   ; $5869: $21 $00 $d0
	ld   b, $10                                      ; $586c: $06 $10
	call EnqueueHDMATransfer                                       ; $586e: $cd $7c $02
	ld   c, $81                                      ; $5871: $0e $81
	ld   de, $8200                                   ; $5873: $11 $00 $82
	ld   a, $07                                      ; $5876: $3e $07
	ld   hl, $d000                                   ; $5878: $21 $00 $d0
	ld   b, $20                                      ; $587b: $06 $20
	call EnqueueHDMATransfer                                       ; $587d: $cd $7c $02

jr_008_5880:
	jp   $574e                                       ; $5880: $c3 $4e $57


Jump_008_5883:
	ldh  a, [hScriptOpcodeParams+2]                                    ; $5883: $f0 $a2
	ld   l, a                                        ; $5885: $6f
	ld   h, $00                                      ; $5886: $26 $00
	add  hl, hl                                      ; $5888: $29
	add  hl, hl                                      ; $5889: $29
	add  hl, hl                                      ; $588a: $29
	add  hl, hl                                      ; $588b: $29
	ld   de, $5c26                                   ; $588c: $11 $26 $5c
	add  hl, de                                      ; $588f: $19
	ld   a, $0d                                      ; $5890: $3e $0d
	call FarGetAddrBank                                       ; $5892: $cd $09 $0b
	ld   de, $c30e                                   ; $5895: $11 $0e $c3
	ld   bc, $0038                                   ; $5898: $01 $38 $00
	call FarMemCopy                                       ; $589b: $cd $b2 $09
	ld   bc, $1833                                   ; $589e: $01 $33 $18
	call SetBGandOBJPaletteRangesToUpdate                                       ; $58a1: $cd $aa $04
	ld   a, $08                                      ; $58a4: $3e $08
	ld   hl, $58c1                                   ; $58a6: $21 $c1 $58
	ld   de, $c30e                                   ; $58a9: $11 $0e $c3
	ld   bc, $0008                                   ; $58ac: $01 $08 $00
	call FarMemCopy                                       ; $58af: $cd $b2 $09
	ld   bc, $181b                                   ; $58b2: $01 $1b $18
	call SetBGandOBJPaletteRangesToUpdate                                       ; $58b5: $cd $aa $04
	ld   hl, hScriptOpcodeParams                                   ; $58b8: $21 $a0 $ff
	inc  [hl]                                        ; $58bb: $34
	xor  a                                           ; $58bc: $af
	ldh  [hScriptOpcodeParams+1], a                                    ; $58bd: $e0 $a1
	jr   jr_008_5880                                 ; $58bf: $18 $bf

	rst  $38                                         ; $58c1: $ff
	ld   a, a                                        ; $58c2: $7f
	db   $fc                                         ; $58c3: $fc
	ld   [bc], a                                     ; $58c4: $02
	rst  $38                                         ; $58c5: $ff
	ld   a, a                                        ; $58c6: $7f
	nop                                              ; $58c7: $00
	nop                                              ; $58c8: $00
	ld   bc, $58de                                   ; $58c9: $01 $de $58
	push bc                                          ; $58cc: $c5
	ld   hl, hScriptOpcodeParams+1                                   ; $58cd: $21 $a1 $ff
	ld   b, $00                                      ; $58d0: $06 $00
	ld   c, [hl]                                     ; $58d2: $4e
	inc  [hl]                                        ; $58d3: $34
	sla  c                                           ; $58d4: $cb $21
	ld   hl, $58e1                                   ; $58d6: $21 $e1 $58
	add  hl, bc                                      ; $58d9: $09
	ld   a, [hl+]                                    ; $58da: $2a
	ld   h, [hl]                                     ; $58db: $66
	ld   l, a                                        ; $58dc: $6f
	jp   hl                                          ; $58dd: $e9


	jp   $574e                                       ; $58de: $c3 $4e $57


	db   $ed                                         ; $58e1: $ed
	ld   e, b                                        ; $58e2: $58
	ld   a, [hl+]                                    ; $58e3: $2a
	ld   e, c                                        ; $58e4: $59
	ld   a, [hl+]                                    ; $58e5: $2a
	ld   e, c                                        ; $58e6: $59
	ld   a, [hl+]                                    ; $58e7: $2a
	ld   e, c                                        ; $58e8: $59
	ld   a, [hl+]                                    ; $58e9: $2a
	ld   e, c                                        ; $58ea: $59
	dec  hl                                          ; $58eb: $2b
	ld   e, c                                        ; $58ec: $59
	ld   a, $23                                      ; $58ed: $3e $23
	call Call_008_4334                               ; $58ef: $cd $34 $43
	ldh  a, [$a5]                                    ; $58f2: $f0 $a5
	call StartAnimatingAnimatedSpriteSpec                                       ; $58f4: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $58f7: $cd $76 $30
	ld   bc, $5028                                   ; $58fa: $01 $28 $50
	ld   de, $7762                                   ; $58fd: $11 $62 $77
	ld   a, $1a                                      ; $5900: $3e $1a

	M_FarCall LoadNewAnimatedSpriteSpecDetails
	
	ld   a, $97                                      ; $5916: $3e $97
	ld   hl, $7ff8                                   ; $5918: $21 $f8 $7f
	ld   de, $c34e                                   ; $591b: $11 $4e $c3
	ld   bc, $0008                                   ; $591e: $01 $08 $00
	call FarMemCopy                                       ; $5921: $cd $b2 $09
	ld   bc, $383b                                   ; $5924: $01 $3b $38
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5927: $cd $aa $04
	ret                                              ; $592a: $c9


	ld   de, $d480                                   ; $592b: $11 $80 $d4
	ld   hl, $d140                                   ; $592e: $21 $40 $d1
	ld   bc, $0140                                   ; $5931: $01 $40 $01
	call MemCopy                                       ; $5934: $cd $a9 $09
	ld   de, $d340                                   ; $5937: $11 $40 $d3
	ld   hl, $d000                                   ; $593a: $21 $00 $d0
	ld   bc, $0140                                   ; $593d: $01 $40 $01
	call MemCopy                                       ; $5940: $cd $a9 $09
	ldh  a, [$a5]                                    ; $5943: $f0 $a5
	call Func_3006                                       ; $5945: $cd $06 $30
	ld   a, $a3                                      ; $5948: $3e $a3
	ld   de, $644c                                   ; $594a: $11 $4c $64
	ld   hl, $d366                                   ; $594d: $21 $66 $d3
	ld   bc, $0808                                   ; $5950: $01 $08 $08
	call FarCopyLayout                                       ; $5953: $cd $2c $0b
	ld   hl, $d4a6                                   ; $5956: $21 $a6 $d4
	call FarCopyLayout                                       ; $5959: $cd $2c $0b
	ldh  a, [hScriptOpcodeParams+2]                                    ; $595c: $f0 $a2
	ld   l, a                                        ; $595e: $6f
	ld   h, $00                                      ; $595f: $26 $00
	add  hl, hl                                      ; $5961: $29
	add  hl, hl                                      ; $5962: $29
	add  hl, hl                                      ; $5963: $29
	add  hl, hl                                      ; $5964: $29
	ld   de, $5c29                                   ; $5965: $11 $29 $5c
	add  hl, de                                      ; $5968: $19
	ld   a, $0d                                      ; $5969: $3e $0d
	call FarGetAddrBank                                       ; $596b: $cd $09 $0b
	ld   d, h                                        ; $596e: $54
	ld   e, l                                        ; $596f: $5d
	ld   hl, $d387                                   ; $5970: $21 $87 $d3
	ld   bc, $0606                                   ; $5973: $01 $06 $06
	call FarCopyLayout                                       ; $5976: $cd $2c $0b
	ld   hl, $d4c7                                   ; $5979: $21 $c7 $d4
	call FarCopyLayout                                       ; $597c: $cd $2c $0b
	ld   c, $80                                      ; $597f: $0e $80
	ld   de, $9800                                   ; $5981: $11 $00 $98
	ld   a, $02                                      ; $5984: $3e $02
	ld   hl, $d480                                   ; $5986: $21 $80 $d4
	ld   b, $14                                      ; $5989: $06 $14
	call EnqueueHDMATransfer                                       ; $598b: $cd $7c $02
	ld   c, $81                                      ; $598e: $0e $81
	ld   de, $9800                                   ; $5990: $11 $00 $98
	ld   a, $02                                      ; $5993: $3e $02
	ld   hl, $d340                                   ; $5995: $21 $40 $d3
	ld   b, $14                                      ; $5998: $06 $14
	call EnqueueHDMATransfer                                       ; $599a: $cd $7c $02
	ldh  a, [hScriptOpcodeParams+2]                                    ; $599d: $f0 $a2
	ld   l, a                                        ; $599f: $6f
	ld   h, $00                                      ; $59a0: $26 $00
	add  hl, hl                                      ; $59a2: $29
	add  hl, hl                                      ; $59a3: $29
	add  hl, hl                                      ; $59a4: $29
	add  hl, hl                                      ; $59a5: $29
	ld   de, $5c2c                                   ; $59a6: $11 $2c $5c
	add  hl, de                                      ; $59a9: $19
	ld   a, $0d                                      ; $59aa: $3e $0d
	call FarGetByte                                       ; $59ac: $cd $cf $0a
	ld   bc, $3810                                   ; $59af: $01 $10 $38
	ld   d, $09                                      ; $59b2: $16 $09
	ld   e, a                                        ; $59b4: $5f
	ldh  a, [$a6]                                    ; $59b5: $f0 $a6
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $59b7: $cd $76 $30

	M_FarCall Func_01_403c
	
	ld   a, e                                        ; $59ce: $7b
	or   a                                           ; $59cf: $b7
	ldh  a, [$a6]                                    ; $59d0: $f0 $a6
	call nz, StartAnimatingAnimatedSpriteSpec                                   ; $59d2: $c4 $14 $30
	ldh  a, [hScriptOpcodeParams+3]                                    ; $59d5: $f0 $a3
	or   a                                           ; $59d7: $b7
	jr   z, jr_008_59e8                              ; $59d8: $28 $0e

	ld   a, SO_00                                      ; $59da: $3e $00
	call EnqueueAScriptOpcode                               ; $59dc: $cd $97 $40
	ld   hl, hScriptOpcodeParams                                   ; $59df: $21 $a0 $ff
	inc  [hl]                                        ; $59e2: $34
	inc  [hl]                                        ; $59e3: $34
	xor  a                                           ; $59e4: $af
	ldh  [hScriptOpcodeParams+1], a                                    ; $59e5: $e0 $a1
	ret                                              ; $59e7: $c9


jr_008_59e8:
	ld   hl, hScriptOpcodeParams                                   ; $59e8: $21 $a0 $ff
	inc  [hl]                                        ; $59eb: $34
	xor  a                                           ; $59ec: $af
	ldh  [hScriptOpcodeParams+1], a                                    ; $59ed: $e0 $a1
	ret                                              ; $59ef: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $59f0: $fa $10 $c2
	bit  0, a                                        ; $59f3: $cb $47
	jr   z, jr_008_59fe                              ; $59f5: $28 $07

	ld   hl, hScriptOpcodeParams                                   ; $59f7: $21 $a0 $ff
	inc  [hl]                                        ; $59fa: $34
	xor  a                                           ; $59fb: $af
	ldh  [hScriptOpcodeParams+1], a                                    ; $59fc: $e0 $a1

jr_008_59fe:
	jp   $574e                                       ; $59fe: $c3 $4e $57


	ld   hl, hScriptOpcodeParams+1                                   ; $5a01: $21 $a1 $ff
	ld   b, $00                                      ; $5a04: $06 $00
	ld   c, [hl]                                     ; $5a06: $4e
	inc  [hl]                                        ; $5a07: $34
	sla  c                                           ; $5a08: $cb $21
	ld   hl, $5a12                                   ; $5a0a: $21 $12 $5a
	add  hl, bc                                      ; $5a0d: $09
	ld   a, [hl+]                                    ; $5a0e: $2a
	ld   h, [hl]                                     ; $5a0f: $66
	ld   l, a                                        ; $5a10: $6f
	jp   hl                                          ; $5a11: $e9


	ld   e, $5a                                      ; $5a12: $1e $5a
	ld   a, e                                        ; $5a14: $7b
	ld   e, d                                        ; $5a15: $5a
	ld   a, e                                        ; $5a16: $7b
	ld   e, d                                        ; $5a17: $5a
	ld   a, e                                        ; $5a18: $7b
	ld   e, d                                        ; $5a19: $5a
	ld   a, e                                        ; $5a1a: $7b
	ld   e, d                                        ; $5a1b: $5a
	ld   a, [hl]                                     ; $5a1c: $7e
	ld   e, d                                        ; $5a1d: $5a
	ld   a, $24                                      ; $5a1e: $3e $24
	call Call_008_4334                               ; $5a20: $cd $34 $43
	ld   c, $80                                      ; $5a23: $0e $80
	ld   de, $9800                                   ; $5a25: $11 $00 $98
	ld   a, $02                                      ; $5a28: $3e $02
	ld   hl, $d140                                   ; $5a2a: $21 $40 $d1
	ld   b, $14                                      ; $5a2d: $06 $14
	call EnqueueHDMATransfer                                       ; $5a2f: $cd $7c $02
	ld   c, $81                                      ; $5a32: $0e $81
	ld   de, $9800                                   ; $5a34: $11 $00 $98
	ld   a, $02                                      ; $5a37: $3e $02
	ld   hl, $d000                                   ; $5a39: $21 $00 $d0
	ld   b, $14                                      ; $5a3c: $06 $14
	call EnqueueHDMATransfer                                       ; $5a3e: $cd $7c $02
	ld   a, $97                                      ; $5a41: $3e $97
	ld   hl, $7ff8                                   ; $5a43: $21 $f8 $7f
	ld   de, $c34e                                   ; $5a46: $11 $4e $c3
	ld   bc, $0008                                   ; $5a49: $01 $08 $00
	call FarMemCopy                                       ; $5a4c: $cd $b2 $09
	ld   bc, $383b                                   ; $5a4f: $01 $3b $38
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5a52: $cd $aa $04
	ldh  a, [$a5]                                    ; $5a55: $f0 $a5
	call StartAnimatingAnimatedSpriteSpec                                       ; $5a57: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5a5a: $cd $76 $30
	ld   de, $7762                                   ; $5a5d: $11 $62 $77
	ld   a, $1b                                      ; $5a60: $3e $1b

	M_FarCall Func_01_411c
	
	ldh  a, [$a6]                                    ; $5a76: $f0 $a6
	call Func_2fbb                                       ; $5a78: $cd $bb $2f
	jp   $574e                                       ; $5a7b: $c3 $4e $57


	call DequeueAScriptOpcode                               ; $5a7e: $cd $bc $40
	ldh  a, [$a5]                                    ; $5a81: $f0 $a5
	call Func_2fbb                                       ; $5a83: $cd $bb $2f
	ldh  a, [hScriptOpcodeParams+4]                                    ; $5a86: $f0 $a4
	bit  7, a                                        ; $5a88: $cb $7f
	ret  nz                                          ; $5a8a: $c0

	or   a                                           ; $5a8b: $b7
	jr   nz, jr_008_5a9f                             ; $5a8c: $20 $11

	ld   a, SO_SET_CHAR_ON_SCREEN                                      ; $5a8e: $3e $0d
	call EnqueueAScriptOpcode                               ; $5a90: $cd $97 $40
	ld   a, [$cba8]                                  ; $5a93: $fa $a8 $cb
	ld   [hl-], a                                    ; $5a96: $32
	ld   a, [$cba9]                                  ; $5a97: $fa $a9 $cb
	ld   [hl-], a                                    ; $5a9a: $32
	xor  a                                           ; $5a9b: $af
	ld   [hl-], a                                    ; $5a9c: $32
	ld   [hl-], a                                    ; $5a9d: $32
	ret                                              ; $5a9e: $c9


jr_008_5a9f:
	ld   a, SO_1b                                      ; $5a9f: $3e $1b
	call EnqueueAScriptOpcode                               ; $5aa1: $cd $97 $40
	ld   a, [$cbae]                                  ; $5aa4: $fa $ae $cb
	ld   [hl-], a                                    ; $5aa7: $32
	xor  a                                           ; $5aa8: $af
	ld   [hl-], a                                    ; $5aa9: $32
	ld   [hl-], a                                    ; $5aaa: $32
	ret                                              ; $5aab: $c9


ScriptOpcode11_Init:
ScriptOpcode11_Main:
	ld   hl, $cba7                                   ; $5aac: $21 $a7 $cb
	call GetNextScriptOpcodeToProcess                               ; $5aaf: $cd $70 $42
	or   a                                           ; $5ab2: $b7
	jr   z, jr_008_5ab8                              ; $5ab3: $28 $03

	set  0, [hl]                                     ; $5ab5: $cb $c6
	ret                                              ; $5ab7: $c9


jr_008_5ab8:
	res  0, [hl]                                     ; $5ab8: $cb $86
	ret                                              ; $5aba: $c9


ScriptOpcode12_Init:
ScriptOpcode12_Main:
	ld   hl, $cba7                                   ; $5abb: $21 $a7 $cb
	call GetNextScriptOpcodeToProcess                               ; $5abe: $cd $70 $42
	or   a                                           ; $5ac1: $b7
	jr   z, jr_008_5ac7                              ; $5ac2: $28 $03

	set  1, [hl]                                     ; $5ac4: $cb $ce
	ret                                              ; $5ac6: $c9


jr_008_5ac7:
	res  1, [hl]                                     ; $5ac7: $cb $8e
	ret                                              ; $5ac9: $c9


ScriptOpcode13_Init:
	call GetNextScriptOpcodeToProcess                               ; $5aca: $cd $70 $42
	bit  7, a                                        ; $5acd: $cb $7f
	jr   nz, jr_008_5adf                             ; $5acf: $20 $0e

	ld   [$cbc8], a                                  ; $5ad1: $ea $c8 $cb
	ld   b, a                                        ; $5ad4: $47
	ld   a, [$cbc7]                                  ; $5ad5: $fa $c7 $cb
	or   a                                           ; $5ad8: $b7
	ret  z                                           ; $5ad9: $c8

	ld   a, b                                        ; $5ada: $78
	call PlaySound                                       ; $5adb: $cd $92 $1a
	ret                                              ; $5ade: $c9

jr_008_5adf:
	res  7, a                                        ; $5adf: $cb $bf
	push af                                          ; $5ae1: $f5
	ld   a, $13                                      ; $5ae2: $3e $13
	call EnqueueAScriptOpcode                               ; $5ae4: $cd $97 $40
	pop  af                                          ; $5ae7: $f1
	ld   [hl-], a                                    ; $5ae8: $32
	xor  a                                           ; $5ae9: $af
	ld   [hl+], a                                    ; $5aea: $22

ScriptOpcode13_Main:
	xor  a                                           ; $5aeb: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $5aec: $ea $52 $cb
	ld   a, [hl-]                                    ; $5aef: $3a
	ld   b, a                                        ; $5af0: $47
	ld   a, [hl]                                     ; $5af1: $7e
	inc  [hl]                                        ; $5af2: $34
	cp   $70                                         ; $5af3: $fe $70
	jp   nc, DequeueAScriptOpcode                           ; $5af5: $d2 $bc $40

	push hl                                          ; $5af8: $e5
	srl  a                                           ; $5af9: $cb $3f
	srl  a                                           ; $5afb: $cb $3f
	srl  a                                           ; $5afd: $cb $3f
	ld   h, $00                                      ; $5aff: $26 $00
	ld   l, a                                        ; $5b01: $6f
	ld   de, .table                                   ; $5b02: $11 $1e $5b
	add  hl, de                                      ; $5b05: $19
	ld   a, [hl]                                     ; $5b06: $7e
	pop  hl                                          ; $5b07: $e1
	or   a                                           ; $5b08: $b7
	jr   nz, .safeSetAudVol                             ; $5b09: $20 $0b

	ld   a, b                                        ; $5b0b: $78
	ld   [$cbc8], a                                  ; $5b0c: $ea $c8 $cb
	call PlaySound                                       ; $5b0f: $cd $92 $1a
	or   a                                           ; $5b12: $b7
	jr   z, .smth0                              ; $5b13: $28 $05

	xor  a                                           ; $5b15: $af

.safeSetAudVol:
	call SafeSetAudVolForMultipleChannels                                       ; $5b16: $cd $e0 $1c
	ret                                              ; $5b19: $c9

.smth0:
	ld   a, $6f                                      ; $5b1a: $3e $6f
	ld   [hl], a                                     ; $5b1c: $77
	ret                                              ; $5b1d: $c9

.table:
	ld   b, $05                                      ; $5b1e: $06 $05
	inc  b                                           ; $5b20: $04
	inc  bc                                          ; $5b21: $03
	ld   [bc], a                                     ; $5b22: $02
	ld   bc, $0100                                   ; $5b23: $01 $00 $01
	ld   [bc], a                                     ; $5b26: $02
	inc  bc                                          ; $5b27: $03
	inc  b                                           ; $5b28: $04
	dec  b                                           ; $5b29: $05
	ld   b, $07                                      ; $5b2a: $06 $07


ScriptOpcode14_Init:
	xor  a                                           ; $5b2c: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $5b2d: $ea $52 $cb
	ld   [$cbc5], a                                  ; $5b30: $ea $c5 $cb
	call GetNextScriptOpcodeToProcess                               ; $5b33: $cd $70 $42
	ld   [$cbc4], a                                  ; $5b36: $ea $c4 $cb
	call GetNextScriptOpcodeToProcess                               ; $5b39: $cd $70 $42
	ld   [$cbc6], a                                  ; $5b3c: $ea $c6 $cb
	or   a                                           ; $5b3f: $b7
	jr   z, jr_008_5b5c                              ; $5b40: $28 $1a

	ld   hl, $5b62                                   ; $5b42: $21 $62 $5b
	ld   a, [$cbc4]                                  ; $5b45: $fa $c4 $cb
	ld   b, a                                        ; $5b48: $47

jr_008_5b49:
	ld   a, [hl+]                                    ; $5b49: $2a
	or   a                                           ; $5b4a: $b7
	ret  z                                           ; $5b4b: $c8

	cp   b                                           ; $5b4c: $b8
	jr   nz, jr_008_5b59                             ; $5b4d: $20 $0a

	ld   a, [hl+]                                    ; $5b4f: $2a
	push af                                          ; $5b50: $f5
	ld   a, $14                                      ; $5b51: $3e $14
	call EnqueueAScriptOpcode                               ; $5b53: $cd $97 $40
	pop  af                                          ; $5b56: $f1
	ld   [hl], a                                     ; $5b57: $77
	ret                                              ; $5b58: $c9


jr_008_5b59:
	inc  hl                                          ; $5b59: $23
	jr   jr_008_5b49                                 ; $5b5a: $18 $ed

jr_008_5b5c:
	ld   a, $ff                                      ; $5b5c: $3e $ff
	ld   [$cbc5], a                                  ; $5b5e: $ea $c5 $cb
	ret                                              ; $5b61: $c9


	ld   b, $2d                                      ; $5b62: $06 $2d
	ld   a, [bc]                                     ; $5b64: $0a
	inc  a                                           ; $5b65: $3c
	nop                                              ; $5b66: $00


ScriptOpcode14_Main:
	xor  a                                           ; $5b67: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $5b68: $ea $52 $cb
	dec  [hl]                                        ; $5b6b: $35
	jp   z, DequeueAScriptOpcode                            ; $5b6c: $ca $bc $40

	ret                                              ; $5b6f: $c9


ScriptOpcode15_Init:
	ld   a, $15                                      ; $5b70: $3e $15
	call EnqueueAScriptOpcode                               ; $5b72: $cd $97 $40
	xor  a                                           ; $5b75: $af
	ld   [hl-], a                                    ; $5b76: $32
	ld   [hl], a                                     ; $5b77: $77
	ld   a, SO_SET_DELAY                                      ; $5b78: $3e $09
	call EnqueueAScriptOpcode                               ; $5b7a: $cd $97 $40
	ld   a, $0f                                      ; $5b7d: $3e $0f
	ld   [hl], a                                     ; $5b7f: $77
	ret                                              ; $5b80: $c9


ScriptOpcode15_Main:
	xor  a                                           ; $5b81: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $5b82: $ea $52 $cb
	ld   a, [hl]                                     ; $5b85: $7e
	or   a                                           ; $5b86: $b7
	jr   z, jr_008_5bae                              ; $5b87: $28 $25

	dec  a                                           ; $5b89: $3d
	jr   z, jr_008_5bcf                              ; $5b8a: $28 $43

	call DequeueAScriptOpcode                               ; $5b8c: $cd $bc $40
	call GetNextScriptOpcodeToProcess                               ; $5b8f: $cd $70 $42
	cp   $0d                                         ; $5b92: $fe $0d
	ret  nc                                          ; $5b94: $d0

	ld   h, $00                                      ; $5b95: $26 $00
	ld   l, a                                        ; $5b97: $6f
	ld   bc, $5ba1                                   ; $5b98: $01 $a1 $5b
	add  hl, bc                                      ; $5b9b: $09
	ld   a, [hl]                                     ; $5b9c: $7e
	call $1b64                                       ; $5b9d: $cd $64 $1b
	ret                                              ; $5ba0: $c9


	nop                                              ; $5ba1: $00
	ld   bc, $0302                                   ; $5ba2: $01 $02 $03
	inc  b                                           ; $5ba5: $04
	dec  b                                           ; $5ba6: $05
	ld   b, $30                                      ; $5ba7: $06 $30
	inc  a                                           ; $5ba9: $3c
	ld   c, b                                        ; $5baa: $48
	ld   d, h                                        ; $5bab: $54
	ld   h, b                                        ; $5bac: $60
	ld   l, h                                        ; $5bad: $6c

jr_008_5bae:
	dec  hl                                          ; $5bae: $2b
	ld   a, [hl]                                     ; $5baf: $7e
	inc  [hl]                                        ; $5bb0: $34
	cp   $b4                                         ; $5bb1: $fe $b4
	jr   nc, jr_008_5bc5                             ; $5bb3: $30 $10

	ld   a, [$cbb1]                                  ; $5bb5: $fa $b1 $cb
	bit  7, a                                        ; $5bb8: $cb $7f
	jr   nz, jr_008_5bc5                             ; $5bba: $20 $09

	ld   a, [$cbc9]                                  ; $5bbc: $fa $c9 $cb
	ld   b, a                                        ; $5bbf: $47
	ld   a, [$cbcd]                                  ; $5bc0: $fa $cd $cb
	or   b                                           ; $5bc3: $b0
	ret  nz                                          ; $5bc4: $c0

jr_008_5bc5:
	xor  a                                           ; $5bc5: $af
	ld   [$cbc9], a                                  ; $5bc6: $ea $c9 $cb
	ld   [$cbcd], a                                  ; $5bc9: $ea $cd $cb
	inc  hl                                          ; $5bcc: $23
	inc  [hl]                                        ; $5bcd: $34
	ret                                              ; $5bce: $c9


jr_008_5bcf:
	inc  [hl]                                        ; $5bcf: $34
	ret                                              ; $5bd0: $c9


ScriptOpcode16_Init:
	call GetNextScriptOpcodeToProcess                               ; $5bd1: $cd $70 $42
	push af                                          ; $5bd4: $f5
	ld   h, $00                                      ; $5bd5: $26 $00
	ld   l, a                                        ; $5bd7: $6f
	ld   bc, $0300                                   ; $5bd8: $01 $00 $03
	add  hl, bc                                      ; $5bdb: $09

	M_FarCall SetOrUnsetFlag
	
	pop  af                                          ; $5bf0: $f1
	ld   b, $00                                      ; $5bf1: $06 $00
	ld   c, a                                        ; $5bf3: $4f
	ld   hl, $5c27                                   ; $5bf4: $21 $27 $5c
	add  hl, bc                                      ; $5bf7: $09
	ld   a, [hl]                                     ; $5bf8: $7e
	or   a                                           ; $5bf9: $b7
	ret  z                                           ; $5bfa: $c8

	push af                                          ; $5bfb: $f5
	ld   a, $16                                      ; $5bfc: $3e $16
	call EnqueueAScriptOpcode                               ; $5bfe: $cd $97 $40
	pop  af                                          ; $5c01: $f1
	bit  7, a                                        ; $5c02: $cb $7f
	jr   nz, jr_008_5c0c                             ; $5c04: $20 $06

	ld   [hl-], a                                    ; $5c06: $32
	xor  a                                           ; $5c07: $af
	ld   [hl-], a                                    ; $5c08: $32
	ld   [hl-], a                                    ; $5c09: $32
	jr   jr_008_5c14                                 ; $5c0a: $18 $08

jr_008_5c0c:
	res  7, a                                        ; $5c0c: $cb $bf
	ld   [hl-], a                                    ; $5c0e: $32
	ld   a, $03                                      ; $5c0f: $3e $03
	ld   [hl-], a                                    ; $5c11: $32
	xor  a                                           ; $5c12: $af
	ld   [hl-], a                                    ; $5c13: $32

jr_008_5c14:
	ld   a, SO_PRE_SPECIFIED_DELAY                                      ; $5c14: $3e $34
	call EnqueueAScriptOpcode                               ; $5c16: $cd $97 $40
	ld   a, $0f                                      ; $5c19: $3e $0f
	ld   [hl], a                                     ; $5c1b: $77
	ld   a, SO_SET_CHAR_ON_SCREEN                                      ; $5c1c: $3e $0d
	call EnqueueAScriptOpcode                               ; $5c1e: $cd $97 $40
	xor  a                                           ; $5c21: $af
	ld   [hl-], a                                    ; $5c22: $32
	ld   [hl-], a                                    ; $5c23: $32
	ld   [hl-], a                                    ; $5c24: $32
	ld   [hl-], a                                    ; $5c25: $32
	ret                                              ; $5c26: $c9


	nop                                              ; $5c27: $00
	add  c                                           ; $5c28: $81
	add  d                                           ; $5c29: $82
	add  e                                           ; $5c2a: $83
	add  h                                           ; $5c2b: $84
	add  l                                           ; $5c2c: $85
	add  [hl]                                        ; $5c2d: $86
	add  a                                           ; $5c2e: $87
	adc  b                                           ; $5c2f: $88
	adc  c                                           ; $5c30: $89
	adc  d                                           ; $5c31: $8a
	nop                                              ; $5c32: $00
	nop                                              ; $5c33: $00
	nop                                              ; $5c34: $00
	nop                                              ; $5c35: $00
	ld   bc, $0302                                   ; $5c36: $01 $02 $03
	inc  b                                           ; $5c39: $04
	dec  b                                           ; $5c3a: $05
	ld   b, $07                                      ; $5c3b: $06 $07
	adc  e                                           ; $5c3d: $8b
	adc  h                                           ; $5c3e: $8c
	adc  l                                           ; $5c3f: $8d
	adc  [hl]                                        ; $5c40: $8e
	adc  a                                           ; $5c41: $8f
	sub  b                                           ; $5c42: $90
	sub  c                                           ; $5c43: $91
	sub  d                                           ; $5c44: $92
	sub  e                                           ; $5c45: $93
	sub  h                                           ; $5c46: $94
	sub  l                                           ; $5c47: $95
	sub  [hl]                                        ; $5c48: $96
	ld   [$9897], sp                                 ; $5c49: $08 $97 $98
	add  hl, bc                                      ; $5c4c: $09
	sbc  c                                           ; $5c4d: $99
	sbc  d                                           ; $5c4e: $9a
	sbc  e                                           ; $5c4f: $9b
	sbc  h                                           ; $5c50: $9c
	sbc  l                                           ; $5c51: $9d
	sbc  [hl]                                        ; $5c52: $9e
	sbc  a                                           ; $5c53: $9f
	and  b                                           ; $5c54: $a0
	and  c                                           ; $5c55: $a1
	and  d                                           ; $5c56: $a2
	and  e                                           ; $5c57: $a3
	and  h                                           ; $5c58: $a4
	and  l                                           ; $5c59: $a5
	and  [hl]                                        ; $5c5a: $a6
	and  a                                           ; $5c5b: $a7
	xor  b                                           ; $5c5c: $a8
	xor  c                                           ; $5c5d: $a9
	xor  d                                           ; $5c5e: $aa
	xor  e                                           ; $5c5f: $ab
	xor  h                                           ; $5c60: $ac
	xor  l                                           ; $5c61: $ad
	xor  [hl]                                        ; $5c62: $ae
	xor  a                                           ; $5c63: $af
	or   b                                           ; $5c64: $b0
	or   c                                           ; $5c65: $b1
	or   d                                           ; $5c66: $b2
	ld   a, [bc]                                     ; $5c67: $0a
	or   e                                           ; $5c68: $b3
	or   h                                           ; $5c69: $b4
	rst  $38                                         ; $5c6a: $ff


ScriptOpcode16_Main:
	ld   a, l                                        ; $5c6b: $7d
	ld   [wScriptOpcodeParamPointer], a                                  ; $5c6c: $ea $74 $cb
	ld   a, h                                        ; $5c6f: $7c
	ld   [wScriptOpcodeParamPointer+1], a                                  ; $5c70: $ea $75 $cb
	ld   a, [hl-]                                    ; $5c73: $3a
	ldh  [hScriptOpcodeParams], a                                    ; $5c74: $e0 $a0
	ld   a, [hl-]                                    ; $5c76: $3a
	ldh  [hScriptOpcodeParams+1], a                                    ; $5c77: $e0 $a1
	ld   a, [hl-]                                    ; $5c79: $3a
	ldh  [hScriptOpcodeParams+2], a                                    ; $5c7a: $e0 $a2
	xor  a                                           ; $5c7c: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $5c7d: $ea $52 $cb
	ldh  a, [hScriptOpcodeParams+1]                                    ; $5c80: $f0 $a1
	sla  a                                           ; $5c82: $cb $27
	ld   h, $00                                      ; $5c84: $26 $00
	ld   l, a                                        ; $5c86: $6f
	ld   bc, $5c8f                                   ; $5c87: $01 $8f $5c
	add  hl, bc                                      ; $5c8a: $09
	ld   a, [hl+]                                    ; $5c8b: $2a
	ld   h, [hl]                                     ; $5c8c: $66
	ld   l, a                                        ; $5c8d: $6f
	jp   hl                                          ; $5c8e: $e9


	sbc  a                                           ; $5c8f: $9f
	ld   e, h                                        ; $5c90: $5c
	cp   $5c                                         ; $5c91: $fe $5c
	ld   l, d                                        ; $5c93: $6a
	ld   e, l                                        ; $5c94: $5d
	sbc  a                                           ; $5c95: $9f
	ld   e, h                                        ; $5c96: $5c
	db   $ec                                         ; $5c97: $ec
	ld   e, l                                        ; $5c98: $5d
	ld   e, e                                        ; $5c99: $5b
	ld   e, [hl]                                     ; $5c9a: $5e
	cp   d                                           ; $5c9b: $ba
	ld   e, [hl]                                     ; $5c9c: $5e
	ld   l, d                                        ; $5c9d: $6a
	ld   e, l                                        ; $5c9e: $5d
	ldh  a, [hScriptOpcodeParams+2]                                    ; $5c9f: $f0 $a2
	or   a                                           ; $5ca1: $b7
	jr   nz, jr_008_5cbd                             ; $5ca2: $20 $19

	ld   a, $0c                                      ; $5ca4: $3e $0c
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5ca6: $ea $62 $c3
	ld   a, $28                                      ; $5ca9: $3e $28
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5cab: $ea $63 $c3
	ld   a, $03                                      ; $5cae: $3e $03
	ld   b, $00                                      ; $5cb0: $06 $00
	ld   hl, wBGPalettes                                   ; $5cb2: $21 $de $c2
	ld   c, $01                                      ; $5cb5: $0e $01
	ld   de, $7000                                   ; $5cb7: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5cba: $cd $48 $07

jr_008_5cbd:
	ld   a, [$cbc7]                                  ; $5cbd: $fa $c7 $cb
	or   a                                           ; $5cc0: $b7
	jr   z, jr_008_5ce0                              ; $5cc1: $28 $1d

	ld   hl, hScriptOpcodeParams+2                                   ; $5cc3: $21 $a2 $ff
	ld   a, [$cb91]                                  ; $5cc6: $fa $91 $cb
	or   a                                           ; $5cc9: $b7
	jr   z, jr_008_5ccf                              ; $5cca: $28 $03

	inc  [hl]                                        ; $5ccc: $34
	res  0, [hl]                                     ; $5ccd: $cb $86

jr_008_5ccf:
	ld   a, [hl]                                     ; $5ccf: $7e
	inc  [hl]                                        ; $5cd0: $34
	cp   $0f                                         ; $5cd1: $fe $0f
	jr   nc, jr_008_5ce0                             ; $5cd3: $30 $0b

	bit  0, a                                        ; $5cd5: $cb $47
	ld   bc, $0c28                                   ; $5cd7: $01 $28 $0c
	call z, FadePalettesAndSetRangeToUpdate                                    ; $5cda: $cc $32 $08
	jp   Jump_008_5efb                               ; $5cdd: $c3 $fb $5e


jr_008_5ce0:
	ld   a, $01                                      ; $5ce0: $3e $01
	ld   hl, $7000                                   ; $5ce2: $21 $00 $70
	ld   de, wBGPalettes+3*8                                   ; $5ce5: $11 $f6 $c2
	ld   bc, $0050                                   ; $5ce8: $01 $50 $00
	call FarMemCopy                                       ; $5ceb: $cd $b2 $09
	ld   bc, $0c33                                   ; $5cee: $01 $33 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5cf1: $cd $aa $04
	ld   hl, hScriptOpcodeParams+1                                   ; $5cf4: $21 $a1 $ff
	inc  [hl]                                        ; $5cf7: $34
	inc  hl                                          ; $5cf8: $23
	xor  a                                           ; $5cf9: $af
	ld   [hl], a                                     ; $5cfa: $77
	jp   Jump_008_5efb                               ; $5cfb: $c3 $fb $5e


	ld   hl, hScriptOpcodeParams+2                                   ; $5cfe: $21 $a2 $ff
	ld   a, [hl]                                     ; $5d01: $7e
	inc  [hl]                                        ; $5d02: $34
	or   a                                           ; $5d03: $b7
	jr   nz, jr_008_5d0a                             ; $5d04: $20 $04

	call Call_008_413a                               ; $5d06: $cd $3a $41
	xor  a                                           ; $5d09: $af

jr_008_5d0a:
	ld   h, a                                        ; $5d0a: $67
	ldh  a, [hScriptOpcodeParams]                                    ; $5d0b: $f0 $a0
	ld   l, a                                        ; $5d0d: $6f

	M_FarCall Func_0b_5970
	
	bit  7, a                                        ; $5d22: $cb $7f
	jr   nz, jr_008_5d67                             ; $5d24: $20 $41

	ld   [$cbad], a                                  ; $5d26: $ea $ad $cb
	ldh  a, [hScriptOpcodeParams]                                    ; $5d29: $f0 $a0
	ld   [$cbac], a                                  ; $5d2b: $ea $ac $cb
	ld   a, $01                                      ; $5d2e: $3e $01
	call Call_008_40e1                               ; $5d30: $cd $e1 $40
	ld   a, [wWramBank]                                  ; $5d33: $fa $93 $c2
	push af                                          ; $5d36: $f5
	ld   a, $02                                      ; $5d37: $3e $02
	ld   [wWramBank], a                                  ; $5d39: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5d3c: $e0 $70
	ld   de, $da18                                   ; $5d3e: $11 $18 $da
	ld   hl, wBGPalettes+3*8                                   ; $5d41: $21 $f6 $c2
	ld   bc, $0050                                   ; $5d44: $01 $50 $00
	call MemCopy                                       ; $5d47: $cd $a9 $09
	ld   hl, wBGPalettes+3*8                                   ; $5d4a: $21 $f6 $c2
	ld   bc, $0028                                   ; $5d4d: $01 $28 $00
	ld   de, $7fff                                   ; $5d50: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $5d53: $cd $9f $09
	pop  af                                          ; $5d56: $f1
	ld   [wWramBank], a                                  ; $5d57: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5d5a: $e0 $70
	xor  a                                           ; $5d5c: $af
	ld   [$cba6], a                                  ; $5d5d: $ea $a6 $cb
	ld   hl, hScriptOpcodeParams+1                                   ; $5d60: $21 $a1 $ff
	inc  [hl]                                        ; $5d63: $34
	inc  hl                                          ; $5d64: $23
	xor  a                                           ; $5d65: $af
	ld   [hl], a                                     ; $5d66: $77

jr_008_5d67:
	jp   Jump_008_5efb                               ; $5d67: $c3 $fb $5e


	ldh  a, [hScriptOpcodeParams+2]                                    ; $5d6a: $f0 $a2
	or   a                                           ; $5d6c: $b7
	jr   nz, jr_008_5d9c                             ; $5d6d: $20 $2d

	call Call_008_4159                               ; $5d6f: $cd $59 $41
	ld   a, [wWramBank]                                  ; $5d72: $fa $93 $c2
	push af                                          ; $5d75: $f5
	ld   a, $02                                      ; $5d76: $3e $02
	ld   [wWramBank], a                                  ; $5d78: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5d7b: $e0 $70
	ld   a, $0c                                      ; $5d7d: $3e $0c
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5d7f: $ea $62 $c3
	ld   a, $28                                      ; $5d82: $3e $28
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5d84: $ea $63 $c3
	ld   a, $03                                      ; $5d87: $3e $03
	ld   b, $00                                      ; $5d89: $06 $00
	ld   hl, wBGPalettes                                   ; $5d8b: $21 $de $c2
	ld   c, $00                                      ; $5d8e: $0e $00
	ld   de, $da00                                   ; $5d90: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5d93: $cd $48 $07
	pop  af                                          ; $5d96: $f1
	ld   [wWramBank], a                                  ; $5d97: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5d9a: $e0 $70

jr_008_5d9c:
	ld   a, [$cbc7]                                  ; $5d9c: $fa $c7 $cb
	or   a                                           ; $5d9f: $b7
	jr   z, jr_008_5dbf                              ; $5da0: $28 $1d

	ld   hl, hScriptOpcodeParams+2                                   ; $5da2: $21 $a2 $ff
	ld   a, [$cb91]                                  ; $5da5: $fa $91 $cb
	or   a                                           ; $5da8: $b7
	jr   z, jr_008_5dae                              ; $5da9: $28 $03

	inc  [hl]                                        ; $5dab: $34
	res  0, [hl]                                     ; $5dac: $cb $86

jr_008_5dae:
	ld   a, [hl]                                     ; $5dae: $7e
	inc  [hl]                                        ; $5daf: $34
	cp   $0f                                         ; $5db0: $fe $0f
	jr   nc, jr_008_5dbf                             ; $5db2: $30 $0b

	bit  0, a                                        ; $5db4: $cb $47
	ld   bc, $0c28                                   ; $5db6: $01 $28 $0c
	call z, FadePalettesAndSetRangeToUpdate                                    ; $5db9: $cc $32 $08
	jp   Jump_008_5efb                               ; $5dbc: $c3 $fb $5e


jr_008_5dbf:
	ld   a, [$cbc7]                                  ; $5dbf: $fa $c7 $cb
	or   a                                           ; $5dc2: $b7
	jr   z, jr_008_5de3                              ; $5dc3: $28 $1e

	ld   a, [wWramBank]                                  ; $5dc5: $fa $93 $c2
	push af                                          ; $5dc8: $f5
	ld   a, $02                                      ; $5dc9: $3e $02
	ld   [wWramBank], a                                  ; $5dcb: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5dce: $e0 $70
	xor  a                                           ; $5dd0: $af
	ld   hl, $da18                                   ; $5dd1: $21 $18 $da
	ld   de, wBGPalettes+3*8                                   ; $5dd4: $11 $f6 $c2
	ld   bc, $0050                                   ; $5dd7: $01 $50 $00
	call FarMemCopy                                       ; $5dda: $cd $b2 $09
	ld   bc, $0c33                                   ; $5ddd: $01 $33 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5de0: $cd $aa $04

jr_008_5de3:
	pop  af                                          ; $5de3: $f1
	ld   [wWramBank], a                                  ; $5de4: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5de7: $e0 $70
	jp   DequeueAScriptOpcode                               ; $5de9: $c3 $bc $40


	ld   hl, hScriptOpcodeParams+2                                   ; $5dec: $21 $a2 $ff
	ld   a, [hl]                                     ; $5def: $7e
	inc  [hl]                                        ; $5df0: $34
	or   a                                           ; $5df1: $b7
	jr   nz, jr_008_5dfe                             ; $5df2: $20 $0a

	ldh  a, [hScriptOpcodeParams]                                    ; $5df4: $f0 $a0
	ld   [$cbae], a                                  ; $5df6: $ea $ae $cb
	ld   a, $02                                      ; $5df9: $3e $02
	call Call_008_40e1                               ; $5dfb: $cd $e1 $40

jr_008_5dfe:
	ldh  a, [hScriptOpcodeParams+2]                                    ; $5dfe: $f0 $a2
	dec  a                                           ; $5e00: $3d
	ld   h, a                                        ; $5e01: $67
	ldh  a, [hScriptOpcodeParams]                                    ; $5e02: $f0 $a0
	ld   l, a                                        ; $5e04: $6f

	M_FarCall Func_0b_5c6c
	
	bit  7, a                                        ; $5e19: $cb $7f
	jp   nz, Jump_008_5efb                           ; $5e1b: $c2 $fb $5e

	ld   [$cbaf], a                                  ; $5e1e: $ea $af $cb
	ld   a, l                                        ; $5e21: $7d
	ld   [$cbb0], a                                  ; $5e22: $ea $b0 $cb
	ld   [$cba6], a                                  ; $5e25: $ea $a6 $cb
	ld   a, [wWramBank]                                  ; $5e28: $fa $93 $c2
	push af                                          ; $5e2b: $f5
	ld   a, $02                                      ; $5e2c: $3e $02
	ld   [wWramBank], a                                  ; $5e2e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5e31: $e0 $70
	ld   de, $da30                                   ; $5e33: $11 $30 $da
	ld   hl, $c30e                                   ; $5e36: $21 $0e $c3
	ld   bc, $0038                                   ; $5e39: $01 $38 $00
	call MemCopy                                       ; $5e3c: $cd $a9 $09
	ld   hl, $c30e                                   ; $5e3f: $21 $0e $c3
	ld   bc, $001c                                   ; $5e42: $01 $1c $00
	ld   de, $7fff                                   ; $5e45: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $5e48: $cd $9f $09
	pop  af                                          ; $5e4b: $f1
	ld   [wWramBank], a                                  ; $5e4c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5e4f: $e0 $70
	ld   hl, hScriptOpcodeParams+1                                   ; $5e51: $21 $a1 $ff
	inc  [hl]                                        ; $5e54: $34
	xor  a                                           ; $5e55: $af
	ldh  [hScriptOpcodeParams+2], a                                    ; $5e56: $e0 $a2
	jp   Jump_008_5efb                               ; $5e58: $c3 $fb $5e


	ld   hl, hScriptOpcodeParams+2                                   ; $5e5b: $21 $a2 $ff
	ld   a, [hl]                                     ; $5e5e: $7e
	inc  [hl]                                        ; $5e5f: $34
	ld   b, a                                        ; $5e60: $47
	ld   a, [$cba6]                                  ; $5e61: $fa $a6 $cb
	ld   l, a                                        ; $5e64: $6f
	ld   h, $00                                      ; $5e65: $26 $00
	ld   a, b                                        ; $5e67: $78

	M_FarCall LoadSceneryTileDataLayoutAndPalettes
	
	or   a                                           ; $5e7c: $b7
	jp   nz, Jump_008_5efb                           ; $5e7d: $c2 $fb $5e

	xor  a                                           ; $5e80: $af
	ld   [$cbac], a                                  ; $5e81: $ea $ac $cb
	ld   [$cbad], a                                  ; $5e84: $ea $ad $cb
	ld   a, [wWramBank]                                  ; $5e87: $fa $93 $c2
	push af                                          ; $5e8a: $f5
	ld   a, $02                                      ; $5e8b: $3e $02
	ld   [wWramBank], a                                  ; $5e8d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5e90: $e0 $70
	ld   de, $da18                                   ; $5e92: $11 $18 $da
	ld   hl, wBGPalettes+3*8                                   ; $5e95: $21 $f6 $c2
	ld   bc, $0018                                   ; $5e98: $01 $18 $00
	call MemCopy                                       ; $5e9b: $cd $a9 $09
	ld   hl, wBGPalettes+3*8                                   ; $5e9e: $21 $f6 $c2
	ld   bc, $000c                                   ; $5ea1: $01 $0c $00
	ld   de, $7fff                                   ; $5ea4: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $5ea7: $cd $9f $09
	pop  af                                          ; $5eaa: $f1
	ld   [wWramBank], a                                  ; $5eab: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5eae: $e0 $70
	ld   hl, hScriptOpcodeParams+1                                   ; $5eb0: $21 $a1 $ff
	inc  [hl]                                        ; $5eb3: $34
	xor  a                                           ; $5eb4: $af
	ldh  [hScriptOpcodeParams+2], a                                    ; $5eb5: $e0 $a2
	jp   Jump_008_5efb                               ; $5eb7: $c3 $fb $5e


	ld   h, $00                                      ; $5eba: $26 $00
	ldh  a, [hScriptOpcodeParams]                                    ; $5ebc: $f0 $a0
	ld   l, a                                        ; $5ebe: $6f

	M_FarCall Func_0b_6182
	
	ld   c, $80                                      ; $5ed3: $0e $80
	ld   de, $9800                                   ; $5ed5: $11 $00 $98
	ld   a, $02                                      ; $5ed8: $3e $02
	ld   hl, $d140                                   ; $5eda: $21 $40 $d1
	ld   b, $14                                      ; $5edd: $06 $14
	call EnqueueHDMATransfer                                       ; $5edf: $cd $7c $02
	ld   c, $81                                      ; $5ee2: $0e $81
	ld   de, $9800                                   ; $5ee4: $11 $00 $98
	ld   a, $02                                      ; $5ee7: $3e $02
	ld   hl, $d000                                   ; $5ee9: $21 $00 $d0
	ld   b, $14                                      ; $5eec: $06 $14
	call EnqueueHDMATransfer                                       ; $5eee: $cd $7c $02
	ld   hl, hScriptOpcodeParams+1                                   ; $5ef1: $21 $a1 $ff
	inc  [hl]                                        ; $5ef4: $34
	xor  a                                           ; $5ef5: $af
	ldh  [hScriptOpcodeParams+2], a                                    ; $5ef6: $e0 $a2
	jp   Jump_008_5efb                               ; $5ef8: $c3 $fb $5e


Jump_008_5efb:
	ld   hl, wScriptOpcodeParamPointer                                   ; $5efb: $21 $74 $cb
	ld   a, [hl+]                                    ; $5efe: $2a
	ld   h, [hl]                                     ; $5eff: $66
	ld   l, a                                        ; $5f00: $6f
	ldh  a, [hScriptOpcodeParams]                                    ; $5f01: $f0 $a0
	ld   [hl-], a                                    ; $5f03: $32
	ldh  a, [hScriptOpcodeParams+1]                                    ; $5f04: $f0 $a1
	ld   [hl-], a                                    ; $5f06: $32
	ldh  a, [hScriptOpcodeParams+2]                                    ; $5f07: $f0 $a2
	ld   [hl-], a                                    ; $5f09: $32
	ret                                              ; $5f0a: $c9


ScriptOpcode1b_Init:
	call GetNextScriptOpcodeToProcess                               ; $5f0b: $cd $70 $42
	push af                                          ; $5f0e: $f5
	ld   h, $00                                      ; $5f0f: $26 $00
	ld   l, a                                        ; $5f11: $6f
	ld   bc, $0300                                   ; $5f12: $01 $00 $03
	add  hl, bc                                      ; $5f15: $09

	M_FarCall SetOrUnsetFlag
	
	pop  af                                          ; $5f2a: $f1
	ld   h, $00                                      ; $5f2b: $26 $00
	ld   l, a                                        ; $5f2d: $6f
	ld   bc, $5c27                                   ; $5f2e: $01 $27 $5c
	add  hl, bc                                      ; $5f31: $09
	ld   a, [hl]                                     ; $5f32: $7e
	ld   [hl-], a                                    ; $5f33: $32
	bit  7, a                                        ; $5f34: $cb $7f
	ret  z                                           ; $5f36: $c8

	res  7, a                                        ; $5f37: $cb $bf
	push af                                          ; $5f39: $f5
	ld   a, $1b                                      ; $5f3a: $3e $1b
	call EnqueueAScriptOpcode                               ; $5f3c: $cd $97 $40
	pop  af                                          ; $5f3f: $f1
	push hl                                          ; $5f40: $e5
	ld   [hl-], a                                    ; $5f41: $32
	ld   a, [$cbac]                                  ; $5f42: $fa $ac $cb
	or   a                                           ; $5f45: $b7
	jr   z, jr_008_5f62                              ; $5f46: $28 $1a

	xor  a                                           ; $5f48: $af
	ld   [hl-], a                                    ; $5f49: $32
	ld   [hl-], a                                    ; $5f4a: $32
	ld   a, SO_LOAD_SCENERY                                      ; $5f4b: $3e $0e
	call EnqueueAScriptOpcode                               ; $5f4d: $cd $97 $40
	ld   a, [$cba6]                                  ; $5f50: $fa $a6 $cb
	ld   [hl-], a                                    ; $5f53: $32
	xor  a                                           ; $5f54: $af
	ld   [hl-], a                                    ; $5f55: $32
	ld   [hl-], a                                    ; $5f56: $32
	ld   [hl-], a                                    ; $5f57: $32
	ld   [hl-], a                                    ; $5f58: $32
	ld   a, SO_33                                      ; $5f59: $3e $33
	call EnqueueAScriptOpcode                               ; $5f5b: $cd $97 $40
	xor  a                                           ; $5f5e: $af
	ld   [hl], a                                     ; $5f5f: $77
	pop  hl                                          ; $5f60: $e1
	ret                                              ; $5f61: $c9

jr_008_5f62:
	ld   a, [$cbb1]                                  ; $5f62: $fa $b1 $cb
	rlca                                             ; $5f65: $07
	and  $01                                         ; $5f66: $e6 $01
	ld   [hl-], a                                    ; $5f68: $32
	xor  a                                           ; $5f69: $af
	ld   [hl], a                                     ; $5f6a: $77
	pop  hl                                          ; $5f6b: $e1

ScriptOpcode1b_Main:
	ld   a, [wWramBank]                                  ; $5f6c: $fa $93 $c2
	push af                                          ; $5f6f: $f5
	ld   a, $02                                      ; $5f70: $3e $02
	ld   [wWramBank], a                                  ; $5f72: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5f75: $e0 $70
	xor  a                                           ; $5f77: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $5f78: $ea $52 $cb
	ld   a, l                                        ; $5f7b: $7d
	ld   [wScriptOpcodeParamPointer], a                                  ; $5f7c: $ea $74 $cb
	ld   a, h                                        ; $5f7f: $7c
	ld   [wScriptOpcodeParamPointer+1], a                                  ; $5f80: $ea $75 $cb
	ld   a, [hl-]                                    ; $5f83: $3a
	ldh  [hScriptOpcodeParams], a                                    ; $5f84: $e0 $a0
	ld   a, [hl-]                                    ; $5f86: $3a
	ldh  [hScriptOpcodeParams+1], a                                    ; $5f87: $e0 $a1
	ld   a, [hl-]                                    ; $5f89: $3a
	ldh  [hScriptOpcodeParams+2], a                                    ; $5f8a: $e0 $a2
	ld   bc, $5f9f                                   ; $5f8c: $01 $9f $5f
	push bc                                          ; $5f8f: $c5
	ldh  a, [hScriptOpcodeParams+1]                                    ; $5f90: $f0 $a1
	sla  a                                           ; $5f92: $cb $27
	ld   b, $00                                      ; $5f94: $06 $00
	ld   c, a                                        ; $5f96: $4f
	ld   hl, $5fa6                                   ; $5f97: $21 $a6 $5f
	add  hl, bc                                      ; $5f9a: $09
	ld   a, [hl+]                                    ; $5f9b: $2a
	ld   h, [hl]                                     ; $5f9c: $66
	ld   l, a                                        ; $5f9d: $6f
	jp   hl                                          ; $5f9e: $e9


	pop  af                                          ; $5f9f: $f1
	ld   [wWramBank], a                                  ; $5fa0: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5fa3: $e0 $70
	ret                                              ; $5fa5: $c9


	cp   [hl]                                        ; $5fa6: $be
	ld   e, a                                        ; $5fa7: $5f
	ld   e, b                                        ; $5fa8: $58
	ld   h, b                                        ; $5fa9: $60
	or   [hl]                                        ; $5faa: $b6
	ld   h, b                                        ; $5fab: $60
	db   $f4                                         ; $5fac: $f4
	ld   h, b                                        ; $5fad: $60

Jump_008_5fae:
	ld   hl, wScriptOpcodeParamPointer                                   ; $5fae: $21 $74 $cb
	ld   a, [hl+]                                    ; $5fb1: $2a
	ld   h, [hl]                                     ; $5fb2: $66
	ld   l, a                                        ; $5fb3: $6f
	ldh  a, [hScriptOpcodeParams]                                    ; $5fb4: $f0 $a0
	ld   [hl-], a                                    ; $5fb6: $32
	ldh  a, [hScriptOpcodeParams+1]                                    ; $5fb7: $f0 $a1
	ld   [hl-], a                                    ; $5fb9: $32
	ldh  a, [hScriptOpcodeParams+2]                                    ; $5fba: $f0 $a2
	ld   [hl-], a                                    ; $5fbc: $32
	ret                                              ; $5fbd: $c9


	ldh  a, [hScriptOpcodeParams+2]                                    ; $5fbe: $f0 $a2
	or   a                                           ; $5fc0: $b7
	jr   nz, jr_008_5fdc                             ; $5fc1: $20 $19

	ld   a, $18                                      ; $5fc3: $3e $18
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5fc5: $ea $62 $c3
	ld   a, $1c                                      ; $5fc8: $3e $1c
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5fca: $ea $63 $c3
	ld   a, $03                                      ; $5fcd: $3e $03
	ld   b, $00                                      ; $5fcf: $06 $00
	ld   hl, wBGPalettes                                   ; $5fd1: $21 $de $c2
	ld   c, $01                                      ; $5fd4: $0e $01
	ld   de, $7000                                   ; $5fd6: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5fd9: $cd $48 $07

jr_008_5fdc:
	ld   a, [$cbc7]                                  ; $5fdc: $fa $c7 $cb
	or   a                                           ; $5fdf: $b7
	jr   z, jr_008_5fff                              ; $5fe0: $28 $1d

	ld   hl, hScriptOpcodeParams+2                                   ; $5fe2: $21 $a2 $ff
	ld   a, [$cb91]                                  ; $5fe5: $fa $91 $cb
	or   a                                           ; $5fe8: $b7
	jr   z, jr_008_5fee                              ; $5fe9: $28 $03

	inc  [hl]                                        ; $5feb: $34
	res  0, [hl]                                     ; $5fec: $cb $86

jr_008_5fee:
	ld   a, [hl]                                     ; $5fee: $7e
	inc  [hl]                                        ; $5fef: $34
	cp   $0f                                         ; $5ff0: $fe $0f
	jr   nc, jr_008_5fff                             ; $5ff2: $30 $0b

	bit  0, a                                        ; $5ff4: $cb $47
	ld   bc, $181c                                   ; $5ff6: $01 $1c $18
	call z, FadePalettesAndSetRangeToUpdate                                    ; $5ff9: $cc $32 $08
	jp   Jump_008_5fae                               ; $5ffc: $c3 $ae $5f


jr_008_5fff:
	ld   a, $01                                      ; $5fff: $3e $01
	ld   hl, $7000                                   ; $6001: $21 $00 $70
	ld   de, $c30e                                   ; $6004: $11 $0e $c3
	ld   bc, $0038                                   ; $6007: $01 $38 $00
	call FarMemCopy                                       ; $600a: $cd $b2 $09
	ld   bc, $1833                                   ; $600d: $01 $33 $18
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6010: $cd $aa $04
	call Call_008_413a                               ; $6013: $cd $3a $41
	ld   a, [$cba6]                                  ; $6016: $fa $a6 $cb
	ld   l, a                                        ; $6019: $6f
	ld   h, $00                                      ; $601a: $26 $00

	M_FarCall Call_00a_5438
	
	ld   c, $80                                      ; $6030: $0e $80
	ld   de, $9800                                   ; $6032: $11 $00 $98
	ld   a, $02                                      ; $6035: $3e $02
	ld   hl, $d140                                   ; $6037: $21 $40 $d1
	ld   b, $14                                      ; $603a: $06 $14
	call EnqueueHDMATransfer                                       ; $603c: $cd $7c $02
	ld   c, $81                                      ; $603f: $0e $81
	ld   de, $9800                                   ; $6041: $11 $00 $98
	ld   a, $02                                      ; $6044: $3e $02
	ld   hl, $d000                                   ; $6046: $21 $00 $d0
	ld   b, $14                                      ; $6049: $06 $14
	call EnqueueHDMATransfer                                       ; $604b: $cd $7c $02
	ld   hl, hScriptOpcodeParams+1                                   ; $604e: $21 $a1 $ff
	inc  [hl]                                        ; $6051: $34
	xor  a                                           ; $6052: $af
	ldh  [hScriptOpcodeParams+2], a                                    ; $6053: $e0 $a2
	jp   Jump_008_5fae                               ; $6055: $c3 $ae $5f


	ld   hl, hScriptOpcodeParams+2                                   ; $6058: $21 $a2 $ff
	ld   a, [hl]                                     ; $605b: $7e
	inc  [hl]                                        ; $605c: $34
	or   a                                           ; $605d: $b7
	jr   nz, jr_008_606e                             ; $605e: $20 $0e

	ldh  a, [hScriptOpcodeParams]                                    ; $6060: $f0 $a0
	ld   [$cbae], a                                  ; $6062: $ea $ae $cb
	or   a                                           ; $6065: $b7
	jp   z, DequeueAScriptOpcode                            ; $6066: $ca $bc $40

	ld   a, $02                                      ; $6069: $3e $02
	call Call_008_40e1                               ; $606b: $cd $e1 $40

jr_008_606e:
	ldh  a, [hScriptOpcodeParams+2]                                    ; $606e: $f0 $a2
	dec  a                                           ; $6070: $3d
	ld   h, a                                        ; $6071: $67
	ldh  a, [hScriptOpcodeParams]                                    ; $6072: $f0 $a0
	ld   l, a                                        ; $6074: $6f

	M_FarCall Func_0b_5c6c
	
	bit  7, a                                        ; $6089: $cb $7f
	jr   nz, jr_008_60b3                             ; $608b: $20 $26

	ld   [$cbaf], a                                  ; $608d: $ea $af $cb
	xor  a                                           ; $6090: $af
	ld   [$cbb0], a                                  ; $6091: $ea $b0 $cb
	ld   de, $da30                                   ; $6094: $11 $30 $da
	ld   hl, $c30e                                   ; $6097: $21 $0e $c3
	ld   bc, $0038                                   ; $609a: $01 $38 $00
	call MemCopy                                       ; $609d: $cd $a9 $09
	ld   hl, $c30e                                   ; $60a0: $21 $0e $c3
	ld   bc, $001c                                   ; $60a3: $01 $1c $00
	ld   de, $7fff                                   ; $60a6: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $60a9: $cd $9f $09
	ld   hl, hScriptOpcodeParams+1                                   ; $60ac: $21 $a1 $ff
	inc  [hl]                                        ; $60af: $34
	xor  a                                           ; $60b0: $af
	ldh  [hScriptOpcodeParams+2], a                                    ; $60b1: $e0 $a2

jr_008_60b3:
	jp   Jump_008_5fae                               ; $60b3: $c3 $ae $5f


	ld   a, [$cba6]                                  ; $60b6: $fa $a6 $cb
	ld   l, a                                        ; $60b9: $6f
	ld   h, $00                                      ; $60ba: $26 $00

	M_FarCall Call_00a_5438
	
	ld   h, $00                                      ; $60d0: $26 $00
	ld   a, [$cbae]                                  ; $60d2: $fa $ae $cb
	ld   l, a                                        ; $60d5: $6f

	M_FarCall Func_0b_6182
	
	ld   hl, hScriptOpcodeParams+1                                   ; $60ea: $21 $a1 $ff
	inc  [hl]                                        ; $60ed: $34
	xor  a                                           ; $60ee: $af
	ldh  [hScriptOpcodeParams+2], a                                    ; $60ef: $e0 $a2
	jp   Jump_008_5fae                               ; $60f1: $c3 $ae $5f


	ldh  a, [hScriptOpcodeParams+2]                                    ; $60f4: $f0 $a2
	or   a                                           ; $60f6: $b7
	jp   nz, Jump_008_6134                           ; $60f7: $c2 $34 $61

	call Call_008_4159                               ; $60fa: $cd $59 $41
	ld   c, $80                                      ; $60fd: $0e $80
	ld   de, $9800                                   ; $60ff: $11 $00 $98
	ld   a, $02                                      ; $6102: $3e $02
	ld   hl, $d140                                   ; $6104: $21 $40 $d1
	ld   b, $14                                      ; $6107: $06 $14
	call EnqueueHDMATransfer                                       ; $6109: $cd $7c $02
	ld   c, $81                                      ; $610c: $0e $81
	ld   de, $9800                                   ; $610e: $11 $00 $98
	ld   a, $02                                      ; $6111: $3e $02
	ld   hl, $d000                                   ; $6113: $21 $00 $d0
	ld   b, $14                                      ; $6116: $06 $14
	call EnqueueHDMATransfer                                       ; $6118: $cd $7c $02
	ld   a, $18                                      ; $611b: $3e $18
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $611d: $ea $62 $c3
	ld   a, $1c                                      ; $6120: $3e $1c
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $6122: $ea $63 $c3
	ld   a, $03                                      ; $6125: $3e $03
	ld   b, $00                                      ; $6127: $06 $00
	ld   hl, wBGPalettes                                   ; $6129: $21 $de $c2
	ld   c, $00                                      ; $612c: $0e $00
	ld   de, $da00                                   ; $612e: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $6131: $cd $48 $07

Jump_008_6134:
	ld   a, [$cbc7]                                  ; $6134: $fa $c7 $cb
	or   a                                           ; $6137: $b7
	jr   z, jr_008_6157                              ; $6138: $28 $1d

	ld   hl, hScriptOpcodeParams+2                                   ; $613a: $21 $a2 $ff
	ld   a, [$cb91]                                  ; $613d: $fa $91 $cb
	or   a                                           ; $6140: $b7
	jr   z, jr_008_6146                              ; $6141: $28 $03

	inc  [hl]                                        ; $6143: $34
	res  0, [hl]                                     ; $6144: $cb $86

jr_008_6146:
	ld   a, [hl]                                     ; $6146: $7e
	inc  [hl]                                        ; $6147: $34
	cp   $0f                                         ; $6148: $fe $0f
	jr   nc, jr_008_6157                             ; $614a: $30 $0b

	bit  0, a                                        ; $614c: $cb $47
	ld   bc, $181c                                   ; $614e: $01 $1c $18
	call z, FadePalettesAndSetRangeToUpdate                                    ; $6151: $cc $32 $08
	jp   Jump_008_5fae                               ; $6154: $c3 $ae $5f


jr_008_6157:
	ld   a, [$cbc7]                                  ; $6157: $fa $c7 $cb
	or   a                                           ; $615a: $b7
	jr   z, jr_008_6170                              ; $615b: $28 $13

	xor  a                                           ; $615d: $af
	ld   hl, $da30                                   ; $615e: $21 $30 $da
	ld   de, $c30e                                   ; $6161: $11 $0e $c3
	ld   bc, $0038                                   ; $6164: $01 $38 $00
	call FarMemCopy                                       ; $6167: $cd $b2 $09
	ld   bc, $1833                                   ; $616a: $01 $33 $18
	call SetBGandOBJPaletteRangesToUpdate                                       ; $616d: $cd $aa $04

jr_008_6170:
	jp   DequeueAScriptOpcode                               ; $6170: $c3 $bc $40


ScriptOpcode18_Init:
	ld   a, [wWramBank]                                  ; $6173: $fa $93 $c2
	push af                                          ; $6176: $f5
	ld   a, $02                                      ; $6177: $3e $02
	ld   [wWramBank], a                                  ; $6179: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $617c: $e0 $70
	ld   hl, $d340                                   ; $617e: $21 $40 $d3
	ld   bc, $02a0                                   ; $6181: $01 $a0 $02
	ld   de, $0000                                   ; $6184: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $6187: $cd $9f $09
	ld   a, $18                                      ; $618a: $3e $18
	call EnqueueAScriptOpcode                               ; $618c: $cd $97 $40
	push hl                                          ; $618f: $e5
	push hl                                          ; $6190: $e5
	call GetNextScriptOpcodeToProcess                               ; $6191: $cd $70 $42
	ld   h, a                                        ; $6194: $67
	ld   l, $00                                      ; $6195: $2e $00
	push hl                                          ; $6197: $e5
	ld   bc, $ffff                                   ; $6198: $01 $ff $ff
	call GetNextScriptOpcodeToProcess                               ; $619b: $cd $70 $42

	M_FarCall Func_0a_5682
	
	pop  de                                          ; $61b2: $d1
	pop  hl                                          ; $61b3: $e1

.loop_61b4:
	push de                                          ; $61b4: $d5
	push hl                                          ; $61b5: $e5
	ld   b, $00                                      ; $61b6: $06 $00
	ld   c, e                                        ; $61b8: $4b
	call SetCurrKanjiColAndRowToDrawOn                                       ; $61b9: $cd $34 $14
	ld   hl, $da80                                   ; $61bc: $21 $80 $da

.loop_61bf:
	call GetNextScriptOpcodeToProcess                               ; $61bf: $cd $70 $42
	ld   [hl+], a                                    ; $61c2: $22
	or   a                                           ; $61c3: $b7
	jr   z, .br_61d0                              ; $61c4: $28 $0a

	cp   $08                                         ; $61c6: $fe $08
	jr   nc, .loop_61bf                             ; $61c8: $30 $f5

	call GetNextScriptOpcodeToProcess                               ; $61ca: $cd $70 $42
	ld   [hl+], a                                    ; $61cd: $22
	jr   .loop_61bf                                 ; $61ce: $18 $ef

.br_61d0:
	ld   hl, $d340                                   ; $61d0: $21 $40 $d3
	xor  a                                           ; $61d3: $af
	ld   de, $da80                                   ; $61d4: $11 $80 $da
	call LoadInstantText                                       ; $61d7: $cd $06 $13
	pop  hl                                          ; $61da: $e1
	call GetNextScriptOpcodeToProcess                               ; $61db: $cd $70 $42
	ld   [hl-], a                                    ; $61de: $32
	pop  de                                          ; $61df: $d1
	inc  e                                           ; $61e0: $1c
	dec  d                                           ; $61e1: $15
	jr   nz, .loop_61b4                             ; $61e2: $20 $d0

	pop  hl                                          ; $61e4: $e1
	pop  af                                          ; $61e5: $f1
	ld   [wWramBank], a                                  ; $61e6: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $61e9: $e0 $70

ScriptOpcode18_Main:
	xor  a                                           ; $61eb: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $61ec: $ea $52 $cb
	ld   a, [hl-]                                    ; $61ef: $3a
	ldh  [hScriptOpcodeParams], a                                    ; $61f0: $e0 $a0
	ld   a, [hl-]                                    ; $61f2: $3a
	ldh  [hScriptOpcodeParams+1], a                                    ; $61f3: $e0 $a1
	ld   a, [hl-]                                    ; $61f5: $3a
	ldh  [hScriptOpcodeParams+2], a                                    ; $61f6: $e0 $a2

	M_FarCall Func_0a_56a3
	
	ld   a, [$cbda]                                  ; $620c: $fa $da $cb
	or   a                                           ; $620f: $b7
	ret  z                                           ; $6210: $c8

	dec  a                                           ; $6211: $3d
	ld   b, $00                                      ; $6212: $06 $00
	ld   c, a                                        ; $6214: $4f
	ld   hl, hScriptOpcodeParams                                   ; $6215: $21 $a0 $ff
	add  hl, bc                                      ; $6218: $09
	ld   a, [hl]                                     ; $6219: $7e
	ld   [wUntimedQuestionAnswer], a                                  ; $621a: $ea $92 $cb
	xor  a                                           ; $621d: $af
	ld   [$cbaa], a                                  ; $621e: $ea $aa $cb
	ld   [$cbab], a                                  ; $6221: $ea $ab $cb
	jp   DequeueAScriptOpcode                               ; $6224: $c3 $bc $40


	ld   a, SO_PRE_SPECIFIED_DELAY                                      ; $6227: $3e $34
	call EnqueueAScriptOpcode                               ; $6229: $cd $97 $40
	ld   a, $0f                                      ; $622c: $3e $0f
	ld   [hl], a                                     ; $622e: $77
	ret                                              ; $622f: $c9


ScriptOpcode19_TimedQuestion_Init:
	ld   a, [wWramBank]                                  ; $6230: $fa $93 $c2
	push af                                          ; $6233: $f5
	ld   a, $02                                      ; $6234: $3e $02
	ld   [wWramBank], a                                  ; $6236: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6239: $e0 $70

	M_FarCall Func_09_4fcb

	ld   hl, $d340                                   ; $624f: $21 $40 $d3
	ld   bc, $06c0                                   ; $6252: $01 $c0 $06
	ld   a, $00                                      ; $6255: $3e $00
	call MemSet                                       ; $6257: $cd $96 $09
	ld   bc, $1003                                   ; $625a: $01 $03 $10
	call SetKanjiTextBoxDimensions                                       ; $625d: $cd $24 $14
	ld   a, $19                                      ; $6260: $3e $19
	call EnqueueAScriptOpcode                               ; $6262: $cd $97 $40
	call GetNextScriptOpcodeToProcess                               ; $6265: $cd $70 $42
	sla  a                                           ; $6268: $cb $27
	ld   c, a                                        ; $626a: $4f
	ld   b, $00                                      ; $626b: $06 $00
	ld   hl, Table_08_6313                                   ; $626d: $21 $13 $63
	add  hl, bc                                      ; $6270: $09
	ld   a, [hl+]                                    ; $6271: $2a
	ld   [$cbe9], a                                  ; $6272: $ea $e9 $cb
	ld   a, [hl]                                     ; $6275: $7e
	ld   [$cbea], a                                  ; $6276: $ea $ea $cb
	xor  a                                           ; $6279: $af
	ld   [$cbe6], a                                  ; $627a: $ea $e6 $cb
	ld   [$cbe7], a                                  ; $627d: $ea $e7 $cb
	ld   [$cbe8], a                                  ; $6280: $ea $e8 $cb
	call GetNextScriptOpcodeToProcess                               ; $6283: $cd $70 $42
	ld   [$cbed], a                                  ; $6286: $ea $ed $cb
	
;
	ld   hl, Table_08_638e                                   ; $6289: $21 $8e $63
	cp   $03                                         ; $628c: $fe $03
	jr   z, .scriptByte3                              ; $628e: $28 $06

	cp   $02                                         ; $6290: $fe $02
	jr   z, .scriptByte2                              ; $6292: $28 $17

	jr   .cont                                 ; $6294: $18 $28

.scriptByte3:
	ld   a, $06                                      ; $6296: $3e $06
	ld   [wRandomNumRange], a                                  ; $6298: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $629b: $cd $10 $0d
	ld   b, a                                        ; $629e: $47
	sla  a                                           ; $629f: $cb $27
	add  b                                           ; $62a1: $80
	ld   h, $00                                      ; $62a2: $26 $00
	ld   l, a                                        ; $62a4: $6f
	ld   de, Table_08_638e                                   ; $62a5: $11 $8e $63
	add  hl, de                                      ; $62a8: $19
	jr   .cont                                 ; $62a9: $18 $13

.scriptByte2:
	ld   a, $ff                                      ; $62ab: $3e $ff
	ld   [wRandomNumRange], a                                  ; $62ad: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $62b0: $cd $10 $0d
	rlca                                             ; $62b3: $07
	rla                                              ; $62b4: $17
	and  $03                                         ; $62b5: $e6 $03
	ld   h, $00                                      ; $62b7: $26 $00
	ld   l, a                                        ; $62b9: $6f
	ld   de, Table_08_638b                                   ; $62ba: $11 $8b $63
	add  hl, de                                      ; $62bd: $19

.cont:
	ld   d, h                                        ; $62be: $54
	ld   e, l                                        ; $62bf: $5d
	ld   a, [$cbed]                                  ; $62c0: $fa $ed $cb

.loopA:
	push af                                          ; $62c3: $f5
	push de                                          ; $62c4: $d5
	ld   b, $00                                      ; $62c5: $06 $00
	ld   a, [de]                                     ; $62c7: $1a
	ld   c, a                                        ; $62c8: $4f
	call SetCurrKanjiColAndRowToDrawOn                                       ; $62c9: $cd $34 $14
	ld   hl, $da80                                   ; $62cc: $21 $80 $da

.loop_62cf:
	call GetNextScriptOpcodeToProcess                               ; $62cf: $cd $70 $42
	ld   [hl+], a                                    ; $62d2: $22
	or   a                                           ; $62d3: $b7
	jr   z, .br_62e0                              ; $62d4: $28 $0a

	cp   $08                                         ; $62d6: $fe $08
	jr   nc, .loop_62cf                             ; $62d8: $30 $f5

	call GetNextScriptOpcodeToProcess                               ; $62da: $cd $70 $42
	ld   [hl+], a                                    ; $62dd: $22
	jr   .loop_62cf                                 ; $62de: $18 $ef

.br_62e0:
	ld   hl, $d340                                   ; $62e0: $21 $40 $d3
	xor  a                                           ; $62e3: $af
	ld   de, $da80                                   ; $62e4: $11 $80 $da
	call LoadInstantText                                       ; $62e7: $cd $06 $13
	pop  de                                          ; $62ea: $d1
	ld   a, [de]                                     ; $62eb: $1a
	inc  de                                          ; $62ec: $13
	ld   b, $00                                      ; $62ed: $06 $00
	ld   c, a                                        ; $62ef: $4f
	ld   hl, $cbef                                   ; $62f0: $21 $ef $cb
	add  hl, bc                                      ; $62f3: $09
	call GetNextScriptOpcodeToProcess                               ; $62f4: $cd $70 $42
	ld   [hl], a                                     ; $62f7: $77
	pop  af                                          ; $62f8: $f1
	dec  a                                           ; $62f9: $3d
	jr   nz, .loopA                             ; $62fa: $20 $c7

	ld   bc, $0e03                                   ; $62fc: $01 $03 $0e
	call SetKanjiTextBoxDimensions                                       ; $62ff: $cd $24 $14
	xor  a                                           ; $6302: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $6303: $ea $52 $cb
	ld   [$cb88], a                                  ; $6306: $ea $88 $cb
	ld   [$cb89], a                                  ; $6309: $ea $89 $cb
	pop  af                                          ; $630c: $f1
	ld   [wWramBank], a                                  ; $630d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6310: $e0 $70
	ret                                              ; $6312: $c9


Table_08_6313:
	db $bb, $bb
	db $dd, $5d
	db $93, $3e
	db $ee, $2e
	db $8b, $25
	db $49, $1f
	db $d1, $1a
	db $77, $17
	db $db, $14
	db $c5, $12
	db $11, $11
	db $a4, $0f
	db $70, $0e
	db $68, $0d
	db $83, $0c
	db $bb, $0b
	db $0b, $0b
	db $6d, $0a
	db $e1, $09
	db $62, $09
	db $f0, $08
	db $88, $08
	db $29, $08
	db $d2, $07
	db $82, $07
	db $38, $07
	db $f3, $06
	db $b4, $06
	db $79, $06
	db $41, $06
	db $0e, $06
	db $dd, $05
	db $b0, $05
	db $85, $05
	db $5d, $05
	db $36, $05
	db $12, $05
	db $f0, $04
	db $d0, $04
	db $b1, $04
	db $94, $04
	db $78, $04
	db $5d, $04
	db $44, $04
	db $2b, $04
	db $14, $04
	db $fe, $03
	db $e9, $03
	db $d4, $03
	db $c1, $03
	db $ae, $03
	db $9c, $03
	db $8a, $03
	db $79, $03
	db $69, $03
	db $5a, $03
	db $4b, $03
	db $3c, $03
	db $2e, $03
	db $20, $03


Table_08_638b:
	db $01, $00, $02


Table_08_638e:
	db $00, $01, $02
	db $00, $02, $01
	db $01, $02, $00
	db $01, $00, $02
	db $02, $00, $01
	db $02, $01, $00


ScriptOpcode19_TimedQuestion_Main:
	xor  a                                           ; $63a0: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $63a1: $ea $52 $cb
	ld   a, [$cb88]                                  ; $63a4: $fa $88 $cb
	sla  a                                           ; $63a7: $cb $27
	ld   b, $00                                      ; $63a9: $06 $00
	ld   c, a                                        ; $63ab: $4f
	ld   hl, .table                                   ; $63ac: $21 $b4 $63
	add  hl, bc                                      ; $63af: $09
	ld   a, [hl+]                                    ; $63b0: $2a
	ld   h, [hl]                                     ; $63b1: $66
	ld   l, a                                        ; $63b2: $6f
	jp   hl                                          ; $63b3: $e9

.table:
	dw .thing0
	dw .thing1
	dw .thing2
	dw $649c
	dw $64f5

.thing0:
	ld   hl, $cb89                                   ; $63be: $21 $89 $cb
	ld   a, [hl]                                     ; $63c1: $7e
	inc  [hl]                                        ; $63c2: $34
	cp   $0a                                         ; $63c3: $fe $0a
	jr   nc, .br_63cd                             ; $63c5: $30 $06

	ld   a, [wInGameButtonsHeld]                                  ; $63c7: $fa $0f $c2
	bit  1, a                                        ; $63ca: $cb $4f
	ret  nz                                          ; $63cc: $c0

.br_63cd:
	xor  a                                           ; $63cd: $af
	ld   [hl], a                                     ; $63ce: $77
	ld   hl, $cb88                                   ; $63cf: $21 $88 $cb
	inc  [hl]                                        ; $63d2: $34
	ret                                              ; $63d3: $c9

.thing1:
	ld   a, [wWramBank]                                  ; $63d4: $fa $93 $c2
	push af                                          ; $63d7: $f5
	ld   a, $02                                      ; $63d8: $3e $02
	ld   [wWramBank], a                                  ; $63da: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $63dd: $e0 $70
	ld   a, [$cb89]                                  ; $63df: $fa $89 $cb
	or   a                                           ; $63e2: $b7
	jr   nz, .cont_6413                             ; $63e3: $20 $2e

	ld   de, $da00                                   ; $63e5: $11 $00 $da
	ld   hl, wBGPalettes                                   ; $63e8: $21 $de $c2
	ld   bc, $0018                                   ; $63eb: $01 $18 $00
	call MemCopy                                       ; $63ee: $cd $a9 $09
	ld   a, $b4                                      ; $63f1: $3e $b4
	ld   [$da04], a                                  ; $63f3: $ea $04 $da
	ld   a, $0c                                      ; $63f6: $3e $0c
	ld   [$da05], a                                  ; $63f8: $ea $05 $da
	xor  a                                           ; $63fb: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $63fc: $ea $62 $c3
	ld   a, $0c                                      ; $63ff: $3e $0c
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $6401: $ea $63 $c3
	ld   a, $04                                      ; $6404: $3e $04
	ld   b, $00                                      ; $6406: $06 $00
	ld   hl, wBGPalettes                                   ; $6408: $21 $de $c2
	ld   c, $01                                      ; $640b: $0e $01
	ld   de, $7000                                   ; $640d: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $6410: $cd $48 $07

.cont_6413:
	ld   a, [wLCDC]                                  ; $6413: $fa $03 $c2
	bit  7, a                                        ; $6416: $cb $7f
	jr   z, .br_642b                              ; $6418: $28 $11

	ld   hl, $cb89                                   ; $641a: $21 $89 $cb
	ld   a, [hl]                                     ; $641d: $7e
	inc  [hl]                                        ; $641e: $34
	cp   $0f                                         ; $641f: $fe $0f
	jr   nc, .br_642b                             ; $6421: $30 $08

	ld   bc, $000c                                   ; $6423: $01 $0c $00
	call FadePalettesAndSetRangeToUpdate                                       ; $6426: $cd $32 $08
	jr   .cont_645b                                 ; $6429: $18 $30

.br_642b:
	ld   a, $01                                      ; $642b: $3e $01
	ld   hl, $7000                                   ; $642d: $21 $00 $70
	ld   de, wBGPalettes                                   ; $6430: $11 $de $c2
	ld   bc, $0018                                   ; $6433: $01 $18 $00
	call FarMemCopy                                       ; $6436: $cd $b2 $09
	ld   bc, $000b                                   ; $6439: $01 $0b $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $643c: $cd $aa $04
	ld   c, $81                                      ; $643f: $0e $81
	ld   de, $8800                                   ; $6441: $11 $00 $88
	ld   a, $02                                      ; $6444: $3e $02
	ld   hl, $d340                                   ; $6446: $21 $40 $d3
	ld   b, $6c                                      ; $6449: $06 $6c
	call EnqueueHDMATransfer                                       ; $644b: $cd $7c $02
	ld   a, $01                                      ; $644e: $3e $01
	ld   [$cbf4], a                                  ; $6450: $ea $f4 $cb
	ld   hl, $cb88                                   ; $6453: $21 $88 $cb
	inc  [hl]                                        ; $6456: $34
	xor  a                                           ; $6457: $af
	ld   [$cb89], a                                  ; $6458: $ea $89 $cb

.cont_645b:
	pop  af                                          ; $645b: $f1
	ld   [wWramBank], a                                  ; $645c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $645f: $e0 $70
	ret                                              ; $6461: $c9

.thing2:
	M_FarCall Func_09_4fdd
	
	ld   a, [$cbe4]                                  ; $6476: $fa $e4 $cb
	bit  7, a                                        ; $6479: $cb $7f
	jr   z, jr_008_649b                              ; $647b: $28 $1e

	xor  a                                           ; $647d: $af
	ld   [$cbf4], a                                  ; $647e: $ea $f4 $cb
	ld   a, [$cbec]                                  ; $6481: $fa $ec $cb
	cp   $ff                                         ; $6484: $fe $ff
	jr   z, jr_008_6490                              ; $6486: $28 $08

	ld   b, $00                                      ; $6488: $06 $00
	ld   c, a                                        ; $648a: $4f
	ld   hl, $cbef                                   ; $648b: $21 $ef $cb
	add  hl, bc                                      ; $648e: $09
	ld   a, [hl]                                     ; $648f: $7e

jr_008_6490:
	ld   [wTimedQuestionAnswer], a                                  ; $6490: $ea $93 $cb
	ld   hl, $cb88                                   ; $6493: $21 $88 $cb
	inc  [hl]                                        ; $6496: $34
	xor  a                                           ; $6497: $af
	ld   [$cb89], a                                  ; $6498: $ea $89 $cb

jr_008_649b:
	ret                                              ; $649b: $c9


	ld   hl, $cb89                                   ; $649c: $21 $89 $cb
	ld   a, [hl]                                     ; $649f: $7e
	inc  [hl]                                        ; $64a0: $34
	or   a                                           ; $64a1: $b7
	jr   nz, jr_008_64b9                             ; $64a2: $20 $15

	M_FarCall Func_0a_4934
	
	ret                                              ; $64b8: $c9


jr_008_64b9:
	xor  a                                           ; $64b9: $af
	ld   [$cbaa], a                                  ; $64ba: $ea $aa $cb
	ld   [$cbab], a                                  ; $64bd: $ea $ab $cb
	ld   a, [wWramBank]                                  ; $64c0: $fa $93 $c2
	push af                                          ; $64c3: $f5
	ld   a, $02                                      ; $64c4: $3e $02
	ld   [wWramBank], a                                  ; $64c6: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $64c9: $e0 $70
	ld   hl, $d880                                   ; $64cb: $21 $80 $d8
	ld   bc, $00c0                                   ; $64ce: $01 $c0 $00
	ld   de, $0000                                   ; $64d1: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $64d4: $cd $9f $09
	pop  af                                          ; $64d7: $f1
	ld   [wWramBank], a                                  ; $64d8: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $64db: $e0 $70
	ld   c, $81                                      ; $64dd: $0e $81
	ld   de, $8d40                                   ; $64df: $11 $40 $8d
	ld   a, $02                                      ; $64e2: $3e $02
	ld   hl, $d880                                   ; $64e4: $21 $80 $d8
	ld   b, $18                                      ; $64e7: $06 $18
	call EnqueueHDMATransfer                                       ; $64e9: $cd $7c $02
	ld   hl, $cb88                                   ; $64ec: $21 $88 $cb
	inc  [hl]                                        ; $64ef: $34
	xor  a                                           ; $64f0: $af
	ld   [$cb89], a                                  ; $64f1: $ea $89 $cb
	ret                                              ; $64f4: $c9


	ld   a, [wWramBank]                                  ; $64f5: $fa $93 $c2
	push af                                          ; $64f8: $f5
	ld   a, $02                                      ; $64f9: $3e $02
	ld   [wWramBank], a                                  ; $64fb: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $64fe: $e0 $70
	ld   a, [$cb89]                                  ; $6500: $fa $89 $cb
	or   a                                           ; $6503: $b7
	jr   nz, jr_008_651e                             ; $6504: $20 $18

	xor  a                                           ; $6506: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $6507: $ea $62 $c3
	ld   a, $0c                                      ; $650a: $3e $0c
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $650c: $ea $63 $c3
	ld   a, $04                                      ; $650f: $3e $04
	ld   b, $00                                      ; $6511: $06 $00
	ld   hl, wBGPalettes                                   ; $6513: $21 $de $c2
	ld   c, $00                                      ; $6516: $0e $00
	ld   de, $da00                                   ; $6518: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $651b: $cd $48 $07

jr_008_651e:
	ld   hl, $cb89                                   ; $651e: $21 $89 $cb
	ld   a, [hl]                                     ; $6521: $7e
	inc  [hl]                                        ; $6522: $34
	cp   $0f                                         ; $6523: $fe $0f
	jr   nc, jr_008_6534                             ; $6525: $30 $0d

	ld   bc, $000c                                   ; $6527: $01 $0c $00
	call FadePalettesAndSetRangeToUpdate                                       ; $652a: $cd $32 $08
	pop  af                                          ; $652d: $f1
	ld   [wWramBank], a                                  ; $652e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6531: $e0 $70
	ret                                              ; $6533: $c9


jr_008_6534:
	ld   a, $00                                      ; $6534: $3e $00
	ld   hl, $da00                                   ; $6536: $21 $00 $da
	ld   de, wBGPalettes                                   ; $6539: $11 $de $c2
	ld   bc, $0018                                   ; $653c: $01 $18 $00
	call FarMemCopy                                       ; $653f: $cd $b2 $09
	ld   bc, $000b                                   ; $6542: $01 $0b $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6545: $cd $aa $04
	call DequeueAScriptOpcode                               ; $6548: $cd $bc $40
	pop  af                                          ; $654b: $f1
	ld   [wWramBank], a                                  ; $654c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $654f: $e0 $70
	ld   a, SO_PRE_SPECIFIED_DELAY                                      ; $6551: $3e $34
	call EnqueueAScriptOpcode                               ; $6553: $cd $97 $40
	ld   a, $0f                                      ; $6556: $3e $0f
	ld   [hl], a                                     ; $6558: $77
	ret                                              ; $6559: $c9


ScriptOpcode1a_Init:
	ld   a, $1a                                      ; $655a: $3e $1a
	call EnqueueAScriptOpcode                               ; $655c: $cd $97 $40
	call GetNextScriptOpcodeToProcess                               ; $655f: $cd $70 $42
	ld   [hl], a                                     ; $6562: $77
	ld   a, SO_03                                      ; $6563: $3e $03
	call EnqueueAScriptOpcode                               ; $6565: $cd $97 $40
	xor  a                                           ; $6568: $af
	ld   [hl], a                                     ; $6569: $77
	ld   a, SO_02                                      ; $656a: $3e $02
	jp   AddInterruptScriptOpcode                               ; $656c: $c3 $ba $42


ScriptOpcode1a_Main:
	xor  a                                           ; $656f: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $6570: $ea $52 $cb
	ld   a, [hl]                                     ; $6573: $7e
	push af                                          ; $6574: $f5
	call DequeueAScriptOpcode                               ; $6575: $cd $bc $40
	pop  af                                          ; $6578: $f1
	dec  a                                           ; $6579: $3d
	sla  a                                           ; $657a: $cb $27
	ld   b, $00                                      ; $657c: $06 $00
	ld   c, a                                        ; $657e: $4f
	ld   hl, $6587                                   ; $657f: $21 $87 $65
	add  hl, bc                                      ; $6582: $09
	ld   a, [hl+]                                    ; $6583: $2a
	ld   h, [hl]                                     ; $6584: $66
	ld   l, a                                        ; $6585: $6f
	jp   hl                                          ; $6586: $e9


	sub  a                                           ; $6587: $97
	ld   h, l                                        ; $6588: $65
	bit  4, l                                        ; $6589: $cb $65
	nop                                              ; $658b: $00
	ld   h, [hl]                                     ; $658c: $66
	inc  [hl]                                        ; $658d: $34
	ld   h, [hl]                                     ; $658e: $66
	ld   l, b                                        ; $658f: $68
	ld   h, [hl]                                     ; $6590: $66
	sbc  h                                           ; $6591: $9c
	ld   h, [hl]                                     ; $6592: $66
	ret  nc                                          ; $6593: $d0

	ld   h, [hl]                                     ; $6594: $66
	inc  b                                           ; $6595: $04
	ld   h, a                                        ; $6596: $67
	ld   hl, $0014                                   ; $6597: $21 $14 $00
	ld   a, $ff                                      ; $659a: $3e $ff

	M_FarCall SetOrUnsetFlag
	
	ld   a, [wGameState]                                  ; $65b0: $fa $a0 $c2
	ld   h, a                                        ; $65b3: $67
	ld   l, $01                                      ; $65b4: $2e $01

	M_FarCall Func_3e_7f51
	ret                                              ; $65ca: $c9


	ld   hl, $0015                                   ; $65cb: $21 $15 $00
	ld   a, $ff                                      ; $65ce: $3e $ff

	M_FarCall SetOrUnsetFlag
	
	ld   a, [wGameState]                                  ; $65e4: $fa $a0 $c2
	ld   h, a                                        ; $65e7: $67
	ld   l, $01                                      ; $65e8: $2e $01
	xor  a                                           ; $65ea: $af

	M_FarCall Func_10_7561
	ret                                              ; $65ff: $c9


	ld   hl, $0016                                   ; $6600: $21 $16 $00
	ld   a, $ff                                      ; $6603: $3e $ff

	M_FarCall SetOrUnsetFlag
	
	ld   a, [wGameState]                                  ; $6619: $fa $a0 $c2
	ld   h, a                                        ; $661c: $67
	ld   l, $01                                      ; $661d: $2e $01

	M_FarCall Func_11_6d9e
	ret                                              ; $6633: $c9


	ld   hl, $0017                                   ; $6634: $21 $17 $00
	ld   a, $ff                                      ; $6637: $3e $ff

	M_FarCall SetOrUnsetFlag
	
	ld   a, [wGameState]                                  ; $664d: $fa $a0 $c2
	ld   h, a                                        ; $6650: $67
	ld   l, $01                                      ; $6651: $2e $01

	M_FarCall Func_3e_794b
	ret                                              ; $6667: $c9


	ld   hl, $0018                                   ; $6668: $21 $18 $00
	ld   a, $ff                                      ; $666b: $3e $ff

	M_FarCall SetOrUnsetFlag
	
	ld   a, [wGameState]                                  ; $6681: $fa $a0 $c2
	ld   h, a                                        ; $6684: $67
	ld   l, $01                                      ; $6685: $2e $01

	M_FarCall Func_3e_7301
	ret                                              ; $669b: $c9


	ld   hl, $0019                                   ; $669c: $21 $19 $00
	ld   a, $ff                                      ; $669f: $3e $ff

	M_FarCall SetOrUnsetFlag
	
	ld   a, [wGameState]                                  ; $66b5: $fa $a0 $c2
	ld   h, a                                        ; $66b8: $67
	ld   l, $01                                      ; $66b9: $2e $01

	M_FarCall Func_3f_4634
	ret                                              ; $66cf: $c9


	ld   hl, $00d8                                   ; $66d0: $21 $d8 $00
	ld   a, $ff                                      ; $66d3: $3e $ff

	M_FarCall Call_009_4537
	
	ld   a, [wGameState]                                  ; $66e9: $fa $a0 $c2
	ld   h, a                                        ; $66ec: $67
	ld   l, $01                                      ; $66ed: $2e $01

	M_FarCall Func_3e_4863
	ret                                              ; $6703: $c9


	ld   hl, $00d7                                   ; $6704: $21 $d7 $00
	ld   a, $ff                                      ; $6707: $3e $ff

	M_FarCall Call_009_4537
	
	ld   a, [wGameState]                                  ; $671d: $fa $a0 $c2
	ld   h, a                                        ; $6720: $67
	ld   l, $01                                      ; $6721: $2e $01

	M_FarCall Func_3e_5a6d
	ret                                              ; $6737: $c9


ScriptOpcode33_Init:
	ld   a, $33                                      ; $6738: $3e $33
	call EnqueueAScriptOpcode                               ; $673a: $cd $97 $40
	xor  a                                           ; $673d: $af
	ld   [hl], a                                     ; $673e: $77

ScriptOpcode33_Main:
	xor  a                                           ; $673f: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $6740: $ea $52 $cb
	ld   a, l                                        ; $6743: $7d
	ld   [wScriptOpcodeParamPointer], a                                  ; $6744: $ea $74 $cb
	ld   a, h                                        ; $6747: $7c
	ld   [wScriptOpcodeParamPointer+1], a                                  ; $6748: $ea $75 $cb
	ld   a, [hl]                                     ; $674b: $7e
	ldh  [hScriptOpcodeParams], a                                    ; $674c: $e0 $a0
	or   a                                           ; $674e: $b7
	jr   nz, jr_008_676a                             ; $674f: $20 $19

	ld   a, $0c                                      ; $6751: $3e $0c
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $6753: $ea $62 $c3
	ld   a, $28                                      ; $6756: $3e $28
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $6758: $ea $63 $c3
	ld   a, $03                                      ; $675b: $3e $03
	ld   b, $00                                      ; $675d: $06 $00
	ld   hl, wBGPalettes                                   ; $675f: $21 $de $c2
	ld   c, $01                                      ; $6762: $0e $01
	ld   de, $7000                                   ; $6764: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $6767: $cd $48 $07

jr_008_676a:
	ld   hl, hScriptOpcodeParams                                   ; $676a: $21 $a0 $ff
	ld   a, [$cb91]                                  ; $676d: $fa $91 $cb
	or   a                                           ; $6770: $b7
	jr   z, jr_008_6778                              ; $6771: $28 $05

	ld   a, [hl]                                     ; $6773: $7e
	or   $03                                         ; $6774: $f6 $03
	inc  a                                           ; $6776: $3c
	ld   [hl], a                                     ; $6777: $77

jr_008_6778:
	ld   a, [hl]                                     ; $6778: $7e
	inc  [hl]                                        ; $6779: $34
	cp   $1f                                         ; $677a: $fe $1f
	jr   nc, jr_008_6790                             ; $677c: $30 $12

	and  $03                                         ; $677e: $e6 $03
	ld   bc, $0c28                                   ; $6780: $01 $28 $0c
	call z, FadePalettesAndSetRangeToUpdate                                    ; $6783: $cc $32 $08
	ld   hl, wScriptOpcodeParamPointer                                   ; $6786: $21 $74 $cb
	ld   a, [hl+]                                    ; $6789: $2a
	ld   h, [hl]                                     ; $678a: $66
	ld   l, a                                        ; $678b: $6f
	ldh  a, [hScriptOpcodeParams]                                    ; $678c: $f0 $a0
	ld   [hl], a                                     ; $678e: $77
	ret                                              ; $678f: $c9


jr_008_6790:
	ld   a, $01                                      ; $6790: $3e $01
	ld   hl, $7000                                   ; $6792: $21 $00 $70
	ld   de, wBGPalettes+3*8                                   ; $6795: $11 $f6 $c2
	ld   bc, $0050                                   ; $6798: $01 $50 $00
	call FarMemCopy                                       ; $679b: $cd $b2 $09
	ld   bc, $0c33                                   ; $679e: $01 $33 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $67a1: $cd $aa $04
	call Call_008_413a                               ; $67a4: $cd $3a $41
	xor  a                                           ; $67a7: $af
	ld   [$cba8], a                                  ; $67a8: $ea $a8 $cb
	ld   [$cba9], a                                  ; $67ab: $ea $a9 $cb
	ld   [$cbae], a                                  ; $67ae: $ea $ae $cb
	ld   [$cbb0], a                                  ; $67b1: $ea $b0 $cb
	ld   [$cbac], a                                  ; $67b4: $ea $ac $cb
	ld   [$cba6], a                                  ; $67b7: $ea $a6 $cb
	jp   DequeueAScriptOpcode                               ; $67ba: $c3 $bc $40


ScriptOpcode34_PreSpecifiedDelay_Init:
	ld   a, $34                                      ; $67bd: $3e $34
	call EnqueueAScriptOpcode                               ; $67bf: $cd $97 $40
	xor  a                                           ; $67c2: $af
	ld   [hl], a                                     ; $67c3: $77

ScriptOpcode34_PreSpecifiedDelay_Main:
	xor  a                                           ; $67c4: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $67c5: $ea $52 $cb
	ld   a, [hl]                                     ; $67c8: $7e
	dec  [hl]                                        ; $67c9: $35
	or   a                                           ; $67ca: $b7
	ret  nz                                          ; $67cb: $c0

	jp   DequeueAScriptOpcode                               ; $67cc: $c3 $bc $40


ScriptOpcode1c_SetPortraitAndCharacter_Init:
ScriptOpcode1c_SetPortraitAndCharacter_Main:
; 3 script bytes after into B, C, D
	call GetNextScriptOpcodeToProcess                               ; $67cf: $cd $70 $42
	ld   b, a                                        ; $67d2: $47
	call GetNextScriptOpcodeToProcess                               ; $67d3: $cd $70 $42
	ld   c, a                                        ; $67d6: $4f
	call GetNextScriptOpcodeToProcess                               ; $67d7: $cd $70 $42
	ld   d, a                                        ; $67da: $57
	
; Add interupt $0d with params B, C
	ld   a, SO_SET_CHAR_ON_SCREEN                                      ; $67db: $3e $0d
	call AddInterruptScriptOpcode                               ; $67dd: $cd $ba $42
	ld   a, b                                        ; $67e0: $78
	call AddInterruptScriptOpcode                               ; $67e1: $cd $ba $42
	ld   a, c                                        ; $67e4: $79
	call AddInterruptScriptOpcode                               ; $67e5: $cd $ba $42

; Add interrupt $0f with params B, D
	ld   a, SO_SET_PORTRAIT                                      ; $67e8: $3e $0f
	call AddInterruptScriptOpcode                               ; $67ea: $cd $ba $42
	ld   a, b                                        ; $67ed: $78
	call AddInterruptScriptOpcode                               ; $67ee: $cd $ba $42
	ld   a, d                                        ; $67f1: $7a
	call AddInterruptScriptOpcode                               ; $67f2: $cd $ba $42
	ret                                              ; $67f5: $c9


ScriptOpcode1d_Init:
	call GetNextScriptOpcodeToProcess                               ; $67f6: $cd $70 $42
	ld   h, a                                        ; $67f9: $67
	call GetNextScriptOpcodeToProcess                               ; $67fa: $cd $70 $42
	ld   l, a                                        ; $67fd: $6f
	push hl                                          ; $67fe: $e5

	M_FarCall Func_09_44d7
	
	pop  hl                                          ; $6813: $e1
	push af                                          ; $6814: $f5
	
	push hl                                          ; $6815: $e5
	call HandleProcessingScriptCalcStack                               ; $6816: $cd $d1 $44
	pop  hl                                          ; $6819: $e1
	
	cp   $08                                         ; $681a: $fe $08
	jr   c, jr_008_6839                              ; $681c: $38 $1b

	push hl                                          ; $681e: $e5

	M_FarCall Func_09_4530

	pop  hl                                          ; $6833: $e1
	pop  bc                                          ; $6834: $c1
	sub  b                                           ; $6835: $90
	ld   b, a                                        ; $6836: $47
	jr   jr_008_6854                                 ; $6837: $18 $1b

jr_008_6839:
	push hl                                          ; $6839: $e5
	ld   a, $08                                      ; $683a: $3e $08

	M_FarCall Func_09_4530
	
	pop  hl                                          ; $6850: $e1
	pop  bc                                          ; $6851: $c1
	ld   b, $ff                                      ; $6852: $06 $ff

jr_008_6854:
	ld   a, l                                        ; $6854: $7d
	ld   hl, $cbaa                                   ; $6855: $21 $aa $cb
	sub  [hl]                                        ; $6858: $96
	sub  $10                                         ; $6859: $d6 $10
	ret  nz                                          ; $685b: $c0

	push bc                                          ; $685c: $c5
	ld   a, SO_1d                                      ; $685d: $3e $1d
	call EnqueueAScriptOpcode                               ; $685f: $cd $97 $40
	pop  af                                          ; $6862: $f1
	push hl                                          ; $6863: $e5
	ld   [hl-], a                                    ; $6864: $32
	xor  a                                           ; $6865: $af
	ld   [hl-], a                                    ; $6866: $32
	ld   [hl-], a                                    ; $6867: $32
	ld   [hl-], a                                    ; $6868: $32
	pop  hl                                          ; $6869: $e1

ScriptOpcode1d_Main:
	xor  a                                           ; $686a: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $686b: $ea $52 $cb
	ld   a, l                                        ; $686e: $7d
	ld   [wScriptOpcodeParamPointer], a                                  ; $686f: $ea $74 $cb
	ld   a, h                                        ; $6872: $7c
	ld   [wScriptOpcodeParamPointer+1], a                                  ; $6873: $ea $75 $cb
	ld   a, [hl-]                                    ; $6876: $3a
	ldh  [hScriptOpcodeParams], a                                    ; $6877: $e0 $a0
	ld   a, [hl-]                                    ; $6879: $3a
	ldh  [hScriptOpcodeParams+1], a                                    ; $687a: $e0 $a1
	ld   a, [hl-]                                    ; $687c: $3a
	ldh  [hScriptOpcodeParams+2], a                                    ; $687d: $e0 $a2
	ld   a, [hl-]                                    ; $687f: $3a
	ldh  [hScriptOpcodeParams+3], a                                    ; $6880: $e0 $a3
	ldh  a, [hScriptOpcodeParams+2]                                    ; $6882: $f0 $a2
	sla  a                                           ; $6884: $cb $27
	ld   b, $00                                      ; $6886: $06 $00
	ld   c, a                                        ; $6888: $4f
	ld   hl, $6891                                   ; $6889: $21 $91 $68
	add  hl, bc                                      ; $688c: $09
	ld   a, [hl+]                                    ; $688d: $2a
	ld   h, [hl]                                     ; $688e: $66
	ld   l, a                                        ; $688f: $6f
	jp   hl                                          ; $6890: $e9


	sub  l                                           ; $6891: $95
	ld   l, b                                        ; $6892: $68
	or   b                                           ; $6893: $b0
	ld   l, b                                        ; $6894: $68
	ldh  a, [hScriptOpcodeParams]                                    ; $6895: $f0 $a0
	bit  7, a                                        ; $6897: $cb $7f
	jr   nz, jr_008_68a2                             ; $6899: $20 $07

	ld   a, $02                                      ; $689b: $3e $02
	call Call_008_4334                               ; $689d: $cd $34 $43
	jr   jr_008_68a7                                 ; $68a0: $18 $05

jr_008_68a2:
	ld   a, $03                                      ; $68a2: $3e $03
	call Call_008_4334                               ; $68a4: $cd $34 $43

jr_008_68a7:
	ld   hl, hScriptOpcodeParams+2                                   ; $68a7: $21 $a2 $ff
	inc  [hl]                                        ; $68aa: $34
	xor  a                                           ; $68ab: $af
	ldh  [hScriptOpcodeParams+3], a                                    ; $68ac: $e0 $a3
	jr   jr_008_68bc                                 ; $68ae: $18 $0c

	ld   hl, hScriptOpcodeParams+3                                   ; $68b0: $21 $a3 $ff
	ld   a, [hl]                                     ; $68b3: $7e
	inc  [hl]                                        ; $68b4: $34
	cp   $1e                                         ; $68b5: $fe $1e
	jp   nc, DequeueAScriptOpcode                           ; $68b7: $d2 $bc $40

	jr   jr_008_68bc                                 ; $68ba: $18 $00

jr_008_68bc:
	ld   hl, wScriptOpcodeParamPointer                                   ; $68bc: $21 $74 $cb
	ld   a, [hl+]                                    ; $68bf: $2a
	ld   h, [hl]                                     ; $68c0: $66
	ld   l, a                                        ; $68c1: $6f
	ldh  a, [hScriptOpcodeParams]                                    ; $68c2: $f0 $a0
	ld   [hl-], a                                    ; $68c4: $32
	ldh  a, [hScriptOpcodeParams+1]                                    ; $68c5: $f0 $a1
	ld   [hl-], a                                    ; $68c7: $32
	ldh  a, [hScriptOpcodeParams+2]                                    ; $68c8: $f0 $a2
	ld   [hl-], a                                    ; $68ca: $32
	ldh  a, [hScriptOpcodeParams+3]                                    ; $68cb: $f0 $a3
	ld   [hl-], a                                    ; $68cd: $32
	ret                                              ; $68ce: $c9


ScriptOpcode1e_Init:
	ld   a, $1e                                      ; $68cf: $3e $1e
	call EnqueueAScriptOpcode                               ; $68d1: $cd $97 $40
	xor  a                                           ; $68d4: $af
	ld   [hl-], a                                    ; $68d5: $32
	ld   [hl-], a                                    ; $68d6: $32
	ld   [hl-], a                                    ; $68d7: $32
	ld   [hl-], a                                    ; $68d8: $32
	ret                                              ; $68d9: $c9


ScriptOpcode1e_Main:
	xor  a                                           ; $68da: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $68db: $ea $52 $cb
	ld   a, l                                        ; $68de: $7d
	ld   [wScriptOpcodeParamPointer], a                                  ; $68df: $ea $74 $cb
	ld   a, h                                        ; $68e2: $7c
	ld   [wScriptOpcodeParamPointer+1], a                                  ; $68e3: $ea $75 $cb
	ld   a, [hl-]                                    ; $68e6: $3a
	ldh  [hScriptOpcodeParams], a                                    ; $68e7: $e0 $a0
	ld   a, [hl-]                                    ; $68e9: $3a
	ldh  [hScriptOpcodeParams+1], a                                    ; $68ea: $e0 $a1
	ld   a, [hl-]                                    ; $68ec: $3a
	ldh  [hScriptOpcodeParams+2], a                                    ; $68ed: $e0 $a2
	ld   a, [hl-]                                    ; $68ef: $3a
	ldh  [hScriptOpcodeParams+3], a                                    ; $68f0: $e0 $a3
	ldh  a, [hScriptOpcodeParams]                                    ; $68f2: $f0 $a0
	ld   h, $00                                      ; $68f4: $26 $00
	ld   l, a                                        ; $68f6: $6f
	add  hl, hl                                      ; $68f7: $29
	ld   bc, $6900                                   ; $68f8: $01 $00 $69
	add  hl, bc                                      ; $68fb: $09
	ld   a, [hl+]                                    ; $68fc: $2a
	ld   h, [hl]                                     ; $68fd: $66
	ld   l, a                                        ; $68fe: $6f
	jp   hl                                          ; $68ff: $e9


	ld   [$d669], sp                                 ; $6900: $08 $69 $d6
	ld   l, c                                        ; $6903: $69
	inc  a                                           ; $6904: $3c
	ld   l, d                                        ; $6905: $6a
	add  sp, $6a                                     ; $6906: $e8 $6a
	ld   a, [wWramBank]                                  ; $6908: $fa $93 $c2
	push af                                          ; $690b: $f5
	ld   a, $07                                      ; $690c: $3e $07
	ld   [wWramBank], a                                  ; $690e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6911: $e0 $70
	ld   de, $d000                                   ; $6913: $11 $00 $d0
	ld   hl, $6982                                   ; $6916: $21 $82 $69
	ld   bc, $0040                                   ; $6919: $01 $40 $00
	call MemCopy                                       ; $691c: $cd $a9 $09
	ld   c, $81                                      ; $691f: $0e $81
	ld   de, $8000                                   ; $6921: $11 $00 $80
	ld   a, $07                                      ; $6924: $3e $07
	ld   hl, $d000                                   ; $6926: $21 $00 $d0
	ld   b, $04                                      ; $6929: $06 $04
	call EnqueueHDMATransfer                                       ; $692b: $cd $7c $02
	ld   a, $0d                                      ; $692e: $3e $0d
	ld   hl, $4f80                                   ; $6930: $21 $80 $4f
	ld   de, $c356                                   ; $6933: $11 $56 $c3
	ld   bc, $0008                                   ; $6936: $01 $08 $00
	call FarMemCopy                                       ; $6939: $cd $b2 $09
	ld   bc, $3c3f                                   ; $693c: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $693f: $cd $aa $04
	pop  af                                          ; $6942: $f1
	ld   [wWramBank], a                                  ; $6943: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6946: $e0 $70
	ld   a, $0d                                      ; $6948: $3e $0d
	ld   hl, $4f80                                   ; $694a: $21 $80 $4f
	ld   de, $c356                                   ; $694d: $11 $56 $c3
	ld   bc, $0008                                   ; $6950: $01 $08 $00
	call FarMemCopy                                       ; $6953: $cd $b2 $09
	ld   bc, $3c3f                                   ; $6956: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6959: $cd $aa $04
	ld   de, $c602                                   ; $695c: $11 $02 $c6
	ld   hl, $69c2                                   ; $695f: $21 $c2 $69
	ld   bc, $0040                                   ; $6962: $01 $40 $00
	call MemCopy                                       ; $6965: $cd $a9 $09
	ld   de, $c642                                   ; $6968: $11 $42 $c6
	ld   hl, $69ce                                   ; $696b: $21 $ce $69
	ld   bc, $0008                                   ; $696e: $01 $08 $00
	call MemCopy                                       ; $6971: $cd $a9 $09
	ld   a, $ff                                      ; $6974: $3e $ff
	ldh  [hScriptOpcodeParams+3], a                                    ; $6976: $e0 $a3
	ld   hl, hScriptOpcodeParams                                   ; $6978: $21 $a0 $ff
	inc  [hl]                                        ; $697b: $34
	xor  a                                           ; $697c: $af
	ldh  [hScriptOpcodeParams+1], a                                    ; $697d: $e0 $a1
	jp   Jump_008_6af6                               ; $697f: $c3 $f6 $6a


	nop                                              ; $6982: $00
	nop                                              ; $6983: $00
	ld   a, a                                        ; $6984: $7f
	ld   a, a                                        ; $6985: $7f
	rst  $38                                         ; $6986: $ff
	add  b                                           ; $6987: $80
	ld   a, l                                        ; $6988: $7d
	ld   h, e                                        ; $6989: $63
	ld   a, a                                        ; $698a: $7f
	ld   b, c                                        ; $698b: $41
	ld   l, e                                        ; $698c: $6b
	ld   d, h                                        ; $698d: $54
	db   $eb                                         ; $698e: $eb
	sub  h                                           ; $698f: $94
	db   $eb                                         ; $6990: $eb
	sub  h                                           ; $6991: $94
	ei                                               ; $6992: $fb
	add  l                                           ; $6993: $85
	ld   a, a                                        ; $6994: $7f
	ld   b, c                                        ; $6995: $41
	scf                                              ; $6996: $37
	add  hl, hl                                      ; $6997: $29
	rra                                              ; $6998: $1f
	add  hl, de                                      ; $6999: $19
	rrca                                             ; $699a: $0f
	add  hl, bc                                      ; $699b: $09
	rrca                                             ; $699c: $0f
	add  hl, bc                                      ; $699d: $09
	rrca                                             ; $699e: $0f
	add  hl, bc                                      ; $699f: $09
	ld   b, $06                                      ; $69a0: $06 $06
	nop                                              ; $69a2: $00
	nop                                              ; $69a3: $00
	nop                                              ; $69a4: $00
	nop                                              ; $69a5: $00
	add  b                                           ; $69a6: $80
	add  b                                           ; $69a7: $80
	nop                                              ; $69a8: $00
	nop                                              ; $69a9: $00
	nop                                              ; $69aa: $00
	nop                                              ; $69ab: $00
	add  b                                           ; $69ac: $80
	add  b                                           ; $69ad: $80
	ret  nz                                          ; $69ae: $c0

	ld   b, b                                        ; $69af: $40
	ret  nz                                          ; $69b0: $c0

	ld   b, b                                        ; $69b1: $40
	ret  nz                                          ; $69b2: $c0

	ld   b, b                                        ; $69b3: $40
	add  b                                           ; $69b4: $80
	add  b                                           ; $69b5: $80
	nop                                              ; $69b6: $00
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
	ld   a, [hl+]                                    ; $69c2: $2a
	jr   @+$45                                       ; $69c3: $18 $43

	db $18, $5f

	jr   @+$2b                                       ; $69c7: $18 $29

	dec  e                                           ; $69c9: $1d
	ld   b, h                                        ; $69ca: $44
	dec  e                                           ; $69cb: $1d
	ld   h, e                                        ; $69cc: $63
	dec  e                                           ; $69cd: $1d
	ld   b, l                                        ; $69ce: $45
	nop                                              ; $69cf: $00
	inc  bc                                          ; $69d0: $03
	ld   [bc], a                                     ; $69d1: $02
	nop                                              ; $69d2: $00
	ld   h, d                                        ; $69d3: $62
	ld   [hl], a                                     ; $69d4: $77
	inc  bc                                          ; $69d5: $03
	ld   a, $02                                      ; $69d6: $3e $02
	ld   hl, $0000                                   ; $69d8: $21 $00 $00
	ld   de, $c642                                   ; $69db: $11 $42 $c6
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $69de: $cd $4b $2f
	ldh  [hScriptOpcodeParams+2], a                                    ; $69e1: $e0 $a2
	call StartAnimatingAnimatedSpriteSpec                                       ; $69e3: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $69e6: $cd $76 $30

	M_FarCall Func_01_4495
	
	ld   a, $20                                      ; $69fd: $3e $20
	ld   b, $21                                      ; $69ff: $06 $21
	ld   c, $51                                      ; $6a01: $0e $51

	M_FarCall Func_01_44ab
	
	ld   a, [$b0af]                                  ; $6a17: $fa $af $b0
	dec  a                                           ; $6a1a: $3d
	ld   b, a                                        ; $6a1b: $47
	ld   c, $00                                      ; $6a1c: $0e $00

	M_FarCall Func_01_44d7
	
	ld   hl, hScriptOpcodeParams                                   ; $6a32: $21 $a0 $ff
	inc  [hl]                                        ; $6a35: $34
	xor  a                                           ; $6a36: $af
	ldh  [hScriptOpcodeParams+1], a                                    ; $6a37: $e0 $a1
	jp   Jump_008_6af6                               ; $6a39: $c3 $f6 $6a


	ldh  a, [hScriptOpcodeParams+2]                                    ; $6a3c: $f0 $a2
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6a3e: $cd $76 $30

	M_FarCall Func_01_450a
	
	or   a                                           ; $6a55: $b7
	jr   z, jr_008_6a6b                              ; $6a56: $28 $13

	bit  7, a                                        ; $6a58: $cb $7f
	jr   nz, jr_008_6a6b                             ; $6a5a: $20 $0f

	ld   [$b0af], a                                  ; $6a5c: $ea $af $b0
	dec  a                                           ; $6a5f: $3d
	ldh  [hScriptOpcodeParams+3], a                                    ; $6a60: $e0 $a3
	ld   hl, hScriptOpcodeParams                                   ; $6a62: $21 $a0 $ff
	inc  [hl]                                        ; $6a65: $34
	xor  a                                           ; $6a66: $af
	ldh  [hScriptOpcodeParams+1], a                                    ; $6a67: $e0 $a1
	jr   jr_008_6ae5                                 ; $6a69: $18 $7a

jr_008_6a6b:
	M_FarCall Func_01_4500
	
	ld   b, a                                        ; $6a7f: $47
	ldh  a, [hScriptOpcodeParams+3]                                    ; $6a80: $f0 $a3
	cp   b                                           ; $6a82: $b8
	jr   z, jr_008_6ae5                              ; $6a83: $28 $60

	ld   a, b                                        ; $6a85: $78
	ldh  [hScriptOpcodeParams+3], a                                    ; $6a86: $e0 $a3
	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $6a88: $cd $09 $14
	ld   bc, $0e03                                   ; $6a8b: $01 $03 $0e
	call SetKanjiTextBoxDimensions                                       ; $6a8e: $cd $24 $14
	ld   bc, $0000                                   ; $6a91: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $6a94: $cd $34 $14
	ld   a, [wWramBank]                                  ; $6a97: $fa $93 $c2
	push af                                          ; $6a9a: $f5
	ld   a, $02                                      ; $6a9b: $3e $02
	ld   [wWramBank], a                                  ; $6a9d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6aa0: $e0 $70
	ld   hl, $d340                                   ; $6aa2: $21 $40 $d3
	ld   bc, $02a0                                   ; $6aa5: $01 $a0 $02
	ld   de, $0000                                   ; $6aa8: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $6aab: $cd $9f $09
	ldh  a, [hScriptOpcodeParams+3]                                    ; $6aae: $f0 $a3
	inc  a                                           ; $6ab0: $3c
	ld   h, $00                                      ; $6ab1: $26 $00
	ld   l, a                                        ; $6ab3: $6f

	M_FarCall Func_0a_5b4b

	ld   d, h                                        ; $6ac8: $54
	ld   e, l                                        ; $6ac9: $5d
	ld   hl, $d340                                   ; $6aca: $21 $40 $d3
	call LoadInstantText                                       ; $6acd: $cd $06 $13
	ld   c, $81                                      ; $6ad0: $0e $81
	ld   de, $8800                                   ; $6ad2: $11 $00 $88
	ld   a, $02                                      ; $6ad5: $3e $02
	ld   hl, $d340                                   ; $6ad7: $21 $40 $d3
	ld   b, $38                                      ; $6ada: $06 $38
	call EnqueueHDMATransfer                                       ; $6adc: $cd $7c $02
	pop  af                                          ; $6adf: $f1
	ld   [wWramBank], a                                  ; $6ae0: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6ae3: $e0 $70

jr_008_6ae5:
	jp   Jump_008_6af6                               ; $6ae5: $c3 $f6 $6a


	ldh  a, [hScriptOpcodeParams+2]                                    ; $6ae8: $f0 $a2
	call Func_2fbb                                       ; $6aea: $cd $bb $2f
	call DequeueAScriptOpcode                               ; $6aed: $cd $bc $40
	ld   a, SO_CLEAR_TEXT_BOX                                      ; $6af0: $3e $08
	call EnqueueAScriptOpcode                               ; $6af2: $cd $97 $40
	ret                                              ; $6af5: $c9


Jump_008_6af6:
	ld   hl, wScriptOpcodeParamPointer                                   ; $6af6: $21 $74 $cb
	ld   a, [hl+]                                    ; $6af9: $2a
	ld   h, [hl]                                     ; $6afa: $66
	ld   l, a                                        ; $6afb: $6f
	ldh  a, [hScriptOpcodeParams]                                    ; $6afc: $f0 $a0
	ld   [hl-], a                                    ; $6afe: $32
	ldh  a, [hScriptOpcodeParams+1]                                    ; $6aff: $f0 $a1
	ld   [hl-], a                                    ; $6b01: $32
	ldh  a, [hScriptOpcodeParams+2]                                    ; $6b02: $f0 $a2
	ld   [hl-], a                                    ; $6b04: $32
	ldh  a, [hScriptOpcodeParams+3]                                    ; $6b05: $f0 $a3
	ld   [hl-], a                                    ; $6b07: $32
	ret                                              ; $6b08: $c9


ScriptOpcode1f_Init:
	ld   a, $1f                                      ; $6b09: $3e $1f
	call EnqueueAScriptOpcode                               ; $6b0b: $cd $97 $40

	push hl                                          ; $6b0e: $e5
	call HandleProcessingScriptCalcStack                               ; $6b0f: $cd $d1 $44
	pop  hl                                          ; $6b12: $e1

	ld   [hl], a                                     ; $6b13: $77
	ld   a, SO_03                                      ; $6b14: $3e $03
	call EnqueueAScriptOpcode                               ; $6b16: $cd $97 $40
	xor  a                                           ; $6b19: $af
	ld   [hl], a                                     ; $6b1a: $77
	ret                                              ; $6b1b: $c9


ScriptOpcode1f_Main:
	xor  a                                           ; $6b1c: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $6b1d: $ea $52 $cb
	ld   a, [hl]                                     ; $6b20: $7e
	ld   h, $3b                                      ; $6b21: $26 $3b
	ld   l, $01                                      ; $6b23: $2e $01

	M_FarCall Func_0c_534e
	
	ld   a, SO_02                                      ; $6b39: $3e $02
	call AddInterruptScriptOpcode                               ; $6b3b: $cd $ba $42
	jp   DequeueAScriptOpcode                               ; $6b3e: $c3 $bc $40


ScriptOpcode20_Init:
ScriptOpcode20_Main:
	call HandleProcessingScriptCalcStack                               ; $6b41: $cd $d1 $44
	ld   [wRandomNumRange], a                                  ; $6b44: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $6b47: $cd $10 $0d
	ld   [$cb94], a                                  ; $6b4a: $ea $94 $cb
	ret                                              ; $6b4d: $c9


ScriptOpcode21_Init:
	ld   a, $21                                      ; $6b4e: $3e $21
	call EnqueueAScriptOpcode                               ; $6b50: $cd $97 $40
	xor  a                                           ; $6b53: $af
	ld   [hl], a                                     ; $6b54: $77
	ld   a, SO_03                                      ; $6b55: $3e $03
	call EnqueueAScriptOpcode                               ; $6b57: $cd $97 $40
	xor  a                                           ; $6b5a: $af
	ld   [hl], a                                     ; $6b5b: $77
	ret                                              ; $6b5c: $c9


ScriptOpcode21_Main:
	xor  a                                           ; $6b5d: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $6b5e: $ea $52 $cb
	ld   a, [hl]                                     ; $6b61: $7e
	inc  [hl]                                        ; $6b62: $34
	or   a                                           ; $6b63: $b7
	jp   nz, DequeueAScriptOpcode                           ; $6b64: $c2 $bc $40

	call Call_008_413a                               ; $6b67: $cd $3a $41
	xor  a                                           ; $6b6a: $af
	ld   [$cba8], a                                  ; $6b6b: $ea $a8 $cb
	ld   [$cba9], a                                  ; $6b6e: $ea $a9 $cb
	ld   [$cbae], a                                  ; $6b71: $ea $ae $cb
	ld   [$cbb0], a                                  ; $6b74: $ea $b0 $cb
	ld   [$cbac], a                                  ; $6b77: $ea $ac $cb
	ld   [$cba6], a                                  ; $6b7a: $ea $a6 $cb
	ld   h, $3b                                      ; $6b7d: $26 $3b
	ld   l, $01                                      ; $6b7f: $2e $01
	ld   de, sPlayerName                                   ; $6b81: $11 $aa $af
	ld   bc, $0005                                   ; $6b84: $01 $05 $00
	xor  a                                           ; $6b87: $af

	M_FarCall Func_10_6f2d
	
	ld   a, SO_02                                      ; $6b9c: $3e $02
	call AddInterruptScriptOpcode                               ; $6b9e: $cd $ba $42
	ret                                              ; $6ba1: $c9


ScriptOpcode22_Stub_Init:
ScriptOpcode22_Stub_Main:
	ret                                              ; $6ba2: $c9


ScriptOpcode24_Init:
	ld   a, $04                                      ; $6ba3: $3e $04
	call PlaySound                                       ; $6ba5: $cd $92 $1a
	ld   a, $24                                      ; $6ba8: $3e $24
	call EnqueueAScriptOpcode                               ; $6baa: $cd $97 $40
	push hl                                          ; $6bad: $e5
	xor  a                                           ; $6bae: $af
	ld   [hl-], a                                    ; $6baf: $32
	ld   [hl-], a                                    ; $6bb0: $32
	call GetNextScriptOpcodeToProcess                               ; $6bb1: $cd $70 $42
	ld   [hl-], a                                    ; $6bb4: $32

	M_FarCall Func_04_6fbb
	
	pop  hl                                          ; $6bc9: $e1

ScriptOpcode24_Main:
	xor  a                                           ; $6bca: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $6bcb: $ea $52 $cb
	ld   a, l                                        ; $6bce: $7d
	ld   [wScriptOpcodeParamPointer], a                                  ; $6bcf: $ea $74 $cb
	ld   a, h                                        ; $6bd2: $7c
	ld   [wScriptOpcodeParamPointer+1], a                                  ; $6bd3: $ea $75 $cb
	ld   a, [hl-]                                    ; $6bd6: $3a
	ldh  [hScriptOpcodeParams], a                                    ; $6bd7: $e0 $a0
	ld   a, [hl-]                                    ; $6bd9: $3a
	ldh  [hScriptOpcodeParams+1], a                                    ; $6bda: $e0 $a1
	ld   a, [hl-]                                    ; $6bdc: $3a
	ldh  [hScriptOpcodeParams+2], a                                    ; $6bdd: $e0 $a2
	ldh  a, [hScriptOpcodeParams]                                    ; $6bdf: $f0 $a0
	sla  a                                           ; $6be1: $cb $27
	ld   h, $00                                      ; $6be3: $26 $00
	ld   l, a                                        ; $6be5: $6f
	ld   bc, $6bee                                   ; $6be6: $01 $ee $6b
	add  hl, bc                                      ; $6be9: $09
	ld   a, [hl+]                                    ; $6bea: $2a
	ld   h, [hl]                                     ; $6beb: $66
	ld   l, a                                        ; $6bec: $6f
	jp   hl                                          ; $6bed: $e9


	db   $f4                                         ; $6bee: $f4
	ld   l, e                                        ; $6bef: $6b
	rra                                              ; $6bf0: $1f
	ld   l, h                                        ; $6bf1: $6c
	sbc  e                                           ; $6bf2: $9b
	ld   l, h                                        ; $6bf3: $6c
	ld   hl, hScriptOpcodeParams+1                                   ; $6bf4: $21 $a1 $ff
	ld   a, [hl]                                     ; $6bf7: $7e
	inc  [hl]                                        ; $6bf8: $34
	cp   $b4                                         ; $6bf9: $fe $b4
	jr   nc, jr_008_6c0e                             ; $6bfb: $30 $11

	ld   a, [$cbb1]                                  ; $6bfd: $fa $b1 $cb
	bit  7, a                                        ; $6c00: $cb $7f
	jr   nz, jr_008_6c0e                             ; $6c02: $20 $0a

	ld   a, [$cbc9]                                  ; $6c04: $fa $c9 $cb
	ld   b, a                                        ; $6c07: $47
	ld   a, [$cbcd]                                  ; $6c08: $fa $cd $cb
	or   b                                           ; $6c0b: $b0
	jr   nz, jr_008_6c1c                             ; $6c0c: $20 $0e

jr_008_6c0e:
	xor  a                                           ; $6c0e: $af
	ld   [$cbc9], a                                  ; $6c0f: $ea $c9 $cb
	ld   [$cbcd], a                                  ; $6c12: $ea $cd $cb
	ld   hl, hScriptOpcodeParams                                   ; $6c15: $21 $a0 $ff
	inc  [hl]                                        ; $6c18: $34
	xor  a                                           ; $6c19: $af
	ldh  [hScriptOpcodeParams+1], a                                    ; $6c1a: $e0 $a1

jr_008_6c1c:
	jp   Jump_008_6d40                               ; $6c1c: $c3 $40 $6d


	ldh  a, [hScriptOpcodeParams+1]                                    ; $6c1f: $f0 $a1
	or   a                                           ; $6c21: $b7
	jr   nz, jr_008_6c56                             ; $6c22: $20 $32

	ldh  a, [hScriptOpcodeParams+2]                                    ; $6c24: $f0 $a2
	dec  a                                           ; $6c26: $3d
	sla  a                                           ; $6c27: $cb $27
	ld   b, a                                        ; $6c29: $47
	sla  a                                           ; $6c2a: $cb $27
	add  b                                           ; $6c2c: $80
	ld   b, $00                                      ; $6c2d: $06 $00
	ld   c, a                                        ; $6c2f: $4f
	ld   hl, $6d50                                   ; $6c30: $21 $50 $6d
	add  hl, bc                                      ; $6c33: $09
	inc  hl                                          ; $6c34: $23
	inc  hl                                          ; $6c35: $23
	inc  hl                                          ; $6c36: $23
	ld   a, $08                                      ; $6c37: $3e $08
	call FarGetAddrBank                                       ; $6c39: $cd $09 $0b
	ld   d, h                                        ; $6c3c: $54
	ld   e, l                                        ; $6c3d: $5d
	ld   c, a                                        ; $6c3e: $4f
	ld   b, $00                                      ; $6c3f: $06 $00
	ld   hl, wBGPalettes                                   ; $6c41: $21 $de $c2
	xor  a                                           ; $6c44: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $6c45: $ea $62 $c3
	ld   a, $40                                      ; $6c48: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $6c4a: $ea $63 $c3
	ld   a, $03                                      ; $6c4d: $3e $03
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $6c4f: $cd $48 $07
	xor  a                                           ; $6c52: $af
	ld   [$cba7], a                                  ; $6c53: $ea $a7 $cb

jr_008_6c56:
	ld   hl, hScriptOpcodeParams+1                                   ; $6c56: $21 $a1 $ff
	ld   a, [hl]                                     ; $6c59: $7e
	inc  [hl]                                        ; $6c5a: $34
	cp   $3f                                         ; $6c5b: $fe $3f
	jr   nc, jr_008_6c6a                             ; $6c5d: $30 $0b

	and  $07                                         ; $6c5f: $e6 $07
	ld   bc, $0040                                   ; $6c61: $01 $40 $00
	call z, FadePalettesAndSetRangeToUpdate                                    ; $6c64: $cc $32 $08
	jp   Jump_008_6d40                               ; $6c67: $c3 $40 $6d


jr_008_6c6a:
	ldh  a, [hScriptOpcodeParams+2]                                    ; $6c6a: $f0 $a2
	dec  a                                           ; $6c6c: $3d
	sla  a                                           ; $6c6d: $cb $27
	ld   b, a                                        ; $6c6f: $47
	sla  a                                           ; $6c70: $cb $27
	add  b                                           ; $6c72: $80
	ld   b, $00                                      ; $6c73: $06 $00
	ld   c, a                                        ; $6c75: $4f
	ld   hl, $6d50                                   ; $6c76: $21 $50 $6d
	add  hl, bc                                      ; $6c79: $09
	inc  hl                                          ; $6c7a: $23
	inc  hl                                          ; $6c7b: $23
	inc  hl                                          ; $6c7c: $23
	ld   a, $08                                      ; $6c7d: $3e $08
	call FarGetAddrBank                                       ; $6c7f: $cd $09 $0b
	ld   de, wBGPalettes                                   ; $6c82: $11 $de $c2
	ld   bc, $0080                                   ; $6c85: $01 $80 $00
	call FarMemCopy                                       ; $6c88: $cd $b2 $09
	ld   bc, $003f                                   ; $6c8b: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6c8e: $cd $aa $04
	ld   hl, hScriptOpcodeParams                                   ; $6c91: $21 $a0 $ff
	inc  [hl]                                        ; $6c94: $34
	xor  a                                           ; $6c95: $af
	ldh  [hScriptOpcodeParams+1], a                                    ; $6c96: $e0 $a1
	jp   Jump_008_6d40                               ; $6c98: $c3 $40 $6d


	ld   hl, hScriptOpcodeParams+1                                   ; $6c9b: $21 $a1 $ff
	ld   a, [hl]                                     ; $6c9e: $7e
	inc  [hl]                                        ; $6c9f: $34
	dec  a                                           ; $6ca0: $3d
	jr   z, jr_008_6ce6                              ; $6ca1: $28 $43

	dec  a                                           ; $6ca3: $3d
	jr   z, jr_008_6cf8                              ; $6ca4: $28 $52

	ld   a, [wWramBank]                                  ; $6ca6: $fa $93 $c2
	push af                                          ; $6ca9: $f5
	ld   a, $07                                      ; $6caa: $3e $07
	ld   [wWramBank], a                                  ; $6cac: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6caf: $e0 $70
	ldh  a, [hScriptOpcodeParams+2]                                    ; $6cb1: $f0 $a2
	dec  a                                           ; $6cb3: $3d
	sla  a                                           ; $6cb4: $cb $27
	ld   b, a                                        ; $6cb6: $47
	sla  a                                           ; $6cb7: $cb $27
	add  b                                           ; $6cb9: $80
	ld   b, $00                                      ; $6cba: $06 $00
	ld   c, a                                        ; $6cbc: $4f
	ld   hl, $6d50                                   ; $6cbd: $21 $50 $6d
	add  hl, bc                                      ; $6cc0: $09
	ld   a, $08                                      ; $6cc1: $3e $08
	call FarGetAddrBank                                       ; $6cc3: $cd $09 $0b
	ld   d, h                                        ; $6cc6: $54
	ld   e, l                                        ; $6cc7: $5d
	ld   hl, $d000                                   ; $6cc8: $21 $00 $d0
	call RLEXorCopy                                       ; $6ccb: $cd $d2 $09
	pop  af                                          ; $6cce: $f1
	ld   [wWramBank], a                                  ; $6ccf: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6cd2: $e0 $70
	ld   c, $81                                      ; $6cd4: $0e $81
	ld   de, $9000                                   ; $6cd6: $11 $00 $90
	ld   a, $07                                      ; $6cd9: $3e $07
	ld   hl, $d000                                   ; $6cdb: $21 $00 $d0
	ld   b, $40                                      ; $6cde: $06 $40
	call EnqueueHDMATransfer                                       ; $6ce0: $cd $7c $02
	jp   Jump_008_6d40                               ; $6ce3: $c3 $40 $6d


jr_008_6ce6:
	ld   c, $81                                      ; $6ce6: $0e $81
	ld   de, $9400                                   ; $6ce8: $11 $00 $94
	ld   a, $07                                      ; $6ceb: $3e $07
	ld   hl, $d400                                   ; $6ced: $21 $00 $d4
	ld   b, $40                                      ; $6cf0: $06 $40
	call EnqueueHDMATransfer                                       ; $6cf2: $cd $7c $02
	jp   Jump_008_6d40                               ; $6cf5: $c3 $40 $6d


jr_008_6cf8:
	ld   a, [$cba6]                                  ; $6cf8: $fa $a6 $cb
	ld   l, a                                        ; $6cfb: $6f
	ld   h, $00                                      ; $6cfc: $26 $00

	M_FarCall Call_00a_5438
	
	ld   c, $80                                      ; $6d12: $0e $80
	ld   de, $9800                                   ; $6d14: $11 $00 $98
	ld   a, $02                                      ; $6d17: $3e $02
	ld   hl, $d140                                   ; $6d19: $21 $40 $d1
	ld   b, $14                                      ; $6d1c: $06 $14
	call EnqueueHDMATransfer                                       ; $6d1e: $cd $7c $02
	ld   c, $81                                      ; $6d21: $0e $81
	ld   de, $9800                                   ; $6d23: $11 $00 $98
	ld   a, $02                                      ; $6d26: $3e $02
	ld   hl, $d000                                   ; $6d28: $21 $00 $d0
	ld   b, $14                                      ; $6d2b: $06 $14
	call EnqueueHDMATransfer                                       ; $6d2d: $cd $7c $02
	call Call_008_413a                               ; $6d30: $cd $3a $41
	call DequeueAScriptOpcode                               ; $6d33: $cd $bc $40
	ld   a, $05                                      ; $6d36: $3e $05
	ld   [wGameState], a                                  ; $6d38: $ea $a0 $c2
	xor  a                                           ; $6d3b: $af
	ld   [wGameSubstate], a                                  ; $6d3c: $ea $a1 $c2
	ret                                              ; $6d3f: $c9


Jump_008_6d40:
	ld   hl, wScriptOpcodeParamPointer                                   ; $6d40: $21 $74 $cb
	ld   a, [hl+]                                    ; $6d43: $2a
	ld   h, [hl]                                     ; $6d44: $66
	ld   l, a                                        ; $6d45: $6f
	ldh  a, [hScriptOpcodeParams]                                    ; $6d46: $f0 $a0
	ld   [hl-], a                                    ; $6d48: $32
	ldh  a, [hScriptOpcodeParams+1]                                    ; $6d49: $f0 $a1
	ld   [hl-], a                                    ; $6d4b: $32
	ldh  a, [hScriptOpcodeParams+2]                                    ; $6d4c: $f0 $a2
	ld   [hl-], a                                    ; $6d4e: $32
	ret                                              ; $6d4f: $c9


	inc  h                                           ; $6d50: $24
	ld   l, d                                        ; $6d51: $6a
	sub  l                                           ; $6d52: $95
	ld   c, h                                        ; $6d53: $4c
	ld   h, b                                        ; $6d54: $60
	and  e                                           ; $6d55: $a3
	call c, $9646                                    ; $6d56: $dc $46 $96
	call z, $a360                                    ; $6d59: $cc $60 $a3
	ld   d, $4d                                      ; $6d5c: $16 $4d
	sub  a                                           ; $6d5e: $97
	ld   c, h                                        ; $6d5f: $4c
	ld   h, c                                        ; $6d60: $61
	and  e                                           ; $6d61: $a3
	cp   c                                           ; $6d62: $b9
	ld   h, l                                        ; $6d63: $65
	sub  h                                           ; $6d64: $94
	call z, $a361                                    ; $6d65: $cc $61 $a3
	inc  e                                           ; $6d68: $1c
	ld   [hl], c                                     ; $6d69: $71
	sub  l                                           ; $6d6a: $95
	ld   c, h                                        ; $6d6b: $4c
	ld   h, d                                        ; $6d6c: $62
	and  e                                           ; $6d6d: $a3
	ld   a, [bc]                                     ; $6d6e: $0a
	ld   a, b                                        ; $6d6f: $78
	sub  l                                           ; $6d70: $95
	call z, $a362                                    ; $6d71: $cc $62 $a3
	inc  h                                           ; $6d74: $24
	ld   l, d                                        ; $6d75: $6a
	sub  l                                           ; $6d76: $95
	ld   c, h                                        ; $6d77: $4c
	ld   h, b                                        ; $6d78: $60
	and  e                                           ; $6d79: $a3
	inc  h                                           ; $6d7a: $24
	ld   l, d                                        ; $6d7b: $6a
	sub  l                                           ; $6d7c: $95
	ld   c, h                                        ; $6d7d: $4c
	ld   h, b                                        ; $6d7e: $60
	and  e                                           ; $6d7f: $a3
	sub  c                                           ; $6d80: $91
	ld   d, h                                        ; $6d81: $54
	sub  [hl]                                        ; $6d82: $96
	ld   c, h                                        ; $6d83: $4c
	ld   h, e                                        ; $6d84: $63
	and  e                                           ; $6d85: $a3


ScriptOpcode25_Init:
	ld   a, $25                                      ; $6d86: $3e $25
	call EnqueueAScriptOpcode                               ; $6d88: $cd $97 $40
	ld   a, SO_03                                      ; $6d8b: $3e $03
	call EnqueueAScriptOpcode                               ; $6d8d: $cd $97 $40
	xor  a                                           ; $6d90: $af
	ld   [hl], a                                     ; $6d91: $77
	ld   a, SO_SET_PORTRAIT                                      ; $6d92: $3e $0f
	call EnqueueAScriptOpcode                               ; $6d94: $cd $97 $40
	ld   a, $00                                      ; $6d97: $3e $00
	ld   [hl-], a                                    ; $6d99: $32
	ld   a, $00                                      ; $6d9a: $3e $00
	ld   [hl-], a                                    ; $6d9c: $32
	xor  a                                           ; $6d9d: $af
	ld   [hl-], a                                    ; $6d9e: $32
	ld   [hl-], a                                    ; $6d9f: $32
	ld   a, SO_SET_CHAR_ON_SCREEN                                      ; $6da0: $3e $0d
	call EnqueueAScriptOpcode                               ; $6da2: $cd $97 $40
	ld   a, $00                                      ; $6da5: $3e $00
	ld   [hl-], a                                    ; $6da7: $32
	ld   a, $00                                      ; $6da8: $3e $00
	ld   [hl-], a                                    ; $6daa: $32
	xor  a                                           ; $6dab: $af
	ld   [hl-], a                                    ; $6dac: $32
	ld   [hl-], a                                    ; $6dad: $32
	ld   a, SO_CLEAR_TEXT_BOX                                      ; $6dae: $3e $08
	call EnqueueAScriptOpcode                               ; $6db0: $cd $97 $40
	ret                                              ; $6db3: $c9


ScriptOpcode25_Main:
	xor  a                                           ; $6db4: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $6db5: $ea $52 $cb
	call DequeueAScriptOpcode                               ; $6db8: $cd $bc $40
	call GetNextScriptOpcodeToProcess                               ; $6dbb: $cd $70 $42
	ld   h, $3b                                      ; $6dbe: $26 $3b
	ld   l, $01                                      ; $6dc0: $2e $01

	M_FarCall Call_021_4000
	
	ld   a, SO_02                                      ; $6dd6: $3e $02
	call AddInterruptScriptOpcode                               ; $6dd8: $cd $ba $42
	ret                                              ; $6ddb: $c9


ScriptOpcode26_Init:
	ld   a, $26                                      ; $6ddc: $3e $26
	call EnqueueAScriptOpcode                               ; $6dde: $cd $97 $40
	ld   a, SO_03                                      ; $6de1: $3e $03
	call EnqueueAScriptOpcode                               ; $6de3: $cd $97 $40
	xor  a                                           ; $6de6: $af
	ld   [hl], a                                     ; $6de7: $77
	ret                                              ; $6de8: $c9


ScriptOpcode26_Main:
	call DequeueAScriptOpcode                               ; $6de9: $cd $bc $40
	xor  a                                           ; $6dec: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $6ded: $ea $52 $cb
	xor  a                                           ; $6df0: $af
	call PlaySound                                       ; $6df1: $cd $92 $1a
	ld   a, $3f                                      ; $6df4: $3e $3f
	ld   [wGameState], a                                  ; $6df6: $ea $a0 $c2
	xor  a                                           ; $6df9: $af
	ld   [wGameSubstate], a                                  ; $6dfa: $ea $a1 $c2
	ret                                              ; $6dfd: $c9


ScriptOpcode27_Battle_Init:
	ld   a, $27                                      ; $6dfe: $3e $27
	call EnqueueAScriptOpcode                               ; $6e00: $cd $97 $40
	call GetNextScriptOpcodeToProcess                               ; $6e03: $cd $70 $42
	ld   [hl], a                                     ; $6e06: $77
	ld   a, SO_03                                      ; $6e07: $3e $03
	call EnqueueAScriptOpcode                               ; $6e09: $cd $97 $40
	xor  a                                           ; $6e0c: $af
	ld   [hl], a                                     ; $6e0d: $77
	ret                                              ; $6e0e: $c9


ScriptOpcode27_Battle_Main:
	xor  a                                           ; $6e0f: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $6e10: $ea $52 $cb
	ld   a, [$cbc2]                                  ; $6e13: $fa $c2 $cb
	dec  a                                           ; $6e16: $3d
	push hl                                          ; $6e17: $e5
	ld   h, a                                        ; $6e18: $67
	ld   l, $06                                      ; $6e19: $2e $06
	call HLequHdivModL                                       ; $6e1b: $cd $fb $0b
	ld   a, l                                        ; $6e1e: $7d
	pop  hl                                          ; $6e1f: $e1
	ld   b, [hl]                                     ; $6e20: $46
	ld   c, $00                                      ; $6e21: $0e $00
	ld   hl, wGameState                                   ; $6e23: $21 $a0 $c2
	ld   h, [hl]                                     ; $6e26: $66
	ld   l, $01                                      ; $6e27: $2e $01

	M_FarCall InitBattle

	call DequeueAScriptOpcode                               ; $6e3d: $cd $bc $40
	ld   a, SO_02                                      ; $6e40: $3e $02
	call AddInterruptScriptOpcode                               ; $6e42: $cd $ba $42
	ret                                              ; $6e45: $c9


ScriptOpcode28_Init:
	ld   a, $28                                      ; $6e46: $3e $28
	call EnqueueAScriptOpcode                               ; $6e48: $cd $97 $40
	ld   a, $40                                      ; $6e4b: $3e $40
	ld   [$cc71], a                                  ; $6e4d: $ea $71 $cc
	push hl                                          ; $6e50: $e5
	xor  a                                           ; $6e51: $af
	ld   [hl-], a                                    ; $6e52: $32
	ld   [hl-], a                                    ; $6e53: $32
	ld   [hl-], a                                    ; $6e54: $32
	ld   [hl-], a                                    ; $6e55: $32
	ld   [hl-], a                                    ; $6e56: $32
	ld   a, [$cbb1]                                  ; $6e57: $fa $b1 $cb
	ld   [hl-], a                                    ; $6e5a: $32
	pop  hl                                          ; $6e5b: $e1
	bit  7, a                                        ; $6e5c: $cb $7f
	jr   z, jr_008_6e61                              ; $6e5e: $28 $01

	inc  [hl]                                        ; $6e60: $34

jr_008_6e61:

ScriptOpcode28_Main:
	ld   a, [wWramBank]                                  ; $6e61: $fa $93 $c2
	push af                                          ; $6e64: $f5
	ld   a, $02                                      ; $6e65: $3e $02
	ld   [wWramBank], a                                  ; $6e67: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6e6a: $e0 $70
	xor  a                                           ; $6e6c: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $6e6d: $ea $52 $cb
	ld   a, l                                        ; $6e70: $7d
	ld   [wScriptOpcodeParamPointer], a                                  ; $6e71: $ea $74 $cb
	ld   a, h                                        ; $6e74: $7c
	ld   [wScriptOpcodeParamPointer+1], a                                  ; $6e75: $ea $75 $cb
	ld   a, [hl-]                                    ; $6e78: $3a
	ldh  [hScriptOpcodeParams], a                                    ; $6e79: $e0 $a0
	ld   a, [hl-]                                    ; $6e7b: $3a
	ldh  [hScriptOpcodeParams+1], a                                    ; $6e7c: $e0 $a1
	ld   a, [hl-]                                    ; $6e7e: $3a
	ldh  [hScriptOpcodeParams+2], a                                    ; $6e7f: $e0 $a2
	ld   a, [hl-]                                    ; $6e81: $3a
	ldh  [hScriptOpcodeParams+3], a                                    ; $6e82: $e0 $a3
	ld   a, [hl-]                                    ; $6e84: $3a
	ldh  [hScriptOpcodeParams+4], a                                    ; $6e85: $e0 $a4
	ld   a, [hl-]                                    ; $6e87: $3a
	ldh  [$a5], a                                    ; $6e88: $e0 $a5
	ld   bc, .return                                   ; $6e8a: $01 $9d $6e
	push bc                                          ; $6e8d: $c5
	ldh  a, [hScriptOpcodeParams]                                    ; $6e8e: $f0 $a0
	sla  a                                           ; $6e90: $cb $27
	ld   b, $00                                      ; $6e92: $06 $00
	ld   c, a                                        ; $6e94: $4f
	ld   hl, .table                                   ; $6e95: $21 $a4 $6e
	add  hl, bc                                      ; $6e98: $09
	ld   a, [hl+]                                    ; $6e99: $2a
	ld   h, [hl]                                     ; $6e9a: $66
	ld   l, a                                        ; $6e9b: $6f
	jp   hl                                          ; $6e9c: $e9

.return:
	pop  af                                          ; $6e9d: $f1
	ld   [wWramBank], a                                  ; $6e9e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6ea1: $e0 $70
	ret                                              ; $6ea3: $c9

.table:
	dw $6ec7
	dw code28_func_6f47
	dw $718b
	dw code28_func_7278
	dw $72c0

Jump_008_6eae:
	ld   hl, wScriptOpcodeParamPointer                                   ; $6eae: $21 $74 $cb
	ld   a, [hl+]                                    ; $6eb1: $2a
	ld   h, [hl]                                     ; $6eb2: $66
	ld   l, a                                        ; $6eb3: $6f
	ldh  a, [hScriptOpcodeParams]                                    ; $6eb4: $f0 $a0
	ld   [hl-], a                                    ; $6eb6: $32
	ldh  a, [hScriptOpcodeParams+1]                                    ; $6eb7: $f0 $a1
	ld   [hl-], a                                    ; $6eb9: $32
	ldh  a, [hScriptOpcodeParams+2]                                    ; $6eba: $f0 $a2
	ld   [hl-], a                                    ; $6ebc: $32
	ldh  a, [hScriptOpcodeParams+3]                                    ; $6ebd: $f0 $a3
	ld   [hl-], a                                    ; $6ebf: $32
	ldh  a, [hScriptOpcodeParams+4]                                    ; $6ec0: $f0 $a4
	ld   [hl-], a                                    ; $6ec2: $32
	ldh  a, [$a5]                                    ; $6ec3: $f0 $a5
	ld   [hl-], a                                    ; $6ec5: $32
	ret                                              ; $6ec6: $c9


	ldh  a, [hScriptOpcodeParams+1]                                    ; $6ec7: $f0 $a1
	or   a                                           ; $6ec9: $b7
	jr   nz, jr_008_6ee5                             ; $6eca: $20 $19

	ld   a, $18                                      ; $6ecc: $3e $18
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $6ece: $ea $62 $c3
	ld   a, $1c                                      ; $6ed1: $3e $1c
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $6ed3: $ea $63 $c3
	ld   a, $03                                      ; $6ed6: $3e $03
	ld   b, $00                                      ; $6ed8: $06 $00
	ld   hl, wBGPalettes                                   ; $6eda: $21 $de $c2
	ld   c, $01                                      ; $6edd: $0e $01
	ld   de, $7000                                   ; $6edf: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $6ee2: $cd $48 $07

jr_008_6ee5:
	ld   hl, hScriptOpcodeParams+1                                   ; $6ee5: $21 $a1 $ff
	ld   a, [$cb91]                                  ; $6ee8: $fa $91 $cb
	or   a                                           ; $6eeb: $b7
	jr   z, jr_008_6ef1                              ; $6eec: $28 $03

	inc  [hl]                                        ; $6eee: $34
	res  0, [hl]                                     ; $6eef: $cb $86

jr_008_6ef1:
	ld   a, [hl]                                     ; $6ef1: $7e
	inc  [hl]                                        ; $6ef2: $34
	cp   $0f                                         ; $6ef3: $fe $0f
	jr   nc, jr_008_6f02                             ; $6ef5: $30 $0b

	bit  0, a                                        ; $6ef7: $cb $47
	ld   bc, $181c                                   ; $6ef9: $01 $1c $18
	call z, FadePalettesAndSetRangeToUpdate                                    ; $6efc: $cc $32 $08
	jp   Jump_008_6eae                               ; $6eff: $c3 $ae $6e


jr_008_6f02:
	call Call_008_413a                               ; $6f02: $cd $3a $41
	ld   a, [$cba6]                                  ; $6f05: $fa $a6 $cb
	ld   l, a                                        ; $6f08: $6f
	ld   h, $00                                      ; $6f09: $26 $00

	M_FarCall Call_00a_5438
	
	ld   c, $80                                      ; $6f1f: $0e $80
	ld   de, $9800                                   ; $6f21: $11 $00 $98
	ld   a, $02                                      ; $6f24: $3e $02
	ld   hl, $d140                                   ; $6f26: $21 $40 $d1
	ld   b, $14                                      ; $6f29: $06 $14
	call EnqueueHDMATransfer                                       ; $6f2b: $cd $7c $02
	ld   c, $81                                      ; $6f2e: $0e $81
	ld   de, $9800                                   ; $6f30: $11 $00 $98
	ld   a, $02                                      ; $6f33: $3e $02
	ld   hl, $d000                                   ; $6f35: $21 $00 $d0
	ld   b, $14                                      ; $6f38: $06 $14
	call EnqueueHDMATransfer                                       ; $6f3a: $cd $7c $02
	ld   hl, hScriptOpcodeParams                                   ; $6f3d: $21 $a0 $ff
	inc  [hl]                                        ; $6f40: $34
	xor  a                                           ; $6f41: $af
	ldh  [hScriptOpcodeParams+1], a                                    ; $6f42: $e0 $a1
	jp   Jump_008_6eae                               ; $6f44: $c3 $ae $6e


code28_func_6f47:
	ldh  a, [hScriptOpcodeParams+1]                                    ; $6f47: $f0 $a1
	cp   $06                                         ; $6f49: $fe $06
	jr   nc, jr_008_6f6a                             ; $6f4b: $30 $1d

	srl  a                                           ; $6f4d: $cb $3f
	ld   b, a                                        ; $6f4f: $47
	ld   a, $ad                                      ; $6f50: $3e $ad
	add  b                                           ; $6f52: $80
	ld   bc, $5028                                   ; $6f53: $01 $28 $50

	M_FarCall Func_0e_4000

jr_008_6f6a:
	ld   bc, .return                                   ; $6f6a: $01 $80 $6f
	push bc                                          ; $6f6d: $c5
	ld   hl, hScriptOpcodeParams+1                                   ; $6f6e: $21 $a1 $ff
	ld   a, [hl]                                     ; $6f71: $7e
	inc  [hl]                                        ; $6f72: $34
	ld   b, $00                                      ; $6f73: $06 $00
	ld   c, a                                        ; $6f75: $4f
	sla  c                                           ; $6f76: $cb $21
	ld   hl, .table                                   ; $6f78: $21 $83 $6f
	add  hl, bc                                      ; $6f7b: $09
	ld   a, [hl+]                                    ; $6f7c: $2a
	ld   h, [hl]                                     ; $6f7d: $66
	ld   l, a                                        ; $6f7e: $6f
	jp   hl                                          ; $6f7f: $e9

.return:
	jp   Jump_008_6eae                               ; $6f80: $c3 $ae $6e

.table:
	dw $6f91
	dw $6fef
	dw $6fef
	dw $6ff0
	dw $6ff3
	dw .func_6ff6
	dw $6ff9


	ld   a, $23                                      ; $6f91: $3e $23
	call Call_008_4334                               ; $6f93: $cd $34 $43
	ld   a, [wWramBank]                                  ; $6f96: $fa $93 $c2
	push af                                          ; $6f99: $f5
	ld   a, $07                                      ; $6f9a: $3e $07
	ld   [wWramBank], a                                  ; $6f9c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6f9f: $e0 $70
	ld   a, $a2                                      ; $6fa1: $3e $a2
	ld   hl, $d000                                   ; $6fa3: $21 $00 $d0
	ld   de, $6e3d                                   ; $6fa6: $11 $3d $6e
	call RLEXorCopy                                       ; $6fa9: $cd $d2 $09
	ld   a, $a3                                      ; $6fac: $3e $a3
	ld   hl, $d400                                   ; $6fae: $21 $00 $d4
	ld   de, $7f3d                                   ; $6fb1: $11 $3d $7f
	call RLEXorCopy                                       ; $6fb4: $cd $d2 $09
	pop  af                                          ; $6fb7: $f1
	ld   [wWramBank], a                                  ; $6fb8: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6fbb: $e0 $70
	ld   c, $80                                      ; $6fbd: $0e $80
	ld   de, $8c00                                   ; $6fbf: $11 $00 $8c
	ld   a, $07                                      ; $6fc2: $3e $07
	ld   hl, $d000                                   ; $6fc4: $21 $00 $d0
	ld   b, $40                                      ; $6fc7: $06 $40
	call EnqueueHDMATransfer                                       ; $6fc9: $cd $7c $02
	ld   c, $81                                      ; $6fcc: $0e $81
	ld   de, $8000                                   ; $6fce: $11 $00 $80
	ld   a, $07                                      ; $6fd1: $3e $07
	ld   hl, $d400                                   ; $6fd3: $21 $00 $d4
	ld   b, $10                                      ; $6fd6: $06 $10
	call EnqueueHDMATransfer                                       ; $6fd8: $cd $7c $02
	ld   a, $9e                                      ; $6fdb: $3e $9e
	ld   hl, $7ff0                                   ; $6fdd: $21 $f0 $7f
	ld   de, $c356                                   ; $6fe0: $11 $56 $c3
	ld   bc, $0008                                   ; $6fe3: $01 $08 $00
	call FarMemCopy                                       ; $6fe6: $cd $b2 $09
	ld   bc, $3c3f                                   ; $6fe9: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6fec: $cd $aa $04
	ret                                              ; $6fef: $c9


	jp   Jump_008_7010                               ; $6ff0: $c3 $10 $70


	jp   Jump_008_705c                               ; $6ff3: $c3 $5c $70

.func_6ff6:
	jp   todo_LoadsText_7079                               ; $6ff6: $c3 $79 $70


	call Call_008_70cd                               ; $6ff9: $cd $cd $70
	ldh  a, [hScriptOpcodeParams+3]                                    ; $6ffc: $f0 $a3
	ldh  [hScriptOpcodeParams+2], a                                    ; $6ffe: $e0 $a2
	ld   a, [$cc71]                                  ; $7000: $fa $71 $cc
	xor  $40                                         ; $7003: $ee $40
	ld   [$cc71], a                                  ; $7005: $ea $71 $cc
	ld   hl, hScriptOpcodeParams                                   ; $7008: $21 $a0 $ff
	inc  [hl]                                        ; $700b: $34
	xor  a                                           ; $700c: $af
	ldh  [hScriptOpcodeParams+1], a                                    ; $700d: $e0 $a1
	ret                                              ; $700f: $c9


Call_008_7010:
Jump_008_7010:
	ld   a, [wWramBank]                                  ; $7010: $fa $93 $c2
	push af                                          ; $7013: $f5
	ld   a, $07                                      ; $7014: $3e $07
	ld   [wWramBank], a                                  ; $7016: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7019: $e0 $70
	ldh  a, [hScriptOpcodeParams+3]                                    ; $701b: $f0 $a3
	sla  a                                           ; $701d: $cb $27
	ld   l, a                                        ; $701f: $6f
	sla  a                                           ; $7020: $cb $27
	sla  a                                           ; $7022: $cb $27
	add  l                                           ; $7024: $85
	ld   h, $00                                      ; $7025: $26 $00
	ld   l, a                                        ; $7027: $6f
	ld   de, $7381                                   ; $7028: $11 $81 $73
	add  hl, de                                      ; $702b: $19
	ld   a, $08                                      ; $702c: $3e $08
	call FarGetAddrBank                                       ; $702e: $cd $09 $0b
	ld   d, h                                        ; $7031: $54
	ld   e, l                                        ; $7032: $5d
	ld   hl, $d000                                   ; $7033: $21 $00 $d0
	call RLEXorCopy                                       ; $7036: $cd $d2 $09
	pop  af                                          ; $7039: $f1
	ld   [wWramBank], a                                  ; $703a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $703d: $e0 $70
	ld   c, $80                                      ; $703f: $0e $80
	ld   de, $8000                                   ; $7041: $11 $00 $80
	ld   a, [$cc71]                                  ; $7044: $fa $71 $cc
	xor  $40                                         ; $7047: $ee $40
	swap a                                           ; $7049: $cb $37
	ld   h, a                                        ; $704b: $67
	ld   l, $00                                      ; $704c: $2e $00
	add  hl, de                                      ; $704e: $19
	ld   d, h                                        ; $704f: $54
	ld   e, l                                        ; $7050: $5d
	ld   a, $07                                      ; $7051: $3e $07
	ld   hl, $d000                                   ; $7053: $21 $00 $d0
	ld   b, $40                                      ; $7056: $06 $40
	call EnqueueHDMATransfer                                       ; $7058: $cd $7c $02
	ret                                              ; $705b: $c9


Call_008_705c:
Jump_008_705c:
	ld   c, $80                                      ; $705c: $0e $80
	ld   de, $8800                                   ; $705e: $11 $00 $88
	ld   a, [$cc71]                                  ; $7061: $fa $71 $cc
	xor  $40                                         ; $7064: $ee $40
	swap a                                           ; $7066: $cb $37
	ld   h, a                                        ; $7068: $67
	ld   l, $00                                      ; $7069: $2e $00
	add  hl, de                                      ; $706b: $19
	ld   d, h                                        ; $706c: $54
	ld   e, l                                        ; $706d: $5d
	ld   a, $07                                      ; $706e: $3e $07
	ld   hl, $d800                                   ; $7070: $21 $00 $d8
	ld   b, $40                                      ; $7073: $06 $40
	call EnqueueHDMATransfer                                       ; $7075: $cd $7c $02
	ret                                              ; $7078: $c9


todo_LoadsText_7079:
; Clear offset to draw in text box
	ld   bc, $0000                                   ; $7079: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $707c: $cd $34 $14

; Preserve and set new wram bank
	ld   a, [wWramBank]                                  ; $707f: $fa $93 $c2
	push af                                          ; $7082: $f5
	
	ld   a, $02                                      ; $7083: $3e $02
	ld   [wWramBank], a                                  ; $7085: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7088: $e0 $70
	
; clear a thing
	ld   hl, $d340                                   ; $708a: $21 $40 $d3
	ld   bc, $02a0                                   ; $708d: $01 $a0 $02
	ld   de, $0000                                   ; $7090: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $7093: $cd $9f $09

;
	ldh  a, [hScriptOpcodeParams+3]                                    ; $7096: $f0 $a3
	ld   h, $02                                      ; $7098: $26 $02
	ld   l, a                                        ; $709a: $6f

	M_FarCall Func_0a_5b4b

	ld   d, h                                        ; $70af: $54
	ld   e, l                                        ; $70b0: $5d
	ld   hl, $d340                                   ; $70b1: $21 $40 $d3
	call LoadInstantText                                       ; $70b4: $cd $06 $13
	pop  af                                          ; $70b7: $f1
	ld   [wWramBank], a                                  ; $70b8: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $70bb: $e0 $70

;
	ld   c, $81                                      ; $70bd: $0e $81
	ld   de, _VRAM+$800                                   ; $70bf: $11 $00 $88
	ld   a, $02                                      ; $70c2: $3e $02
	ld   hl, $d340                                   ; $70c4: $21 $40 $d3
	ld   b, $54                                      ; $70c7: $06 $54
	call EnqueueHDMATransfer                                       ; $70c9: $cd $7c $02

	ret                                              ; $70cc: $c9


Call_008_70cd:
	ld   a, [wWramBank]                                  ; $70cd: $fa $93 $c2
	push af                                          ; $70d0: $f5
	ld   a, $02                                      ; $70d1: $3e $02
	ld   [wWramBank], a                                  ; $70d3: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $70d6: $e0 $70
	ld   de, $d9c0                                   ; $70d8: $11 $c0 $d9
	ld   hl, $d140                                   ; $70db: $21 $40 $d1
	ld   bc, $0140                                   ; $70de: $01 $40 $01
	call MemCopy                                       ; $70e1: $cd $a9 $09
	ld   de, $d880                                   ; $70e4: $11 $80 $d8
	ld   hl, $d000                                   ; $70e7: $21 $00 $d0
	ld   bc, $0140                                   ; $70ea: $01 $40 $01
	call MemCopy                                       ; $70ed: $cd $a9 $09
	ldh  a, [hScriptOpcodeParams+3]                                    ; $70f0: $f0 $a3
	sla  a                                           ; $70f2: $cb $27
	ld   l, a                                        ; $70f4: $6f
	sla  a                                           ; $70f5: $cb $27
	sla  a                                           ; $70f7: $cb $27
	add  l                                           ; $70f9: $85
	ld   h, $00                                      ; $70fa: $26 $00
	ld   l, a                                        ; $70fc: $6f
	ld   de, $7387                                   ; $70fd: $11 $87 $73
	add  hl, de                                      ; $7100: $19
	ld   a, $08                                      ; $7101: $3e $08
	call FarGetAddrBank                                       ; $7103: $cd $09 $0b
	ld   d, h                                        ; $7106: $54
	ld   e, l                                        ; $7107: $5d
	ld   hl, $d8a6                                   ; $7108: $21 $a6 $d8
	ld   bc, $0808                                   ; $710b: $01 $08 $08
	call FarCopyLayout                                       ; $710e: $cd $2c $0b
	ld   hl, $d9e6                                   ; $7111: $21 $e6 $d9
	call FarCopyLayout                                       ; $7114: $cd $2c $0b
	ld   hl, $d9e6                                   ; $7117: $21 $e6 $d9
	ld   b, $08                                      ; $711a: $06 $08
	ld   a, [$cc71]                                  ; $711c: $fa $71 $cc
	xor  $40                                         ; $711f: $ee $40
	ld   c, a                                        ; $7121: $4f
	ld   de, $0018                                   ; $7122: $11 $18 $00

jr_008_7125:
	ld   a, [hl]                                     ; $7125: $7e
	or   c                                           ; $7126: $b1
	ld   [hl+], a                                    ; $7127: $22
	ld   a, [hl]                                     ; $7128: $7e
	or   c                                           ; $7129: $b1
	ld   [hl+], a                                    ; $712a: $22
	ld   a, [hl]                                     ; $712b: $7e
	or   c                                           ; $712c: $b1
	ld   [hl+], a                                    ; $712d: $22
	ld   a, [hl]                                     ; $712e: $7e
	or   c                                           ; $712f: $b1
	ld   [hl+], a                                    ; $7130: $22
	ld   a, [hl]                                     ; $7131: $7e
	or   c                                           ; $7132: $b1
	ld   [hl+], a                                    ; $7133: $22
	ld   a, [hl]                                     ; $7134: $7e
	or   c                                           ; $7135: $b1
	ld   [hl+], a                                    ; $7136: $22
	ld   a, [hl]                                     ; $7137: $7e
	or   c                                           ; $7138: $b1
	ld   [hl+], a                                    ; $7139: $22
	ld   a, [hl]                                     ; $713a: $7e
	or   c                                           ; $713b: $b1
	ld   [hl+], a                                    ; $713c: $22
	add  hl, de                                      ; $713d: $19
	dec  b                                           ; $713e: $05
	jr   nz, jr_008_7125                             ; $713f: $20 $e4

	pop  af                                          ; $7141: $f1
	ld   [wWramBank], a                                  ; $7142: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7145: $e0 $70
	ld   c, $80                                      ; $7147: $0e $80
	ld   de, $9800                                   ; $7149: $11 $00 $98
	ld   a, $02                                      ; $714c: $3e $02
	ld   hl, $d9c0                                   ; $714e: $21 $c0 $d9
	ld   b, $14                                      ; $7151: $06 $14
	call EnqueueHDMATransfer                                       ; $7153: $cd $7c $02
	ld   c, $81                                      ; $7156: $0e $81
	ld   de, $9800                                   ; $7158: $11 $00 $98
	ld   a, $02                                      ; $715b: $3e $02
	ld   hl, $d880                                   ; $715d: $21 $80 $d8
	ld   b, $14                                      ; $7160: $06 $14
	call EnqueueHDMATransfer                                       ; $7162: $cd $7c $02
	ldh  a, [hScriptOpcodeParams+3]                                    ; $7165: $f0 $a3
	sla  a                                           ; $7167: $cb $27
	ld   l, a                                        ; $7169: $6f
	sla  a                                           ; $716a: $cb $27
	sla  a                                           ; $716c: $cb $27
	add  l                                           ; $716e: $85
	ld   h, $00                                      ; $716f: $26 $00
	ld   l, a                                        ; $7171: $6f
	ld   de, $7384                                   ; $7172: $11 $84 $73
	add  hl, de                                      ; $7175: $19
	ld   a, $08                                      ; $7176: $3e $08
	call FarGetAddrBank                                       ; $7178: $cd $09 $0b
	ld   de, $c30e                                   ; $717b: $11 $0e $c3
	ld   bc, $0038                                   ; $717e: $01 $38 $00
	call FarMemCopy                                       ; $7181: $cd $b2 $09
	ld   bc, $1833                                   ; $7184: $01 $33 $18
	call SetBGandOBJPaletteRangesToUpdate                                       ; $7187: $cd $aa $04
	ret                                              ; $718a: $c9


	call Call_008_7215                               ; $718b: $cd $15 $72
	call Call_008_7246                               ; $718e: $cd $46 $72
	ld   a, [wInGameButtonsPressed]                                  ; $7191: $fa $10 $c2
	bit  0, a                                        ; $7194: $cb $47
	jr   z, jr_008_71e9                              ; $7196: $28 $51

	ldh  a, [hScriptOpcodeParams+2]                                    ; $7198: $f0 $a2
	inc  a                                           ; $719a: $3c
	ld   [$cbc2], a                                  ; $719b: $ea $c2 $cb
	ld   a, [wWramBank]                                  ; $719e: $fa $93 $c2
	push af                                          ; $71a1: $f5
	ld   a, $07                                      ; $71a2: $3e $07
	ld   [wWramBank], a                                  ; $71a4: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $71a7: $e0 $70
	ld   a, $a2                                      ; $71a9: $3e $a2
	ld   hl, $d000                                   ; $71ab: $21 $00 $d0
	ld   de, $6e3d                                   ; $71ae: $11 $3d $6e
	call RLEXorCopy                                       ; $71b1: $cd $d2 $09
	pop  af                                          ; $71b4: $f1
	ld   [wWramBank], a                                  ; $71b5: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $71b8: $e0 $70
	ld   c, $80                                      ; $71ba: $0e $80
	ld   de, $8800                                   ; $71bc: $11 $00 $88
	ld   a, [$cc71]                                  ; $71bf: $fa $71 $cc
	xor  $40                                         ; $71c2: $ee $40
	swap a                                           ; $71c4: $cb $37
	ld   h, a                                        ; $71c6: $67
	ld   l, $00                                      ; $71c7: $2e $00
	add  hl, de                                      ; $71c9: $19
	ld   d, h                                        ; $71ca: $54
	ld   e, l                                        ; $71cb: $5d
	ld   a, $07                                      ; $71cc: $3e $07
	ld   hl, $d000                                   ; $71ce: $21 $00 $d0
	ld   b, $40                                      ; $71d1: $06 $40
	call EnqueueHDMATransfer                                       ; $71d3: $cd $7c $02
	ld   a, [$cc71]                                  ; $71d6: $fa $71 $cc
	xor  $40                                         ; $71d9: $ee $40
	ld   [$cc71], a                                  ; $71db: $ea $71 $cc
	ld   hl, hScriptOpcodeParams                                   ; $71de: $21 $a0 $ff
	inc  [hl]                                        ; $71e1: $34
	inc  [hl]                                        ; $71e2: $34
	xor  a                                           ; $71e3: $af
	ldh  [hScriptOpcodeParams+1], a                                    ; $71e4: $e0 $a1
	jp   Jump_008_6eae                               ; $71e6: $c3 $ae $6e


jr_008_71e9:
	bit  5, a                                        ; $71e9: $cb $6f
	jr   z, jr_008_71f7                              ; $71eb: $28 $0a

	ldh  a, [hScriptOpcodeParams+2]                                    ; $71ed: $f0 $a2
	sub  $01                                         ; $71ef: $d6 $01
	jr   nc, jr_008_7204                             ; $71f1: $30 $11

	ld   a, $05                                      ; $71f3: $3e $05
	jr   jr_008_7204                                 ; $71f5: $18 $0d

jr_008_71f7:
	bit  4, a                                        ; $71f7: $cb $67
	jp   z, Jump_008_6eae                            ; $71f9: $ca $ae $6e

	ldh  a, [hScriptOpcodeParams+2]                                    ; $71fc: $f0 $a2
	inc  a                                           ; $71fe: $3c
	cp   $06                                         ; $71ff: $fe $06
	jr   c, jr_008_7204                              ; $7201: $38 $01

	xor  a                                           ; $7203: $af

jr_008_7204:
	ldh  [hScriptOpcodeParams+3], a                                    ; $7204: $e0 $a3
	ld   a, $20                                      ; $7206: $3e $20
	call Call_008_4334                               ; $7208: $cd $34 $43
	ld   hl, hScriptOpcodeParams                                   ; $720b: $21 $a0 $ff
	inc  [hl]                                        ; $720e: $34
	xor  a                                           ; $720f: $af
	ldh  [hScriptOpcodeParams+1], a                                    ; $7210: $e0 $a1
	jp   Jump_008_6eae                               ; $7212: $c3 $ae $6e


Call_008_7215:
	ldh  a, [hScriptOpcodeParams+2]                                    ; $7215: $f0 $a2
	bit  7, a                                        ; $7217: $cb $7f
	ret  nz                                          ; $7219: $c0

	sla  a                                           ; $721a: $cb $27
	ld   l, a                                        ; $721c: $6f
	sla  a                                           ; $721d: $cb $27
	sla  a                                           ; $721f: $cb $27
	add  l                                           ; $7221: $85
	ld   h, $00                                      ; $7222: $26 $00
	ld   l, a                                        ; $7224: $6f
	ld   de, $738a                                   ; $7225: $11 $8a $73
	add  hl, de                                      ; $7228: $19
	ld   a, $08                                      ; $7229: $3e $08
	call FarGetByte                                       ; $722b: $cd $cf $0a
	ld   bc, $5028                                   ; $722e: $01 $28 $50

	M_FarCall Func_0e_4000
	ret                                              ; $7245: $c9


Call_008_7246:
	ld   a, $01                                      ; $7246: $3e $01
	ld   [wSpriteGroup], a                                  ; $7248: $ea $1a $c2
	ld   hl, hScriptOpcodeParams+4                                   ; $724b: $21 $a4 $ff
	ld   a, [hl]                                     ; $724e: $7e
	inc  [hl]                                        ; $724f: $34
	cp   $30                                         ; $7250: $fe $30
	jr   c, jr_008_7256                              ; $7252: $38 $02

	xor  a                                           ; $7254: $af
	ld   [hl], a                                     ; $7255: $77

jr_008_7256:
	srl  a                                           ; $7256: $cb $3f
	srl  a                                           ; $7258: $cb $3f
	srl  a                                           ; $725a: $cb $3f
	ld   h, a                                        ; $725c: $67
	ld   l, $06                                      ; $725d: $2e $06
	call HLequHdivModL                                       ; $725f: $cd $fb $0b
	ld   h, $00                                      ; $7262: $26 $00
	ld   bc, $7272                                   ; $7264: $01 $72 $72
	add  hl, bc                                      ; $7267: $09
	ld   a, $a5                                      ; $7268: $3e $a5
	add  [hl]                                        ; $726a: $86
	ld   bc, $5028                                   ; $726b: $01 $28 $50
	call LoadSpriteFromMainTable                                       ; $726e: $cd $16 $0e
	ret                                              ; $7271: $c9


	dec  bc                                          ; $7272: $0b
	inc  c                                           ; $7273: $0c
	dec  c                                           ; $7274: $0d
	ld   c, $0d                                      ; $7275: $0e $0d
	inc  c                                           ; $7277: $0c


code28_func_7278:
	call Call_008_7215                               ; $7278: $cd $15 $72
	ld   hl, hScriptOpcodeParams+1                                   ; $727b: $21 $a1 $ff
	ld   a, [hl]                                     ; $727e: $7e
	sla  a                                           ; $727f: $cb $27
	inc  [hl]                                        ; $7281: $34
	ld   h, $00                                      ; $7282: $26 $00
	ld   l, a                                        ; $7284: $6f
	ld   bc, .table                                   ; $7285: $01 $8d $72
	add  hl, bc                                      ; $7288: $09
	ld   a, [hl+]                                    ; $7289: $2a
	ld   h, [hl]                                     ; $728a: $66
	ld   l, a                                        ; $728b: $6f
	jp   hl                                          ; $728c: $e9

.table:
	dw $7295
	dw $729b
	dw .func_72a1
	dw $72a7


	call Call_008_7010                               ; $7295: $cd $10 $70
	jp   Jump_008_6eae                               ; $7298: $c3 $ae $6e


	call Call_008_705c                               ; $729b: $cd $5c $70
	jp   Jump_008_6eae                               ; $729e: $c3 $ae $6e

.func_72a1:
	call todo_LoadsText_7079                               ; $72a1: $cd $79 $70
	jp   Jump_008_6eae                               ; $72a4: $c3 $ae $6e


	call Call_008_70cd                               ; $72a7: $cd $cd $70
	ldh  a, [hScriptOpcodeParams+3]                                    ; $72aa: $f0 $a3
	ldh  [hScriptOpcodeParams+2], a                                    ; $72ac: $e0 $a2
	ld   a, [$cc71]                                  ; $72ae: $fa $71 $cc
	xor  $40                                         ; $72b1: $ee $40
	ld   [$cc71], a                                  ; $72b3: $ea $71 $cc
	ld   hl, hScriptOpcodeParams                                   ; $72b6: $21 $a0 $ff
	dec  [hl]                                        ; $72b9: $35
	xor  a                                           ; $72ba: $af
	ldh  [hScriptOpcodeParams+1], a                                    ; $72bb: $e0 $a1
	jp   Jump_008_6eae                               ; $72bd: $c3 $ae $6e


	ldh  a, [hScriptOpcodeParams+1]                                    ; $72c0: $f0 $a1
	srl  a                                           ; $72c2: $cb $3f
	ld   b, a                                        ; $72c4: $47
	ld   a, $af                                      ; $72c5: $3e $af
	sub  b                                           ; $72c7: $90
	ld   bc, $5028                                   ; $72c8: $01 $28 $50

	M_FarCall Func_0e_4000
	
	ld   hl, hScriptOpcodeParams+1                                   ; $72df: $21 $a1 $ff
	ld   a, [hl]                                     ; $72e2: $7e
	inc  [hl]                                        ; $72e3: $34
	ld   b, $00                                      ; $72e4: $06 $00
	ld   c, a                                        ; $72e6: $4f
	sla  c                                           ; $72e7: $cb $21
	ld   hl, $72f1                                   ; $72e9: $21 $f1 $72
	add  hl, bc                                      ; $72ec: $09
	ld   a, [hl+]                                    ; $72ed: $2a
	ld   h, [hl]                                     ; $72ee: $66
	ld   l, a                                        ; $72ef: $6f
	jp   hl                                          ; $72f0: $e9


	db   $fd                                         ; $72f1: $fd
	ld   [hl], d                                     ; $72f2: $72
	inc  hl                                          ; $72f3: $23
	ld   [hl], e                                     ; $72f4: $73
	ld   d, l                                        ; $72f5: $55
	ld   [hl], e                                     ; $72f6: $73
	ld   d, l                                        ; $72f7: $55
	ld   [hl], e                                     ; $72f8: $73
	ld   d, l                                        ; $72f9: $55
	ld   [hl], e                                     ; $72fa: $73
	ld   e, b                                        ; $72fb: $58
	ld   [hl], e                                     ; $72fc: $73
	ld   a, $24                                      ; $72fd: $3e $24
	call Call_008_4334                               ; $72ff: $cd $34 $43
	ld   c, $80                                      ; $7302: $0e $80
	ld   de, $9800                                   ; $7304: $11 $00 $98
	ld   a, $02                                      ; $7307: $3e $02
	ld   hl, $d140                                   ; $7309: $21 $40 $d1
	ld   b, $14                                      ; $730c: $06 $14
	call EnqueueHDMATransfer                                       ; $730e: $cd $7c $02
	ld   c, $81                                      ; $7311: $0e $81
	ld   de, $9800                                   ; $7313: $11 $00 $98
	ld   a, $02                                      ; $7316: $3e $02
	ld   hl, $d000                                   ; $7318: $21 $00 $d0
	ld   b, $14                                      ; $731b: $06 $14
	call EnqueueHDMATransfer                                       ; $731d: $cd $7c $02
	jp   Jump_008_6eae                               ; $7320: $c3 $ae $6e


	ld   a, [wWramBank]                                  ; $7323: $fa $93 $c2
	push af                                          ; $7326: $f5
	ld   a, $02                                      ; $7327: $3e $02
	ld   [wWramBank], a                                  ; $7329: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $732c: $e0 $70
	ld   hl, $d340                                   ; $732e: $21 $40 $d3
	ld   bc, $02a0                                   ; $7331: $01 $a0 $02
	ld   de, $0000                                   ; $7334: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $7337: $cd $9f $09
	pop  af                                          ; $733a: $f1
	ld   [wWramBank], a                                  ; $733b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $733e: $e0 $70
	ld   c, $81                                      ; $7340: $0e $81
	ld   de, $8800                                   ; $7342: $11 $00 $88
	ld   a, $02                                      ; $7345: $3e $02
	ld   hl, $d340                                   ; $7347: $21 $40 $d3
	ld   b, $54                                      ; $734a: $06 $54
	call EnqueueHDMATransfer                                       ; $734c: $cd $7c $02
	ld   bc, $0000                                   ; $734f: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $7352: $cd $34 $14
	jp   Jump_008_6eae                               ; $7355: $c3 $ae $6e


	call DequeueAScriptOpcode                               ; $7358: $cd $bc $40
	ldh  a, [$a5]                                    ; $735b: $f0 $a5
	bit  7, a                                        ; $735d: $cb $7f
	ret  nz                                          ; $735f: $c0

	or   a                                           ; $7360: $b7
	jr   nz, jr_008_7374                             ; $7361: $20 $11

	ld   a, SO_SET_CHAR_ON_SCREEN                                      ; $7363: $3e $0d
	call EnqueueAScriptOpcode                               ; $7365: $cd $97 $40
	ld   a, [$cba8]                                  ; $7368: $fa $a8 $cb
	ld   [hl-], a                                    ; $736b: $32
	ld   a, [$cba9]                                  ; $736c: $fa $a9 $cb
	ld   [hl-], a                                    ; $736f: $32
	xor  a                                           ; $7370: $af
	ld   [hl-], a                                    ; $7371: $32
	ld   [hl-], a                                    ; $7372: $32
	ret                                              ; $7373: $c9


jr_008_7374:
	ld   a, SO_1b                                      ; $7374: $3e $1b
	call EnqueueAScriptOpcode                               ; $7376: $cd $97 $40
	ld   a, [$cbae]                                  ; $7379: $fa $ae $cb
	ld   [hl-], a                                    ; $737c: $32
	xor  a                                           ; $737d: $af
	ld   [hl-], a                                    ; $737e: $32
	ld   [hl-], a                                    ; $737f: $32
	ret                                              ; $7380: $c9


	ld   [bc], a                                     ; $7381: $02
	ld   d, c                                        ; $7382: $51
	sbc  b                                           ; $7383: $98
	ld   h, l                                        ; $7384: $65
	ld   e, d                                        ; $7385: $5a
	and  h                                           ; $7386: $a4
	ld   c, h                                        ; $7387: $4c
	ld   h, [hl]                                     ; $7388: $66
	and  e                                           ; $7389: $a3
	and  l                                           ; $738a: $a5
	nop                                              ; $738b: $00
	ld   b, b                                        ; $738c: $40
	sbc  b                                           ; $738d: $98
	sbc  l                                           ; $738e: $9d
	ld   e, d                                        ; $738f: $5a
	and  h                                           ; $7390: $a4
	call z, $a366                                    ; $7391: $cc $66 $a3
	and  [hl]                                        ; $7394: $a6
	ld   e, d                                        ; $7395: $5a
	ld   h, d                                        ; $7396: $62
	sbc  l                                           ; $7397: $9d
	push de                                          ; $7398: $d5
	ld   e, d                                        ; $7399: $5a
	and  h                                           ; $739a: $a4
	ld   c, h                                        ; $739b: $4c
	ld   h, a                                        ; $739c: $67
	and  e                                           ; $739d: $a3
	and  a                                           ; $739e: $a7
	ld   d, c                                        ; $739f: $51
	ld   [hl], a                                     ; $73a0: $77
	sbc  b                                           ; $73a1: $98
	dec  c                                           ; $73a2: $0d
	ld   e, e                                        ; $73a3: $5b
	and  h                                           ; $73a4: $a4
	call z, $a367                                    ; $73a5: $cc $67 $a3
	xor  b                                           ; $73a8: $a8
	xor  l                                           ; $73a9: $ad
	ld   b, l                                        ; $73aa: $45
	sbc  b                                           ; $73ab: $98
	ld   b, l                                        ; $73ac: $45
	ld   e, e                                        ; $73ad: $5b
	and  h                                           ; $73ae: $a4
	ld   c, h                                        ; $73af: $4c
	ld   l, b                                        ; $73b0: $68
	and  e                                           ; $73b1: $a3
	xor  c                                           ; $73b2: $a9
	ld   a, [hl+]                                    ; $73b3: $2a
	ld   e, h                                        ; $73b4: $5c
	sbc  b                                           ; $73b5: $98
	ld   a, l                                        ; $73b6: $7d
	ld   e, e                                        ; $73b7: $5b
	and  h                                           ; $73b8: $a4
	call z, $a368                                    ; $73b9: $cc $68 $a3
	xor  d                                           ; $73bc: $aa


ScriptOpcode29_Init:
ScriptOpcode29_Main:
	call GetNextScriptOpcodeToProcess                               ; $73bd: $cd $70 $42

	M_FarCall Func_09_4457
	
	ret                                              ; $73d4: $c9


ScriptOpcode2a_Init:
ScriptOpcode2a_Main:
	call GetNextScriptOpcodeToProcess                               ; $73d5: $cd $70 $42
	ld   b, $00                                      ; $73d8: $06 $00
	ld   c, a                                        ; $73da: $4f
	srl  c                                           ; $73db: $cb $39
	srl  c                                           ; $73dd: $cb $39
	srl  c                                           ; $73df: $cb $39
	ld   hl, $b0ac                                   ; $73e1: $21 $ac $b0
	add  hl, bc                                      ; $73e4: $09
	ld   b, $01                                      ; $73e5: $06 $01
	and  $07                                         ; $73e7: $e6 $07

jr_008_73e9:
	or   a                                           ; $73e9: $b7
	jr   z, jr_008_73f1                              ; $73ea: $28 $05

	sla  b                                           ; $73ec: $cb $20
	dec  a                                           ; $73ee: $3d
	jr   jr_008_73e9                                 ; $73ef: $18 $f8

jr_008_73f1:
	ld   a, b                                        ; $73f1: $78
	or   [hl]                                        ; $73f2: $b6
	ld   [hl], a                                     ; $73f3: $77
	ret                                              ; $73f4: $c9


ScriptOpcode2b_Init:
	ld   a, $2b                                      ; $73f5: $3e $2b
	call EnqueueAScriptOpcode                               ; $73f7: $cd $97 $40
	call GetNextScriptOpcodeToProcess                               ; $73fa: $cd $70 $42
	dec  a                                           ; $73fd: $3d
	ld   [hl-], a                                    ; $73fe: $32
	call GetNextScriptOpcodeToProcess                               ; $73ff: $cd $70 $42
	ld   [hl-], a                                    ; $7402: $32
	ld   a, [hl+]                                    ; $7403: $2a
	ld   l, [hl]                                     ; $7404: $6e
	ld   h, $00                                      ; $7405: $26 $00
	ld   bc, $b096                                   ; $7407: $01 $96 $b0
	add  hl, bc                                      ; $740a: $09
	ld   [hl], a                                     ; $740b: $77
	ld   a, SO_SET_CHAR_ON_SCREEN                                      ; $740c: $3e $0d
	call EnqueueAScriptOpcode                               ; $740e: $cd $97 $40
	ld   a, $00                                      ; $7411: $3e $00
	ld   [hl-], a                                    ; $7413: $32
	ld   a, $00                                      ; $7414: $3e $00
	ld   [hl-], a                                    ; $7416: $32
	xor  a                                           ; $7417: $af
	ld   [hl-], a                                    ; $7418: $32
	ld   [hl-], a                                    ; $7419: $32
	ld   a, SO_CLEAR_TEXT_BOX                                      ; $741a: $3e $08
	call EnqueueAScriptOpcode                               ; $741c: $cd $97 $40
	ret                                              ; $741f: $c9


ScriptOpcode2b_Main:
	xor  a                                           ; $7420: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $7421: $ea $52 $cb
	ld   a, [hl-]                                    ; $7424: $3a
	ld   c, a                                        ; $7425: $4f
	ld   b, [hl]                                     ; $7426: $46
	ld   a, c                                        ; $7427: $79
	ld   h, $3b                                      ; $7428: $26 $3b
	ld   l, $02                                      ; $742a: $2e $02

	M_FarCall Call_021_7080
	
	jp   DequeueAScriptOpcode                               ; $7440: $c3 $bc $40


ScriptOpcode2c_Init:
ScriptOpcode2c_Main:
	call GetNextScriptOpcodeToProcess                               ; $7443: $cd $70 $42
	dec  a                                           ; $7446: $3d
	ld   [$cbc3], a                                  ; $7447: $ea $c3 $cb
	ret                                              ; $744a: $c9


ScriptOpcode2d_Init:
	ld   a, $2d                                      ; $744b: $3e $2d
	call EnqueueAScriptOpcode                               ; $744d: $cd $97 $40
	push hl                                          ; $7450: $e5
	call GetNextScriptOpcodeToProcess                               ; $7451: $cd $70 $42
	ld   [hl-], a                                    ; $7454: $32
	xor  a                                           ; $7455: $af
	ld   [hl-], a                                    ; $7456: $32
	ld   [hl-], a                                    ; $7457: $32
	pop  hl                                          ; $7458: $e1
	ld   a, [$cbac]                                  ; $7459: $fa $ac $cb
	or   a                                           ; $745c: $b7
	jr   nz, jr_008_746b                             ; $745d: $20 $0c

	ld   a, [$cbae]                                  ; $745f: $fa $ae $cb
	or   a                                           ; $7462: $b7
	jr   z, jr_008_7475                              ; $7463: $28 $10

	ld   a, [$cbb0]                                  ; $7465: $fa $b0 $cb
	or   a                                           ; $7468: $b7
	jr   z, jr_008_7475                              ; $7469: $28 $0a

jr_008_746b:
	dec  hl                                          ; $746b: $2b
	inc  [hl]                                        ; $746c: $34
	ld   a, SO_33                                      ; $746d: $3e $33
	call EnqueueAScriptOpcode                               ; $746f: $cd $97 $40
	xor  a                                           ; $7472: $af
	ld   [hl-], a                                    ; $7473: $32
	ret                                              ; $7474: $c9


jr_008_7475:

ScriptOpcode2d_Main:
	ld   a, l                                        ; $7475: $7d
	ld   [wScriptOpcodeParamPointer], a                                  ; $7476: $ea $74 $cb
	ld   a, h                                        ; $7479: $7c
	ld   [wScriptOpcodeParamPointer+1], a                                  ; $747a: $ea $75 $cb
	ld   a, [hl-]                                    ; $747d: $3a
	ldh  [hScriptOpcodeParams], a                                    ; $747e: $e0 $a0
	ld   a, [hl-]                                    ; $7480: $3a
	ldh  [hScriptOpcodeParams+1], a                                    ; $7481: $e0 $a1
	ld   a, [hl-]                                    ; $7483: $3a
	ldh  [hScriptOpcodeParams+2], a                                    ; $7484: $e0 $a2
	xor  a                                           ; $7486: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $7487: $ea $52 $cb
	ldh  a, [hScriptOpcodeParams+1]                                    ; $748a: $f0 $a1
	sla  a                                           ; $748c: $cb $27
	ld   b, $00                                      ; $748e: $06 $00
	ld   c, a                                        ; $7490: $4f
	ld   hl, $7499                                   ; $7491: $21 $99 $74
	add  hl, bc                                      ; $7494: $09
	ld   a, [hl+]                                    ; $7495: $2a
	ld   h, [hl]                                     ; $7496: $66
	ld   l, a                                        ; $7497: $6f
	jp   hl                                          ; $7498: $e9


	or   c                                           ; $7499: $b1
	ld   [hl], h                                     ; $749a: $74
	sbc  a                                           ; $749b: $9f
	ld   [hl], l                                     ; $749c: $75
	add  hl, bc                                      ; $749d: $09
	halt                                             ; $749e: $76
	dec  e                                           ; $749f: $1d
	halt                                             ; $74a0: $76

Jump_008_74a1:
	ld   hl, wScriptOpcodeParamPointer                                   ; $74a1: $21 $74 $cb
	ld   a, [hl+]                                    ; $74a4: $2a
	ld   h, [hl]                                     ; $74a5: $66
	ld   l, a                                        ; $74a6: $6f
	ldh  a, [hScriptOpcodeParams]                                    ; $74a7: $f0 $a0
	ld   [hl-], a                                    ; $74a9: $32
	ldh  a, [hScriptOpcodeParams+1]                                    ; $74aa: $f0 $a1
	ld   [hl-], a                                    ; $74ac: $32
	ldh  a, [hScriptOpcodeParams+2]                                    ; $74ad: $f0 $a2
	ld   [hl-], a                                    ; $74af: $32
	ret                                              ; $74b0: $c9


	ldh  a, [hScriptOpcodeParams+2]                                    ; $74b1: $f0 $a2
	or   a                                           ; $74b3: $b7
	jp   nz, Jump_008_753b                           ; $74b4: $c2 $3b $75

	ld   a, [wWramBank]                                  ; $74b7: $fa $93 $c2
	push af                                          ; $74ba: $f5
	ld   a, $07                                      ; $74bb: $3e $07
	ld   [wWramBank], a                                  ; $74bd: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $74c0: $e0 $70
	ld   hl, $d000                                   ; $74c2: $21 $00 $d0
	ld   bc, $0010                                   ; $74c5: $01 $10 $00
	ld   a, $ff                                      ; $74c8: $3e $ff
	call MemSet                                       ; $74ca: $cd $96 $09
	ld   c, $80                                      ; $74cd: $0e $80
	ld   de, $8ff0                                   ; $74cf: $11 $f0 $8f
	ld   a, $07                                      ; $74d2: $3e $07
	ld   hl, $d000                                   ; $74d4: $21 $00 $d0
	ld   b, $01                                      ; $74d7: $06 $01
	call EnqueueHDMATransfer                                       ; $74d9: $cd $7c $02
	ld   hl, $d100                                   ; $74dc: $21 $00 $d1
	ld   bc, $0140                                   ; $74df: $01 $40 $01
	ld   a, $80                                      ; $74e2: $3e $80
	call MemSet                                       ; $74e4: $cd $96 $09
	ld   hl, $d280                                   ; $74e7: $21 $80 $d2
	ld   bc, $0140                                   ; $74ea: $01 $40 $01
	ld   a, $ff                                      ; $74ed: $3e $ff
	call MemSet                                       ; $74ef: $cd $96 $09
	ld   c, $81                                      ; $74f2: $0e $81
	ld   de, $9c00                                   ; $74f4: $11 $00 $9c
	ld   a, $07                                      ; $74f7: $3e $07
	ld   hl, $d100                                   ; $74f9: $21 $00 $d1
	ld   b, $14                                      ; $74fc: $06 $14
	call EnqueueHDMATransfer                                       ; $74fe: $cd $7c $02
	ld   c, $80                                      ; $7501: $0e $80
	ld   de, $9c00                                   ; $7503: $11 $00 $9c
	ld   a, $07                                      ; $7506: $3e $07
	ld   hl, $d280                                   ; $7508: $21 $80 $d2
	ld   b, $14                                      ; $750b: $06 $14
	call EnqueueHDMATransfer                                       ; $750d: $cd $7c $02
	pop  af                                          ; $7510: $f1
	ld   [wWramBank], a                                  ; $7511: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7514: $e0 $70
	ld   a, [wLCDC]                                  ; $7516: $fa $03 $c2
	or   $60                                         ; $7519: $f6 $60
	ld   [wLCDC], a                                  ; $751b: $ea $03 $c2
	ld   a, $a7                                      ; $751e: $3e $a7
	ld   [wWX], a                                  ; $7520: $ea $09 $c2
	xor  a                                           ; $7523: $af
	ld   [wWY], a                                  ; $7524: $ea $0a $c2
	ld   a, $4f                                      ; $7527: $3e $4f
	ld   [$c20b], a                                  ; $7529: $ea $0b $c2
	ld   hl, $c20c                                   ; $752c: $21 $0c $c2
	set  6, [hl]                                     ; $752f: $cb $f6
	ld   hl, wIE                                   ; $7531: $21 $0d $c2
	set  1, [hl]                                     ; $7534: $cb $ce
	ld   a, $10                                      ; $7536: $3e $10
	ld   [wLCDCIntFuncIdx], a                                  ; $7538: $ea $8d $c2

Jump_008_753b:
	ld   a, [wWX]                                  ; $753b: $fa $09 $c2
	sub  $04                                         ; $753e: $d6 $04
	ld   [wWX], a                                  ; $7540: $ea $09 $c2
	ld   a, [wSCX]                                  ; $7543: $fa $07 $c2
	add  $04                                         ; $7546: $c6 $04
	ld   [wSCX], a                                  ; $7548: $ea $07 $c2
	ld   b, a                                        ; $754b: $47
	ld   c, $00                                      ; $754c: $0e $00

	M_FarCall Func_01_407a
	
	ld   hl, hScriptOpcodeParams+2                                   ; $7562: $21 $a2 $ff
	ld   a, [hl]                                     ; $7565: $7e
	inc  [hl]                                        ; $7566: $34
	cp   $28                                         ; $7567: $fe $28
	jp   c, Jump_008_74a1                            ; $7569: $da $a1 $74

	ld   a, [wLCDC]                                  ; $756c: $fa $03 $c2
	or   $08                                         ; $756f: $f6 $08
	ld   [wLCDC], a                                  ; $7571: $ea $03 $c2
	ld   hl, hScriptOpcodeParams+1                                   ; $7574: $21 $a1 $ff
	inc  [hl]                                        ; $7577: $34
	xor  a                                           ; $7578: $af
	ldh  [hScriptOpcodeParams+2], a                                    ; $7579: $e0 $a2
	jp   Jump_008_74a1                               ; $757b: $c3 $a1 $74


LCDCFunc10::
	ld   hl, $c20b                                   ; $757e: $21 $0b $c2
	ldh  a, [rLY]                                    ; $7581: $f0 $44
	cp   [hl]                                        ; $7583: $be
	jp   nz, LCDCInterruptHandler.return                                   ; $7584: $c2 $4a $04

jr_008_7587:
	ldh  a, [rSTAT]                                  ; $7587: $f0 $41
	and  $03                                         ; $7589: $e6 $03
	jr   z, jr_008_7587                              ; $758b: $28 $fa

jr_008_758d:
	ldh  a, [rSTAT]                                  ; $758d: $f0 $41
	and  $03                                         ; $758f: $e6 $03
	jr   nz, jr_008_758d                             ; $7591: $20 $fa

	ldh  a, [rLCDC]                                  ; $7593: $f0 $40
	and  $97                                         ; $7595: $e6 $97
	ldh  [rLCDC], a                                  ; $7597: $e0 $40
	xor  a                                           ; $7599: $af
	ldh  [rSCX], a                                   ; $759a: $e0 $43
	jp   LCDCInterruptHandler.return                                       ; $759c: $c3 $4a $04


	ld   a, [wWramBank]                                  ; $759f: $fa $93 $c2
	push af                                          ; $75a2: $f5
	ld   a, $02                                      ; $75a3: $3e $02
	ld   [wWramBank], a                                  ; $75a5: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $75a8: $e0 $70
	ld   hl, hScriptOpcodeParams+2                                   ; $75aa: $21 $a2 $ff
	ld   a, [hl]                                     ; $75ad: $7e
	inc  [hl]                                        ; $75ae: $34
	ld   hl, hScriptOpcodeParams                                   ; $75af: $21 $a0 $ff
	ld   l, [hl]                                     ; $75b2: $6e
	ld   h, $00                                      ; $75b3: $26 $00

	M_FarCall LoadSceneryTileDataLayoutAndPalettes
	
	or   a                                           ; $75c9: $b7
	jr   nz, jr_008_75fa                             ; $75ca: $20 $2e

	ldh  a, [hScriptOpcodeParams]                                    ; $75cc: $f0 $a0
	ld   [$cba6], a                                  ; $75ce: $ea $a6 $cb
	ld   a, [$cbb1]                                  ; $75d1: $fa $b1 $cb
	or   a                                           ; $75d4: $b7
	jr   nz, jr_008_75f3                             ; $75d5: $20 $1c

	ld   a, [$cba8]                                  ; $75d7: $fa $a8 $cb
	ld   h, a                                        ; $75da: $67
	ld   a, [$cba9]                                  ; $75db: $fa $a9 $cb
	ld   l, a                                        ; $75de: $6f

	M_FarCall Func_0b_5903

jr_008_75f3:
	ld   hl, hScriptOpcodeParams+1                                   ; $75f3: $21 $a1 $ff
	inc  [hl]                                        ; $75f6: $34
	xor  a                                           ; $75f7: $af
	ldh  [hScriptOpcodeParams+2], a                                    ; $75f8: $e0 $a2

jr_008_75fa:
	pop  af                                          ; $75fa: $f1
	ld   [wWramBank], a                                  ; $75fb: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $75fe: $e0 $70
	ldh  a, [hScriptOpcodeParams]                                    ; $7600: $f0 $a0
	or   a                                           ; $7602: $b7
	jp   z, DequeueAScriptOpcode                            ; $7603: $ca $bc $40

	jp   Jump_008_74a1                               ; $7606: $c3 $a1 $74


	ld   hl, hScriptOpcodeParams+2                                   ; $7609: $21 $a2 $ff
	ld   a, [hl]                                     ; $760c: $7e
	inc  [hl]                                        ; $760d: $34
	cp   $2d                                         ; $760e: $fe $2d
	jp   c, Jump_008_74a1                            ; $7610: $da $a1 $74

	ld   hl, hScriptOpcodeParams+1                                   ; $7613: $21 $a1 $ff
	inc  [hl]                                        ; $7616: $34
	xor  a                                           ; $7617: $af
	ldh  [hScriptOpcodeParams+2], a                                    ; $7618: $e0 $a2
	jp   Jump_008_74a1                               ; $761a: $c3 $a1 $74


	ldh  a, [hScriptOpcodeParams+2]                                    ; $761d: $f0 $a2
	or   a                                           ; $761f: $b7
	jr   nz, jr_008_7633                             ; $7620: $20 $11

	ld   a, [wLCDC]                                  ; $7622: $fa $03 $c2
	and  $bf                                         ; $7625: $e6 $bf
	ld   [wLCDC], a                                  ; $7627: $ea $03 $c2
	ld   a, $a7                                      ; $762a: $3e $a7
	ld   [wWX], a                                  ; $762c: $ea $09 $c2
	xor  a                                           ; $762f: $af
	ld   [wSCX], a                                  ; $7630: $ea $07 $c2

jr_008_7633:
	ld   a, [wWX]                                  ; $7633: $fa $09 $c2
	sub  $04                                         ; $7636: $d6 $04
	ld   [wWX], a                                  ; $7638: $ea $09 $c2
	sub  $07                                         ; $763b: $d6 $07
	cpl                                              ; $763d: $2f
	inc  a                                           ; $763e: $3c
	ld   b, a                                        ; $763f: $47
	ld   c, $00                                      ; $7640: $0e $00

	M_FarCall Func_01_407a
	
	ld   hl, hScriptOpcodeParams+2                                   ; $7656: $21 $a2 $ff
	ld   a, [hl]                                     ; $7659: $7e
	inc  [hl]                                        ; $765a: $34
	cp   $28                                         ; $765b: $fe $28
	jp   c, Jump_008_74a1                            ; $765d: $da $a1 $74

	ld   bc, $0000                                   ; $7660: $01 $00 $00

	M_FarCall Func_01_407a
	
	ld   a, [wLCDC]                                  ; $7677: $fa $03 $c2
	and  $97                                         ; $767a: $e6 $97
	ld   [wLCDC], a                                  ; $767c: $ea $03 $c2
	ld   hl, wIE                                   ; $767f: $21 $0d $c2
	res  1, [hl]                                     ; $7682: $cb $8e
	jp   DequeueAScriptOpcode                               ; $7684: $c3 $bc $40


ScriptOpcode2e_Init:
ScriptOpcode2e_Main:
	call GetNextScriptOpcodeToProcess                               ; $7687: $cd $70 $42
	ld   c, a                                        ; $768a: $4f
	call GetNextScriptOpcodeToProcess                               ; $768b: $cd $70 $42
	ld   b, a                                        ; $768e: $47
	ld   hl, ScriptSources                                   ; $768f: $21 $28 $57
	add  hl, bc                                      ; $7692: $09
	add  hl, bc                                      ; $7693: $09
	add  hl, bc                                      ; $7694: $09
	ld   a, $40                                      ; $7695: $3e $40
	ld   de, wBaseScriptAddr                                   ; $7697: $11 $8a $cb
	ld   bc, $0003                                   ; $769a: $01 $03 $00
	call FarMemCopy                                       ; $769d: $cd $b2 $09
	ld   a, [wBaseScriptAddr]                                  ; $76a0: $fa $8a $cb
	ld   l, a                                        ; $76a3: $6f
	ld   a, [wBaseScriptAddr+1]                                  ; $76a4: $fa $8b $cb
	ld   h, a                                        ; $76a7: $67
	ld   bc, $4000                                   ; $76a8: $01 $00 $40
	add  hl, bc                                      ; $76ab: $09
	ld   a, [wBaseScriptBank]                                  ; $76ac: $fa $8c $cb
	add  $41                                         ; $76af: $c6 $41
	ld   [wBaseScriptBank], a                                  ; $76b1: $ea $8c $cb
	ld   [wCurrScriptBank], a                                  ; $76b4: $ea $8f $cb
	ld   a, h                                        ; $76b7: $7c
	ld   [wBaseScriptAddr+1], a                                  ; $76b8: $ea $8b $cb
	ld   [wCurrScriptAddr+1], a                                  ; $76bb: $ea $8e $cb
	ld   a, l                                        ; $76be: $7d
	ld   [wBaseScriptAddr], a                                  ; $76bf: $ea $8a $cb
	ld   [wCurrScriptAddr], a                                  ; $76c2: $ea $8d $cb
	ret                                              ; $76c5: $c9


ScriptOpcode2f_Init:
	ld   a, $2f                                      ; $76c6: $3e $2f
	call EnqueueAScriptOpcode                               ; $76c8: $cd $97 $40
	call GetNextScriptOpcodeToProcess                               ; $76cb: $cd $70 $42
	ld   [hl], a                                     ; $76ce: $77
	ld   a, SO_SET_CHAR_ON_SCREEN                                      ; $76cf: $3e $0d
	call EnqueueAScriptOpcode                               ; $76d1: $cd $97 $40
	ld   a, $00                                      ; $76d4: $3e $00
	ld   [hl-], a                                    ; $76d6: $32
	ld   a, $00                                      ; $76d7: $3e $00
	ld   [hl-], a                                    ; $76d9: $32
	xor  a                                           ; $76da: $af
	ld   [hl-], a                                    ; $76db: $32
	ld   [hl-], a                                    ; $76dc: $32
	ld   a, SO_CLEAR_TEXT_BOX                                      ; $76dd: $3e $08
	call EnqueueAScriptOpcode                               ; $76df: $cd $97 $40
	ret                                              ; $76e2: $c9


ScriptOpcode2f_Main:
	xor  a                                           ; $76e3: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $76e4: $ea $52 $cb
	ld   a, [hl]                                     ; $76e7: $7e
	push af                                          ; $76e8: $f5
	dec  a                                           ; $76e9: $3d
	sla  a                                           ; $76ea: $cb $27
	ld   h, $00                                      ; $76ec: $26 $00
	ld   l, a                                        ; $76ee: $6f
	ld   bc, $7728                                   ; $76ef: $01 $28 $77
	add  hl, bc                                      ; $76f2: $09
	ld   a, [hl+]                                    ; $76f3: $2a
	ld   h, [hl]                                     ; $76f4: $66
	ld   l, a                                        ; $76f5: $6f

	M_FarCall Call_009_4537
	
	pop  af                                          ; $770a: $f1
	ld   b, $00                                      ; $770b: $06 $00
	ld   h, $3b                                      ; $770d: $26 $3b
	ld   l, $02                                      ; $770f: $2e $02

	M_FarCall Call_021_75c1
	
	jp   DequeueAScriptOpcode                               ; $7725: $c3 $bc $40


	call z, $cd00                                    ; $7728: $cc $00 $cd
	nop                                              ; $772b: $00
	adc  $00                                         ; $772c: $ce $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $772e: $cf
	nop                                              ; $772f: $00
	ret  nc                                          ; $7730: $d0

	nop                                              ; $7731: $00
	pop  de                                          ; $7732: $d1
	nop                                              ; $7733: $00


ScriptOpcode30_Init:
	ld   a, $30                                      ; $7734: $3e $30
	call EnqueueAScriptOpcode                               ; $7736: $cd $97 $40
	ld   a, SO_03                                      ; $7739: $3e $03
	call EnqueueAScriptOpcode                               ; $773b: $cd $97 $40
	xor  a                                           ; $773e: $af
	ld   [hl], a                                     ; $773f: $77
	ret                                              ; $7740: $c9


ScriptOpcode30_Main:
	xor  a                                           ; $7741: $af
	ld   [wScriptEngineContsRunningThisMainLoop], a                                  ; $7742: $ea $52 $cb
	ld   h, $3b                                      ; $7745: $26 $3b
	ld   l, $01                                      ; $7747: $2e $01

	M_FarCall Func_0c_5a33
	
	ld   a, SO_02                                      ; $775d: $3e $02
	call AddInterruptScriptOpcode                               ; $775f: $cd $ba $42
	jp   DequeueAScriptOpcode                               ; $7762: $c3 $bc $40


ScriptOpcode31_Init:
ScriptOpcode31_Main:
	call GetNextScriptOpcodeToProcess                               ; $7765: $cd $70 $42
	ld   h, a                                        ; $7768: $67
	call GetNextScriptOpcodeToProcess                               ; $7769: $cd $70 $42
	ld   l, a                                        ; $776c: $6f
	
	push hl                                          ; $776d: $e5
	call HandleProcessingScriptCalcStack                               ; $776e: $cd $d1 $44
	pop  hl                                          ; $7771: $e1
	
	or   a                                           ; $7772: $b7
	jr   nz, jr_008_7777                             ; $7773: $20 $02

	ld   a, $01                                      ; $7775: $3e $01

jr_008_7777:
	M_FarCall Func_09_4530
	ret                                              ; $778b: $c9
