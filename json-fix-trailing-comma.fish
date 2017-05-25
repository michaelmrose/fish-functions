function json-fix-trailing-comma
	sed -zr 's/,([^,]*$)/\1/' $argv
end
