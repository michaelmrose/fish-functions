function get-border-floating
	cat ~/.i3/config | grep new_float | condense_spaces | cut -d " " -f3
end
