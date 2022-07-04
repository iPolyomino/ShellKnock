#!/bin/bash

cat ../../shellgei160/qdata/practice/table.txt | awk '{print $0,$2+$3}'
