#!/bin/bash

cat ../shellgei160/qdata/35/speech.txt | grep -Po '^.*?[ア-ン]{4}(?=[ア-ン])' |awk '{$2=$1}$1=length($2)'
