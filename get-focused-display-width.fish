function get-focused-display-width
	get-focused-display-resolution | cut -d "x" -f1
end
