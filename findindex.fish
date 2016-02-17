function findindex
	set target $argv[1]
    set list $argv[2..-1]
    set cnt 1
    for i in $list
        if [ $i = $target ]
            echo $cnt
            return 0
        else
            set cnt (math "$cnt + 1")
        end
    end
    return -1
end
