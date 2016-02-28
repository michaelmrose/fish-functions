function vpn-status-line2
	set vpnstatus (vpn show)
	switch $vpnstatus
        case none
            set symbol  
            set_color red;echo -e {$blue}$symbol $vpnstatus
            # echo -e {$blue}$symbol $vpnstatus
        case "*"
            set symbol  
            set_color green; echo -e $symbol $vpnstatus
            # echo -e {$red} $symbol $vpnstatus
    end
end
