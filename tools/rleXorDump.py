#!/usr/bin/env python3

import clipboard
import sys
from util import getRom, bankConv, wordIn, stringB, groupBytes

if len(sys.argv) < 2:
    print('Usage: ' + sys.argv[0] + ' startAddress')
    sys.exit()

start_address = bankConv(sys.argv[1])
data = getRom()

dest = []
lastByte = 0
numCopies = wordIn(data, start_address)
offset = 2
for i in range(numCopies):
    specByte = data[start_address+offset]
    offset += 1

    if specByte & 0x80:
        count = specByte - 0x7e
        copyByte = data[start_address+offset]
        offset += 1
        for j in range(count):
            lastByte ^= copyByte
            dest.append(lastByte)
    else:
        count = specByte + 1
        for j in range(count):
            lastByte ^= data[start_address+offset]
            offset += 1
            dest.append(lastByte)

final_str = '\n'.join(stringB(group) for group in groupBytes(data[start_address:start_address+offset], 32))
print(final_str)
print(hex(start_address+offset), hex(len(dest)))
clipboard.copy(final_str)
with open("gfx_new.bin", 'wb') as f:
    f.write(bytes(dest))
