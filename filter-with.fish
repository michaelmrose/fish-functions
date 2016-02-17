function filter-with
	for i in $$argv[2]
        if eval $argv[1] $i
            set lst $lst $i
        end
    end
    set $argv[2] $lst
end
