function evens
	for i in (range (count $argv))
        if is-even $i
            set acc $acc $argv[$i]
        end
    end
    println $acc
end
