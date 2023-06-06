#!/bin/bash


echo "***********************"
echo "pushing docker image"
echo "***********************"

IMAGE="maven-project"

echo "**  Logging in  **"
docker login -u harshas928 -p $PASS

echo "**** tagging image ****"

docker tag $IMAGE:$BUILD_TAG harshas928/$IMAGE:$BUILD_TAG

echo "**** Pushing Image ****"

docker push harshas928/$IMAGE:$BUILD_TAG
