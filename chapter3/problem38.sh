#!/bin/bash


cat ../shellgei160/qdata/38/this_is_it.txt | sed -E 's/\&(amp;)+quot;/"/g'
