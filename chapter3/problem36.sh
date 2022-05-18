#!/bin/bash

cat ../shellgei160/qdata/36/message.txt | sed 's/)(/)\n(/g'| grep -P '^(\(\g<1>\)|[^()]+)$' | tr -d '()' | paste - -sd ''

cat ../shellgei160/qdata/36/message.txt | sed -E 's/\)\(/)\n(/g' | awk '{print gsub("\\(", ""), gsub("\\)", ""), $0}' | awk '$1==$2{printf $3}' | xargs
