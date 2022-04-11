#!/bin/sh

echo "    x\n   x\n  x\n x\nx"

seq 5 | awk '{for(i=1;i<$1;i++){printf " "};print "x"}' | tac

printf "%*s\n" 5 x 4 x 3 x 2 x 1 x

seq 5 -1 1 | awk '{printf "%*s\n",$1,"x"}'
