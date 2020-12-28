# Defined in /usr/home/michael/.config/fish/buffer/mullvad-connection-name_mullva.fish @ line 2
function mullvad-connection-name
		odds (ip link show up)|choose -f ' |:' 1|g mullvad
end
