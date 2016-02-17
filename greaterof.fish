function greaterof
	if test $argv[1] -gt $argv[2]
        echo $argv[1]
    else
        echo $argv[2]
    end
end
