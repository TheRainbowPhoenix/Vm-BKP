#!/bin/bash
h=$(date +"%H")
if [ $h -ge 0 -a $h -lt 12 ]; then
	echo -e " \e[44m🌆 \e[0m Bonjour"
elif [ $h -ge 12 -a $h -lt 18 ]; then
	echo -e " \e[43m🌇 \e[0m Bon Après-midi"
else
	echo -e " \e[100m🌃 \e[0m Bonne soirée"
fi
