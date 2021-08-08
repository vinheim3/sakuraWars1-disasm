#!/usr/bin/env python3

lines = """
; 0 - 4924, 0
; 6 - 3292, 0
; 7 - 1208, 0
; 8 - 2210, 0
; 9 - 3435, 0
; a - 2634, 0
; b - 369, 0
; introAnimation - 441, 0
; scriptEngine - 699, 0
; soundEngine - 665, 0
""".split('\n')

total_done = 0
total_left = 0

for line in lines:
    if not line:continue
    parts = line.split(', ')
    total_done += int(parts[0].split()[-1])
    total_left += int(parts[1].split()[0])

print(total_done, total_left, total_done / (total_done + total_left))
