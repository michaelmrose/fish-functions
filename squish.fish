function squish
	if exists $argv
        echo $argv | sed "s/ //g"
    else
        while read -l line
            echo (squish $line)
        end
    end
end
