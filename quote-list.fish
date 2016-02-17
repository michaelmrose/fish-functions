function quote-list
	if exists $argv
        for i in $argv
            echo \"$i\"
        end
    else
        while read -l line
            quote $argv
        end
    end
end
