#!/bin/bash

while read ln ; do echo $ln ; done < /etc/passwd > ~/a

echo "$(</etc/passwd)" > ~/a
