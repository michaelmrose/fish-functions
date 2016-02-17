function windowmove
	set directions left right down up
    if contains $argv[1] $directions
        windowmove-relative $argv
    else
        xdc windowmove $argv
    end
end
