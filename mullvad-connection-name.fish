function mullvad-connection-name
		odds (ip link show up)|choose -f ' |:' 1|g mullvad
end
