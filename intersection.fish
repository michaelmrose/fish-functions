function intersection --description 'prints the common elements of n lists'
	set max (count $argv)
    set first 0
    set second 1
    set rest 2
    set result $$argv[1]
    switch (count $argv)
        case 0
        case 1
            echo $$argv[1]
        case 2
            set lsta $$argv[1]
            set lstb $$argv[2]
            for i in $lsta
                if contains $i $lstb
                    if not contains $i $finalresult
                        set result $finalresult $i
                    end
                end
            end
            echo $result
        case "*"
            #echo (count $argv)
            set rest (math "$rest + 1")
            set first (math "$first + 1")
            set second (math "$second + 1")
            set intermediateresult (intersection $argv[$first] $argv[$second])
            intersection intermediateresult $argv[$rest..-1]
    end
end
