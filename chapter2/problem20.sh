#!/bin/bash

for i in $(cd /usr;echo *); do echo $i ; done

for f in /usr/* ; do echo ${f##*/} ; done
