#!/bin/bash

cat ../shellgei160/qdata/36/message.txt | sed 's/)(/)\n(/g'| grep -P '^(\(\g<1>\)|[^()]+)$' | tr -d '()' | paste - -sd ''
