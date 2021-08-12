#!/usr/bin/env python3

import csv
import sys
import clipboard
from util import bankConv, getRom, conv

data = getRom()

start = bankConv(sys.argv[1])
scriptNum = conv(sys.argv[2])


# todo: when break addresses != next jump address

class ScriptExtractor:
    binopsMap = {
        0x1b: 'BoolOr',
        0x1c: 'BoolAnd',
        0x1d: 'BinOr',
        0x1e: 'BinXor',
        0x1f: 'BinAnd',
        0x20: 'Eq',
        0x21: 'Neq',
        0x22: 'Lt',
        0x23: 'Lte',
        0x24: 'Gt',
        0x25: 'Gte',
        0x28: 'Add',
        0x29: 'Sub',
        0x2a: 'Mult',
        0x2b: 'Div',
        0x2c: 'Mod',
    }

    simpleCodes = {
        0x02: {
            "name": "ScriptOpt_02",
            "params": "",
        },
        0x09: {
            "name": "ScriptOpt_SetDelay", 
            "params": "b",
        },
        0x0a: {
            "name": "ScriptOpt_ContinuePrompt",
            "params": "",
        },
        0x0c: {
            "name": "ScriptOpt_0c",
            "params": "b",
        },
        0x0d: {
            "name": "ScriptOpt_0d", 
            "params": "bb",
        },
        0x0e: {
            "name": "ScriptOpt_LoadScenery", 
            "params": "b",
        },
        0x0f: {
            "name": "ScriptOpt_0f", 
            "params": "bb",
        },
        0x13: {
            "name": "ScriptOpt_13", 
            "params": "b",
        },
        0x1c: {
            "name": "ScriptOpt_1c",
            "params": "bbb",
        },
        0x2c: {
            "name": "ScriptOpt_2c", 
            "params": "b",
        },
    }
    
    def __init__(self, rom, start, scriptNum):
        self.rom = rom
        self.start = start
        self.scriptNum = scriptNum
        self.offset = 0
        self.instructions = {}
        self.jumpAddresses = []

        self.translationMap = {}
        with open('tools/script4.csv') as f:
            reader = csv.reader(f)
            for scriptNum, offset, orig, blank, english, char in reader:
                if english:
                    self.convertEnglish(offset, english)

    def convertEnglish(self, offset, english):
        words = english.split()
        textboxes = []
        lineCounter = 0
        colCounter = 0
        boxBytes = []
        spaceLen = 3
        for word in words:
            wordLen = self.getWordLength(word)
            if colCounter + wordLen + spaceLen >= 0x0e * 8:
                lineCounter += 1
                colCounter = 0
                if lineCounter >= 3:
                    textboxes.append(boxBytes)
                    boxBytes = []
                    lineCounter = 0
                else:
                    boxBytes.append(0x0d)
                for char in word:
                    boxBytes.extend(self.getCharVal(char))

                if colCounter != 0:
                    colCounter += spaceLen
                colCounter += wordLen
            else:
                if colCounter != 0:
                    boxBytes.append(0x10)
                for char in word:
                    boxBytes.extend(self.getCharVal(char))

                if colCounter != 0:
                    colCounter += spaceLen
                colCounter += wordLen
        if boxBytes:
            textboxes.append(boxBytes)
        self.translationMap[int(offset)] = textboxes

    @staticmethod
    def getCharVal(char):
        if '0' <= char <= '9':
            return [ord(char)-ord('0')+0x11]

        if 'A' <= char <= 'Z':
            return [ord(char)-ord('A')+0x1b]

        if 'a' <= char <= 'z':
            return [ord(char)-ord('a')+0x35]

        if char == "'": return [0x01, 0x01]
        if char == ".": return [0xf2]
        if char == "-": return [0x01, 0x0a]
        if char == "?": return [0xf9]
        if char == ",": return [0xe1]
        if char == '"': return [0x01, 0x02]
        if char == "!": return [0xfa]

        raise Exception(f"get byte for {char}")

    @staticmethod
    def getWordLength(word):
        total = 0
        for char in word:
            if char.isalnum():
                if char in "1ITt":
                    total += 4
                elif char in "il":
                    total += 2
                else:
                    total += 5
            elif char in '"':
                total += 6
            elif char in ",.'":
                total += 3
            else:
                total += 8
        return total

    def get_script_byte(self):
        b = self.rom[self.start+self.offset]
        self.offset += 1
        return b

    def handleRPN(self):
        comps = []
        while True:
            ctrl = self.get_script_byte()
            if ctrl >= 0x10:
                assert 0x2c >= ctrl >= 0x1b
                assert ctrl not in (0x26, 0x27)
                binopName = self.binopsMap[ctrl]
                comps.append(f"Rpn{binopName}")
            elif ctrl == 1:
                byteToPush = self.get_script_byte()
                comps.append(f"RpnPushSpecialRamByte ${byteToPush:02x}")
            elif ctrl == 2:
                param = self.get_script_byte()
                comps.append(f"Rpn03 ${param:02x}")
            elif ctrl == 3:
                param = self.get_script_byte()
                comps.append(f"Rpn03 ${param:02x}")
            elif ctrl == 4:
                paramH = self.get_script_byte()
                paramL = self.get_script_byte()
                comps.append(f"Rpn04 ${paramH:02x}, ${paramL:02x}")
            elif ctrl == 6:
                paramH = self.get_script_byte()
                paramL = self.get_script_byte()
                comps.append(f"Rpn06 ${paramH:02x}, ${paramL:02x}")
            elif ctrl == 0:
                comps.append("RpnEnd")
                break
            else:
                raise Exception(f"rpn byte ${ctrl:02x}")
        return [f"\t\t{comp}" for comp in comps]
            
    def genRefs(self):
        while True:
            currOpAddress = self.offset

            op = self.get_script_byte()
            if op == 0:
                self.instructions[currOpAddress] = {
                    "name": "ScriptOpt_End",
                    "params": "",
                }
                jumps = list(filter(lambda item: item >= self.offset, self.jumpAddresses))
                if not list(jumps):
                    break
                self.offset = min(jumps)

            elif op == 1:
                while True:
                    char = self.get_script_byte()
                    if char == 0:
                        break
                    elif char < 8:
                        char = self.get_script_byte()
                    elif char == 8:
                        cond = self.get_script_byte()
                    elif char == 0x0a:
                        style = self.get_script_byte()
                    elif char < 0x10:
                        pass
                self.instructions[currOpAddress] = {
                    "name": "ScriptOpt_DisplayText",
                    "params": "t",
                }

            elif op == 5:
                self.get_script_byte()
                self.get_script_byte()
                rpn_comps = self.handleRPN()
                self.instructions[currOpAddress] = {
                    "name": "ScriptOpt_05", 
                    "params": "bbR",
                    "rpn": rpn_comps,
                }

            elif op == 6:
                ref = self.get_script_byte() + self.get_script_byte() * 0x100
                self.jumpAddresses.append(ref)

                self.instructions[currOpAddress] = {
                    "name": "ScriptOpt_Jump",
                    "params": "r",
                    "ref": ref,
                }
                jumps = list(filter(lambda item: item >= self.offset, self.jumpAddresses))
                if not list(jumps):
                    break
                self.offset = min(jumps)

            elif op == 7:
                ref = self.get_script_byte() + self.get_script_byte() * 0x100
                self.jumpAddresses.append(ref)
                rpn_comps = self.handleRPN()
                self.instructions[currOpAddress] = {
                    "name": "ScriptOpt_JumpIfCalcValIsNon0", 
                    "params": "rR",
                    "ref": ref,
                    "rpn": rpn_comps,
                }

            elif op == 0x19:
                q = self.get_script_byte()
                numOpts = self.get_script_byte()
                for i in range(numOpts):
                    while True:
                        char = self.get_script_byte()
                        if char == 0:
                            break
                        elif char < 8:
                            char = self.get_script_byte()
                        # elif char == 8:
                        #     cond = self.get_script_byte()
                        # elif char == 0x0a:
                        #     style = self.get_script_byte()
                        # elif char < 0x10:
                        #     pass
                    self.offset += 1
                self.instructions[currOpAddress] = {
                    "name": "ScriptOpt_TimedQuestion",
                    "params": "bb"+"t"*numOpts+"b",
                }

            elif op in self.simpleCodes:
                params = self.simpleCodes[op]['params']
                for param in params:
                    if param == 'b':
                        self.offset += 1
                self.instructions[currOpAddress] = self.simpleCodes[op]

            elif op == 0x1d:
                self.offset += 2
                rpn_comps = self.handleRPN()
                self.instructions[currOpAddress] = {
                    "name": "ScriptOpt_1d", 
                    "params": "bbR",
                    "rpn": rpn_comps,
                }

            else:
                raise Exception(f"opcode ${op:02x}")

    def genComps(self):
        comps = ["\tStartScript", "", f"Script_{scriptNum:03x}::"]
        addresses = sorted(self.instructions.keys())
        retainedRefs = set(self.jumpAddresses)
        for address in addresses:
            if address in retainedRefs:
                comps.append(f".ref_{address:x}:")

            offset = 1
            details = self.instructions[address]
            name = details['name']
            params = details['params']
            param_comps = []
            param = None
            if params == 't' and address+1 in self.translationMap:
                textboxes = self.translationMap[address+1]
                for i, textbox in enumerate(textboxes):
                    if i != 0:
                        comps.append("\tScriptOpt_SetDelay $3c")
                        comps.append("\tScriptOpt_DisplayText $0d")
                        comps.append("\tScriptOpt_ContinuePrompt")

                    paramStr = ','.join(f"${kanji:02x}" for kanji in textbox)
                    comps.append(f"\tScriptOpt_DisplayText {paramStr}")

                continue

            for param in params:
                if param == 'b':
                    byte = self.rom[self.start+address+offset]
                    offset += 1
                    param_comps.append(f"${byte:02x}")
                elif param == 'r':
                    param_comps.append(f".ref_{details['ref']:x}")
                    offset += 2
                elif param == 'R':
                    # exit early
                    if param_comps:
                        comps.append(f"\t{name} {', '.join(param_comps)}")
                    else:
                        comps.append(f"\t{name}")
                    comps.extend(details['rpn'])
                    break
                elif param == 't':
                    while True:
                        byte = self.rom[self.start+address+offset]
                        offset += 1
                        if byte == 0:
                            break
                        elif byte < 8:
                            b2 = self.rom[self.start+address+offset]
                            offset += 1
                            param_comps.append(f"${byte:1x}{b2:02x}")
                        elif byte == 0x0a:
                            b2 = self.rom[self.start+address+offset]
                            offset += 1
                            param_comps.append(f"${byte:02x}")
                            param_comps.append(f"${b2:02x}")
                        else:
                            param_comps.append(f"${byte:02x}")

                    # param_comps.append(f"; {address+1}")
                else:
                    raise Exception(f"param: {param}")

            if param == 'R':
                continue

            if param_comps:
                comps.append(f"\t{name} {', '.join(param_comps)}")
            else:
                comps.append(f"\t{name}")
        return comps

    def run(self):
        self.genRefs()
        return self.genComps()


se = ScriptExtractor(data, start, scriptNum)
comps = se.run()


final_str = "\n".join(comps)
clipboard.copy(final_str)
print(final_str)
print(hex(start+se.offset))