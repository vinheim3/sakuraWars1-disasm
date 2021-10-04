#!/usr/bin/env python3

import csv
import sys
import clipboard
from scriptExtract import ScriptExtractor
from util import getKanjiMap, stringB, getRom, bankAddr, groupBytes

"""
scriptName - eg battle (1st column of spreadsheet to check against)
tableName - table prefix to use in asm
"""

data = getRom()

scriptName = sys.argv[1]
tableName = sys.argv[2]
kanji_map = getKanjiMap()
prefix = f"{tableName}entry"


def get_limits(_scriptName, idx):
    if _scriptName == '_11_7422':
        return (None, 16*8, 2)

    if _scriptName == '_30_77d4':
        return (1, 12*8, 2)

    if _scriptName == '_30_6e56':
        return (1, 16*8, 2)

    if _scriptName == '_90_5234':
        if idx % 2 == 0:
            return (1, 12*8, 1)
        else:
            return (1, 20*8, 2)

    if _scriptName == '_90_4e80':
        if idx < 13:
            return (1, 12*8, 1)
        else:
            return (1, 20*8, 2)


def get_limit(_scriptName, idx):
    limit = None

    if _scriptName == '_0d_618f':
        if idx % 2 == 0:
            return 8 * 8 + 2
        else:
            return 12 * 8

    if _scriptName == '_30_683a':
        return 11 * 8

    if _scriptName == '_90_5ac9':
        return 18 * 8

    if _scriptName == 'battle':
        if 53-2 <= idx <= 63-2:
            return 16 * 8
        return 14 * 8

    return limit


def is_oneline(_scriptName, idx):
    if _scriptName == 'battle':
        if 53-2 <= idx <= 63-2:
            return True

    if _scriptName == '_30_683a':
        return True

    if _scriptName == '_90_5ac9':
        return True

    if _scriptName == '_0d_618f':
        return idx % 2 == 0

    return False

tableItems = []
enItems = []
existing_map = {}
with open('sakura wars GB - misc 04:10:21.csv') as f:
# with open('sakura wars GB - misc 2 02:10:21.csv') as f:
    reader = csv.reader(f)
    for row in reader:
        if row[2] not in existing_map and row[4]:
            existing_map[row[2]] = row[4]

        if row[0] != scriptName:
            continue

        # If not english, but it's a dupe
        if not row[4] and row[6]:
            en = existing_map[row[2]]
        else:
            en = row[4]

        tableItems.append(row[2])
        enItems.append(en)

if scriptName == '_0d_618f':
    comps = ["Data_0d_5c1f::"]
    existingEntries = data[bankAddr(0xd, 0x5c1f):bankAddr(0xd, 0x618f)]
    existingGroups = groupBytes(existingEntries, 16)

    for i in range(87):
        w1 = f"{prefix}{i*2:02x}-{tableName}"
        w2 = f"{prefix}{i*2+1:02x}-{tableName}"
        rest = ", ".join(f"${b:02x}" for b in existingGroups[i][4:])
        comps.append(f"\tItemIndexEntry {w1}, {w2}, {rest}")

else:
    comps = [f"{tableName}::"]
    for i in range(len(tableItems)):
        comps.append(f"\tdw {prefix}{i:02x}-{tableName}")

comps.append("")

for i, jp in enumerate(tableItems):
    if jp == "":
        if scriptName == '_05_579f':
            comps.append(f"{prefix}{i:02x}::")
            comps.append(stringB([0]))
            continue
        elif scriptName == '_30_683a':
            comps.append(f"{prefix}{i:02x}::")
            tableItem = [0]
            comps.append(stringB(tableItem))
            continue
        else:
            raise Exception("blank entry")

    tableItem = enItems[i]

    comps.append(f"{prefix}{i:02x}::")

    # Calculate if any lines breached limit (doesn't actually use conversion)
    limit = get_limit(scriptName, i)
    limits = get_limits(scriptName, i)
    lines = tableItem.split('\n')

    if limits:
        tbs, width, rows = limits
        for j, line in enumerate(lines):
            textboxes, _ = ScriptExtractor.convertEnglish(line, width, rows=rows)
            if tbs:
                try:
                    assert len(textboxes) <= tbs
                except AssertionError:
                    print(line)
            for textbox in textboxes:
                if scriptName == '_90_5234':
                    if i % 2 == 1:
                        textbox = [0x0f, *textbox]
                        if j != len(lines)-1:
                            textbox.append(0x0d)
                        else:
                            textbox.append(0)
                    else:
                        textbox.append(0)
                elif scriptName == '_90_4e80':
                    if i >= 13:
                        textbox = [0x0f, *textbox]
                        if j != len(lines)-1:
                            textbox.append(0x0d)
                        else:
                            textbox.append(0)
                    else:
                        textbox.append(0)
                else:
                    textbox.append(0)
                comps.append(stringB(textbox))

    elif limit:
        for j, line in enumerate(lines):
            textboxes, _ = ScriptExtractor.convertEnglish(line, limit)
            if not textboxes:
                continue

            try:
                assert len(textboxes) == 1
            except AssertionError:
                print(lines, line, i, jp)
                raise

            textbox = textboxes[0]
            if is_oneline(scriptName, i) and textboxes and 0x0d in textbox:
                # print(i, line, 'breached')
                print(line, limit)

            if scriptName == '_30_683a':
                textbox = [0x10, *textbox]

            if j != len(lines)-1:
                textbox.append(0x0d)
            else:
                textbox.append(0)
            comps.append(stringB(textbox))

    else:
        bs = []
        for char in tableItem:
            if char == " ":
                bs.append(0x10)
            elif char == "\n":
                bs.append(0x0d)
            else:
                bs.extend(ScriptExtractor.getCharVal(char))
        bs.append(0)
        comps.append(stringB(bs))

final_str = "\n".join(comps)
print(final_str)
clipboard.copy(final_str)
