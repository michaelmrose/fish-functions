# Defined in /usr/home/michael/.config/fish/buffer/mpc-playback-status_mpd-list-e.fish @ line 7
function mpd-list-enabled-outputs
		mpc outputs | choose -f '\(|\)' 1|sd '
' ' '
end
