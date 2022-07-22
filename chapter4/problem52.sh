#!/bin/sh

awk 'FNR==1{$1="";h=$0}FNR!=1{print FILENAME,$0,h,NF-1}' ../shellgei160/qdata/52/data_U ../shellgei160/qdata/52/data_V | awk '{for(i=NF-$NF;i<NF;i++)print $1,$2,$i,$(i-$NF)}' | sed 's/data_//'
