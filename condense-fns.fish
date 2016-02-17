function condense-fns
	for i in $argv
        if is-executable (explode-words $i)[1]
            set acc $acc (eval $i)
        else
            set acc $acc $i
        end
    end
    echo -e $acc
end
