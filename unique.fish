function unique
	for i in $argv
        if not contains $acc $i
            set acc $acc $i
        end
    end
    println $acc
    # println $argv | sort -u
end
