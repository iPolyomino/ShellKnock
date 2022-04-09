echo 中村 山田 田代 上田 | grep -o "[^ ]田"
echo 中村 山田 田代 上田 | tr ' ' '\n' | grep "田$"
