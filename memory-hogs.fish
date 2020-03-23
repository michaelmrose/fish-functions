# Defined in /home/michael/.config/fish/buffer/memory-hogs.fish @ line 2
function memory-hogs
    set ps (ps -eo pmem,pcpu,rss,pid,cmd | sort -k 1 -nr)
    for p in $ps
        set mem (echo $p |awk '{print $3}')
        echo $mem
    end
end
