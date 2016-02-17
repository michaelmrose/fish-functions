function addmemsize
	set acc 0
    for i in $argv
        if endswith "K" $i
            set num (echo $i | cut -d "K" -f1)
        end
        if endswith "M" $i
            set num (echo $i | cut -d "M" -f1)
            set num (echo $i | cut -d "." -f1)
            set num (wcalc -q "$num * 1024")
        end
        if endswith "G" $i
            set num (echo $i | cut -d "G" -f1)
            set num (wcalc -q "$num * 1024 * 1024")
        end
        set acc (wcalc -q "$acc + $num")
    end
    if test $acc -gt 1048576
        set acc (wcalc -q "$acc / 1048576")
        set postfix "G"
    else if test $acc -gt 1024
        set acc (wcalc -q "$acc / 1024")
        set postfix "M"
    else
        set postfix "K"
    end
    set acc (truncate-num $acc 2)
    if match $acc "0.0 "
        echo none
    else
        echo {$acc}{$postfix}
    end
end
