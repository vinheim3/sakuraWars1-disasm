#!/usr/bin/env python3

import sys
import clipboard
from util import conv, bankConv, groupBytes, stringB, stringW, getRom

args = 4

if len(sys.argv) < args:
    print('Usage: ' + sys.argv[0] + ' startAddress endAddress groups')
    sys.exit()

data = getRom()

start, end, groups = sys.argv[1:]

start = bankConv(start)

if ':' in end:
    end = bankConv(end)
    bytes = data[start:end+1]
else:
    end = conv(end)
    bytes = data[start:start+end]

groups = int(groups)

comps = []
if groups != 0:
    comps = groupBytes(bytes, groups)
    comps = [stringB(comp) for comp in comps]
    print(len(comps))
else:
    curr_comp = []
    for i, byte in enumerate(bytes):
        if i != 0 and i%2 == 0:
            full_str = stringW([(curr_comp[1]<<8)+curr_comp[0]])
            comps.append(full_str)
            curr_comp = []
        curr_comp.append(byte)
    if curr_comp:
        if len(curr_comp) == 2:
            full_str = stringW([(curr_comp[1]<<8)+curr_comp[0]])
        else:
            full_str = stringB([curr_comp[0]])
        comps.append(full_str)

final_str = "\n".join(comps)
clipboard.copy(final_str)
print(final_str)
