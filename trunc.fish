function trunc
	echo $argv[2..-1] | cut -c1-$argv[1]
end
