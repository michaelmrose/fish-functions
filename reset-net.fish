# Defined in /home/michael/.config/fish/buffer/reset-net.fish @ line 2
function reset-net
	s ip link set dev eth0 down
    s ip link set dev eth0 up
end
