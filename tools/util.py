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
