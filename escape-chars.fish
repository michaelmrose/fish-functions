function escape-chars
	echo "$argv" | sed "s/'/\'/g"
end
