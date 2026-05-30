#!/bin/bash
for i in 24 16 8 0; do echo -n "$((($1>i?255:$1<=i-8?0:256-2**(8-($1-i+8)))))."; done | sed 's/\.$//'; echo
