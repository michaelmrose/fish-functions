function openpipe
	while read -l line
        open $line &
    end
end
