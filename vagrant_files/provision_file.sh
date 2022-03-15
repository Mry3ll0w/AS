#!/usr/bin/env bash

apt-get update
apt-get upgrade -y
apt-get install -y apache2
#if ! [ -L /var/www ]; then
#  rm -rf /var/www
#  ln -fs /vagrant /var/www
#fi

