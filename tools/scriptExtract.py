#!/usr/bin/env python3

import csv
import sys
import clipboard
from util import bankConv, getRom, conv, bankAddr, wordIn


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
        0x03: {
            "name": "ScriptOpt_03",
            "params": "",
        },
        0x04: {
            "name": "ScriptOpt_04",
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
        0x10: {
            "name": "ScriptOpt_10",
            "params": "bb",
        },
        0x11: {
            "name": "ScriptOpt_11",
            "params": "b",
        },
        0x12: {
            "name": "ScriptOpt_12",
            "params": "b",
        },
        0x13: {
            "name": "ScriptOpt_13", 
            "params": "b",
        },
        0x14: {
            "name": "ScriptOpt_14",
            "params": "bb",
        },
        0x15: {
            "name": "ScriptOpt_15",
            "params": "b",
        },
        0x16: {
            "name": "ScriptOpt_16",
            "params": "b",
        },
        0x1a: {
            "name": "ScriptOpt_1a",
            "params": "b",
        },
        0x1b: {
            "name": "ScriptOpt_1b",
            "params": "b",
        },
        0x1c: {
            "name": "ScriptOpt_1c",
            "params": "bbb",
        },
        0x1e: {
            "name": "ScriptOpt_1e",
            "params": "",
        },
        0x21: {
            "name": "ScriptOpt_21",
            "params": "",
        },
        0x23: {
            "name": "ScriptOpt_23",
            "params": "b",
        },
        0x25: {
            "name": "ScriptOpt_25",
            "params": "b",
        },
        0x26: {
            "name": "ScriptOpt_26",
            "params": "",
        },
        0x27: {
            "name": "ScriptOpt_27",
            "params": "b",
        },
        0x28: {
            "name": "ScriptOpt_28",
            "params": "",
        },
        0x29: {
            "name": "ScriptOpt_29", 
            "params": "b",
        },
        0x2a: {
            "name": "ScriptOpt_2a",
            "params": "b",
        },
        0x2b: {
            "name": "ScriptOpt_",
            "params": "bb",
        },
        0x2c: {
            "name": "ScriptOpt_2c", 
            "params": "b",
        },
        0x2f: {
            "name": "ScriptOpt_2f",
            "params": "b",
        },
        0x30: {
            "name": "ScriptOpt_30",
            "params": "",
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
        # with open('tools/script4.csv') as f:
        #     reader = csv.reader(f)
        #     for scriptNum, offset, orig, blank, english, char in reader:
        #         if english:
        #             tbs = self.convertEnglish(english)
        #             self.translationMap[int(offset)] = tbs

    @staticmethod
    def convertEnglish(english):
        words = english.split()
        textboxes = []
        lineCounter = 0
        colCounter = 0
        boxBytes = []
        spaceLen = 3
        for word in words:
            wordLen = ScriptExtractor.getWordLength(word)
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
                    boxBytes.extend(ScriptExtractor.getCharVal(char))

                if colCounter != 0:
                    colCounter += spaceLen
                colCounter += wordLen
            else:
                if colCounter != 0:
                    boxBytes.append(0x10)
                for char in word:
                    boxBytes.extend(ScriptExtractor.getCharVal(char))

                if colCounter != 0:
                    colCounter += spaceLen
                colCounter += wordLen
        if boxBytes:
            textboxes.append(boxBytes)
        return textboxes

    @staticmethod
    def getCharVal(char):
        # todo: temp
        if char == ";": char = "."
        if char == "è": char = "e"
        if char == "ó": char = "o"

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
        if char == "<": return [0x01, 0x11]
        if char == ">": return [0x01, 0x12]
        if char == "(": return [0x01, 0x03]
        if char == ")": return [0x01, 0x04]
        if char == "*": return [0x01, 0x0b] # todo: x
        if char == ":": return [0x01, 0x15]
        if char == "%": return [0x01, 0x0e]
        if char == "/": return [0x01, 0x00]
        if char == "~": return [0xfc]

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
        totalBytes = 0
        while True:
            ctrl = self.get_script_byte()
            totalBytes += 1
            if ctrl >= 0x10:
                assert 0x2c >= ctrl >= 0x1b
                assert ctrl not in (0x26, 0x27)
                binopName = self.binopsMap[ctrl]
                comps.append(f"Rpn{binopName}")
            elif ctrl == 1:
                byteToPush = self.get_script_byte()
                totalBytes += 1
                comps.append(f"RpnPush ${byteToPush:02x}")
            elif ctrl == 2:
                param = self.get_script_byte()
                totalBytes += 1
                comps.append(f"RpnPushSpecialRamByte ${param:02x}")
            elif ctrl == 3:
                param = self.get_script_byte()
                totalBytes += 1
                comps.append(f"Rpn03 ${param:02x}")
            elif ctrl == 4:
                paramH = self.get_script_byte()
                paramL = self.get_script_byte()
                totalBytes += 2
                comps.append(f"Rpn04 ${paramH:02x}, ${paramL:02x}")
            elif ctrl == 6:
                paramH = self.get_script_byte()
                paramL = self.get_script_byte()
                totalBytes += 2
                comps.append(f"Rpn06 ${paramH:02x}, ${paramL:02x}")
            elif ctrl == 0:
                comps.append("RpnEnd")
                break
            else:
                raise Exception(f"rpn byte ${ctrl:02x}")
        return [f"\t\t{comp}" for comp in comps], totalBytes
            
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
                rpn_comps, totalBytes = self.handleRPN()
                self.instructions[currOpAddress] = {
                    "name": "ScriptOpt_05", 
                    "params": "bbR",
                    "rpn": rpn_comps,
                    "rpnLen": totalBytes,
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
                rpn_comps, totalBytes = self.handleRPN()
                self.instructions[currOpAddress] = {
                    "name": "ScriptOpt_JumpIfCalcValIsNon0", 
                    "params": "rR",
                    "ref": ref,
                    "rpn": rpn_comps,
                    "rpnLen": totalBytes,
                }

            elif op == 0x18:
                numOpts = self.get_script_byte()
                b1 = self.get_script_byte()
                b2 = self.get_script_byte()
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
                    "name": "ScriptOpt_UntimedQuestion",
                    "params": "bbb"+"t"*numOpts+"b",
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
                rpn_comps, totalBytes = self.handleRPN()
                self.instructions[currOpAddress] = {
                    "name": "ScriptOpt_1d", 
                    "params": "bbR",
                    "rpn": rpn_comps,
                    "rpnLen": totalBytes,
                }

            elif op == 0x20:
                self.offset += 2
                rpn_comps, totalBytes = self.handleRPN()
                self.instructions[currOpAddress] = {
                    "name": "ScriptOpt_20", 
                    "params": "bbR",
                    "rpn": rpn_comps,
                    "rpnLen": totalBytes,
                }

            elif op == 0x2e:
                self.instructions[currOpAddress] = {
                    "name": "ScriptOpt_2e",
                    "params": "b",
                }
                jumps = list(filter(lambda item: item >= self.offset, self.jumpAddresses))
                if not list(jumps):
                    break
                self.offset = min(jumps)

            elif op == 0x31:
                self.offset += 2
                rpn_comps, totalBytes = self.handleRPN()
                self.instructions[currOpAddress] = {
                    "name": "ScriptOpt_31", 
                    "params": "bbR",
                    "rpn": rpn_comps,
                    "rpnLen": totalBytes,
                }

            else:
                raise Exception(f"opcode ${op:02x}")

    def genComps(self):
        totalBytes = 0

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
                        comps.append("\tScriptOpt_DisplayText")
                        comps.append("\t\TEXT $0d")
                        comps.append("\tScriptOpt_ContinuePrompt")
                        totalBytes += 2 + 1 + 2 + 1

                    paramStr = ','.join(f"${kanji:02x}" for kanji in textbox)
                    comps.append("\tScriptOpt_DisplayText")
                    comps.append(f"\t\tTEXT {paramStr}")
                    totalBytes += 1 + len(textbox) + 1

                continue

            extra_comps = []
            totalBytes += 1

            for param in params:
                if param == 'b':
                    byte = self.rom[self.start+address+offset]
                    offset += 1
                    param_comps.append(f"${byte:02x}")
                    totalBytes += 1
                elif param == 'r':
                    param_comps.append(f".ref_{details['ref']:x}")
                    offset += 2
                    totalBytes += 2
                elif param == 'R':
                    # exit early
                    if param_comps:
                        comps.append(f"\t{name} {', '.join(param_comps)}")
                    else:
                        comps.append(f"\t{name}")
                    comps.extend(details['rpn'])
                    totalBytes += details['rpnLen']
                    break
                elif param == 't':
                    text_comps = []
                    while True:
                        byte = self.rom[self.start+address+offset]
                        offset += 1
                        totalBytes += 1
                        if byte == 0:
                            break

                        if byte < 8:
                            b2 = self.rom[self.start+address+offset]
                            offset += 1
                            totalBytes += 1
                            text_comps.append(f"${byte:1x}{b2:02x}")
                        elif byte == 0x0a:
                            b2 = self.rom[self.start+address+offset]
                            offset += 1
                            totalBytes += 1
                            text_comps.append(f"${byte:02x}")
                            text_comps.append(f"${b2:02x}")
                        else:
                            text_comps.append(f"${byte:02x}")
                    extra_comps.append("\t\tTEXT " + ", ".join(text_comps))

                    # param_comps.append(f"; {address+1}")
                else:
                    raise Exception(f"param: {param}")

            if param == 'R':
                continue

            if param_comps:
                comps.append(f"\t{name} {', '.join(param_comps)}")
            else:
                comps.append(f"\t{name}")
            if extra_comps:
                comps.extend(extra_comps)
        return comps, totalBytes

    def run(self):
        self.genRefs()
        return self.genComps()


if __name__ == "__main__":
    data = getRom()

    """Individual"""
    # start = bankConv(sys.argv[1])
    # scriptNum = conv(sys.argv[2])

    # se = ScriptExtractor(data, start, scriptNum)
    # comps, totalBytes = se.run()

    # final_str = "\n".join(comps)
    # clipboard.copy(final_str)
    # print(final_str)
    # print(hex(start+se.offset))
    # print(hex(totalBytes))

    # exit(0)

    fullTranslationMap = {}
    doneTranslations = {}
    with open('sakura wars GB - 18:08:21.csv') as f:
        reader = csv.reader(f)
        for scriptNum, offset, orig, blank, english, char, dupe1, dupe2 in reader:
            if not scriptNum:
                continue

            fullTranslationMap.setdefault(int(scriptNum), {})

            if dupe1 == 'x':
                if orig in doneTranslations:
                    fullTranslationMap[int(scriptNum)][int(offset)] = doneTranslations[orig]
                continue

            if english:
                tbs = ScriptExtractor.convertEnglish(english)
                doneTranslations[orig] = tbs
                fullTranslationMap[int(scriptNum)][int(offset)] = tbs

    availableBanks = [
        0x02,       0x1f, 0x2b, 0x36, 0x37, 0x38, 0x39, 
        0x3a, 0x3b, 0x3c, 0x3d, 0x6c, 0x6d, 0x6e, 0x6f,
        0x86, 0x87,
    ]
    for i in range(0x41, 0x6b):
        availableBanks.append(i)

    bankData = {}

    currBank = availableBanks.pop(0)
    bankBytes = 0
    bankData[currBank] = []

    baseTable = bankConv('40:5728')
    for scriptNum in range(0x322):
        if 0x13 <= scriptNum < 0x100:
            continue

        if scriptNum not in fullTranslationMap:
            continue

        startBank = data[baseTable+scriptNum*3+2]+0x41
        startAddr = wordIn(data, baseTable+scriptNum*3)+0x4000

        se = ScriptExtractor(data, bankAddr(startBank, startAddr), scriptNum)
        se.translationMap = fullTranslationMap[scriptNum]
        comps, totalBytes = se.run()
        
        if totalBytes + bankBytes < 0x4000:
            bankData[currBank].extend(comps)
            bankBytes += totalBytes
        else:
            currBank = availableBanks.pop(0)
            bankBytes = totalBytes
            bankData[currBank] = comps

    finalComps = []
    for k, v in bankData.items():
        finalComps.append(f"SECTION \"Bank ${k:02x}\", ROMX[$4000], BANK[${k:02x}]")
        finalComps.append("if def(VWF)")
        finalComps.extend(v)
        finalComps.append("endc\n\n")
    final_str = "\n".join(finalComps)
    with open('temp.s', 'w') as f:
        f.write(final_str)
