#!/bin/bash

cat ../shellgei160/qdata/53/devicelist.txt | awk '{print $2,$1}' | sort | join -a 1 -a 2 -o 1.2 0 2.2 -e @ - <(sort ../shellgei160/qdata/53/measurement.txt) | sort
