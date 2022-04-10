sudo iptables -A INPUT -s localhost -j ACCEPT
sudo iptables -A INPUT -j ACCEPT -m conntrack --ctstate	ESTABLISHED
sudo iptables -P INPUT DROP
