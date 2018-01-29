#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

NAME=onuralp/website
TAG=$CIRCLE_SHA1

docker tag $NAME $NAME:$TAG

docker login -u $DOCKER_USER -p $DOCKER_PASS
docker push $NAME:$TAG