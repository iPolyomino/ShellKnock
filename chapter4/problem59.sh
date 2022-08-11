#!/bin/sh

cat ../shellgei160/qdata/59/data.csv | grep -Eno '[^,"]*|"([^"]*("")*)*"' | sed 's/:.*//' | uniq -c | awk '$1==2{print $2}'

python3 -c 'import csv;f=open("../shellgei160/qdata/59/data.csv","r");[print("|".join(x)) for x in csv.reader(f) ]' | awk -F'|' 'NF==2{print NR}'
