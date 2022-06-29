#!/bin/bash

cat ../shellgei160/qdata/43/bunken.txt | awk 'NR%3==1{k=$1};{print k,$0}' | sort -s -k1,1 | sed 's/....//'

cat ../shellgei160/qdata/43/bunken.txt | tr '\n' '@' | sed 's/@@/@\n/g' | sort | tr '@' '\n'

cat ../shellgei160/qdata/43/bunken.txt | sed 's/\[/\x0&/g' | sort -z | tr -d '\0'
