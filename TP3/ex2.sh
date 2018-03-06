#!/bin/bash
[[ "$1" =~ ^[0-9]+$ ]] 2>/dev/null && echo $[$(seq -s "*" 1 $1)] || echo -e "\033[38;5;196mError :\033[0m Not Int"
