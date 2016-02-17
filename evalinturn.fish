function evalinturn
	set lastarg $argv[-1]
    set lastcom $argv[-2]
    set res (eval $lastcom $lastarg)

    for i in $argv[-3..1]
        echo res is $res i $i
        set res (eval $i "$res")
        echo res is $res i $i
    end
end
