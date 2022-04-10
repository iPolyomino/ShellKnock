ls -U | xargs -P2 rename 's/^/000000/;s/0*([0-9]{7}/$1/'
