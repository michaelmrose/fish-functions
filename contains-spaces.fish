function contains-spaces
	echo $argv | grep -E '\s' > /dev/null
end
