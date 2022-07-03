#!/bin/bash

mecab -E '' ../shellgei160/qdata/46/const26.txt | awk -F'[\t,]' '{print $1","$(NF-1)}' | nkf -h | sed -E 's/(.*),(.*)\1/(\2)\1/' | sed 's/(\**)//' | paste -sd ''
