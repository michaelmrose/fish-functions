# Defined in /usr/home/michael/.config/fish/buffer/vpn.fish @ line 2
function vpn
    switch $argv[1]
        case -d
            volemad-cli -d
        case  -c
            volemad-cli  -p 'USA' -s 'Los Angeles, CA'
						for i in (seq 10)
								signal-i3blocks 12
								sleep 1
						end
		end
end
