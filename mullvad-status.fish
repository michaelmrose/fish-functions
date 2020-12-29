# Defined in /usr/home/michael/.config/fish/buffer/mullvad-status.fish @ line 2
function mullvad-status
		if mullvad-connection-status
				i3status-rs-colorize Warning " VPN: UP"
		else
				i3status-rs-colorize Idle " VPN: DOWN"
		end
end
