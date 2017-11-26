#!/usr/bin/env bash

sudo -i
apt install -y curl
echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
curl -sSL https://get.docker.com/ | sh
usermod -aG docker $USER
docker run \
   --rm \
   -d \
   -u root \
   -p 8080:8080 \
   -v jenkins-data:/var/jenkins_home \
   -v /var/run/docker.sock:/var/run/docker.sock \
   -v "$HOME":/home \
   --name jenkins \
   jenkinsci/blueocean
