function get-workspace-letter
	echo (get-focused-workspace | cut -c1)
end
