# Defined in /usr/home/michael/.config/fish/functions/mullvad-connection-name.fish @ line 1
function mullvad-connection-name
		odds (ip link show up)|choose -f ' |:' 1|g mullvad
end
