function fat
	set com echo fish -c \'$argv[2..-1]\' \| at $argv[1]
end
