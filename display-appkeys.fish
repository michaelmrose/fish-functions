function display-appkeys
	set tmp /tmp/appkeys
    show-appkeys > $tmp
    eval $EDITOR $tmp
end
