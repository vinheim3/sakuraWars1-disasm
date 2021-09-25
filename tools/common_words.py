#!/usr/bin/env python3

import csv
import sys
import clipboard
from collections import Counter

def get_chosen():
    en = []
    doneEnglish = {}
    with open('sakura wars GB - 25:09:21.csv') as f:
        reader = csv.reader(f)
        for scriptNum, offset, orig, blank, english, char, dupe1, dupe2 in reader:
            if not english or not scriptNum:
                continue

            if int(scriptNum) != 0x2d6:
                continue

            if "(LIPS)" in char or "(choice)" in char:
                continue

            if dupe1 == 'x':
                if english.startswith('='):
                    if english in doneEnglish:
                        english = doneEnglish[orig]
                    else:
                        continue
            else:
                doneEnglish[orig] = english

            for line in english.split('\n'):
                for word in line.split():
                    if word and len(word) > 2:
                        if '"' in word: continue
                        if "'" in word: continue
                        if "-" in word: continue
                        if '<name>' in word: continue
                        if '<player>' in word: continue
                        if '<Player>' in word: continue
                        en.append(word)

    c = Counter(en)
    weight = {}
    for word, count in c.most_common():
        savings = (len(word)-2) * count
        weight[word] = savings
    chosen = sorted(weight.items(), key=lambda elem: elem[1], reverse=True)[:256]
    return chosen

if __name__ == "__main__":
    chosen_items = get_chosen()
    comps = []
    for i, (word, _) in enumerate(chosen_items):
        label = f".item{i:02x}"
        comps.append(f"\tdw {label}")

    letters = set()
    for i, (word, _) in enumerate(chosen_items):
        # if '"' in word:print(word)
        label = f".item{i:02x}"
        comps.append(f"{label}:")
        comps.append(f'\tdb "{word}", 0')

        letters |= set(word)
    
    final_str = "\n".join(comps)
    clipboard.copy(final_str)
    print(final_str)

    print(letters)
