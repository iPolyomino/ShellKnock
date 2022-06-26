#!/bin/bash

cat ../shellgei160/qdata/42/item.md | awk '/^[0-9]\./{a++;$1=a".";print}/^#/{a=0}!/^[0-9]\./'
