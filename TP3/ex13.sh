#!/bin/bash
if [[ -f "$1" ]]; then
	exe=./$1
	shift
	$exe $@
else 
	echo -e "\033[38;5;196mError :\033[0m Not an exercice $arg"
fi
