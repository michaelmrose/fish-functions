function fs-exists
	if test -d $argv
    else
        test -f $argv
    end
end
