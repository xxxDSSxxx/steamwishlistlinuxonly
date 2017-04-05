#!/bin/sh
curl "https://steamdb.info/linux/" | grep appid= | cut -d '"' -f 4 >tmp.txt
curl "https://steamdb.info/linux/hints/" | grep 'href="/app/' | cut -d "/" -f 3 >>tmp.txt
cat tmp.txt | sort | uniq  | tr "\n" "," >lin.txt
rm tmp.txt
