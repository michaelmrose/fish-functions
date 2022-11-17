function return-vpn-status-line-text
	set locked '{"state":"Warning", "text": "  "}'
	set unlocked '{"state":"Info", "text": "    "}'
	set vpn_connected_string '\'Wired connection 1\' is now the primary connection'
	set vpn_disconnected_string '\'mullvad_us_sea\' is now the primary connection'
	while read -l line
		switch $line
			case $vpn_connected_string
				echo $locked
			case $vpn_disconnected_string
				echo $unlocked
		end
	end
end
