#!/bin/sh

seq -f 'echo 羊が%g匹; sleep 1' 100 | bash
