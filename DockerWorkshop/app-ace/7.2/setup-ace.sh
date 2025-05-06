#!/bin/bash
# for 7.2.0-mini-eno1
# create a zip from the current folder
# sudo zip -r ../full-ace.zip .
# Step 0: create netowrk
docker network create traefik
# Step 1: Create a new folder ~/test
mkdir -p ~/test

# Step 2: Download using curl or copy
if [ -f "full-ace.zip" ]; then
	cp -f full-ace.zip ~/test
else
	curl -o ~/test/full-ace.zip -L https://raw.githubusercontent.com/fangconfigit/k8sworkshop/refs/heads/install/DockerWorkshop/app-ace/7.2/full-ace.zip
fi
# Step 3,4: Create a directory ~/test/app-ace
sudo rm -r ~/test/app-ace
mkdir -p ~/test/app-ace

# Step 5: Change to ~/test/app-ace
cd ~/test/app-ace || exit

# Step 6: Unzip the downloaded file, excluding specific files if needed
unzip ../full-ace.zip -x

# Step 7: Update permission
sudo chmod -R 777 ~/test/app-ace
chmod 600 ~/test/app-ace/acme.json
chmod +x ~/test/app-ace/*.sh


# support eth0 and eno1
IP_X=$(ip -4 -o addr show eth0 | awk '{print $4}')
if expr "$IP_X" : ".*\/" > /dev/null; then
	IP_FULL=${IP_X}
else
	IP_FULL=$(ip -4 -o addr show eno1 | awk '{print $4}')
fi

if expr "$IP_FULL" : ".*\/" > /dev/null; then
	IP=${IP_FULL%%/*}
	./start-ace.sh ${IP} -d
	echo "restart: ~/test/app-ace/start-ace.sh ${IP} -d"
	echo "stop: ~/test/app-ace/stop-ace.sh"
	echo "#edit local dns for windows: [C:\Windows\System32\drivers\etc\hosts] or for linux: [/etc/hosts ]"
	echo "$IP	35p.duckdns.org"
	echo "$IP	35m.duckdns.org"
	echo "open browser -> https://35p.duckdns.org"
fi
pwd ~/test/app-ace


