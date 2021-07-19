#!/usr/bin/env bash
set -e

PROJECT=gamsalem
COMPONENT=image-quality-base
DOCKERFILE=Dockerfile.cpu
VERSION=1.0.0

cd image-quality-assessment/
docker build --pull . -f $DOCKERFILE -t docker.jfrog.booking.com/projects/$PROJECT/$COMPONENT:$VERSION
docker push docker.jfrog.booking.com/projects/$PROJECT/$COMPONENT:$VERSION
cd ../
