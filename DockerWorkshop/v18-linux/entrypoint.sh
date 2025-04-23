#!/bin/sh

CMD="${CMD:-demo}"
cd /app
if [ "$CMD" = "demo" ]; then
    exec ./SocketDemo        
else
    exec ./SocketDemo "$CMD"
fi