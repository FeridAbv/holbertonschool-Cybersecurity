#!/bin/bash
for i in 24 16 8 0; do printf "%d." $((($1-i)>=8?255:(($1-i)<=0?0:256-(2**(8-($1-i)))))); done | sed 's/\.$//'; echo
