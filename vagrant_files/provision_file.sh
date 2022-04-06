#!/usr/bin/env bash
apt-get update
apt-get install -y nmap 
apt-get install -y iptables
#Agregamos al /etc/hosts para obtener las ips
sudo cat /vagrant/ip_hosts.txt >> /etc/hosts

#Para iptables (requerido a partir del apartado 3)

sudo iptables -A INPUT -s localhost -j ACCEPT
sudo iptables -A INPUT -j ACCEPT -m conntrack --ctstate	ESTABLISHED
sudo iptables	-P INPUT DROP
