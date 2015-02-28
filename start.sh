#!/bin/sh

# stop containers
docker stop nginx

# delete containers
docker ps -a | grep 'nginx' | awk '{print $1}' | xargs docker rm

# start container
docker run --name nginx -d -p 80:80 controlgimnasio/nginx
