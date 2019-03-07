# Defined in /home/michael/.config/fish/buffer/mpd-remove-dupes.fish @ line 1
function mpd-remove-dupes
	set playlist (mpc playlist)
    for dupe in (mpc playlist | sort | uniq -d)
        mpc del (findindex $dupe $playlist)
    end
end
