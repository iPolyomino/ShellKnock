#!/bin/sh

seq 1 100 | xargs -I@ bash -c 'echo 羊が @ 匹; sleep 1'
