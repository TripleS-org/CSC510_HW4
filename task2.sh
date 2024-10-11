#!/bin/bash

grep -rl 'sample' dataset1/ | \
xargs -I {} bash -c 'count=$(grep -o "CSC510" "{}" | wc -l); if [ "$count" -ge 3 ]; then echo "{} $count"; fi' | \
xargs -n2 bash -c 'file="$1"; count="$2"; size=$(stat -c "%s" "$file"); echo "$file $count $size"' _ | \
sort -k2,2nr -k3,3nr | \
sed 's/file_/filtered_/'
