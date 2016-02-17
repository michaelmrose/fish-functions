function append-strings
	while read -l line
        echo $line"$argv"
    end
end
