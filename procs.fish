function procs
	ps -A | grep -EI "$argv"
end
