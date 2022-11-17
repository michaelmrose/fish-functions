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
		case -q
			nmcli -g GENERAL.STATE c s tun0|grep -q 'activ' 2> /dev/null
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
			end
	end
end
