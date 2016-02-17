function sopen
	if test -f $argv
        eval open (quote $argv)
    end
end
