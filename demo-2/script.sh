#!/bin/bash

# sleep until instance is ready
until [[ -f /var/lib/cloud/instance/boot-finished ]]; do
  sleep 1
done

# install nginx (below does not work for Amazon Linux 2 AMI)
apt-get update
apt-get -y install nginx

# make sure nginx is started
service nginx start
