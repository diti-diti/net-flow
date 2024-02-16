#!/bin/bash

echo "=> Starting iperf3 test..."
#iperf3 -c 192.168.0.68 -i1 -t600 --json
#iperf3 -c 192.168.0.68 -i1 -t36000 -R --json

# Sprawdź status wyjścia iperf3; jeśli nie jest równy 0, wystąpił błąd.
# if [ $? -ne 0 ]; then
#     echo "iperf3 failed, exiting..."
#     exit 1
# fi

echo "=> Starting Telegraf ..."
telegraf --config /etc/telegraf/telegraf.conf 
# Opcjonalnie: --config-directory /etc/telegraf/telegraf.d
