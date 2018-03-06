#!/bin/bash
getent passwd | cut -d: -f1 | xargs groups | cut -d":" -f2 | cut -c 2- | tr " " "\n" | sort | uniq | tr "\n" " "
