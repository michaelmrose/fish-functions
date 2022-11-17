function Vpn-status-line
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
