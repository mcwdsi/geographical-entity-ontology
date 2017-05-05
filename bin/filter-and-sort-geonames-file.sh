#!/bin/sh

#filter the admin units with numbered admin levels and sort it in order of admin level 1 to 4

# first command line argument is input file

awk '/\tA\tADM[0-9]/' $1 | sort -t$'\t' -k7,8 > "$1-admin-units.txt"


