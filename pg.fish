# Defined in /home/michael/.config/fish/buffer/pg.fish @ line 1
function pg
    set tmp /tmp/pager-(uid)
    while read -l line
        echo $line >> $tmp
    end
    emc $tmp
    echo removing $tmp
    rm $tmp
end
