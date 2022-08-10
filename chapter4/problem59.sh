#!/bin/sh

cat ../shellgei160/qdata/59/data.csv | grep -Eno '[^,"]*|"([^"]*("")*)*"' | sed 's/:.*//' | uniq -c | awk '$1==2{print $2}'
