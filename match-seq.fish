function match-seq
	set frst 1
    set scnd 2
    for i in $argv
        if not match $argv[$frst] $argv[$scnd]
            return 1
        else
            set frst (incr $frst)
            set scnd (incr $scnd)
            if test $scnd -gt (count $argv)
                return 0
            end
        end
    end
end
