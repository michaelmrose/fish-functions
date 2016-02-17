function starton
	set ws $argv[1]
    set program $argv[2..-1] &
    set num (instances-of $program)
    ws $ws
    eval $program &
    while test (instances-of $program) -le $num
        sleep 0.25
    end
end
