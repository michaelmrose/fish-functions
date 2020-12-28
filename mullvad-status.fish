# Defined in /usr/home/michael/.config/fish/buffer/mullvad-status.fish @ line 1
function mullvad-status
		set vpn (either (ip link show (mullvad-connection-name)|head -1|choose 8) DOWN)
		switch $vpn
				case UP
						i3status-rs-colorize Warning up
				case Down
						i3status-rs-colorize Info down
		end
end
