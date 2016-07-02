function condense_spaces
	if exists $argv
        echo $argv | sed 's/\s\+/ /g' | trim
    else
        while read -l line
            if exists $line
              condense_spaces $line
            else
              return 0
            end
        end
    end
end
