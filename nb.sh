#!/bin/bash
input="pp.txt"
while IFS= read -r myip
do
curl -s -w "\n" "https://boldking.hunzua.workers.dev/check?proxyip=$myip" >> sw.txt
done < "$input"