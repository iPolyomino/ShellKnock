
# write to .bashrc

trap 'h=$(date +%-H);[ "$h" -ge 18 -o "$h" -lt 3 ] && echo 早く帰れ' SIGCHLD
