function vpn
	switch $argv[1]
		case -d
			# volemad-cli -d
			# mullvad disconnect
			nmcli connection down mullvad_us_sea
			signal-i3blocks 12
		case	-c
			# volemad-cli	 -p 'USA' -s 'Los Angeles, CA'
			# mullvad connect
			nmcli connection up mullvad_us_sea
				for attempt in (seq 1 15)
				    signal-i3blocks 12
				    sleep 1
				end
		case -e 
			for p in (pgrep $argv[2..-1])
				mullvad split-tunnel pid add $p
			end
		case -ec
			vpn -e (tolower (window-class))
		case -ic
			vpn -i (tolower (window-class))
		case -i
			for p in (pgrep $argv[2..-1])
				mullvad split-tunnel pid delete $p
			end
		case -t
			if nmcli -g GENERAL.STATE c s tun0|grep -q 'activ' 
				# mullvad disconnect
				nmcli connection down mullvad_us_sea
				signal-i3blocks 12
				msg disconnecting...
			else
				nmcli connection up mullvad_us_sea
				# mullvad connect
				signal-i3blocks 12
				msg connecting...
				for attempt in (seq 1 15)
				    signal-i3blocks 12
				    sleep 1
				end
			end
	end
end
