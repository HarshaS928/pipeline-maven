#!/bin/bash


echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth


scp -i /opt/passcode.pem /tmp/.auth ubuntu@13.127.166.85:/tmp/.auth
scp -i /opt/passcode.pem ./jenkins/deploy/publish ubuntu@13.127.166.85:/tmp/publish
ssh -i /opt/passcode.pem ubuntu@13.127.166.85 "/tmp/publish"
