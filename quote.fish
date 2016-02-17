function quote
	if exists $argv
        if not startswith \" $argv
            set val \"$argv
        end
        if not endswith \" $argv
            set val $val\"
        end
        echo $val
    else
        while read -l line
            quote $line
        end
    end
end
