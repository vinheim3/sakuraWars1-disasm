; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

Gfx_Letters::
if def(VWF)
	INCBIN "newLetters.1bpp"
else
	INCBIN "origLetters.1bpp"
endc
