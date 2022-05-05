function vpn
	switch $argv[1]
		case -d
			# volemad-cli -d
			mullvad disconnect
			signal-i3blocks 12
		case	-c
			# volemad-cli	 -p 'USA' -s 'Los Angeles, CA'
			mullvad connect
				for attempt in (seq 1 15)
				    signal i3blocks 12
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
			if mullvad status | grep Connected
				mullvad disconnect
				signal-i3blocks 12
			else
				mullvad connect
				signal-i3blocks 12
				for attempt in (seq 1 15)
				    signal i3blocks 12
				    sleep 1
				end
				
			end
	end
end
