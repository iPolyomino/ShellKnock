#!/bin/bash

cat ../shellgei160/qdata/44/diary.txt | sed -Ez 's/シ.?ェ.?ル.?ス.?ク.?リ.?プ.?ト/%&%/g' | sed '/%/s/$/ @/;s/%//g'
