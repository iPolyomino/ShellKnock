#!/bin/bash

cat ../../shellgei160/qdata/practice/table.txt | awk '{print $0,$2+$3}'

cat ../../shellgei160/qdata/practice/table.txt | awk '{print;a+=$2;b+=$3}END{print "計",a,b}'

cat ../../shellgei160/qdata/practice/table.txt | awk '{print;x[$1]+=$2;y[$1]+=$3}END{for(k in x){print k"計",x[k],y[k]}}'
