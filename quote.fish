function quote
	if exists $argv
        if not startswith-special \" $argv
            set val \"$argv
        end
        if not endswith-special \" $argv
            set val $val\"
        end
        echo $val
    else
        while read -l line
            quote $line
        end
    end
end
