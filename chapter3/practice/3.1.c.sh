#!/bin/bash

echo '(bash|nologin)' | grep -G '^(bash|nologin)$'

echo 'ああああああ!!' | grep -E '!{2}'

echo 処す?処す? | grep -o -G '処す?'

echo C/C++ | grep -o -E C.+

# echo 36 | grep -P '\d'

# echo とまとまとまと | grep -o -P 'と(?=まと)' ¦ uniq -c

# echo 123abcあいう-45deえお | grep -P '(\d+\w+[あ-お]+)-\g<1>'
