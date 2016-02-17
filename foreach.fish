function foreach
	set fn $argv[1]
    for i in $argv[2..-1]
        eval $fn $i
    end
end
