#!/usr/bin/env bash

apt update
apt -y install curl
apt install alt-transpot-https
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
echo 'deb [arch=amd64] https://download.docker.com/linux/debian buster stable' > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get -y install docker-ce
docker run hello-world
