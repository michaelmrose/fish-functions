function list-descriptions-not-installed
	pkg s $argv | grep -A 3 "Not Installed" | grep Description | condense_spaces | cut -d ":" -f2 | trim
end
