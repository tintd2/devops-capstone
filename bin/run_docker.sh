#!/usr/bin/env bash
DOCKER_HUB_ID="dinhtin12"
DOCKER_REPOSITORY="devops-capstone"

VERSION=1.0.0
CONTAINER_PORT=80
HOST_PORT=80

# Run flask app
docker run -t --rm -p ${HOST_PORT}:${CONTAINER_PORT} ${DOCKER_HUB_ID}/${DOCKER_REPOSITORY}:${VERSION}
