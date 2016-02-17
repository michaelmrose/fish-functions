function capitalize
	echo $argv | sed 's/\([a-z]\)\([a-z]*\)/\U\1\L\2/g'
end
