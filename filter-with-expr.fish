function filter-with-expr
	set expr $argv[1]
    set lst $argv[2..-1]
    for i in $lst
        if eval $expr $i
            echo $i
        end
    end
end
