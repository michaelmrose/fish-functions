function stringContains
	
    set com echo $argv[2] \| grep \'.\*$argv[1].\*\' \> /dev/null
    eval $com
end
