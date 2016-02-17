function most-recent-file
	echo (ls -lt)[2] | condense_spaces | cut -d " " -f9-
end
