#!/bin/bash
for arg; do [[ "$arg" =~ ^[0-9]+$ ]] 2>/dev/null && sum=$(expr $sum + $arg) || echo -e "\033[38;5;196mError :\033[0m Not Int $arg"; done
echo $sum
