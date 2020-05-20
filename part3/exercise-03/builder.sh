#!/bin/sh
echo "Enter GitHub repository:"
read REPOSITORY_URL
git clone $REPOSITORY_URL app
cd app
echo "Enter Docker username:"
read USERNAME
docker login --username $USERNAME
echo "Insert image name:"
read IMAGE_NAME
docker build -t $USERNAME/$IMAGE_NAME .
docker push $USERNAME/$IMAGE_NAME