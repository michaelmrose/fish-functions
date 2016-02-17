function delay
	set delay $argv[1]
    set fn "$argv[2..-1]"
    echo executing $fn in ...
    for i in (reverse (seq $delay))
        sendit $i
        sleep 1
    end
    sendit evaling $fn
    eval $fn
end
