function vpn-status-line
	set vpnstatus (vpn show)
    switch $vpnstatus
        case none
            set symbol  
        case "*"
            set symbol  
    end
    echo $symbol"  "$vpnstatus
end
