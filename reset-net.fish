function reset-net
	s ip link set dev eth0 down
  s ip link set dev eth0 up
end
