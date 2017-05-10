function intersect --description 'prints the common elements of 2 lists'
	set lsta $$argv[1]
    set lstb $$argv[2]
    for i in $lsta
        if contains $i $lstb
            if not contains $i $result
                set result $result $i
            end
        end
    end
    echo $result
end
