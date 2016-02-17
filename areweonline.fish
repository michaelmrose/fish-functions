function areweonline
	ping 8.8.8.8 -c 1 -W 1 > /dev/null 2> /dev/null
end
