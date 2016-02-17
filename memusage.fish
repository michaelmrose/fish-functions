function memusage
	set mem 0
    switch (count $argv)
        case 1
            set mem (eval smem -k -c uss -P \'\^$argv\$\' -H \| trim)
        case "*"
            for i in $argv
                set mem $mem (memusage $i)
            end

    end
    addmemsize $mem
end
