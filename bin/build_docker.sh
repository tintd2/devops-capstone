#!/usr/bin/env bash

# Build capstone_project image
DOCKER_HUB_ID="dinhtin12"
DOCKER_REPOSITORY="devops-capstone"
VERSION="1.0.0"

docker build -t ${DOCKER_HUB_ID}/${DOCKER_REPOSITORY}:${VERSION} app