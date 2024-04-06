#!/bin/bash
varDate=$(date '+%Y-%m-%d %H:%M:%S')

varInfo=$(curl http://wordpress-test.k8s-9.sa -s -o /dev/null -w \
"response_code: %{http_code}
dns_time: %{time_namelookup}
connect_time: %{time_connect}
pretransfer_time: %{time_pretransfer}
starttransfer_time: %{time_starttransfer}
total_time: %{time_total}
")
echo -e "----------$varDate----------\n$varInfo\n---------------------------------------" >> check.txt
