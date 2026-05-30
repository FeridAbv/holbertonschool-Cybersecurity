#!/bin/bash
for i in 24 16 8 0; do n=$(( $1-i )); printf "%d." $((n>=8?255:n<=0?0:256-(1<<(8-n)))); done | sed 's/\.$//'; echo
