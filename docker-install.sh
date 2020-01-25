#!/bin/bash
yum update -y
yum install docker -y
systemctl enable --now docker
curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

mkdir jenkins_home/
chown 1000:1000 jenkins_home/
