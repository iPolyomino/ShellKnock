cat ../shellgei160/qdata/7/kakeibo.txt | awk '{tax = ($1<"20191001"||$2~"^*") ? 1.08 : 1.1;print $0,tax}'
