function seperate-by
	set sep $argv[1]
    for i in $argv[2..-2]
        set acc $acc $i $sep
    end
    set acc $acc $argv[-1]
    echo $acc
end
