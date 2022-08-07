#!/bin/bash

cat ../shellgei160/qdata/57/table.md | sed 's/|/ & /g' | column -t | sed 's/ |/|/g;s/| /|/g'
