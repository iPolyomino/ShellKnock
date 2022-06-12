#!/bin/bash

cat ../shellgei160/qdata/40/kanjinum.txt | ruby -rzen_to_i -ne 'puts $_.zen_to_i'
