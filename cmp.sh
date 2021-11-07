#!/bin/sh

cmp -l tools/sakuraWars1.gbc sakuraWars1.gbc | gawk '{printf "%08X %02X %02X\n", $1, strtonum(0$2), strtonum(0$3)}'

#diff "sakura wars GB - misc 2 09:10:21.csv" "sakura wars GB - misc 2 24:10:21.csv"
#diff "sakura wars GB - misc 04:10:21.csv" "sakura wars GB - misc 24:10:21.csv"
#diff "sakura wars GB - 24:10:21.csv" "sakura wars GB - 07:11:21.csv"