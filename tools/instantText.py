#!/usr/bin/env python3

import csv
import sys
import clipboard
from scriptExtract import ScriptExtractor
from util import getKanjiMap, stringB

"""
scriptName - eg battle (1st column of spreadsheet to check against)
tableName - table prefix to use in asm
"""

scriptName = sys.argv[1]
tableName = sys.argv[2]
kanji_map = getKanjiMap()
prefix = f"{tableName}entry"

def is_timed(_scriptName, idx):
    if _scriptName == 'battle':
        if 53-2 <= idx <= 63-2:
            return True

    return False

tableItems = []
with open('sakura wars GB - misc 29:08:21.csv') as f:
    reader = csv.reader(f)
    for row in reader:
        if row[0] != scriptName:
            continue

        tableItems.append(row[4])

comps = []
for i in range(len(tableItems)):
    comps.append(f"\tdw {prefix}{i:02x}-{tableName}")
comps.append("")

for i, tableItem in enumerate(tableItems):
    # Calculate if any lines breached limit
    limit = 112
    if is_timed(scriptName, i):
        limit = 128
    lines = tableItem.split('\n')
    for line in lines:
        textboxes = ScriptExtractor.convertEnglish(line, limit)
        assert len(textboxes) <= 1
        if textboxes and 0x0d in textboxes[0]:
            print(i, line, 'breached')

    comps.append(f"{prefix}{i:02x}:")
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
