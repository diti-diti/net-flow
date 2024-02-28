#!/bin/bash

echo "=> Starting iperf3 test..."
#iperf3 -c 192.168.0.68 -i1 -t600 --json
#iperf3 -c 192.168.0.68 -i1 -t36000 -R --json

# Check the exit status of iperf3; if it's not equal to 0, an error occurred.
# if [ $? -ne 0 ]; then
#     echo "iperf3 failed, exiting..."
#     exit 1
# fi

echo "=> Starting Telegraf ..."
telegraf --config /etc/telegraf/telegraf.conf 
# Optional: --config-directory /etc/telegraf/telegraf.d
