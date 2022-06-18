#!/bin/bash

cat ../shellgei160/qdata/41/annotation.md | grep -oE '\[\^[^[]+\]:?' | sed 's/]$/] 目印/' | sed 's/:$/ 注釈文/' | sort | awk '{print $2,$1}' | uniq -f1 -u

