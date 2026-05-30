#!/bin/bash
for i in 24 16 8 0; do printf "%d." $((256-2**(($1-i)>0?(32-$1<i?8:32-$1-i):8))); done | sed 's/\.$//'; echo
