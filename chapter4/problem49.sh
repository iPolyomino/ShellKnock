#!/bin/bash

cat ../shellgei160/qdata/49/top.log | grep -E '^ *[0-9]+ ' | awk '{x=$9;for(i=1;i<12;i++)$i="";a[$0]+=x}END{for(k in a)print a[k],k}'
