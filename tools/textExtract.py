#!/usr/bin/env python3

import csv
import json
import sys
from uuid import uuid4
import clipboard
from util import getRom, conv, bankAddr, wordIn, getKanjiMap

kanji_map = getKanjiMap()

existingTranslations = {}
with open('sakura wars GB - 24:10:21.csv') as f:
    reader = csv.reader(f)
    for row in reader:
        if row[0]:
            existingTranslations[(int(row[0]), int(row[1]))] = row[4]


params_to_skip = {
    0x02: 0,
    0x03: 0,
    0x04: 0,
    0x09: 1, # SetDelay
    0x0a: 0, # ContinuePrompt
    0x0c: 1,
    0x0d: 2,
    0x0f: 2,
    0x10: 2,
    0x11: 1,
    0x12: 1,
    0x13: 1,
    0x14: 2,
    0x16: 1,
    0x1a: 1,
    0x1b: 1,
    0x1e: 0,
    0x21: 0,
    0x23: 1,
    0x24: 1,
    0x25: 1,
    0x26: 0,
    0x27: 1,
    0x28: 0,
    0x29: 1,
    0x2a: 1,
    0x2b: 2,
    0x2c: 1,
    0x2f: 1,
    0x30: 0,
}

name_map = {
    0x00: 'End',
    0x01: 'DisplayText',
    0x09: 'SetDelay',
    0x0a: 'ContinuePrompt',
    0x0d: 'SetCharacterOnScreen',
    0x0e: 'LoadScenery',
    0x0f: 'SetPortrait',
    0x1c: 'SetPortraitAndCharacter',
}

characters = """Player
Sakura
Sumire
Maria
Iris
Kohran
Kanna
Orihime 
Reni
Ogami
Yoneda
Ayame 
Kasumi 
Yuri
Tsubaki
Kayama
Char 16
Koubu mech""".split('\n')


def addScreen(_screens, _scriptNum, _screenSources, offset):
    if len(_screenSources) == 1:
        return
    _screens.append({
        "name": f"Script {_scriptNum} - {offset:04x} - {uuid4()}",
        "displayName": f"Script {_scriptNum} - {offset:04x}",
        "sources": _screenSources,
        "colsShown": 18,
        "canvasWidth": 18 * 8,
    })


spreadSheetComps = []
spreadSheetCompMap = {}

def addToSpreadSheetComps(data, baseBank, baseAddr, scriptNum, offset, currChar, choiceType=''):
    """
    baseBank:baseAddr+offset is the beginning of the text
    spreadsheet comps to contain:
    [ script num, offset, text to translate, empty space for translation ]
    """
    start = bankAddr(baseBank, baseAddr+offset)
    i = 0
    letters = []
    hasNameReplacement = ''
    while True:
        byteRead = data[start+i]
        i += 1

        if byteRead == 0:
            break

        if byteRead >= 8:
            if byteRead == 0x08:
                letters.append(1)
                if data[start+i] != 0:
                    hasNameReplacement = 'z'
                i += 1
                continue
            if byteRead == 0x0a:
                letters.append('`')
                letters.append(data[start+i])
                i += 1
                continue
            if byteRead == 0x0d:
                letters.append(0)
                continue
            letters.append(byteRead)
        else:
            char = byteRead * 0x100 + data[start+i]
            letters.append(char)
            i += 1

    if letters and set(letters) != {0}:
        try:
            kanjis = ''
            i = 0
            while i < len(letters):
                letter = letters[i]
                i += 1
                if letter == '`':
                    style = letters[i]
                    i += 1
                    kanjis += letter + str(style)
                else:
                    if letter in kanji_map:
                        kanjis += kanji_map[letter]
                    else:
                        kanjis += f"<{letter:03x}>"
        except:
            raise

        translation = existingTranslations.get((scriptNum, offset))

        isDupe = ''
        if kanjis in spreadSheetCompMap:
            isDupe = 'x'
        else:
            # Say that this string of kanjis is 1st found on this row
            # ie 1st row = 0 + 2 = 2, due to Title bar
            spreadSheetCompMap[kanjis] = len(spreadSheetComps) + 2

        if not translation and isDupe:
            translation = f"=E{spreadSheetCompMap[kanjis]}"

        # isReplacement = ''
        # if bool(set(letters) & {
        #         0x664, 0x5a3, 0x4bf, 0x689, 0x335, 0x34c, 0x5b8, 0x62a, 
        #         0x5f2, 0x47b, 0x603, 0x572, 0x682}):
        #     isReplacement = 'x'

        if choiceType:
            currChar += f" ({choiceType})"

        spreadSheetComps.append([
            f"{scriptNum}", 
            f"{offset}", 
            kanjis, 
            '',
            translation,
            currChar, 
            isDupe,
            # isReplacement,
            hasNameReplacement,
        ])


def get_script_screens(bank, addr, scriptNum, providedJumps=None):
    data = getRom()
    offset = 0
    dest = 0x8800
    screens = []
    screenSources = [['fillScreen', 0, 0, 0]]
    sceneryIdx = 0
    start = bankAddr(bank, addr)

    currChar = 'Player'

    currTextOffset = None

    jumpAddresses = []

    while True:
        opcode = data[start+offset]
        # with open('temp.s', 'a') as f:
        #     f.write(f"{opcode:02x}\n")

        # if opcode not in name_map:
        #     print(f"*{opcode:02x}, {params_to_skip.get(opcode, -1)}: {addr+offset:04x}")
        # else:
        #     print(f"{name_map[opcode]}: {addr+offset:04x}")

        offset += 1

        if opcode in (0, 6, 0x2e):
            if opcode == 0x2e:
                offset += 2
            if opcode == 0x06:
                word = wordIn(data, start+offset)
                jumpAddresses.append(word)
                offset += 2

            if providedJumps is None:
                jumps = list(filter(lambda item: item >= offset, jumpAddresses))
            else:
                jumps = list(filter(lambda item: item >= offset, providedJumps))
            if not list(jumps):
                break
            # with open('temp.s', 'a') as f:
            #     f.write(stringW(jumpAddresses))
            # break
            offset = min(jumps)
        elif opcode == 0x15:
            offset += 1
        elif opcode == 1:
            currTextOffset = offset

            screenSources.append(['drawKanjis', bank, addr+offset, dest])
            if providedJumps is not None:
                addToSpreadSheetComps(data, bank, addr, scriptNum, offset, currChar)
            dest += 0x200
            if dest == 0x9800:
                dest = 0x8800
                addScreen(screens, scriptNum, screenSources, currTextOffset)
                screenSources = [['fillScreen', 0, 0, 0]]
            while True:
                byteRead = data[start+offset]
                offset += 1

                if byteRead == 0:
                    break

                if byteRead < 8:
                    fullKanj = byteRead * 0x100 + data[start+offset]
                    if fullKanj in [
                                # 0x282, 0x664, 0x2a6, 0x5a3,
                                # 0x2a9, 0x4bf, 0x2fb, 0x689,
                                # 0x335, 0x576, 0x34c, 0x601,
                                # 0x360, 0x5b8, 0x383, 0x62a,
                                # 0x3c5, 
                                0x53d, 
                                # 0x3cf, 0x5f2,
                                # 0x47b, 0x555, 
                                0x4ca, 
                                # 0x648,
                                # 0x54b, 0x603, 0x572, 0x63f,
                                # 0x682, 
                                0x6c6,
                    ]:
                        print(f'-----{fullKanj:04x}')
                    offset += 1
                elif byteRead >= 0x10:
                    continue
                elif byteRead == 8:
                    offset += 1
                elif byteRead == 0x0a:
                    offset += 1
                elif byteRead == 0x0d and data[start+offset] == 0:
                    pass
                elif byteRead == 0x0d:
                    screenSources.append(['drawKanjis', bank, addr+offset, dest])
                    dest += 0x200
                    if dest == 0x9800:
                        dest = 0x8800
                        addScreen(screens, scriptNum, screenSources, currTextOffset)
                        screenSources = [['fillScreen', 0, 0, 0]]
                else:
                    raise Exception(f"Implement text byte: ${byteRead:02x} at ${addr+offset:04x}")
        elif opcode in (5, 7, 0x1d, 0x20, 0x31):
            word = wordIn(data, start+offset)
            if opcode == 7:
                jumpAddresses.append(word)
            offset += 2

            while True:
                byteRead = data[start+offset]
                offset += 1

                if byteRead == 0:
                    break
                elif byteRead in (1, 3):
                    offset += 1
                elif byteRead == 2:
                    byteRead = data[start+offset]
                    offset += 1
                    assert byteRead < 8
                elif byteRead in (4, 6):
                    offset += 2
                elif byteRead >= 0x10:
                    pass
                else:
                    raise Exception(f"byte stack, byte {byteRead:02x} at ${addr+offset:04x}")
        elif opcode == 0x0e:
            byteRead = data[start+offset]
            offset += 1

            sceneryAddr = bankAddr(0x0a, 0x4af0+byteRead*12)

            addScreen(screens, scriptNum, screenSources, currTextOffset)
            screenSources = [['fillScreen', 0, 0, 0]]
            dest = 0x8800

            screens.append({
                "name": f"Scenery ${byteRead:02x} - {sceneryIdx}",
                "displayName": f"Scenery ${byteRead:02x}",
                "sources": [
                    ['rleXorCopy', data[sceneryAddr+2], data[sceneryAddr+1]*0x100+data[sceneryAddr+0], 0xd000],
                    ['simpleCopy', 0x00, 0xd000, 0x9000, 0x1000, 'memory', 'memory'],
                    ['rleXorCopy', data[sceneryAddr+5], data[sceneryAddr+4]*0x100+data[sceneryAddr+3], 0xd000],
                    ['simpleCopy', 0x00, 0xd000, 0x1000, 0x1000, 'memory', 'vram1'],
                    ['screenCopy', data[sceneryAddr+8], data[sceneryAddr+7]*0x100+data[sceneryAddr+6], 0x9800, 'rom', 'memory', 0x14, 0x0a],
                    ['screenCopy', data[sceneryAddr+8], data[sceneryAddr+7]*0x100+data[sceneryAddr+6]+0xc8, 0x1800, 'rom', 'vram1', 0x14, 0x0a],
                    ['simpleCopy', data[sceneryAddr+11], data[sceneryAddr+10]*0x100+data[sceneryAddr+9], 0x18, 0x18, 'rom', 'bgPalettes'],
                ],
                "isGBC": True,
                "rowsShown": 10,
                "canvasHeight": 10 * 8,
            })
            sceneryIdx += 1
        elif opcode == 0x18:
            # untimed multi-choice texts
            numOpts = data[start+offset]
            offset += 2
            assert numOpts <= 3
            for i in range(numOpts):
                screenSources.append(['drawKanjis', bank, addr+offset, dest])
                if providedJumps is not None:
                    addToSpreadSheetComps(data, bank, addr, scriptNum, offset, currChar, choiceType='choice')
                dest += 0x200
                if dest == 0x9800:
                    dest = 0x8800
                    addScreen(screens, scriptNum, screenSources, currTextOffset)
                    screenSources = [['fillScreen', 0, 0, 0]]

                while True:
                    byteRead = data[start+offset]
                    offset += 1

                    if byteRead == 0:
                        break
                    if byteRead < 8:
                        offset += 1
                offset += 1
        elif opcode == 0x19:
            # timed multi-choice texts
            offset += 1
            numOpts = data[start+offset]
            offset += 1
            assert numOpts <= 3
            for i in range(numOpts):
                screenSources.append(['drawKanjis', bank, addr+offset, dest])
                if providedJumps is not None:
                    addToSpreadSheetComps(data, bank, addr, scriptNum, offset, currChar, choiceType='LIPS')
                dest += 0x200
                if dest == 0x9800:
                    dest = 0x8800
                    addScreen(screens, scriptNum, screenSources, currTextOffset)
                    screenSources = [['fillScreen', 0, 0, 0]]

                while True:
                    byteRead = data[start+offset]
                    offset += 1

                    if byteRead == 0:
                        break
                    if byteRead < 8:
                        offset += 1
                offset += 1
        elif opcode in (0x0f, 0x1c):
            b1 = data[start+offset] # idx into data tables

            currChar = characters[b1]

            offset += 1
            if opcode != 0x0f:
                b2 = data[start+offset] # val for palette??
                offset += 1
            b3 = data[start+offset] # val for gfx
            offset += 1

            tileDataSrc = bankAddr(0x0a, 0x564c+3*b1)

            addScreen(screens, scriptNum, screenSources, currTextOffset)
            screenSources = [['fillScreen', 0, 0, 0]]
            dest = 0x8800

            screens.append({
                "name": f"Portrait ${b1:02x} - {sceneryIdx}",
                "displayName": f"Portrait ${b1:02x}",
                "sources": [
                    ['simpleCopy', data[tileDataSrc+2], wordIn(data, tileDataSrc), 0x9000, 0x180],
                    ['setBytes', 0, 0, 0x9800, 0, 1, 2, 3],
                    ['setBytes', 0, 0, 0x9820, 4, 5, 6, 7],
                    ['setBytes', 0, 0, 0x9840, 8, 9, 10, 11],
                    ['setBytes', 0, 0, 0x9860, 12, 13, 14, 15],
                    ['setBytes', 0, 0, 0x9880, 16, 17, 18, 19],
                    ['setBytes', 0, 0, 0x98a0, 20, 21, 22, 23],
                ],
                #"isGBC": True,
                "rowsShown": 6,
                "canvasHeight": 6 * 8,
                "colsShown": 4,
                "canvasWidth": 4 * 8,
            })

            sceneryIdx += 1

        elif opcode in params_to_skip:
            offset += params_to_skip[opcode]
        else:
            raise Exception(f"Implement opcode: ${opcode:02x} at ${addr+offset:04x}")

    # print(f"Final - ${addr+offset:04x}")

    if len(screenSources) != 1:
        addScreen(screens, scriptNum, screenSources, currTextOffset)

    if providedJumps is None:
        return jumpAddresses
    return screens


if __name__ == "__main__":
    rom = getRom()

    """
    Instant texts
    """
    # src bank, src address, length, script name/player
    # offsetTexts = [
    #     [0x24, 0x71b0, 0x9c//2, 'battle'],
    #     [0x90, 0x5087, 0x0e//2, '_90_5087'],
    #     [0x90, 0x4e80, 0x36//2, '_90_4e80'],
    #     [0x90, 0x5118, 0x0c//2, '_90_5118'],
    #     [0x90, 0x5234, 0xec//2, '_90_5234'],
    #     [0x90, 0x5ac9, 0x46//2, '_90_5ac9'],
    #     [0x05, 0x579f, 0xa00//2, '_05_579f'],
    #     [0x0c, 0x5ad5, 0x14//2, '_0c_5ad5'],
    #     [0x30, 0x683a, 0x5a//2, '_30_683a'],
    #     [0x30, 0x6e56, 0x58//2, '_30_6e56'],
    #     [0x30, 0x77d4, 0x2a//2, '_30_77d4'],
    #     [0x31, 0x441e, 0x2a//2, '_31_441e'],
    #     [0x31, 0x595e, 0x0e//2, '_31_595e'],
    #     [0x11, 0x7422, 0x3c//2, '_11_7422'],
    #     [0x21, 0x4081, 0x26//2, '_21_4081'],
    #     [0x3e, 0x46d1, 0x0c//2, '_3e_46d1'],
    #     [0x3e, 0x59ea, 0x20//2, '_3e_59ea'],
    #     [0x10, 0x6070, 0x6//2, '_10_6070'],
    # ]
    # for _bank, _addr, _len, _scriptName in offsetTexts:
    #     for i in range(_len):
    #         offset = wordIn(rom, bankAddr(_bank, _addr+i*2))
    #         addToSpreadSheetComps(rom, _bank, _addr, _scriptName, offset, _scriptName.upper())

    # for i in range(87):
    #     _scriptName = '_0d_618f'
    #     offset = wordIn(rom, bankAddr(0x0d, 0x5c1f+i*16))
    #     addToSpreadSheetComps(rom, 0x0d, 0x618f, _scriptName, offset, _scriptName.upper())
    #     offset = wordIn(rom, bankAddr(0x0d, 0x5c21+i*16))
    #     addToSpreadSheetComps(rom, 0x0d, 0x618f, _scriptName, offset, _scriptName.upper())

    # with open('temp.csv', 'w') as f:
    #     writer = csv.writer(f)
    #     writer.writerow(["Script name", "Text offset", "JP", "", "EN", "Character", "Is duplicate", "Sumire name replacement"])
    #     for comp in spreadSheetComps:
    #         writer.writerow(comp)
    # exit(0)

    """
    Individual
    """
    # _bank = conv(sys.argv[1])
    # _addr = conv(sys.argv[2])
    # _scriptNum = sys.argv[3]
    # screens = get_script_screens(_bank, _addr, _scriptNum)

    # final_str = json.dumps(screens)
    # print(final_str)
    # clipboard.copy(final_str[1:-1]+",")
    # with open('temp.s', 'w') as f:
    #     f.write(final_str)
    # exit(0)

    data = getRom()
    for i in range(1, 0x322):
        if 0x13 <= i < 0x100:
            continue

        srcAddr = bankAddr(0x40, 0x5728 + i * 3)

        bank = data[srcAddr+2]+0x41
        addr = wordIn(data, srcAddr)+0x4000

        _jumps = get_script_screens(bank, addr, i)
        screens = get_script_screens(bank, addr, i, providedJumps=_jumps)

    with open('temp.csv', 'w') as f:
        writer = csv.writer(f)
        writer.writerow([
            "Script num", "Text offset", "JP", "", "EN", "Character",
            "Is duplicate of another JP row (x)?", "Sumire Name Replacement",
        ])
        for comp in spreadSheetComps:
            writer.writerow(comp)
