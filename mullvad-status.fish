# Defined in /usr/home/michael/.config/fish/buffer/mullvad-connection-status_mull.fish @ line 11
function mullvad-status
		if mullvad-connection-status
				i3status-rs-colorize Warning vpn: up
		else
				i3status-rs-colorize Idle vpn: down
		end
end
