#!/bin/sh

nkf -wLux ../../shellgei160/qdata/practice/data.csv | ruby -r csv -ne 'CSV($_).each{|row| puts row[1]}'

nkf -wLux ../../shellgei160/qdata/practice/data.csv | python3 -c 'import csv,sys;[print(x[1]) for x in csv.reader(sys. stdin)]'
