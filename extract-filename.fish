function extract-filename
	if exists $argv
        get-filename $argv
    else
        while read -l line
            echo $line | pipeit get-filename
        end
    end
end
