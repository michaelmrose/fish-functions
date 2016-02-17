function cycle_windows
	set windows (list-windows dec $argv)
    set current (findindex (wininfo id dec) $windows)
    set dest (ensure_valid_index $current $windows)
    focus id $windows[$dest]
end
