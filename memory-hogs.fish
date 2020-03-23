# Defined in /home/michael/.config/fish/buffer/memory-hogs.fish @ line 2
function memory-hogs
    set ps (ps -eo pmem,pcpu,rss,pid,cmd | sort -k 1 -nr)
    set mem (p $ps | awk '{print $3}')
    set names (p $ps | awk '{print $4}') 
    set ndx 1
    for p in (seq (count $ps))
        set ndx (increase $ndx)
        echo $names[$ndx] $mem[$ndx]
    end
end
