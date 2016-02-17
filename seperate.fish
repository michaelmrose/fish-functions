function seperate
	set ndx 1
    set word $argv
    set length (sizeof $word)
    while test $ndx -le $length
        echo (expr substr $word $ndx 1)
        set ndx (math "$ndx + 1" )
    end
end
