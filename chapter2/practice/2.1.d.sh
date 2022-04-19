#!/bin/bash

a=6
b=2

echo $((a+b)) $((b-a)) $((a*b)) $((a/b)) $((b<<a))

echo $(($a+$b)) $(($b-$a)) $(($a*$b)) $(($a/$b)) $(($b<<$a))

echo $[a+b] $[b-a] $[a*b] $[a/b] $[b<<a]
