#!/bin/bash
while read -r Line && [ "$Line" != "quit" ]; do
	E1=$(echo "$Line" | cut -d " " -f1)
	E2=$(echo "$Line" | cut -d " " -f2)
	[[ "$E1" =~ ^[0-9]+$ && "$E2" =~ ^[0-9]+$ ]] 2>/dev/null && echo -e $(($E1+$E2)) "\n"$(($E1-$E2)) "\n"$(($E1*$E2)) || echo -e "\033[38;5;196mError :\033[0m Not Int"
done
