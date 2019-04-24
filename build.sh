#!/usr/bin/env bash

set -e

IMAGE=concourse-ansible-resource
DOCKER_HUB_USER=evoila

# 1. Build the docker image
docker build -t $IMAGE .

# Push to dockerhub
docker tag  $IMAGE evoila/concourse-ansible-resource
docker push $DOCKER_HUB_USER/$IMAGE
