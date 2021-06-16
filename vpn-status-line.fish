# Defined in /usr/home/michael/.config/fish/buffer/vpn-status-line.fish @ line 2
function vpn-status-line
		set vpnstatus (vpn show)
		switch $vpnstatus
				case none
						# set symbol  
						set symbol 🔓
				case "*"
						# set symbol  
						set symbol 🔒
		end
		echo $symbol"  "$vpnstatus
end
