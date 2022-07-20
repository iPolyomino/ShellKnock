#!/bin/bash

awk '{a[$3$4]+=$5}END{for(k in a)print k,a[k]}' ../shellgei160/qdata/50/sales | sort | join <(sed 's/ //' ../shellgei160/qdata/50/stones_master) - | awk '{print $2,$3*$4}' | column -t
