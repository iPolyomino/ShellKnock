#!/bin/sh

cat ../shellgei160/qdata/47/mom.csv | awk -F, '{printf $0","} NR > 1{rate=$2/last*100-100"%"; if(rate > 0)printf "+"; print rate} NR==1{print "*"} {last=$2}'
