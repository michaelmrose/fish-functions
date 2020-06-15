# Defined in /home/michael/.config/fish/buffer/pg2.fish @ line 2
function pg2
    set tmp /tmp/pager-(uid)
    while read -l line
        set acc $acc $line
    end
    if exists $argv
        p $acc | column $argv > $tmp
    else
        echo $acc > $tmp
    end
    
    emc $tmp
    echo removing $tmp
    rm $tmp
end
