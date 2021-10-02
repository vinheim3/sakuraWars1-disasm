#!/bin/sh

cmp -l tools/sakuraWars1.gbc sakuraWars1.gbc | gawk '{printf "%08X %02X %02X\n", $1, strtonum(0$2), strtonum(0$3)}'

# diff "backup/sakura wars GB - misc 2 24:09:21.csv" "sakura wars GB - misc 2 02:10:21.csv"