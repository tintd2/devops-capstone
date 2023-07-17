#!/usr/bin/env bash

CONTAINER_NAME="huynhlongploc/capstone_project"
VERSION=1.0
CONTAINER_PORT=80
HOST_PORT=80

# Run flask app
docker run -t --rm -p ${HOST_PORT}:${CONTAINER_PORT} ${CONTAINER_NAME}:${VERSION}
