function decorate-workspacename
    if exists $argv
	keyboardordering $argv
    else
	while read -l line
	    keyboardordering $line
	end
    end
end
