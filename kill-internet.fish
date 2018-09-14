# Defined in /home/michael/.config/fish/buffer/kill-internet.fish @ line 2
function kill-internet
	s iptables -A INPUT -i lo -j ACCEPT
    s iptables -A INPUT -s 192.168.0.1/16 -j ACCEPT
    s iptables -P INPUT DROP
    # s systemctl iptables save      
    s systemctl iptables start
end
