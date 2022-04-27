#!/bin/bash

echo {mail,blog,eng,www,help,sub,ns,}.{robotics,ojisan,yamada,ueda,nakamura,tashiro,blacknon}.{co.jp,com,tech,org,jp,go.jp,com.tw,asia} | tr ' ' '\n' | sort -R | head -n 100 | sed 's/^\.//'
