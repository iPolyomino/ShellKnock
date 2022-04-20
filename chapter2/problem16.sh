#!/bin/bash

n="XYZ"; (for i in {A..C}; do n+=$i; echo $n;done);echo $n

n="XYZ"; for i in {A..C}; do n+=$i; echo $n;done|cat;echo $n

n="XYZ";w|for i in {A..C}; do n+=$i; echo $n;done;echo $n
