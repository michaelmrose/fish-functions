function view-wininfo
	set id (wininfo id dec)
    set tmp /tmp/wininfo-(uid)
    echo XPROP >> $tmp
    echo ----- >> $tmp
    echo " " >> $tmp
    xprop -id $id >> $tmp
    echo " " >> $tmp
    echo XWININFO >> $tmp
    echo -------- >> $tmp
    echo " " >> $tmp
    xwininfo -id $id -all >> $tmp
    eval $EDITOR $tmp
end
