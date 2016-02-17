function get-i3-setting
	cat ~/.i3/config | grep "$argv" | condense_spaces | cut -d " " -f2-
end
