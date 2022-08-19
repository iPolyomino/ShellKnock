#!/bin/bash

seq 0 365 | xargs -I@ date '%F %a' -d '2017-02-24 @day' | grep ^2017 | grep '金' | tac | uniq -w7 | tac
