# Defined in /usr/home/michael/.config/fish/buffer/vullvad-connection-name.fish @ line 1
function vullvad-connection-name
		odds (ip link show up)|choose -f ' |:' 1|g mullvad
end
