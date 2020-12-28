# Defined in /usr/home/michael/.config/fish/buffer/mullvad-connection-name_mullva.fish @ line 7
function mullvad-status
		set vpn (either (ip link show (mullvad-connection-name)|head -1|choose 8) DOWN)
		switch $vpn
				case UP
						i3status-rs-colorize Warning vpn: up
				case Down
						i3status-rs-colorize Info vpn: down
		end
end
