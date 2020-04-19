# Defined in /home/michael/.config/fish/buffer/pager.fish @ line 1
function pager
    set tmp /tmp/pager-(uid)
    while read -l line
        echo $line >> $tmp
    end
    emc $tmp
    rm $tmp
end
