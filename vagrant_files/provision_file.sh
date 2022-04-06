#!/usr/bin/env bash
apt-get update
apt-get install -y nmap 
apt-get install -y iptables
#Agregamos al /etc/hosts para obtener las ips
sudo cat /vagrant/ip_hosts.txt >> /etc/hosts

