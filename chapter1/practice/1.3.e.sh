seq 5 | awk '{print $1%2 ? "奇数":"偶数"}' | sort | uniq -c
