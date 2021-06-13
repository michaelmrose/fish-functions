# Defined in /usr/home/michael/.config/fish/buffer/mpd-toggle-output.fish @ line 2
function mpd-toggle-output
		# mpc toggleoutput http local
		set enabled (mpc outputs|g enabled|choose -f '\(|\)' 1)
		if contains http $enabled
				mpc enable only local
		else
				mpc enable only http
		end
		signal-i3blocks 4
end
