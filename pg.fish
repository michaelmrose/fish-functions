function pg
    set tmp /tmp/pager-(uid)
    while read -l line
        echo $line >> $tmp
    end
    emc $tmp
    rm $tmp
end
