#!/bin/bash

sed -E 's;^(.*):(.*);s/\1/\2/g;g' ../shellgei160/qdata/56/service_stop_weekday.txt | sed -f - ../shellgei160/qdata/56/service_depend_list.txt | tr -d :, | awk '{for(i=2;i<=NF;i++)print $i,$1}' | sort -u | awk '{a[$1]=a[$1]" "$2}END{for(k in a)print k":"a[k]}' | sed 'y/日月火水木金土/1234567/' | sort | sed 'y/1234567/日月火水木金土/' | sed 's/ /, /g;s/,//'


grep -o . <<<日月火水木金土 | while read s;do grep $s ../shellgei160/qdata/56/service_stop_weekday.txt | cut -d : -f1 | grep -f- ../shellgei160/qdata/56/service_depend_list.txt | cut -d: -f1 | xargs | sed 's/ /, /g' | sed "s/^/$s: /" ;done

cat ../shellgei160/qdata/56/service_depend_list.txt | tr -d ':,' | awk '{for(i=2;i<=NF;i++)print $1,$i}' | sort -k2,2 | join -1 2 -2 1 - <(cat ../shellgei160/qdata/56/service_stop_weekday.txt | tr -d ':,' | sort -s -k1,1) | awk '{for(i= 3;i<=NF;i++)print $i,$2}' | sort | uniq | join -a 1 - <(echo 日月火水木金土 | grep -o . | awk '{print $0,NR}' | sort) | sort -s -k3,3 | awk 'pre!=$1{printf "\n"$1": "}{printf $2", ";pre=$1}' | awk NF | sed 's/, *$//'
