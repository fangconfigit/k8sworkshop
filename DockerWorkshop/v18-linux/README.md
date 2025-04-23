# Hybrid Client

- As Heartbeat client
- As Runtime client

# Docker Build/Push command

-docker build -t ts01soonr/v18-linux .
-docker push ts01soonr/v18-linux

# Runng docker

- Service Mode as HB client
```
docker run --rm -p 11111:11111 ts01soonr/v18-linux
```
- Runtime client
```
docker run --rm -e CMD="who" ts01soonr/v18-linux
```

## docker-in-docker

docker run --rm -p 1111:11111 -p 15283:15283 -v /var/run/docker.sock:/var/run/docker.sock ts01soonr/v18-linux

## docker-compose.yml
```
services:
  v18-linux-dotnet9:
    image: ts01soonr/v18-linux
    ports:
      - "11111:11111"
      - "18888:8888"
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
      - ./app:/app
    restart: unless-stopped
```

