#!/bin/bash

cat ../shellgei160/qdata/54/fruits.json | ruby -r 'json' -e 'JSON.load(STDIN)["Fruits"].each{|i| File.open(i["Name"]+".json","w"){|f| f.write(JSON.pretty_generate(i))}}'

grep -o '{[^{}]*}' ../shellgei160/qdata/54/fruits.json | awk -F'"' '{print $0 | "jq >" $4".json"}'
