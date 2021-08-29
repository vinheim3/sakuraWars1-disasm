#!/usr/bin/env python3

import csv
import sys
import clipboard
from scriptExtract import ScriptExtractor
from util import getKanjiMap, stringB

scriptName = sys.argv[1]
tableName = sys.argv[2]
kanji_map = getKanjiMap()
prefix = f"{tableName}entry"

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
