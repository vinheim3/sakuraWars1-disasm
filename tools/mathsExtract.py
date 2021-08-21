#!/usr/bin/env python3

from util import getRom, wordIn, bankAddr, stringB

data = getRom()
pointersStart = bankAddr(9, 0x4996)

mathsSrces = [
    wordIn(data, pointersStart+i*2)+0x4000
    for i in range(0x40)]

mathsSrces.append(0x5728)

structs = {}
for i, addr in enumerate(mathsSrces[:-1]):
    structs[addr] = list(map(int, data[
        bankAddr(0x40,addr):bankAddr(0x40,mathsSrces[i+1])
    ]))

rpnAddresses = set()
for k, bs in structs.items():
    print(f"Data_40_{k:04x}::")
    for i in range(len(bs[::8])):
        group = bs[i*8:i*8+8]
        if len(group) != 8:
            print(stringB(group)+'\n')
        else:
            bank = group[6]
            word = group[5] * 0x100 + group[4]
            rpnAddresses.add((bank+0x41, word+0x4000))

            print(stringB(group[:4]))
            # print(f"\tdwb ${word:04x}, ${bank:02x}")
            print(f"\tRpnSrc RpnData_{bank+0x41:02x}_{word+0x4000:04x}")
            print(stringB(group[7:])+'\n')

# rpnByteMap = {}
for bank, addr in rpnAddresses:
    startOffset = bankAddr(bank, addr)
    currOffset = startOffset
    rpnBytes = []
    while True:
        ctrl = data[currOffset]
        currOffset += 1

        if ctrl >= 0x10:
            assert 0x2c >= ctrl >= 0x1b
        elif ctrl in (1, 2, 3):
            currOffset += 1
        elif ctrl in (4, 6):
            currOffset += 2
        elif ctrl == 0:
            break
    rpnBytes = data[startOffset:currOffset]
    # rpnByteMap[(bank, addr)] = rpnBytes
    print(f"RpnData_{bank:02x}_{addr:04x}::")
    print(stringB(rpnBytes)+'\n')

# With the bank and address of the rpn data
# Extract all rpn bytes and store them against their ref
# Copy ref label + rpn bytes to custom bank 2