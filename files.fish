function files
	if exists $argv
	      find $argv -type f
    else
        find (pwd) -type f
    end
end
