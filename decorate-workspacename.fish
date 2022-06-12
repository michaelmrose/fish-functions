function decorate-workspacename
    if exists $argv
	for w in $argv
	    keyboardordering $w
	end
    else
	while read -l line
	    keyboardordering $line
	end
    end
end
