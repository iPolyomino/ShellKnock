#!/bin/bash

echo ${!BASH*}

set | while read s;do [[ "${s:0:4}" = "BASH" ]] && echo ${s%%=*}; done

set | grep ^BASH | awk -F'=' '{print $1}'

# LANG C man bash | grep -o 'BASH[_A-Z]*' | sort -u


