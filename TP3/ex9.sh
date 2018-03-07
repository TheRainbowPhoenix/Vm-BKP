#!/bin/bash
mkdir -p MesProgrammesCPP
count=$(ls -l *.c | wc -l) 2> /dev/null
pas=$((count/20+1))
c=$count
for f in *.c; do
	c=$((c-1))
	if (($c % $pas == 0)); then
	for j in $(seq $((20-(c/pas)))); do echo -ne '#'; done
		echo -ne " "$((count-c));
		echo -ne '\r'
	fi
	mv "$f" "MesProgrammesCPP/$(basename "$f" .c).cpp";
done
ocount=$(ls -l MesProgrammesCPP/*.cpp | wc -l)
if (($((cout-ocout)) > 0)); then echo $((cout-ocout)) "files could not be copied";fi
echo $ocount "files copied to MesProgrammesCPP/"
