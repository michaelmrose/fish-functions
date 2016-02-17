function cond
	if eval $argv[1]
        eval $argv[2]
    else
        eval $argv[3]
    end
end
