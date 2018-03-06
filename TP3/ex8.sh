#!/bin/bash
for arg; do [[ -e "$arg" ]] 2>/dev/null && echo -e "\e[7m"$arg"\e[0m"; cat $arg; echo -e "" || echo -e "\033[38;5;196mError :\033[0m Not File $arg"; done
echo $sum
