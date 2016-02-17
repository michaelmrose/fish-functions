function format-for-matchlist
	set size (count $argv)
    set n 0
    for i in $argv
        set n (increase $n)
        if test $n -ne $size
            set acc $acc (echo {$i}@)
        else
            set acc $acc $i
        end
    end
    # set size (math (sizeof $acc) - 1
    echo $acc
end
