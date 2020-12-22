#!/bin/bash

throttle=50000

BASE=~/deployment/event-formation-unit

export LD_LIBRARY_PATH=$BASE/lib

while [[ 1 ]]
do
   $BASE/bin/udpgen_pcap -t $throttle -f /mnt/data/EFU_reference/loki/2020/wireshark/loki_data_181220.pcapng -i 172.24.0.205 -p 9021
done