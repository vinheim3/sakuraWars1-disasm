#!/usr/bin/env python3

import sys


def conv(hexstr):
    return int(f"0x{hexstr}", 16)


def bankAddr(bank, addr):
    if bank == 0:
        return addr
    
    return (bank-1)*0x4000+addr


def bankConv(hexstr):
    if ':' not in hexstr:
        return conv(hexstr)

    bank, addr = hexstr.split(':')
    return bankAddr(conv(bank), conv(addr))


def groupBytes(bs, groups):
    n = len(bs[::groups])
    return [
        bs[i*groups:(i+1)*groups] for i in range(n)
    ]


def stringB(bs):
    return f"\tdb " + ", ".join(f"${byte:02x}" for byte in bs)


def stringW(ws):
    return f"\tdw " + ", ".join(f"${word:04x}" for word in ws)


def wordIn(data, offset):
    return (data[offset+1]<<8)|data[offset]


def toWords(bs):
    ws = []
    for i in range(len(bs)//2):
        word = bs[i*2]+(bs[i*2+1]<<8)
        ws.append(word)
    return ws


def getRom():
    fname = 'tools/sakuraWars1.gbc'
    # fname = 'replaced.gbc'
    with open(fname, 'rb') as f:
        data = f.read()
    return data


def getKanjiMap():
    with open('tools/kanjiTable.txt', encoding='shift-jis') as f:
        kanji_lines = f.read().split('\n')
    kanji_map = {}
    for line in kanji_lines:
        if '=' not in line: continue
        k, v = line.split('=')
        if k == '10': v = ' '
        kanji_map[int(k, 16)] = v
    kanji_map[0] = '\n'
    kanji_map[1] = '<name>'
    return kanji_map


def showFarCallSrces(bank, addr):
    data = getRom()
    bank = conv(bank)
    addr = conv(addr)
    bytesToFind = bytes([
        0xf5,
        0x3e, addr&0xff, 
        0xea, 0x98, 0xc2, 
        0x3e, addr>>8, 
        0xea, 0x99, 0xc2,
        0x3e, bank,
        0xea, 0x9a, 0xc2,
        0xf1,
    ])
    for i in range(len(data)):
        try:
            if data[i:i+len(bytesToFind)] == bytesToFind:
                print(hex(i//0x4000), hex((i%0x4000)+0x4000))
        except:
            pass


if __name__ == "__main__":
    showFarCallSrces(sys.argv[1], sys.argv[2])
