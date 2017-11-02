# Defined in /home/michael/.config/fish/buffer/desktop-available.fish @ line 1
function desktop-available
	timeout 0.01 ping 192.168.1.2 -c 1 -W 1 -s 1
end
