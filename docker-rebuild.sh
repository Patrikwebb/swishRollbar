#/bin/bash

docker rm -f swishRollbar
docker rmi -f swishRollbar
docker build -t rp-swishrollbar .
docker run -p 3000:3000 -dit --name swishRollbar rp-swishrollbar

docker logs -f swishRollbar 
