#!/bin/sh

nkf -wLux ../../shellgei160/qdata/practice/data.csv | ruby -r csv -ne 'CSV($_).each{|row| puts row[1]}'
