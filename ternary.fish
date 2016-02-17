function ternary
	if eval $argv[1]
        eval $argv[2]
    else
        eval $argv[2]
    end
end
