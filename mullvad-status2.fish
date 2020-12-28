# Defined in /usr/home/michael/.config/fish/buffer/mullvad-connection-name_mullva.fish @ line 18
function mullvad-status2
		if set name (mullvad-connection-name); and  ip link show $name|head -1|choose 8|g UP
				i3status-rs-colorize Warning vpn: up
		else
				i3status-rs-colorize Info vpn: down
		end
end
