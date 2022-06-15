#!/bin/bash
clear
DOCKERHUB="bullmoon"
IMGNAME="herzliaproject"

export TAG="dev"

docker --log-level "debug" build --tag $DOCKERHUB/$IMGNAME:$TAG .

echo "***********************"
echo "image created:"
echo $DOCKERHUB/$IMGNAME:$TAG
echo "***********************"

### Tests ###
# docker stop $(docker ps --format '{{.Names}}')
# docker run -d -p 9003:9003 $DOCKERHUB/$IMGNAME:$TAG
# docker exec $(docker ps --latest --format '{{.Names}}') netstat -l
# docker logs $(docker ps --latest --format '{{.Names}}')