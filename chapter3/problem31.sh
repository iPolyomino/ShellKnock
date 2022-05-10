#!/bin/bash

sed -r 's/(<strong>)([^<]+)/\1\U\2/' ../shellgei160/qdata/31/iampen.txt

cat ../shellgei160/qdata/31/iampen.txt | perl -pe 's/(?<=<strong>)[^<]+/\U$&/'
