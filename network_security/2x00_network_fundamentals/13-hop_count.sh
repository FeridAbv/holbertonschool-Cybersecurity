#!/bin/bash
traceroute -m 1 8.8.8.8 2>/dev/null | awk 'NR==2 {print $2}'
