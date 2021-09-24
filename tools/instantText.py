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


def get_limit(_scriptName, idx):
    limit = None

    if _scriptName == '_0d_618f':
        if idx % 2 == 0:
            return 8 * 8 + 2
        else:
            return 12 * 8

    if _scriptName == '_30_683a':
        return 9 * 8

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
existing_map = {}
# with open('sakura wars GB - misc 20:09:21.csv') as f:
with open('sakura wars GB - misc 2 24:09:21.csv') as f:
    reader = csv.reader(f)
    for row in reader:
        if row[2] not in existing_map and row[4]:
            existing_map[row[2]] = row[4]

        if row[0] != scriptName:
            continue

        tableItems.append(row[2])

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
            tableItem = [0x10]*24
            tableItem.append(0)
            comps.append(stringB(tableItem))
            continue
        else:
            raise Exception("blank entry")

    tableItem = existing_map[jp]

    comps.append(f"{prefix}{i:02x}::")

    # Calculate if any lines breached limit (doesn't actually use conversion)
    limit = get_limit(scriptName, i)
    lines = tableItem.split('\n')
    if limit:
        for line in lines:
            textboxes = ScriptExtractor.convertEnglish(line, limit)
            try:
                assert len(textboxes) == 1
            except AssertionError:
                print(lines, i, jp)
                raise

            textbox = textboxes[0]
            if is_oneline(scriptName, i) and textboxes and 0x0d in textbox:
                # print(i, line, 'breached')
                print(line, limit)

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
