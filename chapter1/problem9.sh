#!/bin/sh


cat ../shellgei160/qdata/9/log_range.log | sed -n '/24\/Dec\/2016 21:..:../,/25\/Dec\/2016 03:..:../p'

cat ../shellgei160/qdata/9/log_range.log | awk '/24\/Dec\/2016 21:..:../,/25\/Dec\/2016 03:..:../'
