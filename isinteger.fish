function isinteger
	echo $argv | grep -E '^[0-9]+$' > /dev/null
end
