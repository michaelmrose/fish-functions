# Defined in /home/michael/.config/fish/buffer/ipaddr.fish @ line 2
function ipaddr
	nmcli | gr inet4 | nth 2 | cut -d "/" -f1
end
