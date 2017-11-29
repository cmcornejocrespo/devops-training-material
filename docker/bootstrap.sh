#!/usr/bin/env bash

sudo -i
apt install -y curl
echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
curl -sSL https://get.docker.com/ | sh
usermod -aG docker $USER
curl -L https://github.com/docker/compose/releases/download/1.17.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&
chmod +x /tmp/docker-machine &&
sudo cp /tmp/docker-machine /usr/local/bin/docker-machine