# Defined in /home/michael/.config/fish/buffer/mpd-set-output.fish @ line 2
function mpd-set-output
	switch $argv
        case computer
            mpc enable only speakers
        case http
            mpc enable only http
        case both
            mpc enable http
            mpc enable speakers
    end
end
