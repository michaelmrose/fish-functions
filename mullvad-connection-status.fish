# Defined in /usr/home/michael/.config/fish/buffer/mullvad-status.fish @ line 10
function mullvad-connection-status
		if set name (mullvad-connection-name); and  ip link show $name|head -1|choose 8|g UP > /dev/null
		end
end
