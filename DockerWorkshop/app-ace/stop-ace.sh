#!/bin/bash
#####################################
#EXAMPLE ./stop-ace.sh IP [RELEASE]
#./stop-ace.sh 192.168.33.33
#./stop-ace.sh 192.168.33.33 7.0.0
######################################

DC="docker-compose"
if command -v ${DC} &> /dev/null
then
    echo ${DC}
else
    DC="docker compose"
fi
cd ~/test/app-ace
${DC} down
cd full-app
IP=127.0.0.1 ${DC} down
