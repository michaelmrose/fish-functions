function vpn-status-line2
	set vpnstatus (vpn show)
	switch $vpnstatus
        case none
            set symbol  
            echo -e {$blue}$symbol $vpnstatus
        case "*"
            set symbol  
            echo -e {$red} $symbol $vpnstatus
    end
end
