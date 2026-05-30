#!/bin/bash
ip addr show tun0 | grep "inet " | head -n1 | awk '{print $2}' | cut -d/ -f1
