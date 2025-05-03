# DockeWorkshop repare

-Enable wsl [install Linux on Windows with WSL]

-Setup Ubuntu on Windows [Example: Ubuntu 20.04.4 LTS]


# Setup Ubuntu 

-enable systemd

```
sudo nano /etc/wsl.conf

```

```
[boot] 
systemd=true
```

# terminate and restart ubuntu

- reboot ubuntu and check system service
```
sudo systemctl list-unit-files --type=service
```


# Install Docker and Docker Compose
How you install Docker and Docker Compose can vary depending on the Linux distribution you use. You can find detailed instructions in both the Docker and Docker Compose installation documentation. The following example is for Ubuntu

```
#!/bin/bash
sudo apt update
sudo apt install unzip curl apt-transport-https ca-certificates software-properties-common -y
sudo apt install docker.io -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce -y
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
sudo systemctl status docker

```

Verify that Docker and Docker Compose are available by typing:
```
docker --version
docker compose version
```

#  Ref. Step-by-Step Guides 

- https://www.cherryservers.com/blog/install-docker-ubuntu
- https://docs.n8n.io/hosting/installation/server-setups/docker-compose/




