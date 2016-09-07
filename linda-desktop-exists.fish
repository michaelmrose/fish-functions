function linda-desktop-exists
	ping 192.168.1.30 -c 1 -W 1 > /dev/null
end
