#!/bin/bash

cat ../shellgei160/qdata/34/furigana.txt | sed -E 's/^(.*)(.*) ([^あ-ん]*)\2/\3(\1)\2/'
