# Defined in /usr/home/michael/.config/fish/buffer/mpd-toggle-output.fish @ line 1
function mpd-toggle-output
		mpc toggleoutput http local
		signal-i3blocks 4
end
