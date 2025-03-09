#!/bin/bash

#####################################
#EXAMPLE ./start-ace.sh [IP] [RELEASE] [-d]
#./start-ace.sh
#./start-ace.sh 192.168.33.33 [-d]
#./start-ace.sh 192.168.33.33 7.0.0 [-d]
######################################


DC="docker-compose"
if [ -z "$1" ]; then
    # support both eth0 and eno1 network interface
    IP_X=$(ip -4 -o addr show eth0 | awk '{print $4}')
    if expr "$IP_X" : ".*\/" > /dev/null; then
        IP_FULL=${IP_X}
    else
        IP_FULL=$(ip -4 -o addr show eno1 | awk '{print $4}')
    fi

    if expr "$IP_FULL" : ".*\/" > /dev/null; then
        IP=${IP_FULL%%/*}
    else
        echo "You need give [eth0|eno1] IP address"
        echo "./start-ace.sh 192.168.33.33"
        exit 1;
    fi
else
    IP=$1
fi
if command -v ${DC} &> /dev/null; then
    echo ${DC}
else
    DC="docker compose"
fi
#stop and restart traefik
cd ~/test/app-ace
${DC} down
${DC} up -d
cd full-app

value="$2"

if expr "$value" : ".*\." > /dev/null; then
	echo "IP=$1 RELEASE=$2 ${DC} up $3"
    IP=$1 RELEASE=$2 ${DC} down
	IP=$1 RELEASE=$2 ${DC} up $3
else
    IP=${IP} ${DC} down
	IP=${IP} ${DC} up $2
fi
