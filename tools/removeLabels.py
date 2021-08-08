#!/usr/bin/env python3

import sys
import re

while True:
    # args = sys.argv
    args = [''] + input().split()

    try:
        int(args[1], 16)
        fname = f"bank_{args[1].zfill(3)}"
    except ValueError:
        fname = args[1]

    print_stats = args[2] == 'p'

    with open(f'code/{fname}.s') as f:
        code = f.read()

    with open('temp.s', 'w') as f:
        f.write(code)

    lines = code.split('\n')

    if print_stats:
        start = 1
        end = len(lines)
    else:
        start, end = map(int, args[2:])

    relevantLines = lines[start-1:end]

    changedLines = 0
    unchangedLines = 0

    comps = lines[:start-1]
    for line in relevantLines:
        x = re.search(r'((.*?) +(; \$[0-9a-f]+)).*', line)
        if x is None:
            if line.startswith('\tSCR_'):
                unchangedLines += 1
            comps.append(line)
            continue

        nl = x.group(2)
        addr = x.group(3)
        gap_num = 65
        if line.startswith(':'):
            gap_num += 1
        len_gap = max(1, gap_num-len(nl))

        newLine = nl + ' '*len_gap + addr
        if line == newLine:
            unchangedLines += 1
        else:
            changedLines += 1
            # print(line)
        comps.append(newLine)
    comps.extend(lines[end:])

    if print_stats:
        print(unchangedLines, changedLines)

    else:
        with open(f'code/{fname}.s', 'w') as f:
            f.write('\n'.join(comps))
