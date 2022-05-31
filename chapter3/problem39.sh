#!/bin/bash

cat ../shellgei160/qdata/39/bash_description.txt | fold -s -w 31 | sed 's/ *$//'
