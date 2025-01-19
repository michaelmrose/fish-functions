function vpn
    switch $argv[1]
        case -c
            if not nmcli connection show wg-US-WA-140 | grep -i 'GENERAL.STATE'
                nmcli connection up wg-US-WA-140
            end
        case -d
            if nmcli connection show wg-US-WA-140 | grep -i 'GENERAL.STATE'
                nmcli connection down wg-US-WA-140
            end
        case -t
            if nmcli connection show wg-US-WA-140 | grep -i 'GENERAL.STATE'
                # disconnect
                nmcli connection down wg-US-WA-140
            else
                # connect
                nmcli connection up wg-US-WA-140
            end
    end
end
