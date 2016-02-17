function list-remote
	git remote -v | head -1 | condense_spaces | cut -d " " -f2
end
