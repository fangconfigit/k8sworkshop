# DockeWorkshop repare

-Enable wsl [install Linux on Windows with WSL]

-Setup Ubuntu on Windows 


# Setup Ubuntu 

-manually setup 

# Terminate and restart ubuntu

```
wsl -t Ubuntu
```

# Installl Docker&Docker Compose

- install/install.sh
**[install.sh](install/install.sh)**

# Lookup IP address of linux[windows subsystem]

```
ip add
```
# Prepare docker login 

```
docker login ghcr.io --username=[your-loginname] --password=[token]
```


# Install Ace

```
bash <(curl -sSL "https://us.workplace.datto.com/filelink/6813-7ddfdd1e-89cefaaab0-2")

```

# Edit Windows local host file

-edit local dns for windows: [C:\Windows\System32\drivers\etc\hosts]
-example
```
172.21.231.141  35p.duckdns.org
172.21.231.141  35m.duckdns.org
```
# open browser

-> https://35p.duckdns.org
