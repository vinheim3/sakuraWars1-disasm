#!/usr/bin/env python3

from util import stringB, getRom, bankAddr, groupBytes, wordIn

data = getRom()
addresses = []

for i in range(109):
    ptr = 0x1b92 + i*3
    addr = wordIn(data, ptr)
    bank = data[ptr+2]
    addresses.append(bankAddr(bank, addr))
addresses.append(bankAddr(0xfb, 0x69fc))

comps = """INCLUDE "includes.s"

SECTION "ROM Bank $0a5", ROMX[$4000], BANK[$a5]
""".split('\n')

for i, addr in enumerate(addresses[:-1]):
    nextAddr = addresses[i+1]
    currBank = addr // 0x4000
    nextBank = nextAddr // 0x4000

    comps.append(f"SampledVoice_{i:02x}:")
    fullBs = data[addr:nextAddr]
    with open(f"samples/sample_{i:02x}.bin", 'wb') as f:
        f.write(bytearray(fullBs))

    bsDone = 0
    while currBank != nextBank:
        nextBankEnd = (currBank+1)*0x4000
        newBs = nextBankEnd - addr
        
        comps.append(f"""\tINCBIN "samples/sample_{i:02x}.bin", ${bsDone:04x}, ${newBs:04x}\n""")

        bsDone += newBs
        addr = nextBankEnd
        currBank += 1

        comps.append(f"""SECTION "ROM Bank $0{currBank:02x}", ROMX[$4000], BANK[${currBank:02x}]\n""")

    comps.append(f"""\tINCBIN "samples/sample_{i:02x}.bin", ${bsDone:04x}\n""")

with open('code/samples.s', 'w') as f:
    f.write('\n'.join(comps))
