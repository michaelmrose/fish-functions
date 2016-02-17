function commatospaces
	if exists $argv
        echo $argv | sed 's/,/ /g'
    else
        while read -l line
            commatospaces $line
        end
    end
end
