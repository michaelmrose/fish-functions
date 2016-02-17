function without
	set val $argv[1]
    set lst $argv[2..-1]
    for i in $lst
        if not match $val $i
            echo $i
        end
    end
end
