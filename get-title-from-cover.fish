function get-title-from-cover
	echo $argv | cut -d / -f6 | cut -d '(' -f1
end
