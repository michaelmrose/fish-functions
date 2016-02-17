function findall-list
	for i in (getvariables $argv)
        set val (explode $i)
        set $val[1] $val[2..-1]
    end

    for i in $dirs
        set results $results (findall $i $types)
    end
    if exists $exclude
        println $results | grep -v $exclude
    else
        println $results
    end
end
