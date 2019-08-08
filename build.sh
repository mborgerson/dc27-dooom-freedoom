#!/bin/bash
set -x
set -e
docker run -it -v $PWD:/work -w /work $DOCKER_IMAGE_NAME make DEUTEX=/usr/games/deutex -C freedoom
