#!/bin/bash

cat ../shellgei160/qdata/44/diary.txt | sed -Ez 's/シ.?ェ.?ル.?ス.?ク.?リ.?プ.?ト/%&%/g' | sed '/%/s/$/ @/;s/%//g'


awk '{a[NR]=$0;b[NR]=gensub(/シェルスクリプト/,"","g",$0)}END{for(i=1;i<=NR;i++){print a[i],b[i-1]a[i]b[i+1]}}' ../shellgei160/qdata/44/diary.txt | awk '{print $1,/シェルスクリプト/?"@":""}'
