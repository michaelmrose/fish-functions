function addmemsize2
	for i in $argv
        set num (echo $i | cut -c1-(math (sizeof $i)-1))
        switch (lastchar $i)
            case M
                set num (wcalc -q "$num * 1024")
            case G
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
    set acc (echo $acc | head -c 5)
    echo {$acc}{$postfix}
end
