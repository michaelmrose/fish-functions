function ntimes
	set number $argv[1]
    set fn $argv[2]
    if test (count $argv) -gt 2
        set lst $argv[3..-1]
        if [ $number = n ]
            set number (count $lst)
        end
    end
    for i in (seq $number)
        eval $argv[2] $lst[$i]
    end
end
