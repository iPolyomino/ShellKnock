#!/bin/sh

tr ',' ' ' < ../shellgei160/qdata/58/num.csv | xargs -n 1 | tr -d ' ' | xargs | tr ' ' + | bc
