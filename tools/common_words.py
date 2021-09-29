#!/usr/bin/env python3

import csv
import sys
import clipboard
from collections import Counter
from string import ascii_letters

def get_chosen():
    bigMap = {
        "You see...\nBlah blah blah...\nSo here we are.": 13,
        # I get where you're coming
        # from, Sakura, but you
        # realize doing that in the
        # middle of the night
        # bothers everyone, don't
        # you?
        "I get where you're coming from, Sakura, but you realize doing that in the": 2,
        "middle of the night bothers everyone, don't you?": 2,
        # I believe the correct
        # answer is Kohran. It
        # seems like she's been
        # conducting a large-scale
        # experiment lately.
        "I believe the correct answer is Kohran. It seems like she's been": 2,
        "conducting a large-scale experiment lately.": 2,
        # The answer is probably
        # Iris. She's likely floating
        # through the air in her
        # sleep, sheets and all.
        "The answer is probably Iris. She's likely floating through the air in her": 2,
        "sleep, sheets and all.": 2,
        # Sometimes when I get nice
        # and buzzed, I just start
        # singing. Still, though,
        # "eerie"...?
        "Sometimes when I get nice and buzzed, I just start singing. Still, though,": 2,
        "\"eerie\"...?": 2,
        # I figure because these
        # markings only appear in
        # the training room and
        # near her room.
        "I figure because these markings only appear in the training room and": 2,
        "near her room.": 2,
        # I like to take a midnight
        # swim on occasion, and one
        # time, I forgot to bring a
        # towel.
        "I like to take a midnight swim on occasion, and one time, I forgot to bring a": 2,
        "towel.": 2,

        "Hmm... Nails...\n... Props?\nThat's it!": 5,
    }
    en = []
    for k, v in bigMap.items():
        en.extend([k]*v)
        conflict = set(k) & set("'-\"+<>()*&=:%/;èóé")
        if conflict:
            print(k, ' - ', conflict)

    doneEnglish = {}
    whole_texts = []
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

            whole_texts.append(english)

            for line in english.split('\n'):
                for word in line.split():
                    if word and len(word) > 2:
                        if '"' in word: continue
                        if "'" in word: continue
                        if "-" in word: continue
                        if '<name>' in word: continue
                        if '<player>' in word: continue
                        if '<Player>' in word: continue
                        # trim punctuation
                        i = len(word)-1
                        while i > 0:
                            if word[i] not in ascii_letters:
                                word = word[:-1]
                                i -= 1
                            else:
                                break

                        if len(word) > 2:
                            en.append(word)

    c = Counter(en)
    # d = Counter(whole_texts)
    # import json
    # with open('temp.s', 'w') as f:
    #     f.write(json.dumps({k: (v, (len(k)-2) * v) for k, v in d.items() if v > 1}, indent=2))
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
    # print(final_str)

    print(letters)
