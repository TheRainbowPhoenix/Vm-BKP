#!/bin/bash
who | cut -d" " -f1 | uniq
