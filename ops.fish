function ops
	getopts $argv[2..-1] | grep "^$argv[1] " | cut -d ' ' -f2-
end
