function in-terminal-or-out
	if in-terminal
        eval $argv
    else
        lilyterm -e ff $argv
    end
end
