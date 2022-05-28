#!/bin/bash

cat ../shellgei160/qdata/37/diarydiary.txt | grep | tr -d '\n' | grep -oE '(.+)\1'
