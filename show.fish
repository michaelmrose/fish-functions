function show
	set tmp /tmp/show-(seconds)
    eval $argv > $tmp
    emc $tmp
end
