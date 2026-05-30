#!/bin/bash
IFS=. read -r a b c d<<<"$1";n=$((a<<24|b<<16|c<<8|d));m=$((0xffffffff<<(32-$2)&0xffffffff));printf "%d.%d.%d.%d - %d.%d.%d.%d" $(((n&m)+1>>24&255)) $(((n&m)+1>>16&255)) $(((n&m)+1>>8&255)) $(((n&m)+1&255)) $((((n&m)|(~m&0xffffffff))-1>>24&255)) $((((n&m)|(~m&0xffffffff))-1>>16&255)) $((((n&m)|(~m&0xffffffff))-1>>8&255)) $((((n&m)|(~m&0xffffffff))-1&255))
