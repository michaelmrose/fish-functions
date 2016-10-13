function condense_lines
	for i in $argv
        set acc $acc $i
    end
    echo $acc | condense_spaces
end
