#!/bin/bash

cat ../shellgei160/qdata/51/scores.txt | awk '{$1=sprintf("%03d",$1);print}' | sort | join -a 1 ../shellgei160/qdata/51/students.txt - | awk 'NF==2 {print $0,0}NF==3'
