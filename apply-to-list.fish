function apply-to-list
	set fn $argv[1]
    set lst $argv[2..-1]
    for i in $lst
        eval $fn $i
    end
end
