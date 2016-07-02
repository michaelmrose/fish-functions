function condense_spaces
	if exists $argv
        echo $argv | sed 's/\s\+/ /g' | trim
    else
        while read -l line
            condense_spaces $line
        end
    end
end
