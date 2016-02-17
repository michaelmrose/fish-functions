function range
	set cnt 1
    set max $argv
    echo $cnt
    while test $cnt -ne $max
        set cnt (math "$cnt +1")
        echo $cnt
    end
end
