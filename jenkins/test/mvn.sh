#!/bin/bash


echo "************************"
echo "********Testing*********"
echo "************************"



docker run --rm -v /home/ubuntu/jenkins/pipeline/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven "$@"
