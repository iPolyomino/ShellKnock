#!/bin/bash

paste <(grep -o . ../shellgei160/qdata/33/not_kaibun) <(grep -o . ../shellgei160/qdata/33/not_kaibun | tac) | awk '$1!=$2'
