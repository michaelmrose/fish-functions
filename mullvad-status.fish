# Defined in /usr/home/michael/.config/fish/buffer/mullvad-status.fish @ line 2
function mullvad-status
		if set name (mullvad-connection-name); and  ip link show $name|head -1|choose 8|g UP > /dev/null
				i3status-rs-colorize Warning vpn: up
		else
				i3status-rs-colorize Idle vpn: down
		end
end
