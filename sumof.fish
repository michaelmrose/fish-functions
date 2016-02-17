function sumof
	set acc 0
    for i in $argv
        set acc (math "$acc + $i")
    end
    echo $acc
end
