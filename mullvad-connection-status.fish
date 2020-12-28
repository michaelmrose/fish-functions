# Defined in /usr/home/michael/.config/fish/buffer/mullvad-connection-status.fish @ line 2
function mullvad-connection-status
		if set name (mullvad-connection-name); and  ip link show $name|head -1|choose 8|g UP > /dev/null
				return 0
		else
				return 1
		end
end
