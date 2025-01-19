function vpn
    switch $argv[1]
        case -c
            if not nmcli connection show $VPN_CONNECTION | grep -i 'GENERAL.STATE'
                nmcli connection up $VPN_CONNECTION
            end
        case -d
            if nmcli connection show $VPN_CONNECTION | grep -i 'GENERAL.STATE'
                nmcli connection down $VPN_CONNECTION
            end
        case -p
            set -U VPN_CONNECTION (nmcli connection show|g wireguard|choose 0| select)
        case -t
            if nmcli connection show $VPN_CONNECTION | grep -i 'GENERAL.STATE'
                # disconnect
                nmcli connection down $VPN_CONNECTION
            else
                # connect
                nmcli connection up $VPN_CONNECTION
            end
    end
end
