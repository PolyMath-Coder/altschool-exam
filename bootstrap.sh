#!/usr/bin/env bash

apt-get update
apt-get install -y nginx
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /my-vagrant /var/www
fi
