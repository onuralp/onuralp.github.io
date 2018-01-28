#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

NAME=onuralp/website
$TAG=$CIRCLE_BUILD_NUM

docker tag $NAME $NAME:$TAG

docker login -u $DOCKER_USER -p $DOCKER_PASS
docker push $NAME:$TAG