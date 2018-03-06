#!/bin/bash
for u in $(getent passwd | cut -d: -f1); do
	[[ $(groups $u | cut -d" " -f3) != "" ]] && echo $u
done
