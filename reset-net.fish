function reset-net
	s ip link set dev eth1 down
  s ip link set dev eth1 up
end
