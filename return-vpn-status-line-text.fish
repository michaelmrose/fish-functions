function return-vpn-status-line-text
    # while read -l line
    #     iff "string match $line $VPN_CONNECTION: connected" '{"state":"Warning", "text": "  "}' '{"state":"Info", "text": "    "}'
    # end

 set locked '{"state":"Warning", "text": "  "}'
    set unlocked '{"state":"Info", "text": "    "}'
    # set vpn_connected_string 'wg-US-WA-140: connected'
    set vpn_connected_string 'wg-US-.*: connected|usca.*connected'
    # set vpn_disconnected_string 'wg-US-WA-140: disconnected'
    set vpn_disconnected_string 'wg-US-.*: disconnected|usca.*disconnected'
    while read -l line
        if string match -r "$vpn_connected_string" "$line"
            echo $locked
        else if string match -r "$vpn_disconnected_string" "$line"
            echo $unlocked
        end
    #     switch $line
    #         case $vpn_connected_string
    #             echo $locked
    #         case $vpn_disconnected_string
    #             echo $unlocked
    #     end
    end
end
