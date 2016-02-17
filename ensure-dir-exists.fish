function ensure-dir-exists
	if not test -d $argv
        mkdir $argv
    end
    return 0
end
