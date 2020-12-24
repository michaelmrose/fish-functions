# Defined in /usr/home/michael/.config/fish/buffer/mpc-playback-status_mpd-info_m.fish @ line 18
function mpd-list-enabled-outputs
		mpc outputs | choose -f '\(|\)' 1|sd '
' ' '
end
