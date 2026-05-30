#!/bin/bash
IFS=. read -r a b c d <<< "$1"; for i in $a $b $c $d; do printf "%08d." "$(echo "obase=2;$i" | bc)"; done | sed 's/\.$//'; echo
