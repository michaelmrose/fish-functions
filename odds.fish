function odds
	for i in (range (count $argv))
        if is-odd $i
            set acc $acc $argv[$i]
        end
    end
    println $acc
end
