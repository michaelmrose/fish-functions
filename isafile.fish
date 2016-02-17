function isafile
	if exists $argv
        if test -f $argv
            echo $argv
        end
    end
end
