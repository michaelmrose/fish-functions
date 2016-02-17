function show
	set tmp /tmp/show-(seconds)
    eval $argv > $tmp
    qvim $tmp
end
