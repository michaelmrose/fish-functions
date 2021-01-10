# Defined in /usr/home/michael/.config/fish/buffer/vpn.fish @ line 2
function vpn
		switch $argv[1]
				case -d
						volemad-cli -d
				case  -c
						volemad-cli  -p 'USA' -s 'Los Angeles, CA'
				case -t
						if mullvad-connection-status
								vpn -d
						else
								vpn -c
						end
						for i in (seq 5)
								signal-i3blocks 12
								sleep 1
						end
		end
end
