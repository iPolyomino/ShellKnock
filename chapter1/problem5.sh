cat ../shellgei160/qdata/5/ntp.conf | awk '$1=="pool"'

grep -E "^pool" ../shellgei160/qdata/5/ntp.conf
