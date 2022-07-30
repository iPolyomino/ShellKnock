#!/bin/bash

cat ../shellgei160/qdata/55/watch_log.json | sed '2,$p;$d' | paste -d , - - | sed 's/.*/[&]/' | while read -r l;do jq -r '" diff: \"\(.[0].timestamp)\" \"\(.[1].timestamp)\""' <<<$l; diff <(jq -r '.[0].output' <<<$l) <(jq -r ' .[1].output'<<<$l);done
