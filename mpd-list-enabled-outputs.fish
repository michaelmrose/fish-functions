# Defined in /usr/home/michael/.config/fish/buffer/mpd-list-enabled-outputs.fish @ line 2
function mpd-list-enabled-outputs
		mpc outputs | choose -f '\(|\)' 1|sd '\n' ' '
end
