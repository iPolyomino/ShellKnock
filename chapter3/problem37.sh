#!/bin/bash

cat ../shellgei160/qdata/37/diarydiary.txt | tr -d '\n' | grep -oE '(.+)\1'
