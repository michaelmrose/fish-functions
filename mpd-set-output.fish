# Defined in /usr/home/michael/.config/fish/buffer/mpd-list-enabled-outputs_mpd-s.fish @ line 15
function mpd-set-output
	switch $argv
        case computer
            mpc enable only local
        case speakers
            mpc enable only local
            switchaudio set pci
        case headphones
            mpc enable only local
            switchaudio set usb
        case http
            mpc enable only http
        case both
            mpc enable http
            mpc enable local
    end
end
