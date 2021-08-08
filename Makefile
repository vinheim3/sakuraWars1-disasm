OBJS = $(shell find code/ -name '*.s' | sed "s/code/build/" | sed "s/\.s/.o/")
RAM_OBJS = build/wram.o build/hram.o build/sram.o
GFX_OBJS = $(shell find gfx/ -name '*.png' | sed "s/gfx/build/" | sed "s/.png/.2bpp/")
DEFINES = -D VWF
DEFINES =

all: sakuraWars1.gbc

build/%.2bpp: gfx/%.png
	rgbgfx -o $@ $<

build/%.o: code/%.s
	rgbasm $(DEFINES) -h -L -o $@ $<

build/wram.o: include/wram.s
	rgbasm $(DEFINES) -h -L -o $@ $<

build/hram.o: include/hram.s
	rgbasm -h -L -o $@ $<

build/sram.o: include/sram.s
	rgbasm -h -L -o $@ $<

sakuraWars1.gbc: $(GFX_OBJS) $(OBJS) $(RAM_OBJS)
	rgblink -n sakuraWars1.sym -m sakuraWars1.map -o $@ $(OBJS) $(RAM_OBJS)
	rgbfix -v -p 0 -C -i "BRJJ" -k "AL" -l 0x33 -m 0x1b -r 2 -t "SAKURA GB" $@

	md5 $@

clean:
	rm -f build/* sakuraWars1.gbc sakuraWars1.sym sakuraWars1.map
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +