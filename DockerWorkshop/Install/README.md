# DockeWorkshop repare

-Enable wsl [install Linux on Windows with WSL]

-Setup Ubuntu on Windows 


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

# installl Docker&Docker Compose

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




