# Defined in /home/michael/.config/fish/buffer/mpd-list-enabled-outputs.fish @ line 1
function mpd-list-enabled-outputs
	mpc outputs|grep enabled|cut -d '(' -f2|cut -d ')' -f1|tr '\n' ' '
end
