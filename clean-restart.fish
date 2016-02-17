function clean-restart
	set val i3-*
    i3-msg restart
    rm -rf $val
end
