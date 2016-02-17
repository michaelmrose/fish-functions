function condense_lines
	for i in $argv
        set item (echo $i | sed 's#\n##g')
        set acc $acc $item
    end
    echo $acc | condense_spaces
end
