#!/bin/bash

cat ../shellgei160/qdata/37/diarydiary.txt | tr -d '\n' | grep -oE '(.+)\1'

cat ../shellgei160/qdata/37/diarydiary.txt | sed -rz 's/(.+)(\n*)\1/@\1\1@/g' | grep -o '@[^@]*@' | tr -d @
