#!/bin/bash

mkdir -p /tmp/shellknock
cd /tmp/shellknock

touch {1..100}.{txt,bash}

ls ?.txt

ls [126]5.*

ls [!29].*
ls [^29].*
ls [13-8].*

