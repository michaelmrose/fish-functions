# Defined in /home/michael/.config/fish/buffer/next-valid-entry_next-valid-in.fish @ line 2
function next-valid-entry
	set current $argv[1]
    set lst $argv[2..-2]
    set ndx 2
    for item in $lst
        echo c is $current and i is $item
        if test $current = $item
            echo $lst[$ndx]
            return 0
        else
            set ndx (math $ndx + 1)
        end
    end
    if test $current = $lst[-1]
        echo last entry
        echo $lst[1]
        return 0
    else
        return 1
    end
end
