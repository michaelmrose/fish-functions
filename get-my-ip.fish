function get-my-ip
	ifconfig | gr inet | head -1 | condense_spaces | cut -d ' ' -f2
end
