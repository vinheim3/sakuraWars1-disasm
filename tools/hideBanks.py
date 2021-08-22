#!/usr/bin/env python3

import sys
import os

if 'VWF' in sys.argv:
    for i in range(0x41, 0x6b):
        os.system(f"mv code/bank_0{i:02x}.s temp/")
else:
    os.system("mv temp/bank_* code/")
