# Defined in /usr/home/michael/.config/fish/buffer/mullvad-status-official.fish @ line 2
function mullvad-status-official
		if mullvad status|grep Connected > /dev/null
				i3status-rs-colorize Warning "  "
		else
				i3status-rs-colorize Info "    "
		end

end
