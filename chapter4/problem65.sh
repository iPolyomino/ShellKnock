#!/bin/bash

seq -f '2019-01-01 %g day' 0 364 | date -f - '+%Y-%m-%d %a' | join -a 1 - <(cat ../shellgei160/qdata/62/syukujitsu.csv | nkf -Lux | grep ^2019 | awk -F'[/ ,]' '{printf "%d-%02d-%02d %s\n",$1,$2,$3,$4}') | awk '$2~"[Sat|Sun]"||NF==3' cut -c 1-7 | uniq -c
