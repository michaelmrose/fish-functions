function get-hd-temp
	s hddtemp /dev/sda | condense_spaces | cut -d ' ' -f8
end
