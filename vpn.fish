function vpn
    switch $argv[1]
        case -c
            if not nmcli connection show wg-US-WA-53 | grep -i 'GENERAL.STATE'
                nmcli connection up wg-US-WA-53
            end
        case -t
            if nmcli connection show wg-US-WA-53 | grep -i 'GENERAL.STATE'
                # disconnect
                nmcli connection down wg-US-WA-53
            else
                # connect
                nmcli connection up wg-US-WA-53
            end
    end
end
