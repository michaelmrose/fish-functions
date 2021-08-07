# Defined in /usr/home/michael/.config/fish/buffer/vpn.fish @ line 2
function vpn
	switch $argv[1]
		case -d
			# volemad-cli -d
			mullvad disconnect
		case	-c
			# volemad-cli	 -p 'USA' -s 'Los Angeles, CA'
			mullvad connect
		case -e 
			for p in (pgrep $argv[2..-1])
				mullvad split-tunnel pid add $p
			end
		case -i
			for p in (pgrep $argv[2..-1])
				mullvad split-tunnel pid delete $p
			end
		case -t
			if mullvad status | grep Connected
				mullvad disconnect
			else
				mullvad connect
			end
			signal-i3blocks 12
			# set mullvad (mullvad-status)
			# if mullvad-connection-status
			# 		vpn -d
			# else
			# 		vpn -c
			# end
			# for i in (seq	 40)
			# 		if not [ mullvad = (mullvad-status) ]
			# 				signal-i3blocks 12
			# 				return 0
			# 		end
			# 		sleep 0.25
			# end
	end
end
