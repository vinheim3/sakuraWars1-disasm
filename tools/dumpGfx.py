#!/usr/bin/env python3

import sys
from util import getRom

args = 3

if len(sys.argv) < args:
    print('Usage: ' + sys.argv[0] + ' startAddress size [spr]')
    sys.exit()

def conv(hexstr):
    return int(f"0x{hexstr}", 16)

start_address = sys.argv[1]
if ':' in start_address:
    bank, addr = start_address.split(':')
    bank = conv(bank)
    addr = conv(addr)
    start_address = (bank-1)*0x4000+addr
else:
    start_address = conv(start_address)

size = conv(sys.argv[2])

data = getRom()[start_address:start_address+size]


prefix = 'gfx'
if len(sys.argv) == args+1:
    prefix = sys.argv[-1]

with open(f"{prefix}_new.bin", 'wb') as f:
    f.write(data)
