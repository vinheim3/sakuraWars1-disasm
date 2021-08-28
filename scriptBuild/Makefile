all: sakuraWars1.gbc

script.o: script.s
	rgbasm -h -L -o $@ $<

sakuraWars1.gbc: script.o
	rgblink -n sakuraWars1.sym -m sakuraWars1.map -o $@ script.o
	rgbfix -v -p 0 -C -i "BRJJ" -k "AL" -l 0x33 -m 0x1b -r 2 -t "SAKURA GB" $@

	md5 $@

clean:
	rm -f build/* sakuraWars1.gbc sakuraWars1.sym sakuraWars1.map
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +