# Defined in /home/michael/.config/fish/buffer/top-memory-hogs.fish @ line 1
function top-memory-hogs
    set hogs (ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head | awk '{print $3}'|sort -u|g --invert-match CMD)
    for h in $hogs
        if test -f $h
            set item $h
        else
            set item (which $f)
        end
        set acc $acc $item
    end

    echo $acc
end
