#!/usr/bin/env python3

import csv
import sys
import os
import clipboard
import time
from util import bankConv, getRom, conv, bankAddr, wordIn, stringB, groupBytes
from common_words import get_chosen
from openpyxl import load_workbook


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
            "name": "ScriptOpt_SetPortrait", 
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
        0x24: {
            "name": "ScriptOpt_24",
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
            "name": "ScriptOpt_2b",
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

    chosen_words = {
        word: i
        for i, (word, _) in enumerate(get_chosen())
    }
    
    def __init__(self, rom, start, scriptNum):
        self.rom = rom
        self.start = start
        self.scriptNum = scriptNum
        self.offset = 0
        self.instructions = {}
        self.jumpAddresses = []

        self.englishMap = {}

    @staticmethod
    def convertEnglish(english, limit=112, dictionary=False):
        words = english.split()
        textboxes = []
        lineCounter = 0
        colCounter = 0
        boxBytes = []
        spaceLen = 3

        currTextStyle = 3

        for i, word in enumerate(words):
            wordLen = ScriptExtractor.getWordLength(word)
            calc = colCounter + wordLen
            if i != 0:
                calc += spaceLen
            if calc >= limit:
                lineCounter += 1
                colCounter = 0
                if lineCounter >= 3:
                    textboxes.append(boxBytes)
                    boxBytes = []
                    lineCounter = 0
                    
                    if currTextStyle != 3:
                        boxBytes.extend([0x0a, currTextStyle])
                else:
                    boxBytes.append(0x0d)
            else:
                if colCounter != 0:
                    boxBytes.append(0x10)

            # Add word
            wordIdx = 0
            while wordIdx < len(word):
                if word[wordIdx:wordIdx+6] in ('<name>', '<player>', '<Player>'):
                    boxBytes.extend([0x08, 0x00])
                    wordIdx += 6
                    continue

                if dictionary:
                    seekIdx = wordIdx+1
                    while seekIdx < len(word) and word[seekIdx] != 0:
                        seekIdx += 1

                    curr_word = word[wordIdx:seekIdx]
                    if curr_word in ScriptExtractor.chosen_words:
                        boxBytes.extend([0x0b, ScriptExtractor.chosen_words[curr_word]])
                        wordIdx = seekIdx
                        continue

                if word[wordIdx] == "'":
                    if wordIdx != len(word)-1 and word[wordIdx+1] in "0123456789":
                        currTextStyle = int(word[wordIdx+1])
                        boxBytes.extend([0x0a, currTextStyle])
                        wordIdx += 2
                        continue

                boxBytes.extend(ScriptExtractor.getCharVal(word[wordIdx]))
                wordIdx += 1

            if colCounter != 0:
                colCounter += spaceLen
            colCounter += wordLen

        if boxBytes:
            textboxes.append(boxBytes)
            
        return textboxes

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
        if char == '+': return [0x01, 0x09]
        if char == "!": return [0xfa]
        if char == "<": return [0x01, 0x11]
        if char == ">": return [0x01, 0x12]
        if char == "(": return [0x01, 0x03]
        if char == ")": return [0x01, 0x04]
        if char == "*": return [0x01, 0x1c]
        if char == "&": return [0x01, 0x1d]
        if char == "=": return [0x01, 0x0d]
        if char == ":": return [0x01, 0x15]
        if char == "%": return [0x01, 0x0e]
        if char == "/": return [0x01, 0x00]
        if char == "~": return [0xfc]
        if char == ";": return [0x01, 0x18]
        if char == "è": return [0x01, 0x19]
        if char == "ó": return [0x01, 0x1a]
        if char == "é": return [0x01, 0x1b]

        raise Exception(f"get byte for {char}")

    @staticmethod
    def getWordLength(word):
        total = 0
        wordIdx = 0
        while wordIdx < len(word):
            if word[wordIdx:wordIdx+6] == '<name>' or word[wordIdx:wordIdx+8] in ('<Player>', '<player>'):
                total += 5 * 5 # 5 wide * 5 chars
                wordIdx += 6
                continue

            if word[wordIdx] == "'":
                if wordIdx != len(word)-1 and word[wordIdx+1] in "0123456789":
                    wordIdx += 2
                    continue

            char = word[wordIdx]
            wordIdx += 1
            if char.isalnum():
                if char in "1ITt":
                    total += 4
                elif char in "il":
                    total += 2
                else:
                    total += 5
            elif char in "!":
                total += 2
            elif char in ",.';:":
                total += 3
            elif char in "()":
                total += 4
            elif char in "èóé":
                total += 5
            elif char in '"-+<>=/*':
                total += 6
            elif char in "&":
                total += 7
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
            
    def genRefs(self, getRefs=False):
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
                if getRefs:
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
                if getRefs:
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
                for i in range(numOpts):
                    while True:
                        char = self.get_script_byte()
                        if char == 0:
                            break
                        elif char < 8:
                            char = self.get_script_byte()
                    self.offset += 1
                self.instructions[currOpAddress] = {
                    "name": "ScriptOpt_UntimedQuestion",
                    "params": "bb"+"t"*numOpts,
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
                    self.offset += 1
                self.instructions[currOpAddress] = {
                    "name": "ScriptOpt_TimedQuestion",
                    "params": "bb"+"t"*numOpts,
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
                    "params": "bb",
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
        prompted = True # if a new textbox has started

        comps = ["\tStartScript", "", f"Script_{self.scriptNum:03x}::"]
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

            if name in ('ScriptOpt_ContinuePrompt', 'ScriptOpt_Jump'):
                prompted = True

            if params == 't' and address+1 in self.englishMap:
                english = self.englishMap[address+1]
                textboxes = self.convertEnglish(english, dictionary=True)
                for line in self.englishMap[address+1].split('\n'):
                    comps.append(f"; {line}")
                if prompted is False:
                    comps.append("\tScriptOpt_ContinuePrompt")
                    totalBytes += 1

                for i, textbox in enumerate(textboxes):
                    if i != 0:
                        if self.scriptNum == 6:
                            comps.append("\tScriptOpt_SetDelay $3c")
                        # comps.append("\tScriptOpt_DisplayText")
                        # comps.append("\t\tTEXT $0d")
                        comps.append("\tScriptOpt_ContinuePrompt")
                        totalBytes += 1

                    paramStr = ','.join(f"${kanji:02x}" for kanji in textbox)
                    comps.append(f"\tScriptOpt_DisplayText ; {address+offset}")
                    comps.append(f"\t\tTEXT {paramStr}")
                    totalBytes += 1 + len(textbox) + 1

                prompted = False
                continue

            extra_comps = []
            totalBytes += 1

            if self.scriptNum == 633 and address == 2350:
                offset += 2
                param_comps.append(f"$0d")
                param_comps.append(f"$04")
                totalBytes += 2
            else:
                for param in params:
                    if param == 'b':
                        byte = self.rom[self.start+address+offset]
                        offset += 1
                        param_comps.append(f"${byte:02x}")
                        totalBytes += 1
                    elif param == 'r':
                        offset += 2
                        totalBytes += 2
                        param_comps.append(f".ref_{details['ref']:x}")
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
                        param_comps.append(f"; {address+offset}")

                        if address + offset in self.englishMap:
                            english = self.englishMap[address+offset]
                            limit = 112
                            if name == 'ScriptOpt_TimedQuestion':
                                limit = 128
                            textboxes = self.convertEnglish(english, limit=limit)
                            assert len(textboxes) == 1
                            if 0x0d in textboxes[0]:
                                print(self.scriptNum, address+offset)

                            for line in self.englishMap[address+offset].split('\n'):
                                comps.append(f"; {line}")
                            
                            for i, textbox in enumerate(textboxes):
                                paramStr = ','.join(f"${kanji:02x}" for kanji in textbox)
                                extra_comps.append(f"\t\tTEXT {paramStr}")
                                totalBytes += len(textbox) + 1

                            while True:
                                byte = self.rom[self.start+address+offset]
                                offset += 1
                                if byte == 0:
                                    break
                                if byte <= 8 or byte == 0x0a:
                                    offset += 1
                        else:
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
                                elif byte in (0x08, 0x0a):
                                    b2 = self.rom[self.start+address+offset]
                                    offset += 1
                                    totalBytes += 1
                                    text_comps.append(f"${byte:02x}")
                                    text_comps.append(f"${b2:02x}")
                                else:
                                    text_comps.append(f"${byte:02x}")
                            extra_comps.append("\t\tTEXT " + ", ".join(text_comps))

                        if 'imedQuestion' in name:
                            nb = self.rom[self.start+address+offset]
                            offset += 1
                            totalBytes += 1
                            extra_comps.append(f"\t\tdb ${nb:02x}")

                        # param_comps.append(f"; {address+1:02x}")
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
        comps.append(".end:")
        return comps, totalBytes

    def run(self):
        self.genRefs(getRefs=True)
        self.offset = 0
        self.instructions = {}
        
        if self.scriptNum == 0x2e0:
            self.genRefs(getRefs=True)
            self.offset = 0
            self.instructions = {}

        self.genRefs(getRefs=False)
        # Continue prompts where omitted
        if self.scriptNum == 330:
            self.instructions[493] = self.simpleCodes[0x0a]
        if self.scriptNum == 500:
            self.instructions[480] = self.simpleCodes[0x0a]

        comps, totalBytes = self.genComps()

        if self.scriptNum in (330, 500):
            totalBytes += 1

        return comps, totalBytes


if __name__ == "__main__":
    quotePrefixed = []
    wb = load_workbook('sakura wars GB - 24:09:21.xlsx')
    ws = wb['temp']
    for i, row in enumerate(ws.rows):
        english = row[4]
        if english.quotePrefix:
            quotePrefixed.append(i)

    data = getRom()
    baseTable = bankConv('40:5728')

    # flags
    translate = True
    compileBs = True

    """Individual"""
    # scriptNum = conv(sys.argv[1])
    # startBank = data[baseTable+scriptNum*3+2]+0x41
    # startAddr = wordIn(data, baseTable+scriptNum*3)+0x4000
    # start = bankAddr(startBank, startAddr)

    # se = ScriptExtractor(data, start, scriptNum)
    # comps, totalBytes = se.run()

    # final_str = "\n".join(comps)
    # clipboard.copy(final_str)
    # print(final_str)
    # print(hex(start+se.offset))
    # print(hex(totalBytes))

    # exit(0)

    fullEnglishMap = {}
    doneEnglish = {}

    if translate:
        with open('sakura wars GB - 25:09:21.csv') as f:
            reader = csv.reader(f)
            for i, (scriptNum, offset, orig, blank, english, char, dupe1, dupe2) in enumerate(reader):
                if not scriptNum:
                    continue

                if i in quotePrefixed:
                    english = f"'{english}"

                # Special cases starting with a space/s
                if (int(scriptNum), int(offset)) in (
                    (368, 864),
                    (457, 242),
                    (469, 927),
                    (469, 1208),
                    (621, 547),
                    (621, 756),
                    (621, 961),
                    (694, 709),
                    (723, 3147),
                ):
                    if english and english[0] != "=" and english[0] != " ":
                        english = f" {english}"
                elif (int(scriptNum), int(offset)) in (
                    (18, 117),
                    (18, 694),
                    (262, 101),
                    (733, 2605),
                ):
                    if english and english[0] != "=" and english[0] != " ":
                        english = " "*8+english

                fullEnglishMap.setdefault(int(scriptNum), {})

                if english and english[0] != "=":
                    doneEnglish[orig] = english
                    fullEnglishMap[int(scriptNum)][int(offset)] = english

                if dupe1 == 'x':
                    if orig in doneEnglish:
                        fullEnglishMap[int(scriptNum)][int(offset)] = doneEnglish[orig]
                    continue

    availableBanks = [
        0x02, 0x03,             0x36, 0x37, 0x38, 0x39, # using $1f, $2b
        0x3a, 0x3b, 0x3c, 0x3d, 0x6c, 0x6d, 0x6e, 0x6f,
        0x86, 0x87,
    ]
    for i in range(0x41, 0x6b):
        availableBanks.append(i)

    bankData = {}

    currBank = availableBanks.pop(0)
    bankBytes = 0
    bankData[currBank] = []

    for scriptNum in range(1, 0x322):
        if 0x13 <= scriptNum < 0x100:
            continue

        # if scriptNum != 564: continue

        if scriptNum not in fullEnglishMap:
            fullEnglishMap[scriptNum] = {}

        startBank = data[baseTable+scriptNum*3+2]+0x41
        startAddr = wordIn(data, baseTable+scriptNum*3)+0x4000

        se = ScriptExtractor(data, bankAddr(startBank, startAddr), scriptNum)
        se.englishMap = fullEnglishMap[scriptNum]
        comps, totalBytes = se.run()

        if compileBs:
            # New process for rolling across banks
            final_comps = '\n'.join(comps)
            final_str = f"""
include "macros.s"
include "charmap.s"

SECTION "Bank $00", ROM0[$200]

{final_comps}
"""
            with open('scriptBuild/script.s', 'w') as f:
                f.write(final_str)

            os.chdir('scriptBuild')
            ret = os.system('make -B')
            if ret != 0:
                break
            os.chdir('..')

            with open('scriptBuild/sakuraWars1.gbc', 'rb') as f:
                compiledBytes = f.read()[0x200:0x200+totalBytes]
            
            if totalBytes + bankBytes < 0x4000:
                bankData[currBank].extend(["\tStartScript", "", f"Script_{scriptNum:03x}::"])
                for group in groupBytes(compiledBytes, 32):
                    bankData[currBank].append(stringB(group))
                bankBytes += totalBytes
            else:
                prevBank = currBank
                currBank = availableBanks.pop(0)
                bankData[currBank] = []

                if currBank == prevBank + 1:
                    remBytesInPrevBank = 0x4000 - bankBytes
                    prevBankBytes = compiledBytes[:remBytesInPrevBank]
                    shouldRemain = totalBytes - remBytesInPrevBank
                    currBankBytes = compiledBytes[remBytesInPrevBank:]
                    assert shouldRemain == len(currBankBytes)

                    bankData[prevBank].extend(["\tStartScript", "", f"Script_{scriptNum:03x}::"])
                    for group in groupBytes(prevBankBytes, 32):
                        bankData[prevBank].append(stringB(group))

                    bankBytes = shouldRemain
                    for group in groupBytes(currBankBytes, 32):
                        bankData[currBank].append(stringB(group))
                else:
                    bankData[currBank].extend(["\tStartScript", "", f"Script_{scriptNum:03x}::"])
                    bankBytes = totalBytes
                    for group in groupBytes(compiledBytes, 32):
                        bankData[currBank].append(stringB(group))
        else:
            bankData[currBank].extend(comps)

    finalComps = ['include "includes.s"\n\n']
    for k, v in bankData.items():
        finalComps.append(f"SECTION \"Bank ${k:02x}\", ROMX[$4000], BANK[${k:02x}]")
        finalComps.append("if def(VWF)")
        finalComps.extend(v)
        finalComps.append("endc\n\n")
    final_str = "\n".join(finalComps)
    with open('temp.s', 'w') as f:
        f.write(final_str)
    print(stringB(availableBanks))
