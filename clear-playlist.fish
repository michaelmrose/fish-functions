function clear-playlist
	set tmp /tmp/empty
    touch $tmp
    clementine -l $tmp
    mm stop
    signal-i3blocks playing
end
