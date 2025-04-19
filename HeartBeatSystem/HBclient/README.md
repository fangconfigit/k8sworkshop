# Hybrid Client -a2

- As Heartbeat client
- As Runtime client

# Docker Build/Push command

 - docker build -t ts01soonr/ace .
 - docker push ts01soonr/ace

# Runng docker

- Service Mode as HB client
```
docker run --rm -p 8888:8888 ts01soonr/ace
```
- Runtime client
```
docker run --rm -e CMD="wait 3" ts01soonr/ace
```
# running via Docker-Compose


```
  hbagent:
    image: ts01soonr/ace
    container_name: hearbeat-ace
    restart: unless-stopped
    ports:
      - 8888:8888
    environment:
      HBAPI: http://hbserver/
      HBKEY: MyFirstAce
```