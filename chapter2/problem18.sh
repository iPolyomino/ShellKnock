#!/bin/bash

declare -A x ; IFS=: ; while read {a..g} ; do x[$g]+=. ; done < /etc/passwd ; for s in ${!x[@]} ; do echo $s ${#x[$s]}; done ; unset x
