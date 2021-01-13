# Defined in /usr/home/michael/.config/fish/buffer/vpn.fish @ line 2
function vpn
		switch $argv[1]
				case -d
						volemad-cli -d
				case  -c
						volemad-cli  -p 'USA' -s 'Los Angeles, CA'
				case -t
						set mullvad (mullvad-status)
						if mullvad-connection-status
								vpn -d
						else
								vpn -c
						end
						for i in (seq  40)
								if not [ mullvad = (mullvad-status)]
										signal-i3blocks 12
										return 0
								end
								sleep 0.25
						end
		end
end
