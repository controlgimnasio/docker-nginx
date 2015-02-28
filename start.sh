#!/bin/sh

# stop containers
sudo docker stop nginx

# delete containers
sudo docker rm -f $(sudo docker ps -a | grep 'nginx' | awk '{print $1}')

# start container
sudo docker run --name nginx -d -p 80:80 controlgimnasio/nginx
