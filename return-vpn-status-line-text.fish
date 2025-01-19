function return-vpn-status-line-text
    # set locked '{"state":"Warning", "text": "  "}'
    # set unlocked '{"state":"Info", "text": "    "}'
    # while read -l line
    #     switch $line
    #         case "$VPN_CONNECTION: connected"
    #             echo $locked
    #         case "$VPN_CONNECTION: disconnected"
    #             echo $unlocked
    #     end
    # end
 set locked '{"state":"Warning", "text": "  "}'
    set unlocked '{"state":"Info", "text": "    "}'
    set vpn_connected_string 'wg-US-WA-140: connected'
    set vpn_disconnected_string 'wg-US-WA-140: disconnected'
    while read -l line
        switch $line
            case $vpn_connected_string
                echo $locked
            case $vpn_disconnected_string
                echo $unlocked
        end
    end
end
