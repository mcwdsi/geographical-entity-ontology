#!/bin/sh

grep -o "GEO_[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]" *.owl | cut -d":" -f2 | sort -u | tail -10
